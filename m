Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FE215BAEB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 09:41:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ct5c8brsCZwNWw05iPLsW+aSOypdV0gyK+bDu2/F8Fg=; b=FaIUCUlYW75AtJ
	zgrttQz22TliB3b9BmtWOsXqQ4Wv/LMznCEbOH4Gje7W0oSBzEzauLqoER3/k4BWRpTrrv2mlTb+3
	7CXjaUE2yZlZF4ovyXbxiBM2az8PhuRWq+l8xKS4YtToQiLEaCEPgS+qttALlQJGOk8tgL3RW/QTF
	M1FHEuHW3sT0aHGIH3NaRLI/uLEPYKbwyHfdEtjxDLlXGlp6lo7w577O5AN5ebUDS45NqF+VmmIGV
	g7CtbF1Z3nRSVbURFXsnKk5/Ewo2xCUZzNlE9St39AZCCtYtf1rtcvvGTAPKKvspfn1Pua2ryJtE6
	3nAcsvEG8iK5VnkwGleg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2A4A-0000OA-Uz; Thu, 13 Feb 2020 08:41:46 +0000
Received: from mail-ve1eur03on062a.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::62a]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2A3m-0000A0-8s
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 08:41:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hyFzuYki3xmTI4VWNlDk0WWvMXwYCgdcWp8iJfo/bRwdxUibiN03Izm5EmN3epv4dCPaJe9FGi4zbIE4dtOcW+UaCGIAGE5DFtyIsZlHuT+UR9ll8TYlQu0CJWVGTE5ZMXSJjevp7IBZ+BscCQ+dApPoXjpzK5W2Q2R3UTtNuJsEe3Nwcl4Oeaosz9YP6cHvra0oelYXX1kJGVaGN1UQQPjkDFg6Eev1hBXvYOrwhHTBi1cn3EIteBU5LMw5ctD/XyN7Ae7q9FrzCvgAClmPVDirGFoy+CsVXX6Hqr34JYCLItpiz9tV8VE5GMvgRpxcEHoM6lB1piewcdFx6oyPRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5S1MvUIiqzlKPMj2vGBQE/JW1NpAv2wx6XaKvTqdkCg=;
 b=EGHYOzb+SqmxLOlhmjsZ2ChoQnyPqyG2utXZ0UU9ywkV55XpsVVlxXAOcBTklhdcyTLynJGhoWY7GkGUWUFZ/e5TeC25FgGGR6aKb9A8VQ+Z4R/g0EJsuNsSOjfwIUNYDcqqXfHKoZDcFfL1yMswOPzcjR7gLDmpYej2EvSw70AzBIZIzv59G/eNIgLuuidu0DUN7Fjy/vnUcBbrhaC6kQdD7cqLS3S2LvD6JvtAkE5lrrx6WwlnM41M/TRZs3v0EK0Oxl3xgUGHOdiq70ph8Tka00tZqsxok7MvBb2m1zVHJXOSGLZaD6fCRO/0vsWCbcwB7Zdx4w+hVTFXdEVXnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5S1MvUIiqzlKPMj2vGBQE/JW1NpAv2wx6XaKvTqdkCg=;
 b=c7En8POGR9mgYiSlva87/5i4ycwbGRSbIKS08Ajwt64tihYynCRBgzxmT0TRNP+UVVNSOEP/QgaDTQLWOVpbRUmw+0UYe96LFRJ/29Tk1BFwLs0WGVizFden0l04mOtwKdu+/2ZCelN6zkaZ/0/k3iWT+BNMIilpYPXBu35eXSA=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3850.eurprd04.prod.outlook.com (52.134.65.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.28; Thu, 13 Feb 2020 08:41:17 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96%5]) with mapi id 15.20.2729.024; Thu, 13 Feb 2020
 08:41:17 +0000
From: Anson Huang <anson.huang@nxp.com>
To: =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <u.kleine-koenig@pengutronix.de>
Subject: RE: [PATCH V2] ARM: imx: Add missing of_node_put()
Thread-Topic: [PATCH V2] ARM: imx: Add missing of_node_put()
Thread-Index: AQHV4jaMGodULu2PXUCnEPn6S7cDiagYx+aAgAAGNxA=
Date: Thu, 13 Feb 2020 08:41:17 +0000
Message-ID: <DB3PR0402MB3916D1A18B80F35B9F86563CF51A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1581574854-9366-1-git-send-email-Anson.Huang@nxp.com>
 <20200213081825.mox35tzizscdk7km@pengutronix.de>
In-Reply-To: <20200213081825.mox35tzizscdk7km@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8c48139a-67bb-49ec-2a26-08d7b0607e3d
x-ms-traffictypediagnostic: DB3PR0402MB3850:|DB3PR0402MB3850:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB385047A3E252D7BAEE7F9217F51A0@DB3PR0402MB3850.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 031257FE13
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(396003)(136003)(39860400002)(199004)(189003)(478600001)(55016002)(7416002)(6506007)(81156014)(8676002)(7696005)(81166006)(8936002)(86362001)(2906002)(64756008)(316002)(9686003)(54906003)(52536014)(6916009)(76116006)(44832011)(4326008)(66556008)(5660300002)(66446008)(66476007)(71200400001)(66946007)(186003)(26005)(33656002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3850;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9T6EKZBAC5m7m/RqrBFU5Id8EPvbXW15M/+yh5pJiYYdPJkLM5vQGFNYX8IqY2REqOIML71HgjrKUovnGM7Ywggo+XAGAIND6w66YK56Rh42PcWwblEivsB+nSMjgwMvPeGcd7yELHIFEgUbGHlEEtmUZWIp1+etmPExjLhVAilYS54y2Xf8hY4BQVY5INHN4hGDIiTCV5N2gOuJBfj3M2YQVM1FgmzMwskHUyo2CnaNNTVlNsqB3hq+wQW/y/YzxBLOcG44H/VKJ/X8wBXwhCGpY4A9RAhTZPo1n/UJii6WdXxSvViVI1kizK7YvN70EOT6fQqYFhvReNLSL4d3L30RqLUyJLy95/gc9KZA3OuhiXkPGf+gpYBsGLUHIGQXxDlOEtif2gyHSMMqg7YXCoXuZ34Hj6iYzWPImYqCE/4w0ujsisRhu6pp6CqBeRHQ
x-ms-exchange-antispam-messagedata: IrchKLeE3R6WSb95TxK+C6goBqT7UnQGA0T9kzSPB9NC3yK6GUMABC2hrrZVQNu6PYi8kAUTDROqarnlAt7b33ZoiU6WFIS7DlCqWI/IRhJ33N9u3Nzb8ImVoHF7+Oc1nTZ1Zqw2P2Fup1YXvYmYfw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c48139a-67bb-49ec-2a26-08d7b0607e3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2020 08:41:17.6211 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ygZQN8vaEfal8pKvMbPWHI2PFgNzCKpd7SBYEAiOZUBXE05InIkDv5WeddllE+p9raX1jvKDP2ct5LbBoLQzuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3850
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_004122_311317_17E3C638 
X-CRM114-Status: GOOD (  18.81  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:62a listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 Peng Fan <peng.fan@nxp.com>,
 "sakari.ailus@linux.intel.com" <sakari.ailus@linux.intel.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rfontana@redhat.com" <rfontana@redhat.com>,
 "dsterba@suse.com" <dsterba@suse.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "okuno.kohji@jp.panasonic.com" <okuno.kohji@jp.panasonic.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "allison@lohutok.net" <allison@lohutok.net>, dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Uwe

> Subject: Re: [PATCH V2] ARM: imx: Add missing of_node_put()
> 
> On Thu, Feb 13, 2020 at 02:20:54PM +0800, Anson Huang wrote:
> > After finishing using device node got from of_find_compatible_node(),
> > of_node_put() needs to be called.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > Changes since V1:
> > 	- correct some of_node_put() place to make sure it is safe to be put.
> > ---
> >  arch/arm/mach-imx/anatop.c     | 3 +++
> >  arch/arm/mach-imx/gpc.c        | 1 +
> >  arch/arm/mach-imx/platsmp.c    | 1 +
> >  arch/arm/mach-imx/pm-imx6.c    | 2 ++
> >  arch/arm/mach-imx/pm-imx7ulp.c | 1 +
> >  5 files changed, 8 insertions(+)
> >
> > diff --git a/arch/arm/mach-imx/anatop.c b/arch/arm/mach-imx/anatop.c
> > index 8fb68c0..5985731 100644
> > --- a/arch/arm/mach-imx/anatop.c
> > +++ b/arch/arm/mach-imx/anatop.c
> > @@ -135,6 +135,7 @@ void __init imx_init_revision_from_anatop(void)
> >  			void __iomem *src_base;
> >  			u32 sbmr2;
> >
> > +			of_node_put(np);
> >  			np = of_find_compatible_node(NULL, NULL,
> >  						     "fsl,imx6ul-src");
> >  			src_base = of_iomap(np, 0);
> > @@ -152,6 +153,8 @@ void __init imx_init_revision_from_anatop(void)
> >
> >  	mxc_set_cpu_type(digprog >> 16 & 0xff);
> >  	imx_set_soc_revision(revision);
> > +
> > +	of_node_put(np);
> >  }
> 
> It would be a bit more natural here IMHO to introduce a second struct
> device_node * variable for the fsl,imx6ul-src device. Then each of_node_put
> would belong to exactly one of_find_compatible_node().
> (Now the of_node_put() in line 157 frees the fsl,imx6ul-src on i.MX6ULL and
> fsl,imx6q-anatop on the others.)

Make sense, please help review V3.
Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
