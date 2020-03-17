Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4FC188AFE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 17:46:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zCOHQ5O4Jrmr/rSw/aYlVTFYRce66Ndm14+nU+FBU+I=; b=SyYTDCHN3kEKpU
	+FbHopnqQlwpkmRmSGqmff2XE0Oz/ksDBvOLFJcyr2aX6C2VWta7cAQYUK7pgzAmbHFHone1He2VZ
	wy60uNNi6ClLX9rrmhYmVySu4ngZxBypj0cEr5UZUSrWL8/0t/qNL7Qq7M7Erz1wIue9KskW3da62
	haA+GGfY6RGYSTLFVuBqqxGLGT1BNkADf+qVe/2fIIGA2UqVUfDHbLl4FYA8tTxem+6Rc4pwWlERQ
	L4PO9ZdxHZshaI3NwELoxGtwWrDI915t9Jo2cWPl31SSYpFr9V87kBAFs27pw/7Le3DlnGundF/Rf
	anIfGmAhc53cOMZw1+pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEFMX-000145-OZ; Tue, 17 Mar 2020 16:46:41 +0000
Received: from mail-vi1eur05on2091.outbound.protection.outlook.com
 ([40.107.21.91] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEFMF-0000z2-1S; Tue, 17 Mar 2020 16:46:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mrvvEqP2ygVb+Sd0YTwao/vWLbzJGQWL01F0VwUM1XQdNghGuIhfKBa6eXHje/eP6z1wsAP0E+MQox2YP4a//kQcATTduGfZzMYkUIhkyi+a3AX+4wV+vAB55VzXGb07bXFRemJ3eqhZk9Oqlfp+71NqVDmopUZbIvx6LFrk/okwpQ7JcxOTvijIrubpFmAtMkXdpQj/TXb6sftsBGP238c9Fn5ufR9d2UebaQCAPvm+VGyfnJ6MNNyjciPB94/YZcfejUrEaeD2VyYSbZ5bd1CB/t8l45rNy+4bTpLIrnRZY46r8C93Nr1x8cA6H3gqQbm/aCNTIRUHxd/JtSg+Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gm6ch8xR8b3H1sbgs0W8m2O59cJyjN8XfUoPDBtfv7w=;
 b=O4y0g0MRXbJl2AkAE17pnwznX25xU6lSF91G+rB4/JZmo40rDb/ObCBraJhzpCPiRPQSFVpsCjLpsCNMh6pchdePBgJtl8d8jMNTDhaL11v0jsrmST/5xjWNhm6fpNC4qa6feovaBMJvY0FQqcXoFLNIgWeJJQiCjae7gekciOO02P1ZgAP+ZF4S5biFwLzSN7XRUQK/e3blQGUuLF9qko/YQOoL+55h44enn8fG66qAa/XzuVZg+9x5Ocz94SHvHDqhzUe/0m+Zwc9FQNIpovAt6ogwJ6Cu8hw61yp33g9rPNN39PdGtTW2h5lXMY1bIodBkU9RG+eR/3oJZm2VJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gm6ch8xR8b3H1sbgs0W8m2O59cJyjN8XfUoPDBtfv7w=;
 b=CZnXsEPPC1j7crjvgwSuh0B0u8sCzbMPoIlCRc7SuySkxI3zFW411zkDGg0kpneFRTEB9eBlzEAiD2MYVi1N3v+k9DiZX0eMDSFTWlkIN+eFLqeZ87dDjELcQC1ihdParMqlJ1frxB7h/ZBeo5FHLilUmy2nKh7fZ9gLjhQpKSI=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com (10.170.238.24) by
 VI1PR05MB6608.eurprd05.prod.outlook.com (20.178.204.223) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.23; Tue, 17 Mar 2020 16:46:20 +0000
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::7cdd:4feb:a8b6:a6d2]) by VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::7cdd:4feb:a8b6:a6d2%7]) with mapi id 15.20.2814.021; Tue, 17 Mar 2020
 16:46:20 +0000
X-Gm-Message-State: ANhLgQ3xrTFYzx0s2caDK0w4GTYBPLlk5i3HaRO5R0c0/vX/8Xpn2/Oz
 IxzODnviwQ7mrXIQ7BAt+mVjhy6QYtiN25Kk2AI=
X-Google-Smtp-Source: ADFU+vs5IiH5xOxAVk1tazaO0nIxfpUiMfX+F2pIOjfJJXHSK1Aww98AZOBwwAUZz85BhDppVfRRsQImlnrWq2Voyv0=
X-Received: by 2002:a0c:c389:: with SMTP id o9mr5577qvi.232.1584463209922;
 Tue, 17 Mar 2020 09:40:09 -0700 (PDT)
References: <20200317123231.2843297-1-oleksandr.suvorov@toradex.com>
 <20200317123231.2843297-2-oleksandr.suvorov@toradex.com>
 <f281a6a0-a150-514d-ef02-4e51192031d7@microchip.com>
In-Reply-To: <f281a6a0-a150-514d-ef02-4e51192031d7@microchip.com>
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
Date: Tue, 17 Mar 2020 18:39:58 +0200
X-Gmail-Original-Message-ID: <CAGgjyvE9+fHDKiua=BWBaTRGaChsOvnUnG6RGA9Q4V4uPuPEhQ@mail.gmail.com>
Message-ID: <CAGgjyvE9+fHDKiua=BWBaTRGaChsOvnUnG6RGA9Q4V4uPuPEhQ@mail.gmail.com>
Subject: Re: [RFC PATCH 1/7] pwm: rename the PWM_POLARITY_INVERSED enum
To: Claudiu.Beznea@microchip.com
X-ClientProxiedBy: MWHPR12CA0029.namprd12.prod.outlook.com
 (2603:10b6:301:2::15) To VI1PR05MB3279.eurprd05.prod.outlook.com
 (2603:10a6:802:1c::24)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mail-pl1-f179.google.com (209.85.214.179) by
 MWHPR12CA0029.namprd12.prod.outlook.com (2603:10b6:301:2::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.21 via Frontend Transport; Tue, 17 Mar 2020 16:46:19 +0000
Received: by mail-pl1-f179.google.com with SMTP id b22so9849341pls.12;
 Tue, 17 Mar 2020 09:46:19 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3xrTFYzx0s2caDK0w4GTYBPLlk5i3HaRO5R0c0/vX/8Xpn2/Oz
 IxzODnviwQ7mrXIQ7BAt+mVjhy6QYtiN25Kk2AI=
X-Google-Smtp-Source: ADFU+vs5IiH5xOxAVk1tazaO0nIxfpUiMfX+F2pIOjfJJXHSK1Aww98AZOBwwAUZz85BhDppVfRRsQImlnrWq2Voyv0=
X-Received: by 2002:a0c:c389:: with SMTP id o9mr5577qvi.232.1584463209922;
 Tue, 17 Mar 2020 09:40:09 -0700 (PDT)
X-Gmail-Original-Message-ID: <CAGgjyvE9+fHDKiua=BWBaTRGaChsOvnUnG6RGA9Q4V4uPuPEhQ@mail.gmail.com>
X-Originating-IP: [209.85.214.179]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 50907ea5-5b99-4d99-d01c-08d7ca92b7f0
X-MS-TrafficTypeDiagnostic: VI1PR05MB6608:
X-Microsoft-Antispam-PRVS: <VI1PR05MB66087C0DBCFD1E4912A3BD7EF9F60@VI1PR05MB6608.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 0345CFD558
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(199004)(9686003)(4744005)(53546011)(34206002)(8936002)(81166006)(81156014)(5660300002)(54906003)(66556008)(52116002)(66946007)(8676002)(66476007)(86362001)(55446002)(186003)(42186006)(44832011)(498600001)(6666004)(2906002)(450100002)(26005)(4326008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB6608;
 H:VI1PR05MB3279.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xr+ozUwOk9IQP1uXqg/AGsLK/4bagC4G/kDPgZuaG5yBAJH55dPMOgTJXC6LEacqqH9fCb9X1H51pFkoCoIMpAh4Yo/7tdq1YF+vBH7/7rHjH3i7aVEUGs2aebUlr8k7wZhDBQBd69QNxDAoORVnEoFDI+VXDg+LeKyArJHQfmgTbJ5Ohg9mFRpCaOmfj1qcVGf5gC66mh0Hdfde/bezsgZ3UuZpd5PFuLIo27WLL3oJOq3eOYzWRY4MN4uXibxi2zNwfEyX1LDGB8VdkGx2BuwGBzEXLGanTVows0ik2L+y6VXBR4g73kXT+8AUxLRV5Nl1rKT1jlVosta3m72iArACXzIR2XQ7p2sD+K+bpXJ0dBY1uFAt/wrRDZG12KTihlzCjhtta2gp5/azyc8bA4tVPcK9A8twBkefJSo21qdW7HzupF9g7gDrttZtzQte
X-MS-Exchange-AntiSpam-MessageData: tW8/58qT4nzdQjHyCzLk2noGBVvhkadG9KoaPvXYg3CqVEv49oHCQkiKQw2cAEFAa8Tnz5m3cnZX5DTMxcP9y/O08CTH1pvzDzw9prNm7CfYVf4pw0RXzrOW8BqYMyYR5HbQ/rWrNqxwV2tWeYqmLA==
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50907ea5-5b99-4d99-d01c-08d7ca92b7f0
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2020 16:46:19.8491 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +FKNS/wVduTGI98t1nTVOKigIuga1za9ADvehVMQqg+WH/vxf7GWpO6VYmRw+6YFo7/QCG8QJyCeblxLjP5H7TkqBumhAyqfV2873n5oupo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6608
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_094623_093501_B4FB7E67 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.91 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: alexandre.belloni@bootlin.com, heiko@sntech.de, linux-pwm@vger.kernel.org,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, linux-kernel@vger.kernel.org,
 paul@crapouillou.net, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-riscv@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 f.fainelli@gmail.com, khilman@baylibre.com, wens@csie.org,
 linux-rockchip@lists.infradead.org, Ludovic.Desroches@microchip.com,
 bcm-kernel-feedback-list@broadcom.com, NXP Linux Team <linux-imx@nxp.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 devicetree@vger.kernel.org, rjui@broadcom.com,
 Sascha Hauer <s.hauer@pengutronix.de>, mripard@kernel.org,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Paul Barker <pbarker@konsulko.com>, paul.walmsley@sifive.com,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Igor Opaniuk <igor.opaniuk@toradex.com>, sbranden@broadcom.com,
 linux@prisktech.co.nz, palmer@dabbelt.com,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 17, 2020 at 6:27 PM <Claudiu.Beznea@microchip.com> wrote:
>
>
>
> On 17.03.2020 14:32, Oleksandr Suvorov wrote:
> > @@ -187,7 +187,7 @@ static ssize_t polarity_store(struct device *child,
> >         if (sysfs_streq(buf, "normal"))
> >                 polarity = PWM_POLARITY_NORMAL;
> >         else if (sysfs_streq(buf, "inversed"))
>
> You may also consider this string     ^

Thanks for the feedback, Claudiu.

I thought about it and decided not to change the ABI, as this change
can impact lots of user-land applications.
As a minimum, I can push this change as a separate patch to be able to
revert the change of ABI only.
What do you think?

> > -               polarity = PWM_POLARITY_INVERSED;
> > +               polarity = PWM_POLARITY_INVERTED;



-- 
Best regards
Oleksandr Suvorov

Toradex AG
Ebenaustrasse 10 | 6048 Horw | Switzerland | T: +41 41 500 48 00

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
