Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E189D1DAC85
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 09:46:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rlM33cEYyYgEarK4rzHsIVmDJd+bKyOLV5fZxxliTA0=; b=Shuj/wTNanipfb
	lZe5lVtImksnUPmY+Lo2h4o3RmkfWaCTnMZTwTpi1g2/xfd1DzBL8W8P7H2i6mixGMcXUsfP0Zohl
	sZzPA6h+LtpoHYV+q0J9GIgs2gZ8/KTfQeyn3+zp+Leq4Vu3b3GBSAv9qXzkEsmSH2kn7X0CWxVbW
	Qe/nROtSSaGznyOc/JsfVhMAPW7cpS+YrQF3FjG51Md9L5vrssuRwGUyeY6qUCQ8aS1YfcUZYyE1l
	ZUJc9MGV6kVI3scQ9FwGYJjloTUM4eHgEfqXsQ1vKxYTel83Drg8Hfm1rlvWYgz7cf53abQXDvuOm
	weNlImC5N7V0Qnotc+qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbJRC-0005Ib-1O; Wed, 20 May 2020 07:46:50 +0000
Received: from mail-eopbgr10078.outbound.protection.outlook.com ([40.107.1.78]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbJR2-0005HR-Ko
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 07:46:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kk/XxHgt907JaN18LsY9HwJqHsWKzIHcorIrc03u74wpadH5BJLmaoJOJoyRWdmedYQBrEtE+4HY02XrHWRHfI1Z61xLtEcmH4+4TpITlJoICUiaPRi/CrldgiSx/1xgqRYaKpGG/alitMrl4W8/6owAANNsUyxsj6q0zqw40sIcM1F/0O9y1lI0U/StLusbz3Ss6C1vePR12y+YACYpyi3QUNhRJFx5l2D1Am3FUeLrJA0oMgXio1zn4Yim34Wq4AVzuKLOunQB55jPHWyulJXtqo1a/uZnVIlmx+5+Vm0Qfhd21HASri7eEBwWVB2vOEmyZRc4wXnaLVHj1T4mjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z8spDK9DSbZiNr16VXsDoiJONX63k4BQuUruqsz7kdI=;
 b=oaURGZleHNGwatC6jJN78/KYIAzQ1vMbI/m2LONTTivkne2LE4UGtzjggRR2WrCOfNrTWTD5dQ7tiD8rNYaGeJ3ZhmOXx6cQZXSAfbXnAoBlD2x53PASjTxd8dkgAPvqi96z3aljs/FupwqaIDFHEtB4Iwz7rH2f++ewmKfaE/jVfNHbCUbBsblZgIqwiqtLanz2dn0ston57UjIudsWHvwwwpliM2mApKfep51A5/8k7JUof/4qdWdI21FFRAxW3DMCzyx6focX0BFNZxFxHOzE+9yMDj1PdaiyyhzbZ87iWHiMOa+ATtFaseIVNyDVEr/qmGJhIiDckNb1/7JcnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z8spDK9DSbZiNr16VXsDoiJONX63k4BQuUruqsz7kdI=;
 b=E8fsFKdT4/KFyhKEC3XH3vR+MsC2Js09hwPDrEz4DTK7bkWKzPpsBd/C3pUG0xJsdsmuV4nreVhV8ZxyxWTf45SSb6fDeM8chcYRMlgjG74fiMKTN6kSqhZGhE68KwILocYjCZp1PGRHFHSuju7jl2+bVCS5xFioDPSArtTPGsg=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3691.eurprd04.prod.outlook.com (2603:10a6:8:5::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.31; Wed, 20 May
 2020 07:46:32 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3000.034; Wed, 20 May 2020
 07:46:32 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] ARM: dts: imx: Make tempmon node as child of anatop node
Thread-Topic: [PATCH] ARM: dts: imx: Make tempmon node as child of anatop node
Thread-Index: AQHWLnGKHrF20oveIESDr3+xecMSEqiwl/QAgAAARbA=
Date: Wed, 20 May 2020 07:46:32 +0000
Message-ID: <DB3PR0402MB39167A0961963B73758F6CA9F5B60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1589956216-22499-1-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB49663B517C218072B2845DBF80B60@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB49663B517C218072B2845DBF80B60@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 231a62a9-c82a-404e-cbe0-08d7fc91ea0a
x-ms-traffictypediagnostic: DB3PR0402MB3691:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB36914B8B0A3AFC8902347E09F5B60@DB3PR0402MB3691.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 04097B7F7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qKjydmSqfYeqapHpoM9mwk1oCYIDwP14xCKDLpm8GsEl5Xwe7E1r/hZQTbAEOZDwSumH9hJUy59gs0lkXG2MWoUHRwzCdfBPoN0Agi5L2PN+nwY5cbzEyPtZglwyqke5Y5qR8t1NmvGRa5jZmoe8/wbVWsXMrLMFFUj6Q6JsZXRLzTg8041rJvA7vpV83EeMofHBK6VhbsV3wmwAqS8SucLhOwy6FYhjvde4PphrNH+kctibmmhDWVPNAKcKmtbIw1DruvDF2MMod82C45odhr37qvVKNCgk55ZajGWfKCt/gb0XBamm0M+SNrzFxHjFYXQWZ4eiPRyD/1iTbiQikqidAPlWhobpWFRf54hKmml+MeWoXGyeWkpyjO1LWSbAgGLjBkh2k/Wb7vudcfRYNBAMLj6KESR6RsxCnWp86CP3pkpHRWBjd60vUVZrDxHI
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(396003)(39860400002)(366004)(376002)(346002)(66556008)(66446008)(64756008)(66476007)(76116006)(478600001)(7696005)(86362001)(66946007)(5660300002)(4326008)(2906002)(8676002)(6506007)(8936002)(316002)(55016002)(110136005)(44832011)(186003)(71200400001)(26005)(52536014)(4744005)(33656002)(9686003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: XUELVoMS4OKNRtJbnIktlt9LW71WnskPuY+PuKvExY4koAoDIhJvQkNNiU7VdXICVWvH7jfHsru+UI/7rknCJMn1A8gVcXHFU8TmyJJFHWvqRgQA4TcQ1XbHUkWZEFMY60iStjYIIqnxIpDemkEBFep8VHgKro5uqi563OHypcFqLERLeBmb2B7bwoWehzf+UHlBxAu0X+2OmiJrfEjil8nI3WuYoqSQvf9gDMXxvO5oSCE5rKX7hdTrJxbLqgSl6ukjnh1JGMexOxXMpjnQiDkD18cf7FHOJv7UZxEe5hkwNTfeb1BM44XbTpGdR2cD3MNWM75dJTTkBqLuqFXHZYHUdgoXFadahJ/l3BS53QiQ6xajTAtDWLWeRMYYpMAaGFvP0WsbO+fNgyeYJCZbeoAN5GPgQ9qhVUpP/tbVTvcX8DjkNXrJkCBoExeNtVL5cYCr/a5c8WKE6TRAUcHYQh5nzAFh98NfEEG/HLKDbjBAwfNXZXJHBeah6TSQpr6a
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 231a62a9-c82a-404e-cbe0-08d7fc91ea0a
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2020 07:46:32.1768 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rPuNMSfpjXpO3YE7TKqEp2hbf9KZFjY07uVh7brXsWEh1UjzKQA4//9CUaFhVuc+X2Uyu5fBX6L+bTYOV5baKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3691
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_004640_683443_BF6B0BED 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.1.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.1.78 listed in wl.mailspike.net]
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> Subject: RE: [PATCH] ARM: dts: imx: Make tempmon node as child of anatop
> node
> 
> > From: Anson Huang <Anson.Huang@nxp.com>
> > Sent: Wednesday, May 20, 2020 2:30 PM
> >
> > i.MX6/7 SoCs' temperature sensor is inside anatop module from HW
> > perspective, so it should be a child node of anatop.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> 
> Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> 
> BTW, I think you also need a binding doc for this change.

The binding doc is the imx-thermal.yaml I sent out, it is suggested by Rob
to move tempmon into anatop node, that is why I did this patch to align
with the binding doc.

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
