Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5651103EB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 19:00:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7KXTofVfr5MmrnZi1qetq/oNgRkI2ghwVCQ0GmYw9Sg=; b=ZeJOx8jPlWFaom
	WWagYxZeETY1C6DBqOLFCV2QrZijA+4KMJlI9XJtrdGSiB0Pp8PQ1N56NlQsQbnC1TnCIWaGYy05/
	qajel+S42wm614f2pyRzDs8+CK2YpgYvSSBo79rtR2cRlDOsv6OvgE98ivNY9Q1NWDikD3T5fRFb5
	KDr/xwJsq8IcA5R2sbCt1sd0JAi82D8ZtfkiyTH3UQe1O18ceEIb7R7T+gsKfOy6lMit4l1mn59z4
	wlvQspBMVFccOPtjB1ARpZf0CrFKvfu4PE/o6geM2S+4ukpnS7diW6oiBf3brWkGH0fnciIjIhwjC
	KTSFehDEmlnfk8D6v6gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icCTT-0001YY-RG; Tue, 03 Dec 2019 18:00:35 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icCTN-0001Y8-GI
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 18:00:31 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Dec 2019 10:00:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,274,1571727600"; d="scan'208";a="208527468"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 03 Dec 2019 10:00:27 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1icCTL-000HgF-6w; Wed, 04 Dec 2019 02:00:27 +0800
Date: Wed, 4 Dec 2019 01:59:47 +0800
From: kbuild test robot <lkp@intel.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [nomadik:ux500-skomer 40/47]
 drivers/gpu/drm/panel/panel-novatek-nt35510.c:385:5: sparse: sparse: symbol
 'nt35510_send_long' was not declared. Should it be static?
Message-ID: <201912040159.hVq7kws6%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_100029_554545_1A2F2260 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: kbuild-all@lists.01.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-nomadik.git ux500-skomer
head:   10adfdbea52ccf7346c17aec778042ab5b604ca9
commit: 40d1110621b1f80d7b04c36bd212cd34574d51f8 [40/47] drm/panel: Add driver for Novatek NT35510-based panels
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-82-g68ac1bb-dirty
        git checkout 40d1110621b1f80d7b04c36bd212cd34574d51f8
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/gpu/drm/panel/panel-novatek-nt35510.c:385:5: sparse: sparse: symbol 'nt35510_send_long' was not declared. Should it be static?

Please review and possibly fold the followup patch.

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
