Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B90F173450
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 10:41:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QtGIz8JtVHW61n471yNNwEcS8uiEM8m6ztGlPs6r7YU=; b=I6QWmZxKGNhj5K
	TIXMM6JOgsJmKLRijD6tB55jnJfLaAU2r72+xr/w6m7Z4eME+0z3zHefM+HmIzzQIHC3coYhXdLAS
	7zmpGFBc2FcfMGiFf2xY8k5VzKg2tR0TubDQKMBi/Nnf4UqzNnx30LNloqAlUAec/PoVEQWstIxa4
	PHyNw+HfSzBqre1OhyaofuITFAx6HLc9hWZRaOCP0N4zIkzDQ74lUMEKwXha8MvU5Ev7BA5EhwPHh
	wJjGPT9WAJyXzCTwbmJgm2HZEciOcuFL2bFpkeQjRxNHP3liOLPJ8uuOovZ8TAgBnVBnIB67TpcKC
	GFP/U7MFga3e8RNMRZJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7c8Y-0002wq-AZ; Fri, 28 Feb 2020 09:40:50 +0000
Received: from mail-eopbgr40052.outbound.protection.outlook.com ([40.107.4.52]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7c8N-0002wD-JD
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 09:40:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F+QkqHHDirZUqu3oytz/QF0SK/MMhchHOwSdGwVGUY6xTE41sDbATGf6jLhVzIN7RG3ZJD+Yf7oQI1Zl7tdzZo5BlNy8OXBZ2HAk35cyr+GELCYApkUlNo8oBGqqasdVhAN/QPThZnx53u0bOuAXyK9D/1r7vLv+tbMhA85RSYNWMPF1uPrWK6+K+dmsS9jog2ZocsSGKi4k5W35P0J4/wkvvwi8dTk/PL52J/NgjvNs+lvwVCZfUKDs5a1CV2cv4hbz5QyCIkg9xUgMSUNEtdz3n/yXb6QI4ObF5TExtv4ITobl5nF67/PzeYmmoNLhS8WfOKDEgt3U1lJgAglO9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qu4U3Qfap0aPW6N0ypHrUYNcGu4IbNPsjaseEPd8k1Q=;
 b=CfvxYgpQWSWqGqRh8rgMWGT8mi9aLjTdhyBDWoKaMrM9GVKUQRyvefE2/W1WUevEgDHG0s57Bc2DveYNj4mQolLaBMMpWcamRcfTXOEr4HK7DMR7HCP5f5Ri1wfGaBxzDsDtOcqT1FX4WwrNqaw6sXroIgpwuNro8ODKSvYDEr0AKs9N2OW39BR3bxveim1gYghlAXBONQUvBiRTXzrdTy54aD5nmXu/q/cGoWhlI/Kta240hfyvBOY9LV5GEJ2vTL/E9F+eq7tumqJm02WE9o6zy0vPM5/mzIr0hxoV7grynySh4TCNELV0+Q76swcZ6d/kuf47IYrBrvvTLviwfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qu4U3Qfap0aPW6N0ypHrUYNcGu4IbNPsjaseEPd8k1Q=;
 b=VjOK+508HeFt8pcNOjY28G3QZYfEIdCajFYABpD4sbRFnUT3hk5P4csB8G4pO0QjwfLj2FpA+QJWKsAK7peTxt/jq76w3nnjdcTem5+hrMASW+y/OrhkdXRpXSAOkNHJwDgWPANwZajshgwneR88cBLjXXCV0CHDHoMuCFoh/tc=
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com (20.177.51.23) by
 VI1PR04MB7149.eurprd04.prod.outlook.com (10.186.159.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.16; Fri, 28 Feb 2020 09:40:37 +0000
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::9547:9dfa:76b8:71b1]) by VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::9547:9dfa:76b8:71b1%7]) with mapi id 15.20.2750.021; Fri, 28 Feb 2020
 09:40:37 +0000
From: Peter Chen <peter.chen@nxp.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH 0/3] USB IMX Chipidea fix gpio vbus control
Thread-Topic: [PATCH 0/3] USB IMX Chipidea fix gpio vbus control
Thread-Index: AQHV7VqVZ4BeDr6e5UuTM5ZPfBO9kqgu5JsAgAAEwYCAAAyagIAABoeAgAAFTBCAABreAIAAzJeAgABTGwCAAB83gA==
Date: Fri, 28 Feb 2020 09:40:37 +0000
Message-ID: <20200228094039.GB31815@b29397-desktop>
References: <20200227104212.12562-1-m.felsch@pengutronix.de>
 <20200227111838.GA24071@b29397-desktop>
 <20200227113539.gcx3nfwm2fbm3ukv@pengutronix.de>
 <20200227122045.GB24071@b29397-desktop>
 <20200227124406.6kbgu3dbru4qmews@pengutronix.de>
 <VI1PR04MB53270541BB66CAB1EB8F00008BEB0@VI1PR04MB5327.eurprd04.prod.outlook.com>
 <20200227143914.mi3vsltrtyo5sqed@pengutronix.de>
 <20200228025129.GA31815@b29397-desktop>
 <20200228074856.gomzgtoxwzj4eele@pengutronix.de>
In-Reply-To: <20200228074856.gomzgtoxwzj4eele@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peter.chen@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: da0a788a-53b7-489c-cf17-08d7bc32442b
x-ms-traffictypediagnostic: VI1PR04MB7149:|VI1PR04MB7149:|VI1PR04MB7149:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB7149A2DDCC1A987F503F31E58BE80@VI1PR04MB7149.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0327618309
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(7916004)(136003)(396003)(366004)(39860400002)(376002)(346002)(189003)(199004)(33716001)(71200400001)(64756008)(66446008)(1076003)(9686003)(81156014)(53546011)(8936002)(6512007)(478600001)(8676002)(81166006)(186003)(86362001)(6916009)(26005)(316002)(6506007)(44832011)(54906003)(5660300002)(76116006)(66556008)(66476007)(66946007)(33656002)(4326008)(91956017)(6486002)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB7149;
 H:VI1PR04MB5327.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: emx1T+ne95kVaIFn1MbLbJ1T29W6a9yyOv1KyXNTeHTnW0AJcKVj4ZGnbzi9U0nN2nP581B7gfcghn7mZePCqri+2c2TH/3UZdLSQnhJx/gNKvGYpUZWyKLnbBt4VsYT7dP+PlHj4UcsvlQ5cOVX+Ak7x5A+614FWnQLt3VHN971qejA99AUplWowviu5r8aRncd8BWsadFbsPSv4Z5P2lMZX7oSbFYbxHyw36gWkrdi0irECd3ZNo2ldP8MANE/3/tmmqhS1FV+2HYACeTqD6NVYsD0J2uuoh47zhfYcHQSbcHp25tVIZSHXtyLjDYb+uPB8qw9aIB/lsM6prvvwj8w30qEVgnTcIC6g5uFIw4vkaGgl6GxPZwvw0HkFvN2W8cMpeccCj1zMEAjtiwHtsbRhnikzOGeMq8QlfknK+002ExM5kOxR5ch6s9y8CMv
x-ms-exchange-antispam-messagedata: iOYUDz06QOm4Tdg2u0PtLN7GEGF7jtFavfY+NGXffHbeSXm1N73QigmJGszOEr/DDC/Tq289UJ8bgb8nmQkx8rbusGW0QE2xzU2D/m5G7RQ3u1qIv0wZEV/fxLSlbURuOoKVpr3BVxzvV2Gdev0+8A==
Content-ID: <5F7E1E671A104B4BAF9D6B45978DA6CD@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da0a788a-53b7-489c-cf17-08d7bc32442b
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2020 09:40:37.3553 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mQqEFOBEoJ8lL1CBlli/cfBgNZv/8+eoeSSNmvYK7Oua4QEuhHuRIWwpoe+7/MX6EZybWb1g2c2PjEBFP+nTpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7149
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_014039_636819_AADB1D91 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jun.li@freescale.com" <jun.li@freescale.com>,
 "stern@rowland.harvard.edu" <stern@rowland.harvard.edu>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-02-28 08:48:56, Marco Felsch wrote:
> Hi Peter,
> 
> On 20-02-28 02:51, Peter Chen wrote:
> 
> ...
> 
> > > > CI_HDRC_TURN_VBUS_EARLY_ON is introduced by fixing a bug that some i.mx USB
> > > > controllers PHY's power is sourced from VBUS, the PHY's power need to be on before
> > > > touch some ehci registers, otherwise, the USB signal will be wrong at some low speed
> > > > devices use case. So, this flag can't be deleted, it may cause regression.
> > > 
> > > Pls check my archeological findings and again pls check my patches. I
> > > deleted the flag because isn't required anymore afterwards.
> > 
> > I have already checked your patch, your patch deletes CI_HDRC_TURN_VBUS_EARLY_ON
> > quirk, and it may cause regression.
> 
> Arg, sorry now I see what you mean. Thanks for your explanation :)
> Since the 'struct ehci_ci_priv' contains now an enabled state we can
> git rid of the flag. To get it right, the writing the ehci PORT_POWER
> must be done before or after we enabled the VBUS? I'm asking because
> we can drop the 1st patch of this series.

Both are OK.

-- 

Thanks,
Peter Chen
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
