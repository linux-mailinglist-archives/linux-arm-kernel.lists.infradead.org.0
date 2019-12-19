Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9F7125D6B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 10:16:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kAVXSQKxErA9NP0DdlchLoCWO027nWy/OF6nTTK0FOQ=; b=OuKTx1ewqnogBG
	8lcuKEkeaTt49zHK3NVyTmJVQZCp8+N9BtrzLw1NMLFXixxqlBsedY2QE+bz5mflWLwDWySQoQq1y
	dEGRhHO59vNe28xYlTl/W73imZljdtbYRt4yWvcwIW6oy1boh/OHv/DNOqptnURW+T6wjB9mz0DZM
	pIRfnDRJnpTUEwq4QiAeL+XncBlzJTszFhYvLrZniy0BWKTl4rR9nV+U8CdXEnHVOJfTLYJVJfN4w
	OASNtmCvolr03DdB2lDjvxHgJ3B2PtOGiwuoCnT247XDe9jK8ysy10Z4lkW6bLP9bqiSXLOuDPyI7
	NkFWtShMuMxRMhqUEN8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihruZ-0006B4-9M; Thu, 19 Dec 2019 09:15:59 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihruM-0006AE-IY
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 09:15:47 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id E183841D;
 Thu, 19 Dec 2019 04:15:45 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Thu, 19 Dec 2019 04:15:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=G5UPEfUePilmi
 Kq9Zzhax+Fl5ZCF6mzogvtNjEtgTDU=; b=YmyrB8pd/2JYpXlSDP1Po8sx4BIz3
 jyTfkbJzWoFzksN8GU93ZZFFQ6KQc9dsQ3V8GCBBZ6Xug5ekW13SuBs2vn7tAYC5
 eqUCozIJ4fVrV9w0HMrYvFMZOfEPPWtqGCCc1M+3ko7poABI+mWSDElaNxqJXry1
 UohW6+DKVifS1P82m0f+RJKbBaCpG3CyhyhJaqW3RlVerXOqfmA4ixkXDzpjWL34
 b8kpVb0J9SU8sqUsih5Sur8TXFUU/pTYKm28nR7cdlxe8PAVd9tQLsiKXDH2dk3D
 xtFJjZo7yQnNLDh3y7/goeVCou+7VWJgnkIDBCqiCMWy3Piph2xu9hOrg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=G5UPEfUePilmiKq9Zzhax+Fl5ZCF6mzogvtNjEtgTDU=; b=YfR9ZfKL
 OEfRyNRhT/eJxnblMjl+++kwb/F81QYJu9jjMQIJt6yg5nZUi7Y2LVJQkVp8jdBj
 9Fwq+woNPzSXPHnNcMzWDylGmieZnXCaca2QwvS+Ois6hAhvU4niRpa+/KKHpS69
 qjiOZd/hCaWSWmxSY37jGW+OPcRwoG9MU/Te1e5KahAGW0/Z08LnKZnqpYYhSsHn
 CYtyI95dZULsQUb00VHrFbWtrxJ/hUKgfwsqTwN05mHZtBvksxyEq/k6YH8pbntM
 oqexmy0+Me4BPNjCRX+sY7nJ7nmYBskMlu94x4eDaA38EwwuwIsNcG5Q9AhSrFgW
 F8sqMJDGDvw8+g==
X-ME-Sender: <xms:wT_7XYjYluqvM0Vr79IDD7KbXSUcTVzAU-W-qVcf3tO3J_CagSnKYA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdduuddgtdduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrgigihhmvgestggv
 rhhnohdrthgvtghhqeenucfkphepledtrdekledrieekrdejieenucfrrghrrghmpehmrg
 hilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthhenucevlhhushhtvghrufhi
 iigvpedt
X-ME-Proxy: <xmx:wT_7XVRXSZe4qYCHs06wPjl0rC3HqMohfjZzyrRWxmXkZIb-MjKNGw>
 <xmx:wT_7XbGTymmXaLyk30kpH7LRCg8DAn7eTgkrt0_tQesWpltCVoZFLA>
 <xmx:wT_7XdnxHMCWvVr-NJVTuWQop5AyaIeMXmQPhbPExtjHcxUBzZw3Kg>
 <xmx:wT_7XYwqFUS662ZiYFIP7FtFUh6GFlLVMrcbEFqXzu6CB37qQLhDWQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2D8D6306074E;
 Thu, 19 Dec 2019 04:15:45 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>,
	Maxime Ripard <mripard@kernel.org>
Subject: [PATCH 2/5] ARM: dts: sun8i: v3s: Remove redundant assigned-clocks
Date: Thu, 19 Dec 2019 10:15:36 +0100
Message-Id: <20191219091539.948530-2-maxime@cerno.tech>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191219091539.948530-1-maxime@cerno.tech>
References: <20191219091539.948530-1-maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_011546_629233_AB00CD15 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The V3s mixer node has an assigned clocks property, while the driver also
enforces it.

Since assigned-clocks is pretty fragile anyway, let's just remove it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/sun8i-v3s.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-v3s.dtsi b/arch/arm/boot/dts/sun8i-v3s.dtsi
index 23ba56df38f7..81ea50838cd5 100644
--- a/arch/arm/boot/dts/sun8i-v3s.dtsi
+++ b/arch/arm/boot/dts/sun8i-v3s.dtsi
@@ -123,8 +123,6 @@
 			clock-names = "bus",
 				      "mod";
 			resets = <&display_clocks 0>;
-			assigned-clocks = <&display_clocks 6>;
-			assigned-clock-rates = <150000000>;
 
 			ports {
 				#address-cells = <1>;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
