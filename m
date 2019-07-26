Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1313C75E83
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 07:41:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pi9612TgFZe/GclV96u3lhfjmqBXeo4wlBxD4H+s3xM=; b=Wye+0QYfzUISED
	jcyo4pDYhcYuN5FrjdV+sPKvdzzcJdOTE/iO8lLqmls7Ba/S/CcWZ1MKKJ/c/dEBQ/J8M9FlldLwm
	wHoXOL7SbPZTH9XKEHbJ+/kuHKeIzGLmS158YKVz8W3/DA2moNNYslsVlISDmaEaf/sQInu89JkBk
	vxJMY+jQGk21RfkgbBWNiffu9EeAKeqwrDwdbxUMm7XeV1g4ne5NX99ehYffrFURxZLZnOcKxmKPn
	9ybhHApy5pbGLOaHAPfoRct17WIaqfFg+q5BfIPQ+51lc57aPMolE8xGQzZYTN57Br9Lz8rRS8f6K
	qk9XagMrLLCPv0chXZ9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqszG-0004Re-6a; Fri, 26 Jul 2019 05:41:50 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqsxd-0003il-BN
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 05:40:10 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id B08EE22131;
 Fri, 26 Jul 2019 01:40:08 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 26 Jul 2019 01:40:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=4kLlrK+bLpUiR
 kTdTMxXoERa1h6aqhA++4P0gBqwURU=; b=j1juVrhhLMckXwlc7/pOFPMZKMA+I
 RioLQDqClV+EzcwgalYLqn3YgxAz+Wf6IRdPvGcOu6/clD3MmJbQoGs/TRXcpsHR
 Jl7HaGkoukusvw4/h6w1SpBVE9V2crg5eVfFui+C+C4CplAU0b7EvbPBPjoJ+cHR
 EjPCQuF2GG7W1593RMXIFN9SzmI9oo37/VLGE8MzYvBTUUHqpVMpb2Thwh1h0Xy5
 mDdx/NihtldJBsVoBOTW5GeQV4rcsmwfQo5I5BJLKtCZ1DqqUFYSjQpbPv8683Ww
 I1YisdHVQTKzcFHQjqfjY4DtUBiucsr+NDMauiP17wHa99rqAtxskWvlQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=4kLlrK+bLpUiRkTdTMxXoERa1h6aqhA++4P0gBqwURU=; b=13UwN+I1
 KmI1jM6XaX7KqMcfdklGfiOj4v+3/x0gak05kCI0WAwzFqngjuklcpYRpZoypVrv
 +4FCH9zedZd4jZTrr1cN96W4iWiIoo5VlEaUNRHpocOTmmqA1eiK8y3dxGuhzXSy
 iv4pulMva8nud3NVVL7A/Ep8a+O/gpsymiPuKw5tAkG1LfvD3J/Er0E3CAVcum+j
 xNeE++gs2FaZor+8afpKo+uieD3InFox45iBu5QYX/dFfkbeXUB0yh39/sRC4YEo
 wQC+Zxw1h78qTYGqghtXdRdH1p+L3wreiyW/GKq0xPG4clNkS9PT5UrQUGihStGm
 JFXKTRBtOeuWyQ==
X-ME-Sender: <xms:OJI6XdiRTr2aRt-BDK6qw-7fyBldu8ovlfnUSVmmSkSn3XINxW62Zg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrkeefgdeljecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptehnughrvgif
 ucflvghffhgvrhihuceorghnughrvgifsegrjhdrihgurdgruheqnecukfhppedvtddvrd
 ekuddrudekrdeftdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdr
 ihgurdgruhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:OJI6Xe_mKIh3JWASLHnuqueI1EB7lh5F-7duD1XI9g9vQEykLQRsHA>
 <xmx:OJI6XYsrIlSYWWVIwYsezpdWoSqeuo7EgxjCKf4jATR6Dep6zEuzQw>
 <xmx:OJI6Xar6DVyzt4w9Xj_SsYqeBM7Gg4IYHJnfKy75z1ZJzTR_MgLxwA>
 <xmx:OJI6XRWrAh_RDQYTk5AzX7F7e9Jiflcyj07o8ygtqzlmMMgytLbk4A>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8F1F5380079;
 Fri, 26 Jul 2019 01:40:05 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 02/17] ARM: dts: aspeed-g5: Use recommended generic node name
 for SDMC
Date: Fri, 26 Jul 2019 15:09:44 +0930
Message-Id: <20190726053959.2003-3-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726053959.2003-1-andrew@aj.id.au>
References: <20190726053959.2003-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_224009_462926_A600190B 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, joel@jms.id.au, Stefan M Schaeckeler <sschaeck@cisco.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The EDAC is a sub-function of the SDRAM Memory Controller. Rename the
node to the appropriate generic node name.

Cc: Stefan M Schaeckeler <sschaeck@cisco.com>
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 arch/arm/boot/dts/aspeed-g5.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
index 7723afc7c249..6e5b0c493f16 100644
--- a/arch/arm/boot/dts/aspeed-g5.dtsi
+++ b/arch/arm/boot/dts/aspeed-g5.dtsi
@@ -199,7 +199,7 @@
 			#size-cells = <1>;
 			ranges;
 
-			edac: sdram@1e6e0000 {
+			edac: memory-controller@1e6e0000 {
 				compatible = "aspeed,ast2500-sdram-edac";
 				reg = <0x1e6e0000 0x174>;
 				interrupts = <0>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
