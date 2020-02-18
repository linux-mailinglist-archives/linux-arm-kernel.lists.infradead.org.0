Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F68162AE5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 17:44:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Efd/o6hgWzB8IzkOOTQhruc6X5sDnGMEvyil0S3Bjeo=; b=EyYrRgi3fiNpwh
	p5a2Tf7hjBU6YsnvZ5JDD/4kXd3VynCPdKToeUUY0U0JTzlTXPpmL16rMKpRiPgjoMJLNeUKp3/QC
	GxLusQkOMcwTkXvI9+mjsmd3mSngxCW0fKfTmr521tiXMbRTWh7170J/YzP/Bj7ZLxlKxZQvNkogf
	K1lZKVMensbEef1DQbgHCTLR2YjU1je8YnYO01HwdCh55GfjDARUEoSg3E/gpwdXBP12mJKnC6XVY
	rO7GgwuC6Tsz4OQpyUWZH8U9CbY3/tv4SreL2Z68bXgcLQ9ht1kkc4P1wUchSFFHdwMDvCYWnpD7l
	oioNXSWSJo2YIGuRzaUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j45yw-00050M-N6; Tue, 18 Feb 2020 16:44:22 +0000
Received: from mail-am6eur05on2041.outbound.protection.outlook.com
 ([40.107.22.41] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j45yn-0004zc-P6
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 16:44:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IwhNTGULVBC09XRl7wjSDK0W1/szqBh5l7cM41emnZhWkGAYNnrHpipRrev0OIU8QPMTBfye8659JhtF6pQKoGCDqzU1BkdAwQZIih+ynRhZ86aZpHLlsL+n8dHErkBH1E2rmzmAOYF2UsNy3q6Vod45N8kuWjjfVqE0K50A/UgRIOTcCPQ4JkmSbHsX0WyI598b7yyUXMBhysY/MKHoyULIWTe0SvuHpc3uqw4a2FUOiHDQQLGlTc/uHHlTeWQN0IryIYjGkzrPSKpYqMvVUuwOFxiCbjWY+tq8qnKklKsZx4RsZwkKylngfyNmV2Z9BPPsPc6WsyrXmnZmkmGGOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OpzhRrnCDxkJY/tfjMh2b7cZ8XZF6PilCzZzzAm/n4s=;
 b=WKxjn3GUYSA/nWkjmGdWrB1idHO9pvsFaU8V9pd3mr2vFbivSG7owNu4p+7J2V9GBvT9gJdyGjV+xUYMVgWHX1QmUDg8LYQK3RgWEg5uiOvXGS+yY7+jGdf+vd8b6+dlUxMGQS62vXYtAPwofhEVa+Ldg8yISPyptuN1tHUCuYAW1LFHIHnbjCho0p3A88Kr3be0NgIyRIt5wQuSh4+vQg0G6Y9s/Y7Fkpmeja7IuMe4ao5+dNsrtV2HHu+Xl9sGeCiV73m5AQdLMuhjkFf6WsyEPs2NE0eqDVDDknVGxULtAnMCgl4OKP4PR2RtK6yUwf9wW7VlUwAOBUuiGIBNkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OpzhRrnCDxkJY/tfjMh2b7cZ8XZF6PilCzZzzAm/n4s=;
 b=NECz367ExlfyJMLl3ibzX7u2TckZcjglnIHAdX8hJU3HrujFpgz3ouQ469n202l/jpYHwARIroqMI1TmFOfs/ImKStSP5oW2wHynqdjv4ZrhPI7BLmpfbux8KbhsNPeMkhDwkqS/9WiRKtTVUfnwjpIqZiB7vi55TtL3rtBjJZU=
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com (20.179.234.30) by
 VE1PR04MB6622.eurprd04.prod.outlook.com (20.179.234.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Tue, 18 Feb 2020 16:44:09 +0000
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::b896:5bc0:c4dd:bd23]) by VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::b896:5bc0:c4dd:bd23%2]) with mapi id 15.20.2729.032; Tue, 18 Feb 2020
 16:44:09 +0000
From: Leo Li <leoyang.li@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH 2/2] arm64: defconfig: enable additional drivers needed by
 NXP QorIQ boards
Thread-Topic: [PATCH 2/2] arm64: defconfig: enable additional drivers needed
 by NXP QorIQ boards
Thread-Index: AQHV4HYUpACMHjZeZ0GLCF+pBukm5qge58QAgAJLriA=
Date: Tue, 18 Feb 2020 16:44:09 +0000
Message-ID: <VE1PR04MB668774D60323E11C7FF1FF7F8F110@VE1PR04MB6687.eurprd04.prod.outlook.com>
References: <1581382559-18520-1-git-send-email-leoyang.li@nxp.com>
 <1581382559-18520-2-git-send-email-leoyang.li@nxp.com>
 <20200217053730.GB6042@dragon>
In-Reply-To: <20200217053730.GB6042@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leoyang.li@nxp.com; 
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c69414a9-9d05-4934-6ac6-08d7b491c6d5
x-ms-traffictypediagnostic: VE1PR04MB6622:
x-microsoft-antispam-prvs: <VE1PR04MB66226496352CFF90C5BC7ED88F110@VE1PR04MB6622.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 031763BCAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(376002)(396003)(366004)(346002)(199004)(189003)(2906002)(54906003)(6916009)(316002)(7696005)(71200400001)(9686003)(86362001)(55016002)(26005)(53546011)(6506007)(52536014)(186003)(478600001)(76116006)(4326008)(8936002)(66946007)(8676002)(81166006)(66556008)(81156014)(66446008)(33656002)(5660300002)(64756008)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6622;
 H:VE1PR04MB6687.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WxdmYOdqadeErvfgShHJXb/uMuTcnklVCSXMd81naCHc97yKzIEjYgRIvY3L/jeP6YO150sFjko1qQEVUbi/xfMDptR5VQKK+9ozupzMUIsjB1Y2QijxhL1Ka3//xcZkxgPzdW4dBVZIo1pRIhlMz1+6x5bSXfMqLOCu6q+xX50I70LFkyjNuBhy7aI+h3J6gcsoyqTu2/q0tDWRlrKMXqsJ+rdofy8B11GMV+gDKlPG7fx+EgxS40cHY0cBr1kC3vDV95i/8FI/tM3S6j999os5k9StyF9NILTLmSSNHB1C9ZoG3QPQKWMtnG91mK7QymmOPDa19v5MS2q0DbE1FWmvl7Evm4uxSCJGobNUxUBfJhuPYFUaMolNshcPvivqJhF8uwhtS4npQQ457Q4cjgnJRm+6nVAmA9lfM0XqGLEdfYPR6FHEJBYICqIqy1ea
x-ms-exchange-antispam-messagedata: vDBihq7ynNo/3Nw7gSmBQ8n2bcNyu7oH7PaKvXUDxAGq1/n/oKH3LS9ATs/L9JuL9OQ/dJpkDHX0LgEVyYgle/9zWqc3oYjy/+BWNBsJp28MrOxLxGEcJXhEX8ftO82Lmb5+Nf5r9r+BDBM0Bno+Gg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c69414a9-9d05-4934-6ac6-08d7b491c6d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Feb 2020 16:44:09.3968 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a/X2p4Kz7uJS9Zc5P4NaUkqeVXerIxlS3iYjARZDrmx4/RI4H/N75uevL3Ca2hq5KsZa/e8n3EWYpHiAYRmSUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6622
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_084413_887108_180ADD12 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Shawn Guo <shawnguo@kernel.org>
> Sent: Sunday, February 16, 2020 11:38 PM
> To: Leo Li <leoyang.li@nxp.com>
> Cc: linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH 2/2] arm64: defconfig: enable additional drivers needed
> by NXP QorIQ boards
> 
> On Mon, Feb 10, 2020 at 06:55:59PM -0600, Li Yang wrote:
> > This enables the following SoC device drivers for NXP/FSL QorIQ SoCs:
> > CONFIG_QORIQ_CPUFREQ=y
> > CONFIG_NET_SWITCHDEV=y
> > CONFIG_MSCC_OCELOT_SWITCH=y
> > CONFIG_CAN=m
> > CONFIG_CAN_FLEXCAN=m
> > CONFIG_FSL_MC_BUS=y
> > CONFIG_MTD_NAND_FSL_IFC=y
> > CONFIG_FSL_ENETC=y
> > CONFIG_FSL_ENETC_VF=y
> > CONFIG_SPI_FSL_LPSPI=y
> > CONFIG_SPI_FSL_QUADSPI=y
> > CONFIG_SPI_FSL_DSPI=y
> > CONFIG_GPIO_MPC8XXX=y
> > CONFIG_ARM_SBSA_WATCHDOG=y
> > CONFIG_DRM_MALI_DISPLAY=m
> > CONFIG_FSL_MC_DPIO=y
> > CONFIG_CRYPTO_DEV_FSL_DPAA2_CAAM=m
> > CONFIG_FSL_DPAA=y
> > CONFIG_FSL_FMAN=y
> > CONFIG_FSL_DPAA_ETH=y
> > CONFIG_FSL_DPAA2_ETH=y
> >
> > And the drivers for on-board devices for the upstreamed QorIQ
> > reference
> > boards:
> > CONFIG_MTD_CFI=y
> > CONFIG_MTD_CFI_ADV_OPTIONS=y
> > CONFIG_MTD_CFI_INTELEXT=y
> > CONFIG_MTD_CFI_AMDSTD=y
> > CONFIG_MTD_CFI_STAA=y
> > CONFIG_MTD_PHYSMAP=y
> > CONFIG_MTD_PHYSMAP_OF=y
> > CONFIG_MTD_DATAFLASH=y
> > CONFIG_MTD_SST25L=y
> > CONFIG_EEPROM_AT24=m
> > CONFIG_RTC_DRV_DS1307=y
> > CONFIG_RTC_DRV_PCF85363=y
> > CONFIG_RTC_DRV_PCF2127=y
> > CONFIG_E1000=y
> > CONFIG_AQUANTIA_PHY=y
> > CONFIG_MICROSEMI_PHY=y
> > CONFIG_VITESSE_PHY=y
> > CONFIG_MDIO_BUS_MUX_MULTIPLEXER=y
> > CONFIG_MUX_MMIO=y
> >
> > The following two options are implied by new options and removed from
> > defconfig:
> > CONFIG_CLK_QORIQ=y
> > CONFIG_MEMORY=y
> >
> > Signed-off-by: Li Yang <leoyang.li@nxp.com>
> 
> This is too much change in a single patch. It should be split properly to make
> review and merge easier, considering arm-soc folks are cautious to those 'y'
> options.

Ok.  So probably separating them based on different subsystems will be good?  It would be too many patches if I separate for each individual config option.

Regards,
Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
