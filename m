Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B1520091A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 14:59:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DrSX94sLXRaiD8BGTM4E8iQgtKXd3bWm0i28o1d9d2s=; b=J21OpLqhV6xPNL
	XhFc9dDJUitzSsq+iHeOsB+uEkW2lxQHnI+Wz/sFZw+errn2qZOfFaNnauKop18VLzoOAk8DcwcF2
	wQ6Eji2DSLGRx7DIllZXQCLr3HSIeo7cz2Vz5zncwFXBSEkHo0O04ZlUhciNgaR5S2IwNc3bo67qO
	oDlLcnz1EvcK02jvckY8s3xBGjO0iAoO+0utR/SWhqRAuSC22rOGK8i/vem3H54aqb4/5AO5nKy9Z
	eXUzJ2sd4vazHGiyYOcdUpoBgKe8Z2p3eNOLCOVtiyXpAv7ZSPRfv99fNT2tMuJ9l8gNMSRcI/sbm
	X9jRtEO8fXSgcnyB+kIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmGbq-00085q-0j; Fri, 19 Jun 2020 12:59:06 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmGbD-0007r9-5L
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 12:58:28 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05JCw7df021167;
 Fri, 19 Jun 2020 07:58:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1592571487;
 bh=627WHwGqg1ZFjaV1G7jF2Zn5SB1SAYdN7x254Mzb8dg=;
 h=From:To:CC:Subject:Date;
 b=zQg1S8qRaYA0R9d5rlvOyzr4N1JM7LPGBuivht4YIfUY3CcKOw3/IJVsUrjZu5syS
 2//i38fVpIExO8tLY0/1rx4+DDZzNYLwvsM0sNU1dDF2Y5iQBmo0nwX7drvit0KLtT
 aDptFDxQTogVilKCyQABNV526HrHtaa7A9vNGhRk=
Received: from DFLE110.ent.ti.com (dfle110.ent.ti.com [10.64.6.31])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05JCw70r080908
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 19 Jun 2020 07:58:07 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 19
 Jun 2020 07:58:06 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 19 Jun 2020 07:58:06 -0500
Received: from a0230074-Latitude-E7470.ent.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05JCw2Hk015675;
 Fri, 19 Jun 2020 07:58:03 -0500
From: Faiz Abbas <faiz_abbas@ti.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-mmc@vger.kernel.org>,
 <adrian.hunter@intel.com>, <will@kernel.org>,
 <catalin.marinas@arm.com>, <robh+dt@kernel.org>, <ulf.hansson@linaro.org>
Subject: [PATCH 0/7] Add support for SD card in AM654x-evm
Date: Fri, 19 Jun 2020 18:27:54 +0530
Message-ID: <20200619125801.9530-1-faiz_abbas@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_055827_239562_DF4B631B 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [198.47.23.248 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: faiz_abbas@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following patches add driver support for SD card on the
am654x-evm. It only enables high speed mode with UHS mode
support coming in a future series.

DTS support will be added in another series as well.

Faiz Abbas (7):
  dt-bindings: mmc: sdhci-am654: Add ti,clkbuf-sel binding
  mmc: sdhci_am654: Add flag for PHY calibration
  mmc: sdhci_am654: Add Support for SR2.0
  mmc: sdhci_am654: Fix conditions for enabling dll
  mmc: sdhci_am654: Update delay chain configuration
  mmc: sdhci_am654: Add support for clkbuf_sel property
  arm64: defconfig: Enable AM654x SDHCI controller

 .../devicetree/bindings/mmc/sdhci-am654.txt   |  1 +
 arch/arm64/configs/defconfig                  |  1 +
 drivers/mmc/host/sdhci_am654.c                | 86 ++++++++++++++-----
 3 files changed, 65 insertions(+), 23 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
