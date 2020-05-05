Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A08311C5D5D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 18:21:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dzplxGC+4yJBJ/bJ3qMLVTLqGKl2g/H/sWsbk+6T8ck=; b=updr0FxH7D7ywe
	jgZtu0B1d1hNIvIS0e5CT1LQoheRyk0HN0L+dKqC07rpSYnzH30iDKprwNNfL9F1Z51QTY0iJsCH4
	r3QRLNjvGz/XDcPBZxZZo9MAiTuH359xLxImGO1G/o9eZs0g0tZYtfs1E+GPxoL8r3TPb24eGjrgY
	pe9AMur3hVDGYZXii3HowT+/bTcFJsZAnoqlBQXnfeOOvNTk4jnkM3ZPJUucu+jfOu1G3j867lMsc
	NLlvHULfpItmU8mH7VNILcHP9dpOO30EHj832XTz5Sd41QeN1+6kXCEsG9cV3LiSKSlroTjJUn8Cu
	hR09lES0/EcY3UD5ECig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW0KE-0003Kx-Gm; Tue, 05 May 2020 16:21:42 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW0K7-0003Jw-Bb
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 16:21:36 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 045GLVnj022356;
 Tue, 5 May 2020 11:21:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588695691;
 bh=OxUyjvjTpC4dkBUPPz1IUnY359iQO02H2M1zKF1GPlc=;
 h=From:To:CC:Subject:Date;
 b=RbzphmRfOpEU1RoFFZjjFWb0wr6p1BzWmY3ZnlTL9AQT3O0gTHH4Xr7copS1vrCeu
 quUAd71JiKxoQTk9o7HDQCbCu23xb3OXLWrUD/oKWp9QR67+RhJs8pFR7i65K7kC2o
 kvWBkrD5XX8CX4PH3nwZwUs5DEhf9Z/GMfYGnUAk=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 045GLV6Y087775
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 5 May 2020 11:21:31 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 5 May
 2020 11:21:31 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 5 May 2020 11:21:31 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 045GLUkF026653;
 Tue, 5 May 2020 11:21:30 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: "David S. Miller" <davem@davemloft.net>, Anders Roxell
 <anders.roxell@linaro.org>
Subject: [PATCH net-next] net: ethernet: ti: am65-cpts: fix build
Date: Tue, 5 May 2020 19:21:23 +0300
Message-ID: <20200505162123.13366-1-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_092135_477879_523FDC37 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: netdev@vger.kernel.org, Grygorii Strashko <grygorii.strashko@ti.com>,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It's possible to have build configuration which will force PTP_1588_CLOCK=m
and so TI_K3_AM65_CPTS=m while still have TI_K3_AM65_CPSW_NUSS=y. This will
cause build failures:

aarch64-linux-gnu-ld: ../drivers/net/ethernet/ti/am65-cpsw-nuss.o: in function `am65_cpsw_init_cpts':
../drivers/net/ethernet/ti/am65-cpsw-nuss.c:1685: undefined reference to `am65_cpts_create'
aarch64-linux-gnu-ld: ../drivers/net/ethernet/ti/am65-cpsw-nuss.c:1685:(.text+0x2e20):
relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `am65_cpts_create'

Fix it by adding dependencies from CPTS in TI_K3_AM65_CPSW_NUSS as below:
   config TI_K3_AM65_CPSW_NUSS
   ...
     depends on TI_K3_AM65_CPTS || !TI_K3_AM65_CPTS

Note. This will create below dependencies and for NFS boot + CPTS all of them
have to be built-in.
  PTP_1588_CLOCK -> TI_K3_AM65_CPTS -> TI_K3_AM65_CPSW_NUSS

While here, clean up TI_K3_AM65_CPTS definition.

Fixes: b1f66a5bee07 ("net: ethernet: ti: am65-cpsw-nuss: enable packet timestamping support")
Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
Reported-by: Anders Roxell <anders.roxell@linaro.org>
---
 drivers/net/ethernet/ti/Kconfig | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/ti/Kconfig b/drivers/net/ethernet/ti/Kconfig
index 4ab35ce7b451..988e907e3322 100644
--- a/drivers/net/ethernet/ti/Kconfig
+++ b/drivers/net/ethernet/ti/Kconfig
@@ -99,7 +99,7 @@ config TI_K3_AM65_CPSW_NUSS
 	depends on ARCH_K3 && OF && TI_K3_UDMA_GLUE_LAYER
 	select TI_DAVINCI_MDIO
 	imply PHY_TI_GMII_SEL
-	imply TI_AM65_CPTS
+	depends on TI_K3_AM65_CPTS || !TI_K3_AM65_CPTS
 	help
 	  This driver supports TI K3 AM654/J721E CPSW2G Ethernet SubSystem.
 	  The two-port Gigabit Ethernet MAC (MCU_CPSW0) subsystem provides
@@ -112,9 +112,8 @@ config TI_K3_AM65_CPSW_NUSS
 
 config TI_K3_AM65_CPTS
 	tristate "TI K3 AM65x CPTS"
-	depends on ARCH_K3 && OF && PTP_1588_CLOCK
+	depends on ARCH_K3 && OF
 	depends on PTP_1588_CLOCK
-	select NET_PTP_CLASSIFY
 	help
 	  Say y here to support the TI K3 AM65x CPTS with 1588 features such as
 	  PTP hardware clock for each CPTS device and network packets
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
