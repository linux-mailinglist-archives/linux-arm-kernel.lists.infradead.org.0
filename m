Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B25154E8F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 23:05:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7yHoCtu365NGyr+kVhT7+HvrpkDYxamlwPS1XPIfXXI=; b=VBu7hNNYE9BJnH
	BsPkCd2PI7Gyyu0gzdBH2fPwpV2arLTFRPge6/p5hhrQd8X7gli2b6MqDzZndHnlWQdKcSFxxJmVf
	/dGimbqK27LT3Z0AcZG4ixVa74ZFf4AhwZCOEi0O4g2OYS+96+r1Zf6rMojqjkU62GjAjgkkYBXDv
	XxCkUsOTRT5Rysp24mDhva4PmsBnNzRk3AaQWm66XrvMuNTODrYghSZqjHZAbgcbwZVpOLHWryB3l
	ev3r5Bd3+1/4wLuWUb3ovmIp0NMR1bJg9ljxS/zQBgF/G+2IV6XK5Hc23gsIfQ+ANCBEEalylyJ7a
	sAjmsYgccPpxCT5rv9eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izpHA-0002hO-5f; Thu, 06 Feb 2020 22:05:32 +0000
Received: from mail-db8eur05on2089.outbound.protection.outlook.com
 ([40.107.20.89] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izpH3-0002gV-3Q
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 22:05:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jt+kP+ui1kZmQVTRzLzkvLtY/OIE8V45WB3VcIahHak8LX+nNTuFFMf5rd0WE9GAeaECoet8IEcaelSo9Nm3iIHJoUQt6UvInwpZZJC/tT1o1hCL9261bJ1256T1g51A09lNknCxanpiR4OZtE8M84mreRShTt9L8FSR5RzZh4/JpQKbjmqZiLhK2ZOWntmzJDDZfjAOqkHQPhthZ0qHdhf68qXGQ0dxGvSWCzrBGvDTa5O2X5rCKTL3LtlhlJ9g2bq3MTMeUxD+2FJyIBIS0H9MI43HgteWAxZAr7NQqDjI0eOeglRnYf0WznVSznO8SKQYyZQo51AdS0bLbzLNSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qdR4gpIVxJd550kKdP/INW3feEywfXEHvXdc41R5k/w=;
 b=oY7455CFUjEd1JOVnvEV03ZtLIEC4D/004Q7o2PYTA7wW6eFcpATh+cP5KnQyjGgZB/5BcKp2Ml+Rhm2z6Yk8YxzrckoLRlMUEBdpPp8r1mbBTw0zR/OKEMoMC1TQ2Q9GMCQEDcqod2LYd04RIynkqiCvGPg/A6JNOhH4ouy4mpvyFeJ3iA0pFFbG1uwI7uB8BFlVpQ2yJwhZ6GqZYllmEJnpO9NYYG8l6EW98ieYpdWSS1tUzPJ9Treu47l7Tyn6UvVn59SKRHuj6izyvfEsXr2QEG1eGE9B50eN/EWV5BbT4ZN+ZaGXzBNpYu70tA8FIrryq12oneyQP3ejI/BRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qdR4gpIVxJd550kKdP/INW3feEywfXEHvXdc41R5k/w=;
 b=BMnv4GKJix6xK6i34ZE7OjsGCzt8n0j7hTGxlc/y2UkrU3jQ4ZK/LAjQ5xbIZ/BQeFdQn0dqs4AxJtmIcw6nUGddreV4+aOI/OGSzxVlNqQvhe4x1AubAgmX1CNbVqak7P+G9qkSqI2NLYs/af3s6vHwJYjGZw4VmEgOQBCf9QI=
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com (20.179.234.30) by
 VE1PR04MB6432.eurprd04.prod.outlook.com (20.179.234.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.21; Thu, 6 Feb 2020 22:05:19 +0000
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::b896:5bc0:c4dd:bd23]) by VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::b896:5bc0:c4dd:bd23%2]) with mapi id 15.20.2686.036; Thu, 6 Feb 2020
 22:05:19 +0000
From: Leo Li <leoyang.li@nxp.com>
To: "Roy Pledge (OSS)" <roy.pledge@oss.nxp.com>, Youri Querry
 <youri.querry_1@nxp.com>, Roy Pledge <roy.pledge@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Ioana Ciornei
 <ioana.ciornei@nxp.com>, Alexandru Marginean <alexandru.marginean@nxp.com>
Subject: RE: [PATCH 0/3] soc: fsl: dpio: Enable QMAN batch enqueuing
Thread-Topic: [PATCH 0/3] soc: fsl: dpio: Enable QMAN batch enqueuing
Thread-Index: AQHVsQ3AyGczVLMI40Km2qz47OLo96gO+P6AgAAW+uA=
Date: Thu, 6 Feb 2020 22:05:19 +0000
Message-ID: <VE1PR04MB668700BA28E1E9DE514AD5488F1D0@VE1PR04MB6687.eurprd04.prod.outlook.com>
References: <1576170032-3124-1-git-send-email-youri.querry_1@nxp.com>
 <a46accbc-becf-ad23-8504-70ce619e2b11@oss.nxp.com>
In-Reply-To: <a46accbc-becf-ad23-8504-70ce619e2b11@oss.nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leoyang.li@nxp.com; 
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0382b7c3-6a3c-4355-4cad-08d7ab50a7ef
x-ms-traffictypediagnostic: VE1PR04MB6432:|VE1PR04MB6432:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB643236A60493745F840737C88F1D0@VE1PR04MB6432.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0305463112
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(346002)(396003)(366004)(39860400002)(189003)(199004)(71200400001)(8936002)(8676002)(478600001)(81166006)(81156014)(76116006)(66946007)(64756008)(66446008)(66476007)(66556008)(316002)(110136005)(7696005)(6636002)(33656002)(86362001)(6506007)(55016002)(186003)(53546011)(26005)(9686003)(5660300002)(2906002)(52536014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6432;
 H:VE1PR04MB6687.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fr662aR0DVwp3goEk+SXzvkBd+dJGznF/JAq8qis15MrrrQkM9QuzOWq1QEmFpacH3BsxL6Az+aAZBbilyr8QjoZZoBNdbOYaMITZwjKSpb3+tBdwmX8I1BJO13fmbvhJywXQ0LzDYqFt4wm05YTD/CTfZvIfdrMz+abvNd0fOIT0G5eGg+ffDOCPZSOxUCtQJ5Pk6Pp9/WUsMgqtHYniwMlts+EofzkpIw9AMcLXLaVDdjO8ItaIpkBEHeRfY4E9a8RXtII8ryIe+Kc/DpnPxli9YgngsAacgb0sPw+SfQ6EhK+JJ2vzNr2KLur/X2UuB+hjleNkIArvMXTSUV2w/w09kYzF9KzjW7jM3myB15EmGEuRJyq+Ipit/FLlwidZA9tNfLtFasNQQuJRO3gYBonL/t4Fa8V1yREycjrIZdLxKf9AWozKzzyu4iu7WSd
x-ms-exchange-antispam-messagedata: TTvY70DYDQ7jBSXvSMhHYHoNiqHsLSXEYSFXELJmzTd7PcjalPwUH+v2z0XL7UkTkY1jxEP5iB/NDUcDRhAoDsR2j9e1CLI14eGU62Y3mIfDnkus0tqe02/K8+mvM9QDm4tqqzxqD8t0LlOmJJM9og==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0382b7c3-6a3c-4355-4cad-08d7ab50a7ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2020 22:05:19.8266 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mH2645N//jIobiWvbF/TsSmdqlVR2s+Y8YPAEaMynyfJuQ1DbwZQzYdiaZzgD3bpqZ5sfoTasZEo2b63uNlbDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6432
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_140525_209425_AE165923 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.89 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Roy Pledge (OSS) <roy.pledge@oss.nxp.com>
> Sent: Thursday, February 6, 2020 2:40 PM
> To: Youri Querry <youri.querry_1@nxp.com>; Roy Pledge
> <roy.pledge@nxp.com>; Leo Li <leoyang.li@nxp.com>; linux-
> kernel@vger.kernel.org; linuxppc-dev@lists.ozlabs.org; linux-arm-
> kernel@lists.infradead.org; Ioana Ciornei <ioana.ciornei@nxp.com>;
> Alexandru Marginean <alexandru.marginean@nxp.com>
> Subject: Re: [PATCH 0/3] soc: fsl: dpio: Enable QMAN batch enqueuing
> 
> On 12/12/2019 12:01 PM, Youri Querry wrote:
> > This patch set consists of:
> > - We added an interface to enqueue several packets at a time and
> >    improve performance.
> > - Make the algorithm decisions once at initialization and use
> >    function pointers to improve performance.
> > - Replaced the QMAN enqueue array mode algorithm with a ring
> >    mode algorithm. This is to make the enqueue of several frames
> >    at a time more effective.
> >
> > Youri Querry (3):
> >    soc: fsl: dpio: Adding QMAN multiple enqueue interface.
> >    soc: fsl: dpio: QMAN performance improvement. Function pointer
> >      indirection.
> >    soc: fsl: dpio: Replace QMAN array mode by ring mode enqueue.
> >
> >   drivers/soc/fsl/dpio/dpio-service.c |  69 +++-
> >   drivers/soc/fsl/dpio/qbman-portal.c | 766
> ++++++++++++++++++++++++++++++++----
> >   drivers/soc/fsl/dpio/qbman-portal.h | 158 +++++++-
> >   include/soc/fsl/dpaa2-io.h          |   6 +-
> >   4 files changed, 907 insertions(+), 92 deletions(-)
> >
> Acked-by: Roy Pledge <roy.pledge@nxp.com>
> 
> Leo - can you look at this series so we can get it integrated? Thanks

Sure.  Thanks for the review.  I will queue them up for v5.7.

Regards,
Leo
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
