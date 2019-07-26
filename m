Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 941ED75E94
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 07:44:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nypbMxdMaqpgsQT2uu8NxGapjEVOYU0zNcRLBsYodTQ=; b=Ob2t4ZjH0IMZUO
	FSEFZvlKHkBUUv4XpIIdha7JO3wWFBjULwVFLrj9nGahcn/kLsBYSzq5x5pigVLpeHQfMi+z92Whu
	7mZxhi1AUybkNFLGGec9WApF0k7qC9jCzofoJSbQq0m8sb0W2z4vJi/3yOd0lNVVWVNVt7IGqQsd0
	AlhUrIHTQctT/kT2dDCKvLBXgfNfAvAgDtBzy1XO6LIoJIlZ6d4hJhZa27dV9GUP7Rt1dWFL1Gg9P
	aXklGLvK6fdUC/Y1E+jzjCV4E/BCLc0IKioTWOnaLsiuSTSl+xXcXRWQiDhtN2qTFk5ec9wJPYdu2
	z95HeSaj8K44hjO+ZP5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqt1U-00066X-1Q; Fri, 26 Jul 2019 05:44:08 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqsy3-0003xT-Cs
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 05:40:37 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id C2B8C22314;
 Fri, 26 Jul 2019 01:40:34 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 26 Jul 2019 01:40:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=VhghfA5tFplYA
 G4+r3v8vhMBGV0zbnubw2hoRcBBm/Y=; b=UnoaOFXEOcH0mIeQ6xiDJRTx4iXQg
 FaZiasNi23dvnEE9840RIcFwehZ7Bwht4bXwspKig4dgjPgYBI5UcS1CLXIt9yko
 b3jebsEzrycjFRbk5j6xmIFl4GOWO+NyydaLcfRpTCyXEUuaSdnH8qSdTMGBAs/L
 YKg4NDRDBVMv4czzdNCrIcoMkvqa1wW3o6TDliQr0SIWggff2I1eUjq4A/ecdzvE
 d/4zEPdbjVw2x34flxlHFZ1uBxE89uhyJ9NiNnZYfMQMtEtWQisb3Ivi8RSPbw0K
 4XkBlmCfnI3SeZf079IYe7xjQcpoSFdtmkDS52oBimUDOy/Wuv8ybSL+g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=VhghfA5tFplYAG4+r3v8vhMBGV0zbnubw2hoRcBBm/Y=; b=G+GftQAb
 /rKZ9MAl7JMDFFpOmCOqFFqZD0CGUR7iC1/XnBvWS4YNwg+TLAxRzJ4h5yooJK84
 U+lY/yCl3tVi15rPc0QjxsCY3qxJb6j7YF8jATMD7yiuvMKT0qlM+5//o+/nYQ2o
 lzmQKpik+2CsMOMTyfNXo+32a83yNXu4zjTZeSyPqF03u9VUKJeorL2CWdLdZ8uA
 ky/i1c4zZ7+qncKpgSRhT2rUmUWl49rDBGge4FsbIGYj9GPRXF3cmGtMVpfr1X7D
 ak6099cdK84kaBJepcfhly+L589qq6XSdB0P+4QDDtXrrjoNiDlhOsjIf0wK/XRK
 VMH76LGgM4SduQ==
X-ME-Sender: <xms:UpI6XXVF_1C1lteWYT6S3CTWIeoE9X8i3ziVLaLl5RSh5G9Tt0Z1Yw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrkeefgdeljecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucfkphepvddtvddrkedurddukedrfedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgep
 ke
X-ME-Proxy: <xmx:UpI6Xa_PMnGd9Qab_zrULwXKFIsKv48MpcoUrUo0-8_XsgKdenlNiQ>
 <xmx:UpI6XcytPj3AIuERkV1HTGPs3NcjqAzEbwZtZzIpoaCFRQc6vsu5aQ>
 <xmx:UpI6XaGPUPeOmv2aJYvCY6rnEUfhD14HApn_HcS39f3fC4koiTYy2w>
 <xmx:UpI6XaANAR6MkRct3Wl-0IE2DCIFr5FTTggCZvpMiDDRTJ91KyQN2g>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2FF26380075;
 Fri, 26 Jul 2019 01:40:30 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 09/17] ARM: dts: ibm-power9-dual: Add a unit address for OCC
 nodes
Date: Fri, 26 Jul 2019 15:09:51 +0930
Message-Id: <20190726053959.2003-10-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726053959.2003-1-andrew@aj.id.au>
References: <20190726053959.2003-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_224035_799450_061BF3C9 
X-CRM114-Status: UNSURE (   9.89  )
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
 robh+dt@kernel.org, joel@jms.id.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These temporarily have a unit address until userspace is fixed up as
noted in comments elsewhere in the dtsi.

Fixes the following warning:

    arch/arm/boot/dts/ibm-power9-dual.dtsi:89.18-91.6: Warning (unit_address_vs_reg): /gpio-fsi/cfam@0,0/sbefifo@2400/occ: node has a reg or ranges property, but no unit name
    arch/arm/boot/dts/ibm-power9-dual.dtsi:190.18-192.6: Warning (unit_address_vs_reg): /gpio-fsi/cfam@0,0/hub@3400/cfam@1,0/sbefifo@2400/occ: node has a reg or ranges property, but no unit name

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 arch/arm/boot/dts/ibm-power9-dual.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/ibm-power9-dual.dtsi b/arch/arm/boot/dts/ibm-power9-dual.dtsi
index 2abc42eda7b0..a0fa65b44b0f 100644
--- a/arch/arm/boot/dts/ibm-power9-dual.dtsi
+++ b/arch/arm/boot/dts/ibm-power9-dual.dtsi
@@ -86,7 +86,7 @@
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			fsi_occ0: occ {
+			fsi_occ0: occ@1 {
 				compatible = "ibm,p9-occ";
 			};
 		};
@@ -187,7 +187,7 @@
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			fsi_occ1: occ {
+			fsi_occ1: occ@2 {
 				compatible = "ibm,p9-occ";
 			};
 		};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
