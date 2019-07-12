Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D220566517
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 05:38:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eJ6ijhHxiSh8YFOf4V1KJWzEvyH/CA4K5srV55pYk7Q=; b=s8VU/2uZ27gd7j
	msuZmdc1VxlfLlg/dtiQLP+Jg+LKu2J67Ow67vQzp6KGxrK+0tNdRHeuLUfh6ecvGt91CDTmZs2VO
	PL9N6EyhXNoLlesRAnqr1n087z5Ic2B/evqOf2qieTulqKzHx34tyKToV4jyzbGnWt1+pwHlCfa+G
	4sU4Ih1zwN4BMPMsP85ZT3ptxJr5Z+wDNKJWnJF+YeHmty3lFzwH+BbjP8sJr0IAEfBYHU5du10H1
	FxkhZer1oOIPNjQHFSQsJMx79VMdv89pkK1pCbuDI6v58wsH3AhI8LgimFNkL+PIf/pQEsgkk87AK
	yY/vmozPuku6FaNJlaRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlmO9-0003YV-VG; Fri, 12 Jul 2019 03:38:26 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlmNP-000386-4y
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 03:37:40 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 7DEF8221B6;
 Thu, 11 Jul 2019 23:37:38 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 11 Jul 2019 23:37:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=dffcCV/HTGPbH
 G4a1USO9iem8eItTEWWhc5RSmq1hAI=; b=hvOUJDaVw0E64wvrHZXP1Oes8M/Fc
 RWnfW0PU0RGjOCCcKtXjhH/sw2Dn13C+j4QO8441uGf4whyBHjDMAKEWN9dFXKEg
 hei+yYCk7xmjZZBTfQowq6AVzp2VjFDvEIAnWUc5r+ALtfLWW7hbVMVtd/uDvAeK
 hrdEeDohrhBEdacYfD5RooOQj6g0XX1cLswOSqLx8LIReIBatfumsqWHj1vX6iqg
 bmNDVIu6ckUNRb9o1K0GJVp+J7C1Oz/IbKp4pTdBSbgKszKPSrK+ZmJ0EiLdBVMA
 VWujdfhMLOHJOqPEh5XRZuQxv2T2gMpth1BnDebYCNOaBojm5NmAHON6A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=dffcCV/HTGPbHG4a1USO9iem8eItTEWWhc5RSmq1hAI=; b=iSHTMVXU
 mxV3vmRFRmVVW+mit5S5ZMXNozoqSQWJcublB6670A9pjyweeXDBZbqkqeUFNZPX
 eyJHXGl+t+RpztWiGfpSQub/BVtKD/55DKFgPwhBzUCJwEXcHrNSIx/NSyTkvtJr
 UxVESKXOZ5utwVkEQh7Luhr1d16d9tbmhsq2s6g05Lqd5PFqv+fdygQReH0PKFsL
 M8VIbkBg5rdLXhP+pCaScFMbUF6/Z9RpZCVBDdLwwFjSW69iuzlUKlvHGmpTBMtm
 Vyf3tKLOX8bavFOPWYF9u3xzV0Hn4puLy9uHB3KylNUyBFGTPcqrqjXxklWHbYCx
 4cgIXtTiol9zMg==
X-ME-Sender: <xms:ggAoXaGyefVf42dXhHEOtBxgoSN6aycfHZr92g4z7pxQBUPew1MFmg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrgeelgdejgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucfkphepvddtvddrkedurddukedrfedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgep
 td
X-ME-Proxy: <xmx:ggAoXWC6ZgShKWOurnS3nvIiJVjIknyj_BY69a-iCWxzewPPwyPZSg>
 <xmx:ggAoXc1kMekmbsBEoRlxOszKa5zqTL-YSbGEyxbr-GNhFugkv7g3Bw>
 <xmx:ggAoXbO7iRegCKzyPLiAhLh2wreM1z15yRzETjDCyMljg4m2GwQ2vw>
 <xmx:ggAoXdUEevS5f6CffUvq58wmgzNzadHCRaxWf-1u1EYK460jZVXcsQ>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 921D9380084;
 Thu, 11 Jul 2019 23:37:35 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH v2 2/2] ARM: dts: aspeed: Enable first MMC slot on AST2500 EVB
Date: Fri, 12 Jul 2019 13:07:26 +0930
Message-Id: <20190712033726.25237-3-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190712033726.25237-1-andrew@aj.id.au>
References: <20190712033726.25237-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_203739_304704_DB776EF5 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, Andrew Jeffery <andrew@aj.id.au>,
 ryanchen.aspeed@gmail.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 joel@jms.id.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enabled for testing purposes.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
In v2:

* Leave sdhci1 disabled

 arch/arm/boot/dts/aspeed-ast2500-evb.dts | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-ast2500-evb.dts b/arch/arm/boot/dts/aspeed-ast2500-evb.dts
index 556ed469830c..5279b1040c37 100644
--- a/arch/arm/boot/dts/aspeed-ast2500-evb.dts
+++ b/arch/arm/boot/dts/aspeed-ast2500-evb.dts
@@ -94,6 +94,17 @@
 	};
 };
 
+&sdc {
+	status = "okay";
+};
+
+&sdhci0 {
+	status = "okay";
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sd1_default>;
+};
+
 /*
  * Enable port A as device (via the virtual hub) and port B as
  * host by default on the eval board. This can be easily changed
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
