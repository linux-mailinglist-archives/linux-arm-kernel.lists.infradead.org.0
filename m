Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A1010FD3A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 13:07:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V4VKMMB25qmlXrouK8lAg57oifghTZGGkzEiBi08cWc=; b=SDPh9p0VHuzihn
	dfNIBcONcYoW2vFr1o3/N/sia4h6oayypwkArxsGSgPMhVPZB/MsCIkEif3iCYEEACiLLjWJsgvkI
	o8vgHdX7NGAXM1aqSLCfGXIwDaEpmTxDHFiPZ0mApbjeY33SmYRivV8E6AI+yBHlSIzCZksNWVfHH
	OnPZ70UFTm9FEfDEMUwwjzVWlI/EUgb7VUc1NuKQNuo7qybMeqgRvigXrpkarCsYiWsx/cw0fwpo1
	m3/HVGHgEdiBNyQJcDdqwGHKhuAv5Uv8HhOnrvLeOnOIJuY8KVMyxZLVMOJCNZmXVlCa2Ul+fVx3e
	+5nHRpiEtUCKtAxDM/nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic6xQ-0005SM-Gw; Tue, 03 Dec 2019 12:07:08 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6u0-0001JK-Od
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 12:03:38 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id C3E8C22083;
 Tue,  3 Dec 2019 07:03:35 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 03 Dec 2019 07:03:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=tDbn2lnY4YnA7
 5X5LYWz7jhosHuxo/9hHasNksDYQ9E=; b=KnHFG1qsnC0CBWROzsm9lLVGD4yXX
 yXsn8x7JfmL1iMicxQ9Bv29H1/ImfJvpNNvzhqUVtwD2RU7NyxFfelvNu+fLskbn
 R12c4F9x3IlOJb6aK2ahWGEbb4lGMHuTrirLaboXsWZFQBl7zPcxfqdmHpEWMZVt
 xpLjzL3SQX5VcS43sOAeMFSagogwYb3QpG4R3TlFORjm2TDCa5DA4Ix/+QPwDAZA
 qeLMZLn54OPBQiQy7d/S1QJKBNQ/WkQG2fZta5QFvAmeX5jmcU3jsM6Sufue3B1Q
 qIVoSx0E04zhNhHYiDWgWHM8UQKLiNyN0/ByOcmIGpPgg0OZgG0Zxl+fA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=tDbn2lnY4YnA75X5LYWz7jhosHuxo/9hHasNksDYQ9E=; b=Rm3MmifX
 jeHEre1+PElzDzsddqxc2BTQrHIWquaWQ+1Swf87C07BWCxVYqya0CDpBd4R6Hwz
 G94AKvElbOT6ewWpHGCOYwKrLZxVDvsKMaInhyYJHDO7eHIju+E4po2DmCcdh1MR
 jOh8qu6uzqTmNaHSMOZQxgaRljylYsT/JihlbVBF/7X6lQ1j2fiwnn/2ppEl7twB
 ZddbSeCZWi+cetEpaufHo+IJMs2vE/h6wBDhSRThSoUaEMFz2rFRLY4ccZPFq808
 urA9uTyKEShr2ZU9ODPWGn0Lx2VV0KkYhfzAO3l/I3wDyvaDXwU1rcsfHA4N12st
 qGApoVMc/nxrCg==
X-ME-Sender: <xms:F0_mXUYOT_MKjOxhU5H2gjlKPh-NZCOSBwDnL_WzOpb1jlOqHXwY7w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejjedgfeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecukfhppeduudekrddvuddurdelvddrudefnecurfgrrhgrmhepmh
 grihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihii
 vgepudef
X-ME-Proxy: <xmx:F0_mXZqVPzaBlE9vSyCRRDplhbuuqGw8cMn2T36O9LTbCvZttfhpOw>
 <xmx:F0_mXQvddJzgU4CqVnAzs4k7xGJh3V921k6hJciCtfjQRjYGHvz1ig>
 <xmx:F0_mXTNFpNdOoll9xKxb7AAI3cUWHOuuSPQJIvRXNsZzYL3Z7JVzVw>
 <xmx:F0_mXXJfGDDVZlPr89JXlnzVgi2cAAwhyNrjUe530FXhl5FK2ZrjaQ>
Received: from mistburn.lan (unknown [118.211.92.13])
 by mail.messagingengine.com (Postfix) with ESMTPA id B435530600D2;
 Tue,  3 Dec 2019 07:03:32 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 14/14] ARM: dts: ibm-power9-dual: Add a unit address for OCC
 nodes
Date: Tue,  3 Dec 2019 22:34:15 +1030
Message-Id: <895711a51b34e0618761cb9e6594e6734769e1cc.1575369656.git-series.andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.08e3a6c95159f017b753d0f240086d1a7923758b.1575369656.git-series.andrew@aj.id.au>
References: <cover.08e3a6c95159f017b753d0f240086d1a7923758b.1575369656.git-series.andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_040336_979606_1E07794F 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
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
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
