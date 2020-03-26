Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D3C1938FD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 07:51:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZfGhO9mYMSxLHDDNrnxJ6Q3O5drjGrI0f7qdIHnFvDI=; b=Ye1b4CIDzDedtNRN4ZrwAdLGQ6
	xtJwgwQ3uV/tB2uyJZg1Nh4sgKhRF5s6KzNqZq612Tzh3VBW7ll+BFkpq9HrJb8EgHTiUhuzcrfZ9
	/3g25tcIIRdqFhbtHoBKUPegnKNrnGoVLeiEYKk87sLGV9BNRUb/60/CW+i7va9Rbza7h+Txejemc
	JcA8nKKYGF8T72QkrIhSRuwjVn4EJSKJr7hWRc1jnebJ49AoyikVPxtxNLMDGiMgYPCwP6m4wgfXt
	aH9mD6Dm4oQEWiWRDSIhk+NFoN01mEkSboX9edCU/bTTaIyEuwqewqS92GZqF7OU6VlvdCSZPn07Q
	wrR1BaXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHMMH-0001Mv-C0; Thu, 26 Mar 2020 06:51:17 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHMKs-0007cM-3k
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 06:49:52 +0000
Received: by mail-wr1-x443.google.com with SMTP id a25so6407834wrd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 23:49:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0idw5B6PcVqWUxIoMkNt7TgZxctDSgOOI59ozY4oTHM=;
 b=eOzaFwpapO566KIN7o8CtBngABKyDb0NQEUbuybM+vBuUJ6pSDk6ZXtpd0TBG5lVde
 ptxih3E2lZ1YpIPRurd1aXbCr2bn4XHT3tOHFPBrImMzJVGQbsVkQvVLIW7OHtnTo8fe
 OvcoHrjVDGAENbGCR2UwXUevVKaeUk//26t/g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0idw5B6PcVqWUxIoMkNt7TgZxctDSgOOI59ozY4oTHM=;
 b=r3+7X234Av8ngf5KLCVZBBM6TVneWoGVh1GmFIkleARjazQOJwD7S67wbaKNQLLLbi
 psz1c22ygo/GH+bTX2PwuoCqknRXUBopQOqkLB9bOOt9ESE+a26Zr2G/dmaDAABHCVuT
 cbs5w1yQ0U50e24Ef1wVySsaJRzspsgKK64ir7zMNeIVK/d0qh/23CceOkscM0msdYdG
 W2Pl8PxJCgyh4SuWLoUEAWI3RzUl+mQlajT0E+TrPAX2w6TWZpYOgsv62elQ67m9PfMj
 E3RA042gCKCIa7p0svbWV2cCMtW9+EuzDY9LTLUZ5iA/RKDH0gvZxgD30W3npN85Ck7j
 U6vw==
X-Gm-Message-State: ANhLgQ1JQU7E+s2aNBol5r/BlLlMJcERrIq1klvmHFL/AI0m7P+7mCvc
 MOJaDA1hx+FUZnn+LXTd9ok7IQ==
X-Google-Smtp-Source: ADFU+vsQTR/kVV+uSwHzxwJhKiVFKKuIbCfDf2JW2zqZaGt6ru+SMQ31s/bTu6v99Ao07jypy+Wdrw==
X-Received: by 2002:adf:efc9:: with SMTP id i9mr7182823wrp.23.1585205387945;
 Wed, 25 Mar 2020 23:49:47 -0700 (PDT)
Received: from mannams-OptiPlex-7010.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id v21sm2069137wmj.8.2020.03.25.23.49.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 25 Mar 2020 23:49:47 -0700 (PDT)
From: Srinath Mannam <srinath.mannam@broadcom.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Rob Herring <robh+dt@kernel.org>, Andrew Murray <andrew.murray@arm.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v5 6/6] arm64: dts: Change PCIe INTx mapping for NS2
Date: Thu, 26 Mar 2020 12:18:46 +0530
Message-Id: <1585205326-25326-7-git-send-email-srinath.mannam@broadcom.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585205326-25326-1-git-send-email-srinath.mannam@broadcom.com>
References: <1585205326-25326-1-git-send-email-srinath.mannam@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_234950_617561_79933D6B 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 Srinath Mannam <srinath.mannam@broadcom.com>, linux-kernel@vger.kernel.org,
 Ray Jui <ray.jui@broadcom.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ray Jui <ray.jui@broadcom.com>

Change the PCIe INTx mapping to model the 4 INTx interrupts in the
IRQ domain of the iProc PCIe controller itself.

Signed-off-by: Ray Jui <ray.jui@broadcom.com>
Signed-off-by: Srinath Mannam <srinath.mannam@broadcom.com>
---
 arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi | 28 ++++++++++++++++++++----
 1 file changed, 24 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi b/arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi
index 15f7b0e..489bfd5 100644
--- a/arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi
+++ b/arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi
@@ -117,8 +117,11 @@
 		dma-coherent;
 
 		#interrupt-cells = <1>;
-		interrupt-map-mask = <0 0 0 0>;
-		interrupt-map = <0 0 0 0 &gic 0 GIC_SPI 281 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-map-mask = <0 0 0 7>;
+		interrupt-map = <0 0 0 1 &pcie0_intc 0>,
+				<0 0 0 2 &pcie0_intc 1>,
+				<0 0 0 3 &pcie0_intc 2>,
+				<0 0 0 4 &pcie0_intc 3>;
 
 		linux,pci-domain = <0>;
 
@@ -140,6 +143,13 @@
 		phy-names = "pcie-phy";
 
 		msi-parent = <&v2m0>;
+		pcie0_intc: interrupt-controller {
+			compatible = "brcm,iproc-intc";
+			interrupt-controller;
+			#interrupt-cells = <1>;
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SPI 281 IRQ_TYPE_LEVEL_HIGH>;
+		};
 	};
 
 	pcie4: pcie@50020000 {
@@ -148,8 +158,11 @@
 		dma-coherent;
 
 		#interrupt-cells = <1>;
-		interrupt-map-mask = <0 0 0 0>;
-		interrupt-map = <0 0 0 0 &gic 0 GIC_SPI 305 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-map-mask = <0 0 0 7>;
+		interrupt-map = <0 0 0 1 &pcie4_intc 0>,
+				<0 0 0 2 &pcie4_intc 1>,
+				<0 0 0 3 &pcie4_intc 2>,
+				<0 0 0 4 &pcie4_intc 3>;
 
 		linux,pci-domain = <4>;
 
@@ -171,6 +184,13 @@
 		phy-names = "pcie-phy";
 
 		msi-parent = <&v2m0>;
+		pcie4_intc: interrupt-controller {
+			compatible = "brcm,iproc-intc";
+			interrupt-controller;
+			#interrupt-cells = <1>;
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SPI 305 IRQ_TYPE_LEVEL_HIGH>;
+		};
 	};
 
 	pcie8: pcie@60c00000 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
