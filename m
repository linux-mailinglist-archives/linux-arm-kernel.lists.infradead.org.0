Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E90AA604
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 16:35:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NxJ6z25srme0FpMqV3SR21ups7mOD0dDaflnp/u27Yo=; b=CgzWrvKZpag0k5
	3Quwuf7kAKxhP15DMgvbi07H9kfbMAPkNK9BoC9vzh7TY47Sw+h60+AZGbANgAJu44F6DktuVe525
	UZY0zJpG/P9HWFomqd1Z8s1q0ikAqpsfkruE3/2190hl57orDTPrsujjPAnxPkqCi/4NUzj5a0mH3
	yhAyU3JDvPH1+0Pr8eRd5Wj6ql2+OwlgYKZ8/KEO5B1XDvslEvCFKoVgb8W8jitpk4uA//0+Deflq
	hlK1wn83wp2YDwMa6ZcNmy2J304iagLcBT2D73TxWeD9JviEipYqfyPxaCFMrZBNi0Z54T5BkSZ3Y
	SnRAt+ePupANlMyMb03w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5srY-0003Ws-PB; Thu, 05 Sep 2019 14:35:52 +0000
Received: from mail-eopbgr10088.outbound.protection.outlook.com ([40.107.1.88]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5srN-0003WS-Ez
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 14:35:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MktwJiTyxaA2FWomLMP6+hL8O2pez8uh17y+KGIZrsCR7kTrrd+NhuDE0GNef/blh6c4TmgbguK5zpVcPtKc+WdZ108ChzleRP4j2Lk+63STQ1wZpOBDFDxqLsOEtc+B5WkapMS7U9bUXZRPuxG5fyQBV6SYqIaLYS6hROGnLtg3BIz2spz5XoVT6DOzWYZRPvT+sVAADElVRt4LeEqaeQ8/+pvcHaqi6FUBH8Vumq044Jpk3JuvEWrwqG5AcsL1xlUXeFwNKirLOuMp1QvxiEr6AOn6SR0MlmiOmQL1l8i+62PdBwNIbMkxsEJtAKYTPu6JzB9ErR+CibuwpwB18A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7HqUkZSyW4zUgHZAKK4Cn/Hal/NIwD8GgDIZ5CLOCS0=;
 b=XET72F445iljFmWSJZn3KWqGu0tZsg7j2o3wk1erXh31mU6NXc5UO2/uvm789iRsdG+CGVaZ1G+K/H3ANTESaPmAtOpgowYwEfLr4XeHrVcV80bc9M2FJDH3Oy5kl8YiJQUo6L9rEL/mho3zdmYgnKN7Q95sTyBpwY4dIVFeYdeKIiObiBP7cw6hB/ve/fZf/ONlKtzNUzB56tMf7+fte2KI4WhY5wUtihl3FfyuJq4k5jaZoZk5ZsnZnMojihLfJUngMQq4Xds/3yomGZPhfh+HfuD4c0xApBdd0Vyv760YgUwuxmr86tddD4tgKpbyJMidSqpglTxnLdxgOG0fRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kococonnector.com; dmarc=pass action=none
 header.from=kococonnector.com; dkim=pass header.d=kococonnector.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=KoCoConnector.onmicrosoft.com; s=selector2-KoCoConnector-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7HqUkZSyW4zUgHZAKK4Cn/Hal/NIwD8GgDIZ5CLOCS0=;
 b=GRSA4eKb/if+79Mfpl+9QnNcxpvDTWI9982WbDpVuvf4WvtQNtBvYs5VHQuD98wlCK4Wuu3Z1N+qSTzkQ53qGchOW/XcQEJQAB3lWr9UhtRjyOpftJdjm3o5QKVMlYzsaxzf2W+JI9q87dUxurROEPT7YoLJd6iC7c+VKC8Prfk=
Received: from DB6PR0902MB2072.eurprd09.prod.outlook.com (10.170.212.23) by
 DB6PR0902MB1830.eurprd09.prod.outlook.com (10.171.76.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.15; Thu, 5 Sep 2019 14:35:37 +0000
Received: from DB6PR0902MB2072.eurprd09.prod.outlook.com
 ([fe80::19cd:2f16:89cd:67cb]) by DB6PR0902MB2072.eurprd09.prod.outlook.com
 ([fe80::19cd:2f16:89cd:67cb%3]) with mapi id 15.20.2220.022; Thu, 5 Sep 2019
 14:35:37 +0000
From: Oliver Graute <oliver.graute@kococonnector.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH v1] watchdog: imx_sc: this patch just fixes whitespaces
Thread-Topic: [PATCH v1] watchdog: imx_sc: this patch just fixes whitespaces
Thread-Index: AQHVY724fLk0KIY3y0CpQBQtW0JX36cdEvuAgAAT2IA=
Date: Thu, 5 Sep 2019 14:35:37 +0000
Message-ID: <20190905143525.GE23537@optiplex>
References: <20190905073730.22258-1-oliver.graute@kococonnector.com>
 <016e268c-f289-4127-a47e-3d8faa790ded@roeck-us.net>
In-Reply-To: <016e268c-f289-4127-a47e-3d8faa790ded@roeck-us.net>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM3PR04CA0129.eurprd04.prod.outlook.com (2603:10a6:207::13)
 To DB6PR0902MB2072.eurprd09.prod.outlook.com
 (2603:10a6:6:8::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oliver.graute@kococonnector.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [193.47.161.132]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 43bc5ca8-6eea-4811-f296-08d7320e5165
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DB6PR0902MB1830; 
x-ms-traffictypediagnostic: DB6PR0902MB1830:
x-microsoft-antispam-prvs: <DB6PR0902MB18301B485416AD8D99981D2EEBBB0@DB6PR0902MB1830.eurprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:98;
x-forefront-prvs: 015114592F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(136003)(346002)(39830400003)(376002)(396003)(366004)(199004)(189003)(66946007)(1076003)(71200400001)(71190400001)(66066001)(5660300002)(256004)(9686003)(6512007)(86362001)(6246003)(6916009)(53936002)(14454004)(508600001)(7416002)(6436002)(33656002)(2906002)(6486002)(33716001)(66476007)(66556008)(64756008)(66446008)(25786009)(4744005)(4326008)(229853002)(76176011)(305945005)(3846002)(6116002)(186003)(26005)(53546011)(6506007)(386003)(102836004)(99286004)(11346002)(8936002)(316002)(52116002)(81156014)(486006)(44832011)(476003)(81166006)(8676002)(7736002)(446003)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0902MB1830;
 H:DB6PR0902MB2072.eurprd09.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: kococonnector.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Vmm7l8RqyLNv4jP+uSffuW8t/plUOsT1fq5OKJ/dGqfVaxzJbqNl+rJGcywFCFkRBvdki7KtFLFJJC80dLe1jIb7/AxmHw2WNIL3OrfzdmmO3KccYue5U8ZgtKiIUQVPiy7q2xLuMjR/Wy09/5TbdTJ7TB1Y6noHcPZFs/tcFev+b5Mn795kgk6w70a08l9wkK3zJhgl/S3zlHlI60C8IcAuvKQvo08vwEBIIZB0a73xZUKN2V95fA28DahUgKzCzJQ65fykHy4INyWQA5nAFnMKwPvtYkNNhV5rdiqVQyJdqpFHBgMt9G+Nhv2zIi+9OGe8MVLyushuTNES8wS/I0f9MNIf6zpsY9FRqAD0ALo6FRzheIvkl4DG5ahDyHnStCkry/e7/bh/ebneE7UO+e/n3mhM5WMHXjB+DLaLC3I=
x-ms-exchange-transport-forked: True
Content-ID: <B922D784E86B724A8F2E4DD058D40B93@eurprd09.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: kococonnector.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43bc5ca8-6eea-4811-f296-08d7320e5165
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2019 14:35:37.5169 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 59845429-0644-4099-bd7e-17fba65a2f2b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1DPLFVWdRDOvuxHOVW2Se9N6Ehy3SKo4suWJ3I8cHHNdWWL1S5ucpSCLa1EA/O9K8gwZASSur+Li2cZ7vacAyIsMtc/PgeswzU+48x0wnJg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0902MB1830
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_073541_534167_E8809ADB 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/09/19, Guenter Roeck wrote:
> On 9/5/19 12:44 AM, Oliver Graute wrote:
> > Fix only whitespace errors in imx_sc_wdt_probe()
> > 
> > Signed-off-by: Oliver Graute <oliver.graute@kococonnector.com>
> 
> This patch no longer applies due to commit "watchdog: imx_sc: Remove
> unnecessary error log".
> 

ok I'll rebase patch against linux-staging/watchdog-next

Best regards,

Oliver

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
