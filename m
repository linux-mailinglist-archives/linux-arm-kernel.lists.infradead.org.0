Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ADE3DE0FC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 01:05:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YDj242zRM1zNAZTpkNSGTGH6hAfq1p+ZCcZGzl0MpEc=; b=XiSa7+5v7AOLSa
	qGB22SPZYFYwchPlOziuq1wZH4+Mvm9f8a48uZlUoX9YYYjpT48nKHm1vNA/ZuUmteaJ2U0wGdwO9
	eG96YOQ8vTAOQHPCJ7AEvZBEvV/SZlWCs6przWtlIHz4eTVpwnAi8I1mmfMaWQ0Rf7Gx4Xnc4OjTm
	30m/qOMj1l2SEkn3XDjyFsvDd32Hg4XqWnw+qPwa1N4Jerr8sm01ETCawqC9v4p+xaQa173J3zbXH
	K2OgN1MPoNlEnftBEYf3++Qf4UqVoMePnuT8UzVfG03F9PfJ7bFJUMlHAKGxJEFtXNvqXeL2B6G/z
	QtYXhHmPTKKQ6szXKsvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMKFh-0000kW-Ud; Sun, 20 Oct 2019 23:04:45 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMKFP-0008PD-UR
 for linux-arm-kernel@lists.infradead.org; Sun, 20 Oct 2019 23:04:29 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Oct 2019 16:04:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,321,1566889200"; d="scan'208";a="227130980"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 20 Oct 2019 16:04:22 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iMKFJ-0006A8-TH; Mon, 21 Oct 2019 07:04:21 +0800
Date: Mon, 21 Oct 2019 07:04:02 +0800
From: kbuild test robot <lkp@intel.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [RFC PATCH nomadik] drm/panel: nt35510_send_seq() can be static
Message-ID: <20191020230402.wjkdpvzjupujxunc@4978f4969bb8>
References: <201910210747.wcNwhnp5%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201910210747.wcNwhnp5%lkp@intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_160428_045236_2DD6D597 
X-CRM114-Status: GOOD (  12.89  )
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
Cc: kbuild-all@lists.01.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Fixes: 50e3376936b1 ("drm/panel: Add driver for Novatek NT35510-based panels")
Signed-off-by: kbuild test robot <lkp@intel.com>
---
 panel-novatek-nt35510.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-novatek-nt35510.c b/drivers/gpu/drm/panel/panel-novatek-nt35510.c
index fe03994a8018f..2d21180c90867 100644
--- a/drivers/gpu/drm/panel/panel-novatek-nt35510.c
+++ b/drivers/gpu/drm/panel/panel-novatek-nt35510.c
@@ -159,8 +159,8 @@ static const u8 nt35510_display_init[] = {
 	3,	0xCC, /* DPTMCTR12 */		0x03, 0x00, 0x00,	/* aRD(Gateless) Setting */
 };
 
-int nt35510_send_seq(struct nt35510 *nt, struct mipi_dsi_device *dsi,
-		     const u8 *seq, int len)
+static int nt35510_send_seq(struct nt35510 *nt, struct mipi_dsi_device *dsi,
+			    const u8 *seq, int len)
 {
 	int written = 0;
 	const u8 *seqp = seq;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
