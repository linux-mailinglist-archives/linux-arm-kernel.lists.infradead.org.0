Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E652511DC77
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 04:07:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8/HaFZWXL7wp4i/Zl+JHIqGEHLOQVK0nUkjlZ0lmUzc=; b=H1iCAXHTnDT0Hg
	+9OCrDPZizdNA8+wEkdHm/iR9f/gXiMrobpip+Ncy8C5/02krU4A78CTvTuAg1P5Rygc35+s/9RPi
	cg6cuzDLzfjBjWwZscChx4Jq9EsiUwQQP9Nj30OXv+24VzzJFirsFao5DHZCXTYN8Zs9l35dklXdF
	YlEkAyqs94ZE4gviWdNhyQgk95wXKhuv16kL2HtfuoLuSG++ABaYpnDUcc0/rwIbcAtZM8vog+LrC
	CPfSMeVca5nYaMBFxsDthEqfP2nDBBo1+1LZPEkuVXMLowFfQxNNxrR6120yZUJlXsgw72p7/cLbM
	3fwSLcYcRzeU9quZfBqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifbIq-0005tm-39; Fri, 13 Dec 2019 03:07:40 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifbIN-0005jO-Sn
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 03:07:13 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBD377KD088008;
 Thu, 12 Dec 2019 21:07:07 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576206427;
 bh=bjzkSGwjJanZ6D9U2D9DBeNvV2bdbXonjWIceJ35aww=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=R1XF8Afh+BJQzN1qC5TplJQtyTR/9ImQsey59k1vw8hnOVh/rGR2b/uYFraNu89nF
 /8822gYa7AKGat2yhhDVcwdEQ41A8kRg/4odTQBwnjh9uMqu8Rf7Huw9wpPzHLV+D8
 sJz7t09neLSXg4kHeOraQO+j8T5LBgN0Nr+IlhBw=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBD376OU018495
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 12 Dec 2019 21:07:07 -0600
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 12
 Dec 2019 21:07:06 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 12 Dec 2019 21:07:06 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBD376eC025174;
 Thu, 12 Dec 2019 21:07:06 -0600
From: Dave Gerlach <d-gerlach@ti.com>
To: Tony Lindgren <tony@atomide.com>, Santosh Shilimkar <ssantosh@kernel.org>
Subject: [PATCH 1/5] dt-bindings: arm: cpu: Add TI AM335x and AM437x enable
 method
Date: Thu, 12 Dec 2019 21:07:51 -0600
Message-ID: <20191213030755.16096-2-d-gerlach@ti.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213030755.16096-1-d-gerlach@ti.com>
References: <20191213030755.16096-1-d-gerlach@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_190711_994271_FA5A6D8E 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Dave Gerlach <d-gerlach@ti.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add enable-method binding for "ti,am3352" and "ti,am4372".

Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
---
CC: Rob Herring <robh+dt@kernel.org>
---
 Documentation/devicetree/bindings/arm/cpus.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
index c23c24ff7575..428b6b55b5da 100644
--- a/Documentation/devicetree/bindings/arm/cpus.yaml
+++ b/Documentation/devicetree/bindings/arm/cpus.yaml
@@ -201,6 +201,8 @@ properties:
               - rockchip,rk3066-smp
               - socionext,milbeaut-m10v-smp
               - ste,dbx500-smp
+              - ti,am3352
+              - ti,am4372
 
   cpu-release-addr:
     $ref: '/schemas/types.yaml#/definitions/uint64'
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
