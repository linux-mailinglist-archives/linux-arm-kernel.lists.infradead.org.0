Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F6B87418
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 10:30:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=goNuV2z6FsVvOfAmnZuKhVzOtvVKVRPBgMh4XhflTfo=; b=fGY3YN2uwnkCgD
	KR3bnui2z4fVltiAenFmwrgJxVhX9EPrgSC6vwfaA3wXQHV4nVcifQGBgCwDvt2/7QzCJsZc/acmT
	xsbNup/4VIInBiJH6oPTQytQGleJPwE7wLTOPyfiyQAWxcsWivKg5vgmJFpbwnG4r24EwkDYcweqU
	aoDQB1eMARkMOX0xraWGsQJ+vDg/ul8FjZb/iOpo3AglAdstXcPnEUew+EOP+wPQ7BrKl+uUhwtnl
	xYU4IYYRweL4HrmXnz6zPKsgaLQCAOEE0be0PcV55T77lw/FA1Jg/I6vniKtFLmJPVy8Uqjd8XwwO
	66/Y24EEd6/t9GNbMgMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw0IS-0004rA-Gh; Fri, 09 Aug 2019 08:30:48 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw0IG-0004qT-U5
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 08:30:38 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x798UZ1I117633;
 Fri, 9 Aug 2019 03:30:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565339435;
 bh=4Xbkn6elvsTb+7O7XxccoWaDLZ3csgRAgOrOdCJJ2o4=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=wj8n0jj7s9RmTUkgCNZBrx/at6fTh7B+zpI6WmrpGqYTEsf6SqD/tfiJzbk2WDLND
 vHWsyo/uSonk7NmQTQqRKZUB4CXGmTjjIskkzYeOb5ElXoN7V3rqsE9aXrRz306mKN
 8/EB5DxudO10hVEIM5wQMt1HbYDgo7NKLbHNfUTE=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x798UZ88117311
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 9 Aug 2019 03:30:35 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 9 Aug
 2019 03:30:34 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 9 Aug 2019 03:30:34 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x798USdf070370;
 Fri, 9 Aug 2019 03:30:32 -0500
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>,
 <linus.walleij@linaro.org>
Subject: [PATCH 1/6] dt-bindings: gpio: davinci: Add new compatible for J721E
 SoCs
Date: Fri, 9 Aug 2019 13:59:42 +0530
Message-ID: <20190809082947.30590-2-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190809082947.30590-1-lokeshvutla@ti.com>
References: <20190809082947.30590-1-lokeshvutla@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_013037_014808_FC1B05B1 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Device Tree Mailing List <devicetree@vger.kernel.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, Keerthy <j-keerthy@ti.com>,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

J721e SoCs have same gpio IP as K2G davinci gpio. Add a new compatible to
handle J721E SoCs.

Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 Documentation/devicetree/bindings/gpio/gpio-davinci.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/gpio/gpio-davinci.txt b/Documentation/devicetree/bindings/gpio/gpio-davinci.txt
index bc6b4b62df83..cd91d61eac31 100644
--- a/Documentation/devicetree/bindings/gpio/gpio-davinci.txt
+++ b/Documentation/devicetree/bindings/gpio/gpio-davinci.txt
@@ -6,6 +6,7 @@ Required Properties:
 						66AK2E SoCs
 			"ti,k2g-gpio", "ti,keystone-gpio": for 66AK2G
 			"ti,am654-gpio", "ti,keystone-gpio": for TI K3 AM654
+			"ti,j721e-gpio", "ti,keystone-gpio": for J721E SoCs
 
 - reg: Physical base address of the controller and the size of memory mapped
        registers.
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
