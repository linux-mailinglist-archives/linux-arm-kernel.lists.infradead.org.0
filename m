Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 594BE140A3B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 13:54:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=q8ra65orGov+uWO1p5BcoHbbYsp/w768pEaKD59dBNY=; b=W5kr1SwTKvhGgboRYXo8sg1U6b
	Wcvu2QJjInmr2bTA+t7VDboDJ+7mIZQ8EvLryJILHAQzCyKnPiW1N+OB3yCdAbAGFHnCBS1UrSuWJ
	pRpir6d11z0wwXtLr8jIPy14V9sHyPLSV3zl6aKrXJc91G51VMCiNY0KSQ8YLfROj7+bmvEBQLBo3
	FDenljc2Odp+Qf5/q5RQKeFniKg8IwokFsn6jnOalm23PK/0nCJmz31v5NDo2Z+uygdcTVZxNqFKA
	7HtxQ/3gYO6MFcwOWqjj/5jB/FuwRVWg77ncE6Cj+318M/KRj1ZZUY2la2XBwkL89RXpZEoMzXC9V
	G4vffXrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isR8s-0004KB-Pr; Fri, 17 Jan 2020 12:54:26 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isR8h-0004GB-28
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 12:54:19 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00HCsBWv113555;
 Fri, 17 Jan 2020 06:54:11 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579265651;
 bh=T+JFo+KX9+5waxtPBTjAC6tmw6ThqTpJHj8D0fANDrY=;
 h=To:CC:From:Subject:Date;
 b=cuvFF3LRly2FD1+U1A/7PHIqTH2LDLvGUSWAZQfUelhim6HqCUAmjEnfEtSFXY6T7
 Kw6u+QX9YkjOYrGYl1YmN5fBrwjEjd3hBExchlxi5D3/NbbszX7ol3eFeQZ0xmGzJz
 5Dg8KKp4B35bkgSdU+3ebrvAPkza69eOuR1jueIE=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00HCsBWx124050;
 Fri, 17 Jan 2020 06:54:11 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 17
 Jan 2020 06:54:10 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 17 Jan 2020 06:54:10 -0600
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00HCs94N039751;
 Fri, 17 Jan 2020 06:54:10 -0600
To: <soc@kernel.org>, <arm@kernel.org>
From: Tero Kristo <t-kristo@ti.com>
Subject: [GIT PULL] arm64: dts: TI K3 SoC changes for v5.6
Message-ID: <c5b74bfc-f2f0-1b72-4a3c-4c1d478a023a@ti.com>
Date: Fri, 17 Jan 2020 14:54:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_045415_234846_FA21988E 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Arnd, Olof,

Please pull the TI K3 SoC DTS changes towards v5.6.

-Tero

----

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

   Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

   git://git.kernel.org/pub/scm/linux/kernel/git/kristo/linux 
tags/ti-k3-soc-for-v5.6

for you to fetch changes up to 3f03a58b25753843ce9e4511e9e246c51bd11011:

   arm64: dts: ti: k3-j721e-main: Add missing power-domains for smmu 
(2020-01-17 10:19:51 +0200)

----------------------------------------------------------------
Texas Instruments K3 SoC family changes for 5.6

- Add missing power domains for smmu for J721e
- Add I2C, ADC, OSPI and UFS nodes for J721e
- Add OSPI and MCU syscon nodes for am65x
- Add IRQ line for GPIO expander on am65x

----------------------------------------------------------------
Grygorii Strashko (1):
       arm64: dts: ti: k3-am65-mcu: add system control module node

Lokesh Vutla (1):
       arm64: dts: ti: k3-j721e-main: Add missing power-domains for smmu

Vignesh Raghavendra (3):
       arm64: dts: ti: k3-j721e: Add DT nodes for few peripherials
       arm64: dts: ti: k3-am65: Add OSPI DT node
       arm64: dts: k3-am654-base-board: Add IRQ line for GPIO expander

  arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi            |  46 +++++++
  arch/arm64/boot/dts/ti/k3-am65.dtsi                |  13 +-
  arch/arm64/boot/dts/ti/k3-am654-base-board.dts     |  49 +++++++
  .../boot/dts/ti/k3-j721e-common-proc-board.dts     | 150 
+++++++++++++++++++++
  arch/arm64/boot/dts/ti/k3-j721e-main.dtsi          | 100 ++++++++++++++
  arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi    | 104 ++++++++++++++
  arch/arm64/boot/dts/ti/k3-j721e-som-p0.dtsi        |  45 +++++++
  7 files changed, 505 insertions(+), 2 deletions(-)
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
