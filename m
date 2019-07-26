Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F55175E98
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 07:45:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qUbSHRJ0f6A4xP+T91FKP6FgsxI2gG6R1WdO3iukrRc=; b=iDJ7aZFzvJWQms
	OF9SFqx4ichrWdpgMDdntJnS+444d/qLKLQN+YdkLcuNKrEFG5scfTBV5TDdnorN3NEHr2OVBihBH
	J0wEn/pMUXAklhlSWYehPi4CNaQBsb0znGpNlbjGZ5FM6PAsptC3h/fvOzWcYJANisvD73ZPTnWWw
	1YKs+vG2G7xX1FYSbS0s2IJ1bgMZOlFotToAX00XNltvFl7A+D6ljezvKr+z7Zhs8Ci8WtsoWvHn+
	+Ndw8vYWZPbGMZ3bB9M5YryvbXD716nCxpuYRzTXTK4/Oi8YnME3NAMncvLBOYMIY3ifhUbK2ljWm
	wSa9tg/7fC8v2Bm3RKmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqt31-0008LC-Tq; Fri, 26 Jul 2019 05:45:44 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqsyJ-00047Z-J0
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 05:40:54 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 013904354;
 Fri, 26 Jul 2019 01:40:51 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 26 Jul 2019 01:40:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=N21lR+UePFSTS
 Oonw/4Zqd1zUZuquw1QFMaclxAMTOA=; b=jo8iGeq1m8yt8zAmXX/flAhKvSEtg
 WYJ1i6T7YcE5DCu9bvy4//qdzKcdYYhNohYCcriWGhFAXD3bQUEM2KT5Wew2IC27
 gulXrf41UM9uiYY2H5t+ikWmu4m3XfVwBS7M6bCchg+uFf2tVbs55dOCNO3st/wJ
 Z/fXGLKBxkB7uvcjg7UQV5xM3s2nqAjRgEFoa1MKiC4QA9Nf+oPCl7hWkTAhHJQK
 t12HMX88EyrXOhUp7NAFKN2E3xdkYAgX1FhjKBHrdSgWUV5KTR/Lh2OA4oZ42EjJ
 aKHpczQ7k9wxMKWAEnK4/AIOcmkVC6rLrFaoyinNUDvNsMqZJ+WF+60ZQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=N21lR+UePFSTSOonw/4Zqd1zUZuquw1QFMaclxAMTOA=; b=p8Oorf8g
 IUOpF4VAnSxAfJw+VJX2INYAsSTTwFkwxD10LfL7VKhs+4m0DyHjtAJJ0OVXAHiU
 u3IO5bJ9A/uZxMtX0UPuGZl0sO5We1CQT60AN8ceWUc18ICxbUslYbskjH+64uS7
 3bwUz+/mXQ9XL4VD1htxZLIcj3zXgubiLd/krQ2gke+YaRd+Z05QFTryr3qKSHig
 jAxi2mEbWWCoECey/nD37TdfmPKRnxr/R/IIc1lpM24StPOyOkuc0riAY7djA25W
 uA2NSP5Qg+oJ1GegOMCLxensRd3ukx6uPgQw0iTZEfHYDSlcH5XBMBrgJs4A7tXV
 quP7GOrh3ocrvw==
X-ME-Sender: <xms:YpI6XZBXHBUjkTamzgVJaJX3ZZIF043dEm-8dSubgkdA6W7ZyNmvIw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrkeefgdellecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptehnughrvgif
 ucflvghffhgvrhihuceorghnughrvgifsegrjhdrihgurdgruheqnecukfhppedvtddvrd
 ekuddrudekrdeftdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdr
 ihgurdgruhenucevlhhushhtvghrufhiiigvpedv
X-ME-Proxy: <xmx:YpI6XVauUYUaL6w-Ojy8DaeMEEg31_SL-iuxMs0zg_y8dm91cbzpOw>
 <xmx:YpI6XdryhR13X_J2SV_VZwHrmVvXr84Y0NIXLDZBVTaLjAP1c5h9yw>
 <xmx:YpI6XVCgQnK2xnZv0GuV63LRFCER4n75Y_rZVJCTiPza2RuyYipQLQ>
 <xmx:YpI6XZkqLpkruswpMA1AwEToQAPhlxpqqrPsJGLOg-jkJeGTjfmePw>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 76394380076;
 Fri, 26 Jul 2019 01:40:46 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [RFC PATCH 13/17] dt-bindings: ipmi: aspeed: Introduce a v2 binding
 for KCS
Date: Fri, 26 Jul 2019 15:09:55 +0930
Message-Id: <20190726053959.2003-14-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726053959.2003-1-andrew@aj.id.au>
References: <20190726053959.2003-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_224052_290428_42B9AA74 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
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
 Haiyue Wang <haiyue.wang@linux.intel.com>, Corey Minyard <minyard@acm.org>,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, joel@jms.id.au, openipmi-developer@lists.sourceforge.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The v2 binding utilises reg and renames some of the v1 properties.

Cc: Haiyue Wang <haiyue.wang@linux.intel.com>
Cc: Corey Minyard <minyard@acm.org>
Cc: openipmi-developer@lists.sourceforge.net
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 .../bindings/ipmi/aspeed-kcs-bmc.txt          | 20 +++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt b/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
index d98a9bf45d6c..76b180ebbde4 100644
--- a/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
+++ b/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
@@ -1,9 +1,10 @@
-* Aspeed KCS (Keyboard Controller Style) IPMI interface
+# Aspeed KCS (Keyboard Controller Style) IPMI interface
 
 The Aspeed SOCs (AST2400 and AST2500) are commonly used as BMCs
 (Baseboard Management Controllers) and the KCS interface can be
 used to perform in-band IPMI communication with their host.
 
+## v1
 Required properties:
 - compatible : should be one of
     "aspeed,ast2400-kcs-bmc"
@@ -12,14 +13,21 @@ Required properties:
 - kcs_chan : The LPC channel number in the controller
 - kcs_addr : The host CPU IO map address
 
+## v2
+Required properties:
+- compatible : should be one of
+    "aspeed,ast2400-kcs-bmc-v2"
+    "aspeed,ast2500-kcs-bmc-v2"
+- reg : The address and size of the IDR, ODR and STR registers
+- interrupts : interrupt generated by the controller
+- slave-reg : The host CPU IO map address
 
 Example:
 
-    kcs3: kcs3@0 {
-        compatible = "aspeed,ast2500-kcs-bmc";
-        reg = <0x0 0x80>;
+    kcs3: kcs@24 {
+        compatible = "aspeed,ast2500-kcs-bmc-v2";
+        reg = <0x24 0x1>, <0x30 0x1>, <0x3c 0x1>;
         interrupts = <8>;
-        kcs_chan = <3>;
-        kcs_addr = <0xCA2>;
+        slave-reg = <0xca2>;
         status = "okay";
     };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
