Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4755CBC04
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 15:41:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=RaBa2AlQ7gPHfa2C9SpJXvvhdMHv7Wi1JQQzHliPZ+c=; b=YHmVMVLqNuWYly
	qUoThOfHGLp7lu4zSIfVluScexnyj6XA25/vlpFYdKeEjRbYfLJKtI1Uf8vKiYj2LxjjgJZrUyW9v
	vymLJIw8+v+m7qY65zUuVRdpRdjCvm4jkT7qL7S7xHEVy5gpj00yDFElLkiLBt6OukkNWwbRRL2bt
	p2UJy/7EjC8/2Cq50TrEvfybfOUdLk2DK/RvukvhAbEGAxr0xCT5EdHMYkCFJjO4Z6yxrCGbVqNaz
	JJrZJIal+0AQuKy/n4nvCmbSq5lFpVEThPboVhjZnROkCSqzu95EdxhFTedu2NRjCFo7FXKKoNEyQ
	5Byse8mgFoRnFn+oktSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGNpN-0001bI-83; Fri, 04 Oct 2019 13:41:01 +0000
Received: from mail-eopbgr80085.outbound.protection.outlook.com ([40.107.8.85]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGNpF-0001a3-EL
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 13:40:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oEd4B/gU1Z5k76q2obnkYnRiKhut2+E/X+dBNc6XJbXrxLViqlUPFUi1Y5SJPES+rZy05RaSunOJp3LL/GHXPBkdSZu9qc5PA3e65VcPvmF/yBfFiDsZWaolZFphbYOrAND+jVVrNhN3xNaLaU5iemFLzm8OAJm4DJ/Xruicxf+6PvoNkbhO6oDdyxDcmIcmeZk1TyqL1/2A59VLISSpw0woD/l9ImL9XIyWnXjN93xtDaJzEwYo7bcDzl1BQwfI9NElYyK/YdQMufW+84aWauLaKVwXRGpM8pPGiyqDt/M+tHLowRmBn6uEbPU0WQ1tT6Y9fh4au1ZklfW6dc9WjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GAqQhnB9OCw+1cyAwit8CjnmkGxZUd5/qxjBxXYoZmU=;
 b=KH60EO6gda78uBXR+AQCPseEUKHmHpK7ekGQn9U0Pnfl2LPCH66MOurD6UFX6kRBI9ngu8V15lB9UvHSh55C7knla5HJx2vvbGLbv2VpyLGq8Iee0Onc26up8BWiG7hYLf8KnwvKF20tELX7aTHtR8DzivLV8LxScW+p6NBIo0dRnUFA4+LiVuSb4Mj/B+psW4p2L4ObItUkZYYwIMkJL1WmANYWjYT6FUGkLLi2d9gk6iHUVrDJAtL5F61sPtkXJNwJdtQ0EoDfisOZn0+enJv2/iKblEbgLwz+jNszE1Ah1bCqe37d84G+Elym1jtCI051qpe4rJYH+trePssmnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GAqQhnB9OCw+1cyAwit8CjnmkGxZUd5/qxjBxXYoZmU=;
 b=hYK89MswdX0Jbzuz3PNCoMt/XpZzjpH11+EVG0GSqPOKq2Pjl2QqkQzOPi43VB28+n4tdvGACxqubkTCKdsdfuo7aL34Pct4HJ/GMosSt5H9kFtxeyGdjmpb8pa/ItV0raNmIQCrnBSDqQnOkjQVa1l+i/KzJf1bgfZ3vgMNmkU=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB3838.eurprd04.prod.outlook.com (52.134.16.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Fri, 4 Oct 2019 13:40:48 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::fd33:c447:3cab:c36]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::fd33:c447:3cab:c36%7]) with mapi id 15.20.2305.023; Fri, 4 Oct 2019
 13:40:48 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v5 3/5] serial: fsl_linflexuart: Be consistent with the
 name
Thread-Topic: [PATCH v5 3/5] serial: fsl_linflexuart: Be consistent with the
 name
Thread-Index: AQHVerlUg6aq6mZeEE2PCdc5NmXbcA==
Date: Fri, 4 Oct 2019 13:40:48 +0000
Message-ID: <VI1PR0402MB2863C5C76A9F709B98C7BDE7DF9E0@VI1PR0402MB2863.eurprd04.prod.outlook.com>
References: <20191002130425.28905-1-stefan-gabriel.mirea@nxp.com>
 <20191002130425.28905-4-stefan-gabriel.mirea@nxp.com>
 <20191004130712.GA622272@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ffc368f5-ff23-4639-bdb6-08d748d07722
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: VI1PR0402MB3838:
x-microsoft-antispam-prvs: <VI1PR0402MB38385C8E83847431008C90B9DF9E0@VI1PR0402MB3838.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 018093A9B5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(39860400002)(136003)(376002)(396003)(189003)(199004)(66066001)(8936002)(7416002)(52536014)(4744005)(99286004)(6916009)(66556008)(4326008)(66476007)(64756008)(66446008)(7696005)(76176011)(305945005)(186003)(6506007)(7736002)(26005)(102836004)(53546011)(8676002)(1730700003)(81156014)(446003)(5660300002)(81166006)(86362001)(74316002)(2351001)(256004)(25786009)(229853002)(3846002)(2501003)(6116002)(33656002)(6246003)(476003)(14454004)(316002)(76116006)(66946007)(91956017)(6436002)(71190400001)(2906002)(54906003)(71200400001)(5640700003)(478600001)(55016002)(9686003)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3838;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QrAuTePPkOPBlNQQrMGP8w3ZsaCtxJcmtggHpE0mPvCaNgHQS+K678/MDPid6KYDFCarx/f077OWnYUau1Hw2er8NBZojmLd00mtx+SzigYx5PvU5vbfVo0t1VA/qPHOA+kf0atAUgg+oPd4t8QrSEovXBgju+enu/3ncfNelfrV3j7ahquvO766FbItanmC8A1wTw0oW01RzweGYcfUz8gIXOhSHazXb++8ohBck/6WaptOAhDQjY7zTIrw0yk2WRbwpcQPyQkG5JVUIvM8V0DyNdPFzXUnZO3k1z0CqzrNT0r/07m5UX6zMM1OTFT6sYxrPU3JzWThXqvTkfUE8Tk3T/QC3ov31iyYEvYJbXKZWi9O6YafZ7SZxF5jRfk5GYMWdw99ZuPO4T3OoKLh/4/MycI0eXuptEB2txDeIWo=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffc368f5-ff23-4639-bdb6-08d748d07722
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2019 13:40:48.3908 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gSLWXAjH9eSH5rkmCl197xtAMsiXR4XoDSUT4b8ZutalNRANy9ITFfglCgDwwi/LkAY5+Gkye5nLLu6fIQFH3JzMDyIy90YjKWufCPyWg6U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3838
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_064053_563264_4B738647 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.85 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.85 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "jslaby@suse.com" <jslaby@suse.com>, "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Greg,

On 10/4/2019 4:07 PM, gregkh@linuxfoundation.org wrote:
> On Wed, Oct 02, 2019 at 01:04:42PM +0000, Stefan-gabriel Mirea wrote:
>> --- a/include/uapi/linux/serial_core.h
>> +++ b/include/uapi/linux/serial_core.h
>> @@ -290,7 +290,7 @@
>>  /* Sunix UART */
>>  #define PORT_SUNIX   121
>>
>> -/* Freescale Linflex UART */
>> -#define PORT_LINFLEXUART     121
>> +/* Freescale LINFlexD UART */
>> +#define PORT_LINFLEXUART     122
> 
> This is a different change, and one that should be split out and
> submitted now, for 5.4.  Please do that as the id number is incorrect,
> don't bury a valid change in the middle of a "marketing renamed the
> device" patch :)

I will do that, thanks!

Regards,
Stefan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
