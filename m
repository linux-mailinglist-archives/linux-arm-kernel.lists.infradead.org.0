Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF26FFBEE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 23:23:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gk08vhVnoQNOYe2BTjmXvhi5FUaMvi+6QmK8ugyKB4Q=; b=VrViCZkgLNEfUB
	JF+dFUf9L3NanzULqHxQbK9shw/9p1QRIu34XGa8Iv7GcQNBhFtmhuh5wbDgasfrQMXsxnAFeo31i
	LAqy+8X32Bsih/Eo4fKgWzKlTEhcy6ep/OKQ+nZOMx9ZD77vbfnMSexMSo+c2tDJ3s1/GwcWOI5xn
	CVKCnaYEY4EJi0TB6/SPrP0BkC3Ksw31VoSfnGhjsshOO3sHP0I4URFKiiRuO3ytYTX3CFbz9nWHY
	L8fPgkT56T93mBkAJEpSasIYCxykSWOVOvq6NcLbFsyxIZ4+vXGmF9aBMABKikYxXvGm5Cc9dYVcN
	FeLbp5dWJPaCLoX/T5cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWSx1-0007MR-7e; Sun, 17 Nov 2019 22:23:23 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWSwt-0007LY-6A
 for linux-arm-kernel@lists.infradead.org; Sun, 17 Nov 2019 22:23:16 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Nov 2019 14:23:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,317,1569308400"; d="scan'208";a="258247394"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Nov 2019 14:23:08 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iWSwm-00067I-4M; Mon, 18 Nov 2019 06:23:08 +0800
Date: Mon, 18 Nov 2019 06:22:56 +0800
From: kbuild test robot <lkp@intel.com>
To: Dong Aisheng <aisheng.dong@nxp.com>
Subject: [RFC PATCH] firmware: imx: scu-pd: imx_con_rsrc can be static
Message-ID: <20191117222256.lpxfujyawdh4fjng@4978f4969bb8>
References: <1573995924-14752-1-git-send-email-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573995924-14752-1-git-send-email-aisheng.dong@nxp.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_142315_266920_B209E5D3 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 kbuild-all@lists.01.org, dongas86@gmail.com, linux-pm@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Fixes: 3eb6739fc067 ("firmware: imx: scu-pd: do not power off console domain")
Signed-off-by: kbuild test robot <lkp@intel.com>
---
 scu-pd.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firmware/imx/scu-pd.c b/drivers/firmware/imx/scu-pd.c
index 770e3681bbbf6..cae678feda645 100644
--- a/drivers/firmware/imx/scu-pd.c
+++ b/drivers/firmware/imx/scu-pd.c
@@ -85,7 +85,7 @@ struct imx_sc_pd_soc {
 	u8 num_ranges;
 };
 
-int imx_con_rsrc;
+static int imx_con_rsrc;
 
 static const struct imx_sc_pd_range imx8qxp_scu_pd_ranges[] = {
 	/* LSIO SS */

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
