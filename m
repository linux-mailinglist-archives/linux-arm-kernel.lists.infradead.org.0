Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D13AA12C230
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 11:23:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UNJzhJ6VLd/qrfwnrR9y2WSnu3ayBlTtzMXfhFiImhM=; b=t2A7r9vD8CusZ0
	6W1B6ZKbDQpTUWTAtKy7k7H5QBJaSi0t/P78gv7zESuyzh99yIvaga5IkVvpFZ7EqLG4plSKqcKRd
	vAhFFy2lbrc1DLp1nlfFNNvba6WnWaCZJXQTWTHAR7/PYPR1HEHaNHzjo5Kol6rijw0F5pk/RuDde
	atikJPhsMJP9YEZ3uVK0xeWUvg4FHKdYoF1egH3AwAX/CToAlQSSn/ryJmPnQE11Xhnf4x8VnY27c
	ti67MbvOMHVhqAudU05hvHpl8v/16ecWZwcnZb5ineC+3qBGzqO0dcM2Ogr6/Gvnaadn5EQbSSaA0
	BbIuzB5cyUr4Pt/FF8vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilViq-0007Oc-Pj; Sun, 29 Dec 2019 10:22:56 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilVij-0007Na-13
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 10:22:50 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Dec 2019 02:22:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,371,1571727600"; d="scan'208";a="213059369"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 29 Dec 2019 02:22:44 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1ilVie-000J2l-32; Sun, 29 Dec 2019 18:22:44 +0800
Date: Sun, 29 Dec 2019 18:19:55 +0800
From: kbuild test robot <lkp@intel.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [nomadik:ux500-skomer-v5.5-rc1 62/63]
 drivers/iio/light/gp2ap002.c:196:35: sparse: sparse: symbol
 'gp2ap002_illuminance_table' was not declared. Should it be static?
Message-ID: <201912291830.oupM1vWE%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_022249_109732_841AC2FA 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-nomadik.git ux500-skomer-v5.5-rc1
head:   0060faaf7fa91b7d76500f5b3092dcf0f864fab8
commit: f095962c5090d10649c6aa3c52da9fff190b8d22 [62/63] iio: light: Add a driver for Sharp GP2AP002x00F
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-129-g341daf20-dirty
        git checkout f095962c5090d10649c6aa3c52da9fff190b8d22
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/iio/light/gp2ap002.c:196:35: sparse: sparse: symbol 'gp2ap002_illuminance_table' was not declared. Should it be static?

Please review and possibly fold the followup patch.

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
