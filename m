Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E69138A5A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 05:50:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FsFcUb3Ox0WtH2o+hz0bHYR9nc3ve/AEYy+iVnYxlao=; b=fjLnuwT/IR70/9
	tAw08yFqr0GQXO5LitkGvPnYCMsegnOw3qiNe/aAJSzZ30Vz3KmidS8f9bU22FxO0iZbIgALfwDha
	fVHYlK3P3eEZWBxQPyMeWfnbrAdvn4Aa3eYohl1TMJhrAcXl9THdcdWBlNg/uJD3WInWh+EBEp7+Q
	sstqJwjixv3EBlz/XdlAymsg4lIARLVGfC+Hmp96MZV+bGYhwCQbnd429PZdfPGcXkRRWONPE38ql
	lLkRUnWIWQiBHH++ewQrJrUb7n0MRo62gug3WEnXhoKvyvWoPv5nj8FSaAnKryFrBQnAyVEdt1fwO
	y1XAqQippzDtRVXut7gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqrfq-0000Dj-SN; Mon, 13 Jan 2020 04:49:58 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqrff-0000AL-RX
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 04:49:49 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 243A76212;
 Sun, 12 Jan 2020 23:49:40 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sun, 12 Jan 2020 23:49:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=2ekAlpSljFfQr
 TZx7XNCd5b2by7K3DL7GlymedphPIM=; b=i0k4vXptqYZXL+Owi2N8+DPbkOYfd
 LzfYHKQBIihIX0X43VHBhwp/iERjwq/ZDAocL8X8a5RWlzAOA8JnQVlOjsXUtWu1
 iJCxof2lflZU6X8kfqVMB5UjDStLagt3AcStEY+1V/Sh4z2fuArjmMXYMlrtLqNe
 ORuTndsH221edDVXzrrcwBdcpC3cNMXdv+kdytq0I/+bp27XzUmQpGD2hVC3A5nS
 bKnyX6m2fXck2kBKWuIx28oYUh3m/D2EI/4QsfinnF3DB4ZLJSVOMzWzM9vMsINh
 2/GdwNTIKglQV4x8C2Q8veJvH5yBrmwH4be+0iPfKYmmgwiZvH+BNMVgA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=2ekAlpSljFfQrTZx7XNCd5b2by7K3DL7GlymedphPIM=; b=rZavhl8Q
 l/iBfmpCHwiS6ZsDBOn6gKOYlLTy9Sv0ppaeVY5ronq39g9wYY3xQBM5N/zdzvf6
 3p2kEHbVm6kjCO9I/PSunFa3/ahWx9bpwShs6KD/8aPqLhSrdsqrX466R2Z2+yi0
 yjB/MKnfzDoczHKyM/A3EWForAzuwR2tXhIxnoHA/+qMc/2VhI6+n4fu4PFmTfAZ
 8qalBabrN5Am9ctB86J06kIQP6PUWuy6sAuySibk31wARF0hgnFfNZ3aZwNZlyxk
 W2pNJYaepG+ISmVXjk+UYReUOdrtoSKO3ESn1f7B/maKZSVNlQdtYDe63TvJY18e
 EpDUFaDda8L/CA==
X-ME-Sender: <xms:5PYbXlN9TM8Qwp6WG3awgpTX_Yk4y3QspECX8uPl4CbkWFumMFuxmA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdeiledgjeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghm
 uhgvlhesshhhohhllhgrnhgurdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:5PYbXpjqtEdhyaSGA9mAH6hdCa8TzHSmyc7ifc7sUB3K220GwTVDZQ>
 <xmx:5PYbXqlZuJ70v8VyVDR_O6QJ7l1PtV16IGd3HTfeG_avxhs39w2bGQ>
 <xmx:5PYbXtg7ft5FpN2nsiow6mY8eAP3ffd5hgSJHk5H-lusARA4pJWiHQ>
 <xmx:5PYbXvStCPeXzycTBqgH2ajdimjR6NMVe5mCTHyd3hlHE-8DrEdOIg>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 65CFA30607B0;
 Sun, 12 Jan 2020 23:49:39 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 4/9] ARM: dts: sunxi: h3/h5: Add r_intc node
Date: Sun, 12 Jan 2020 22:49:31 -0600
Message-Id: <20200113044936.26038-5-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200113044936.26038-1-samuel@sholland.org>
References: <20200113044936.26038-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_204948_049080_89E21420 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The H3 and H5 SoCs have an additional interrupt controller in the RTC
power domain that can be used to enable wakeup for certain IRQs.

Add a node for it.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm/boot/dts/sunxi-h3-h5.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/sunxi-h3-h5.dtsi b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
index 107eeafad20a..62660108550a 100644
--- a/arch/arm/boot/dts/sunxi-h3-h5.dtsi
+++ b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
@@ -814,6 +814,15 @@
 			#clock-cells = <1>;
 		};
 
+		r_intc: interrupt-controller@1f00c00 {
+			compatible = "allwinner,sun8i-h3-r-intc",
+				     "allwinner,sun6i-a31-r-intc";
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			reg = <0x01f00c00 0x400>;
+			interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
 		r_ccu: clock@1f01400 {
 			compatible = "allwinner,sun8i-h3-r-ccu";
 			reg = <0x01f01400 0x100>;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
