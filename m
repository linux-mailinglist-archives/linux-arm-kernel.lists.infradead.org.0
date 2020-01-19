Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4757141F10
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 17:32:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q5YCV/6sLsYgYAWOAWETU9DoxMF2Vs4NWOjA+ppl9iE=; b=N2pSqsbLppPLr7
	e44RzletSb1zcL6b1mSoZCvobzVq8hZPf2ucQRXAKwZAxBHoM3zifO9LPsGJHDdpw6bJfL2b5TRWH
	rQMsIM7rfoTSoEFBmBaAmXZCKoYGNNXzaNSO35bY03AXWbLdSCLA/HZogyZyfYLEzwkAY0/vcFcz8
	tIEjedxsfDFbuBHSiP5Iw8yaa/xdVMWHICapmN0EGV/Bw2zpwMJLNo8welPI89dyUjbc+8j3fK21f
	X7Vni1YyH+o6RmuEal2UxStObihCJnb+B6ELZoDw719N7DEux57WGAdg93hGwzWcXmA2qoFMb3x7a
	dnqYbQ0xWWb+nkartofw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itDUf-0005cp-1s; Sun, 19 Jan 2020 16:32:09 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itDTl-00054z-SV
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 16:31:18 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id D364A21B1B;
 Sun, 19 Jan 2020 11:31:05 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sun, 19 Jan 2020 11:31:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=UsvFPJigdCzO6
 2lHJNiea2iRe/frpYuHMue0slMeRJE=; b=W4fvp2pVhHK38AWtgGRFoGVjdsB0T
 0sYAVCDGYmZNXC9K2BAfjqFnvSUp7ZVG+J8kDQc23m7WKXeeRUTzu/2XVBX7UH6t
 Hfd8panBR+9smIJbikTUCT9CkYUlv5ATjTO39GyJRM31yvW4yilu7DnYtea1rOXV
 d3f1IB/wr7uWxUY7Ke4IH09HlrrrC3iv2QxSdTbGK3rnU6Y1ZoKrhI1dDxUJWOQ1
 oqI9tMUq+h7qGniUyErZ69dmWn63HSEs1fDzfN89wn9weCYL0Y47KFbmNVFu1a75
 fGDelOYNnlxzL7DjKZq6dlM5md16cAZq+5dzowJy0MCsURcjbiHksuPyg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=UsvFPJigdCzO62lHJNiea2iRe/frpYuHMue0slMeRJE=; b=k6NpJEfe
 GatKJHvkgAufZB6cgbBgeqpXMzVqPzVPyfMwj7PdzBCLHbVC3/LZTcx4LHoxtVpb
 x99vnCrxOB0AF5gAEQ+0gTbaGd6fyy3pKNW/aN47gUyEjliJpJbdpf05Lw5Y0HjG
 HoshvpJnuxvfZvComm/IFAN2Ksmj7SSDNJfsx2j7FZsjUdhVHwLy+U32h2540qSt
 nO79altPwyLSBZKp7YbqXt4uUyNC6EpC5C6sgSwp7OTYoe2GG8mUt6jdcROSC8Kc
 7IlywreXFo0TSIVb8Ud3lzWmffOtrXgpjPtyJDeNNAWtRa5XNmjkbR+8l1g8FOGA
 ZoEorkZUZK4FVQ==
X-ME-Sender: <xms:SYQkXulR7VnYWUj7ovL5aZqgowfoLNSyJ7vaHteoh_oghZke52KEoQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudefgdekkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucfrrghrrghmpehmrghilhhfrhhomhepshgrmhhu
 vghlsehshhholhhlrghnugdrohhrghenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:SYQkXteuJgpxKJ6t9F3AY8hVzNvW4F8-KqB1uxxxLekzxGmM_lVE4Q>
 <xmx:SYQkXs2iiskIvKpxlYDy3aCAj_z2LS0AGcbr-vzvu2xepKgjaxvmUA>
 <xmx:SYQkXqlkCaAZZrt-A9vzWYSP_-nGM8vXO6INHuyjn9yNqHCdWJBswA>
 <xmx:SYQkXmtIEYS_vRRMVuwfqVzBqDA3XDfHBGNmB9F0kKgqc29m-ppzHQ>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4339480062;
 Sun, 19 Jan 2020 11:31:05 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 2/9] arm64: dts: allwinner: pinebook: Remove unused vcc3v3
 regulator
Date: Sun, 19 Jan 2020 10:30:57 -0600
Message-Id: <20200119163104.13274-2-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200119163104.13274-1-samuel@sholland.org>
References: <20200119163104.13274-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_083114_175129_43DC46B7 
X-CRM114-Status: UNSURE (   6.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Samuel Holland <samuel@sholland.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixed regulator has no consumers, GPIOs, or other connections.
Remove it.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
index 3d894b208901..ff32ca1a495e 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
@@ -63,13 +63,6 @@
 		};
 	};
 
-	reg_vcc3v3: vcc3v3 {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc3v3";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-	};
-
 	wifi_pwrseq: wifi_pwrseq {
 		compatible = "mmc-pwrseq-simple";
 		reset-gpios = <&r_pio 0 2 GPIO_ACTIVE_LOW>; /* PL2 */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
