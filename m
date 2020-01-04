Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E6A13024F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 13:03:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eGBBLihni/97RbqbhD8TzWYQRPr2z4YR24dTAECOFgM=; b=IUfb3Rsvj6VFR2
	obzfzqs47rP8JlPUu8qlSFlehR6su3QPkUoaUntOMI64Yauh/SRMNK+8JER2GyePpmmso3xESRFiy
	6zQKXKfGrpuFfdMu2OwNUx4y1PA+AYTXplbbn+M5H5Re37ZmOKDkXLADnqj0vDGHHgsZqJUmW3xJ+
	Gnw5gXtqJwViDX7T8izK3Ji7kqhKGuNeqo2+cHt3LASUv//nxWy+uRU9IiAOxNj5tIHU9vAFq7nqz
	n5hnjBmzBWF8IYoertdPEtxSS8QXhXP4YWASuGEz3FhkxtfKcQNGNjm6Nlpvq/fe8wfarZ47tC+3M
	QgAe/gviV8Ite7GZrDjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ini9Z-0003MF-14; Sat, 04 Jan 2020 12:03:37 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ini9C-0003Em-0t
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 12:03:15 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jan 2020 04:03:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,394,1571727600"; d="scan'208";a="245137670"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 04 Jan 2020 04:03:06 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1ini93-0009yX-NR; Sat, 04 Jan 2020 20:03:05 +0800
Date: Sat, 4 Jan 2020 20:02:28 +0800
From: kbuild test robot <lkp@intel.com>
To: Sricharan R <sricharan@codeaurora.org>
Subject: [RFC PATCH] clk: qcom: lpass_core_axim_clk_src can be static
Message-ID: <20200104120228.brohuapo4d632jcq@f53c9c00458a>
References: <1578050744-3761-3-git-send-email-sricharan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578050744-3761-3-git-send-email-sricharan@codeaurora.org>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_040314_074108_73DB3038 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, kbuild-all@lists.01.org, sboyd@kernel.org,
 linux-arm-msm@vger.kernel.org, linus.walleij@linaro.org,
 linux-soc@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-gpio@vger.kernel.org, agross@kernel.org, sivaprak@codeaurora.org,
 sricharan@codeaurora.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Fixes: ac86608aeb82 ("clk: qcom: Add ipq6018 Global Clock Controller support")
Signed-off-by: kbuild test robot <lkp@intel.com>
---
 gcc-ipq6018.c |   10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/qcom/gcc-ipq6018.c b/drivers/clk/qcom/gcc-ipq6018.c
index a3597f46ad017..3f9c2f61a5d93 100644
--- a/drivers/clk/qcom/gcc-ipq6018.c
+++ b/drivers/clk/qcom/gcc-ipq6018.c
@@ -2620,7 +2620,7 @@ static const struct freq_tbl ftbl_lpass_core_axim_clk_src[] = {
 	{ }
 };
 
-struct clk_rcg2 lpass_core_axim_clk_src = {
+static struct clk_rcg2 lpass_core_axim_clk_src = {
 	.cmd_rcgr = 0x1F020,
 	.freq_tbl = ftbl_lpass_core_axim_clk_src,
 	.hid_width = 5,
@@ -2639,7 +2639,7 @@ static const struct freq_tbl ftbl_lpass_snoc_cfg_clk_src[] = {
 	{ }
 };
 
-struct clk_rcg2 lpass_snoc_cfg_clk_src = {
+static struct clk_rcg2 lpass_snoc_cfg_clk_src = {
 	.cmd_rcgr = 0x1F040,
 	.freq_tbl = ftbl_lpass_snoc_cfg_clk_src,
 	.hid_width = 5,
@@ -2658,7 +2658,7 @@ static const struct freq_tbl ftbl_lpass_q6_axim_clk_src[] = {
 	{ }
 };
 
-struct clk_rcg2 lpass_q6_axim_clk_src = {
+static struct clk_rcg2 lpass_q6_axim_clk_src = {
 	.cmd_rcgr = 0x1F008,
 	.freq_tbl = ftbl_lpass_q6_axim_clk_src,
 	.hid_width = 5,
@@ -2671,13 +2671,13 @@ struct clk_rcg2 lpass_q6_axim_clk_src = {
 	},
 };
 
-struct freq_tbl ftbl_rbcpr_wcss_clk_src[] = {
+static struct freq_tbl ftbl_rbcpr_wcss_clk_src[] = {
 	F(24000000, P_XO, 1, 0, 0),
 	F(50000000, P_GPLL0, 16, 0, 0),
 	{ }
 };
 
-struct clk_rcg2 rbcpr_wcss_clk_src = {
+static struct clk_rcg2 rbcpr_wcss_clk_src = {
 	.cmd_rcgr = 0x3a00c,
 	.freq_tbl = ftbl_rbcpr_wcss_clk_src,
 	.hid_width = 5,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
