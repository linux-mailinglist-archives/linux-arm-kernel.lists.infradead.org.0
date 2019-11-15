Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FBA9FDAA2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 11:06:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lhzq00gYlGo3G9rP1MQos1QXZ5ACfHc1ld8CYilll9Y=; b=kknaeihVN6LFRO
	0yPxTp8k6Uilg4Yz5YscpYz60rb2UeACRPclQzJxjGrkateLV2d8+Pjn68T/LzdXHbEiXuphllAGw
	Xe0yco0dnYn029t0IcpYg5csW4a3P87olYV/DV3h9axhxf1yeCPxjBrC5IuvbMHBtEtb6LsKsU4Wt
	qK3wT7eyzTBCzkF+ihUnka0Iisg5fXFrBQwdaRoj4vaAHtkTCMz/znEv3X5ggSRh/H5/8/GIgXO+p
	MizjBfOKzlNvsIlJqhC9N+J8S0p6bWSQzx6Okadcq7fYAdQJkzcTVvKOzgrG+I5OIv20eQGAW6ycG
	xjwD/k3kfNEDyulvIO0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVYUk-0004eW-Dy; Fri, 15 Nov 2019 10:06:26 +0000
Received: from mail-eopbgr30071.outbound.protection.outlook.com ([40.107.3.71]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVYUL-0004Uw-1C
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 10:06:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OxF3aBvOFurZX5A9CUFnMKfP3vFG/pzyIVn5bSbLpu4+Gg1CeRWo3fWUBnyTPZ7qw6B6W4gpdUDPfTe3Y6F6x6RAm61cYsQuF2njKWUKFcaWEpK6rgFM9uy+V52zIxGrR0VNDStOe2paPHFYL5U6YG1kLi5hxD3yWtFdkYxdwPWAVtTzo+zDDdIq+5XjSrOg7UnjkcDJV67vuA+SGg1FR0nTwGKtICHrj3WX8umtowf4vbjfBWTeskMh0152YoAdnbAXv3l60FQHjcol8xzhB7tRYUt/6+FO3anlAPaCZ2InyGzOUwFEZtRPgD+gR5rquThIYzOaYOg3JLC/kEQuAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4DUWw55HPCzJbQTWNnWTErK9+A8nVzABpTDVPj1+M/A=;
 b=kcWwitpti7u0f1lHXC7q4TWuryDXf0KJPYbCCEaN2ZnVXPEmOc33+h3/dLoazrZ9QY+x2Se6HgwMp/70PqNuCHZPtfDgLhsQ/zHcO2OLD//p/YfyPSi5d5HQv9XredOXz3nhxv93wArvN1ueAjeF5EAjOIbOozpZFqx9g+M5GYyZP46sh8SDhKqRTeDkySnxU4uzc2XKKZ/MJWhZx1TU19EOFL8Uzv0V6qV2pnXad1yp3fjSnU6zs8VlPnPxldp0k7XFEX5iCEHm0qGWQJ/OBBziu153wq79PydcwI/RKC3GRMHcK6D2elvgHMHtp8sLRExwaJk9TTiTYvTjQQOlSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4DUWw55HPCzJbQTWNnWTErK9+A8nVzABpTDVPj1+M/A=;
 b=DlAxG61N3RkKJUKeKddIQfeCC25uAUJQcDw9PKJkDwPUUp1c9FXAiSCUt1PbtzKgO0OgMn8a26Vsu7sBQLBBIABfpRigdHp/2uKKGLoJAApyspXdmyoW57HQ/8XSqyxMGWjrkcIMO3t5JXQIrUR3d+0CyD007SKoHkkudpMe3aI=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4898.eurprd04.prod.outlook.com (20.177.41.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.22; Fri, 15 Nov 2019 10:05:57 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2451.024; Fri, 15 Nov 2019
 10:05:57 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Jan Kiszka <jan.kiszka@siemens.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will@kernel.org" <will@kernel.org>
Subject: RE: [PATCH 2/2] arm64: export __hyp_stub_vectors
Thread-Topic: [PATCH 2/2] arm64: export __hyp_stub_vectors
Thread-Index: AQHVm5lZpVu/s7W1Uk+l10ntkFA81qeL/0YAgAABgpA=
Date: Fri, 15 Nov 2019 10:05:57 +0000
Message-ID: <AM0PR04MB4481A23F90A6C9BAF37BDC7B88700@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1573810972-2159-1-git-send-email-peng.fan@nxp.com>
 <1573810972-2159-2-git-send-email-peng.fan@nxp.com>
 <3aeabfb9-0680-08f6-49bc-38930c7a23df@siemens.com>
In-Reply-To: <3aeabfb9-0680-08f6-49bc-38930c7a23df@siemens.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 947f1580-c37f-4e31-0463-08d769b3690e
x-ms-traffictypediagnostic: AM0PR04MB4898:|AM0PR04MB4898:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB489876E502B4EDC9ADFBC51F88700@AM0PR04MB4898.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 02229A4115
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(366004)(39860400002)(396003)(376002)(189003)(199004)(33656002)(2201001)(2501003)(14444005)(6506007)(11346002)(66476007)(6116002)(86362001)(478600001)(81166006)(81156014)(66556008)(9686003)(8676002)(4326008)(52536014)(6246003)(6436002)(66066001)(14454004)(99286004)(186003)(55016002)(66446008)(66946007)(64756008)(26005)(53546011)(446003)(76176011)(256004)(76116006)(5660300002)(486006)(102836004)(71200400001)(71190400001)(476003)(2906002)(44832011)(3846002)(54906003)(229853002)(7736002)(8936002)(316002)(305945005)(25786009)(74316002)(7696005)(110136005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4898;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZIlmPoQhVFVgr2SOGDoCVBUAXIwr0m4ueumBMVSlMlVM90wg+d2vDe3CnjHUa5/VaR7SrIcrvKulD/nsXu65TMp9CXvjCCTSOLcS57DOBvtzMzjstzFuiP8A63N6Q+i6gu4GAXZ5ddJeCLsaB46VbjYCu/75nKtaUtPVI1epfJYIJgyExEj+6QCqtXh1SJtNflIshY0+y4pQGxRBMiM6DTtKx/FkFbEDALfqnnOLjxBjrv2ANN4YVnv6GCwyKbm1h+eXcEnXTg83XJgUgz9za4aI2l/qOtebV6NrFDSP5+JQ7MpdNGCOWOXbKeOQyvyHid3FhtsuKqds/CwRMDcQgUGiK6kZIs0+Ly1B9cl87cZQk6Uh2i5ygGeJSvcSNZNcV8+GoXOv54vUSzEOsyZJ+MCByswCQ5hDLK2f5zooGvTUGP70b46x5ErgW3aUZ2qY
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 947f1580-c37f-4e31-0463-08d769b3690e
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2019 10:05:57.7324 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +W+oFJ4B2F9ea44d3piIbPTyCucs6hOEaP39RB3bBTxBRppYmVZNIb/eSXPyQPSFE95kcgleVugLyKP/pVS4Yw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4898
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_020601_094300_FEBC6984 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.71 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alice Guo <alice.guo@nxp.com>,
 "ralf.ramsauer@oth-regensburg.de" <ralf.ramsauer@oth-regensburg.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "james.morse@arm.com" <james.morse@arm.com>,
 "allison@lohutok.net" <allison@lohutok.net>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH 2/2] arm64: export __hyp_stub_vectors
> 
> On 15.11.19 10:45, Peng Fan wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > External hypervisors, like Jailhouse, need this address when they are
> > deactivated, in order to restore original state.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >   arch/arm64/include/asm/virt.h | 2 ++
> >   arch/arm64/kernel/hyp-stub.S  | 1 +
> >   2 files changed, 3 insertions(+)
> >
> > diff --git a/arch/arm64/include/asm/virt.h
> > b/arch/arm64/include/asm/virt.h index 0958ed6191aa..b1b48353e3b3
> > 100644
> > --- a/arch/arm64/include/asm/virt.h
> > +++ b/arch/arm64/include/asm/virt.h
> > @@ -62,6 +62,8 @@
> >    */
> >   extern u32 __boot_cpu_mode[2];
> >
> > +extern char __hyp_stub_vectors[];
> > +
> >   void __hyp_set_vectors(phys_addr_t phys_vector_base);
> >   void __hyp_reset_vectors(void);
> >
> > diff --git a/arch/arm64/kernel/hyp-stub.S
> > b/arch/arm64/kernel/hyp-stub.S index f17af9a39562..22b728fb14bd
> 100644
> > --- a/arch/arm64/kernel/hyp-stub.S
> > +++ b/arch/arm64/kernel/hyp-stub.S
> > @@ -38,6 +38,7 @@ ENTRY(__hyp_stub_vectors)
> >   	ventry	el1_fiq_invalid			// FIQ 32-bit EL1
> >   	ventry	el1_error_invalid		// Error 32-bit EL1
> >   ENDPROC(__hyp_stub_vectors)
> > +EXPORT_SYMBOL(__hyp_stub_vectors);
> >
> >   	.align 11
> >
> >
> 
> While I would not dislike to have patch-free access in Jailhouse, I'm not sure if
> an out-of-tree use case justifies this an export.
> 
> Also, this lacks the arm equivalent to be complete.

arm and arm64 has different maintainers. If this arm64 is acceptable, I'll create
arm patch and send out.

Thanks,
Peng.

> 
> Jan
> 
> --
> Siemens AG, Corporate Technology, CT RDA IOT SES-DE Corporate
> Competence Center Embedded Linux
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
