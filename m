Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC813149CC6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Jan 2020 21:12:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mP4K8cFN25Uqdij6o5/y3jZHWjqMtrbFm4lZ/MHGjmk=; b=uu5zmAUsUVtzEm
	N0fh7V3cVsQIrDP9ENUtwPLvVwoKSXl8MCkiq0jgK2cZ/hHiOOOT9VZH9nIJGbqohoBv+YCaHVGpI
	Yv1xfdQWeBeIZ91U9K+PtxFpQ3MCpzlhIwz+aZg6dvirzsA3VV8FyHAKKJhzen9ybhvoJZH8UEhd2
	1CPS3g3k93qeY1MY+B+o3oZ7y1+H+k+2Gsq4NS9sCI5t8c1Ic66tmLkiYS/uCgYgpTZat8sHQETCs
	Y/4eHnoOUcTZILbzTxcsQktj/abCk66R319+d9ke9/LM7V1bBL9nRnJV98plLbyjV678hQXB728vs
	TSAzchcHHKz/2DjMVZtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivoH1-0003lm-14; Sun, 26 Jan 2020 20:12:47 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivoGV-0003U6-24; Sun, 26 Jan 2020 20:12:16 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jan 2020 12:12:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,366,1574150400"; d="scan'208";a="401166249"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 26 Jan 2020 12:12:12 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1ivoGR-0006gg-Mg; Mon, 27 Jan 2020 04:12:11 +0800
Date: Mon, 27 Jan 2020 04:11:35 +0800
From: kbuild test robot <lkp@intel.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH 06/22] staging: vc04_services: get rid of
 vchiq_platform_use_suspend_timer()
Message-ID: <202001270446.AI1Wgghb%lkp@intel.com>
References: <20200124144617.2213-7-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200124144617.2213-7-nsaenzjulienne@suse.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_121215_108795_7F159AB6 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org,
 kbuild-all@lists.01.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

I love your patch! Perhaps something to improve:

[auto build test WARNING on staging/staging-testing]
[also build test WARNING on linux/master linus/master v5.5-rc7 next-20200121]
[cannot apply to anholt/for-next]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Nicolas-Saenz-Julienne/staging-vc04_services-suspend-resume-cleanup/20200125-193041
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git fc157998b8257fb9cfe753e7f4af1411da995c9b
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-153-g47b6dfef-dirty
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1239:60: sparse: sparse: incorrect type in assignment (different address spaces)
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1239:60: sparse:    expected struct vchiq_header *header
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1239:60: sparse:    got void [noderef] <asn:1> *[addressable] msgbuf
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1508:13: sparse: sparse: incorrect type in assignment (different address spaces)
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1508:13: sparse:    expected int enum vchiq_status ( *__pu_val )( ... )
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1508:13: sparse:    got void [noderef] <asn:1> *
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1510:13: sparse: sparse: incorrect type in assignment (different address spaces)
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1510:13: sparse:    expected void *__pu_val
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1510:13: sparse:    got void [noderef] <asn:1> *
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1636:13: sparse: sparse: incorrect type in assignment (different address spaces)
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1636:13: sparse:    expected void *__pu_val
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1636:13: sparse:    got void [noderef] <asn:1> *
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1638:13: sparse: sparse: incorrect type in assignment (different address spaces)
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1638:13: sparse:    expected void *__pu_val
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1638:13: sparse:    got void [noderef] <asn:1> *
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1713:13: sparse: sparse: incorrect type in assignment (different address spaces)
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1713:13: sparse:    expected struct vchiq_completion_data *__pu_val
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1713:13: sparse:    got void [noderef] <asn:1> *
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1716:13: sparse: sparse: incorrect type in assignment (different address spaces)
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1716:13: sparse:    expected void **__pu_val
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1716:13: sparse:    got void [noderef] <asn:1> *
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1763:13: sparse: sparse: incorrect type in assignment (different address spaces)
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1763:13: sparse:    expected struct vchiq_completion_data *__pu_val
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1763:13: sparse:    got struct vchiq_completion_data [noderef] <asn:1> *[assigned] completion
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1793:59: sparse: sparse: incorrect type in argument 1 (different address spaces)
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1793:59: sparse:    expected void [noderef] <asn:1> *uptr
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1793:59: sparse:    got struct vchiq_header *[addressable] header
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1795:45: sparse: sparse: incorrect type in argument 1 (different address spaces)
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1795:45: sparse:    expected void [noderef] <asn:1> *uptr
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1795:45: sparse:    got void *[addressable] service_userdata
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1797:45: sparse: sparse: incorrect type in argument 1 (different address spaces)
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1797:45: sparse:    expected void [noderef] <asn:1> *uptr
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1797:45: sparse:    got void *[addressable] bulk_userdata
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1851:13: sparse: sparse: incorrect type in assignment (different address spaces)
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1851:13: sparse:    expected void *__pu_val
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1851:13: sparse:    got void [noderef] <asn:1> *
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:2257:1: sparse: sparse: symbol 'vchiq_videocore_wanted' was not declared. Should it be static?
>> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:2879:1: sparse: sparse: symbol 'vchiq_dump_service_use_state' was not declared. Should it be static?

Please review and possibly fold the followup patch.

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
