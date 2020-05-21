Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0231DCDC2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 15:12:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Cv15eXIqgf0Y9YVUGX27hgUPiZGSyg0AKTpS4I+yDI=; b=HSdq0PaKBltjHS
	Ji02eXEexj5FKrKpQ4dVUssk2B3potES+JxpX0nI3YtFslzx7/KqXoQfXj93NKazIcn9z4m1gwhsB
	LLVPseYrfehJ/TEbEnytoynAw5U264JZsfGE9zHZ1nmBSp/TjeeCOgV2VI0o5D8wkITOVZoCYRGPQ
	7XK1lQIzJhs6UAWca3BCszkm19iehzdH1jBVwAhFsy7B2l/rA3cSnRj3y+sKRmbyzZ4Wkn1FPZ8ii
	ZRwBK0M76XP5XTCvKmQq5tP90WzeK9kWX9b1LfRFL0FKj0bBQxtvPNF2sK8IvFFCbtjqDLLqJwSJm
	89wkz5lwWcL3CJrBzDAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbkzn-0000JY-Vt; Thu, 21 May 2020 13:12:23 +0000
Received: from mail-dm6nam12on2061.outbound.protection.outlook.com
 ([40.107.243.61] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbkze-0000J3-2F
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 13:12:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bbhfpv1BPp6WzhmJhaNHy+Fva+V+Sf9mP1pTHZ4iG+RXZkkjVhquOD0eFQwdM4pLNA8nSCBIWIPjOjJXzkzRkKx8Iwa6IyCuGFw0Q4soOJ+4KirmbD226NylNJ8UVEWXFsLlZvnpkIe+Q1gtn4UexTx0HRnOTx8b9jD6wqMnDgelGLWEbN9MrCxhWomAJms+ytc8TW6jiEYE4652ckOPQApTz35cySuJCWXjTC8y5XOPrMR0/aXmhvpfgIbLLLyYtpxGZJ5DsbPQu16Sh/36VYqpED9qZYIUCL3ra9kF7+unhWjGxXy44QbL2Wss/2XlEExOnY8t2NejNX8Las56xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WSrfZQeHJC6MTcHyapPEVIWBzHYgSc0gYjEbsXoc4aE=;
 b=WSO8XYd8yyFtZUmbu4JdNitdebaTovcC5I9+9y1nN8TU6PuRYAEr4stTitPITB5oXNSvjNzbf2f2o+nR/+3FGf0e/MxubPgTzgYq30HygUCDiAf7k4BPjwr9S4Q7mjesPC7YGmfT/OKRrJFlLNjR+LvlDM/dflKsYv70tI4kTYorwZSazQG5XTXJVgqaoQUa814qRwnkXd129gtvtwZdNynVE+ETD1IvamSoM0mHMcHHdbODIQFwPAVV6p5ke3KRukNZvGw5RpZupCIpxN3nTJ9Bo1KUrKrhrCCQtidxBoRX3hjyQVW6otplf8QeE6Fysmk0TiPjgSHMcYBvhyrqrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WSrfZQeHJC6MTcHyapPEVIWBzHYgSc0gYjEbsXoc4aE=;
 b=NZUdmGq0d+Rn4q3MgpuKE+byDuiK6jqbxtEbo5IyTNi9ikzkeuCAAZFZb63gfDFUawTzCX84wxBC4vwHeszQ1kE/DbEJvaKAXBfOq0Y0TnWk6xhY8/OxZ1hdWOIsSYn6/cJBKG/MCFBvfEYtUDyj3hkWPAwpXu6UowdcBQT4lYc=
Authentication-Results: cerno.tech; dkim=none (message not signed)
 header.d=none;cerno.tech; dmarc=none action=none header.from=silabs.com;
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Thu, 21 May
 2020 13:12:09 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::e055:3e6d:ff4:56da]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::e055:3e6d:ff4:56da%5]) with mapi id 15.20.3021.020; Thu, 21 May 2020
 13:12:08 +0000
From: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: Possible race while masking IRQ on Allwinner A20
Date: Thu, 21 May 2020 15:12:01 +0200
Message-ID: <4228495.4SuWXshX0D@pc-42>
Organization: Silicon Labs
In-Reply-To: <20200521072634.6ig7jcuy5tmvmojf@gilmour.lan>
References: <11042983.UNsANRFJuY@pc-42>
 <20200521072634.6ig7jcuy5tmvmojf@gilmour.lan>
X-ClientProxiedBy: MR2P264CA0006.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:500:1::18) To MWHPR11MB1775.namprd11.prod.outlook.com
 (2603:10b6:300:10e::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.localnet (2a01:cb00:89d9:f400:78be:b52e:82a1:1e54) by
 MR2P264CA0006.FRAP264.PROD.OUTLOOK.COM (2603:10a6:500:1::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23 via Frontend Transport; Thu, 21 May 2020 13:12:06 +0000
X-Originating-IP: [2a01:cb00:89d9:f400:78be:b52e:82a1:1e54]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5d51a7e3-acc3-4dfc-90f8-08d7fd8890cf
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR11MB1632B0833DF51FED1B53DCD393B70@MWHPR11MB1632.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 041032FF37
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KJiQ6htZTzbZmkMSITCEa3YjmfFMTuG5YG1r1Twd7LxX2aVHq2NObotiD3FvrIb51Y3IN6SZMrM5N3/hvI7wLfiQteDB/Eu0Zk7xvOnkRTTcrUCP1G5JIo0U04REocVnLD1flNYZ2ZFgJPxSQiXcxvN9w7e+ArYOOhrthH32mOOmbixlzmZNr9H8EGshuvATQRlARytCD8FOHzPQ30VnTJBnFTHXHNZdXDSNf/FPu+7CCrByNkK8czOaZJKl5zHiowEFH3pBBg8CBzU0LwleW/IZQpH0erJGJCPuzm/LozkUK7ZesduwXmPqfeEGAEvIr9LSsKBaOY99FL8AnRSg5FfUFbMegkSoZYf7KUFTIHkGXR0srSV33WvjVCbErUfg
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(136003)(346002)(396003)(366004)(376002)(6506007)(5660300002)(6916009)(478600001)(36916002)(16526019)(4326008)(52116002)(86362001)(9686003)(6512007)(186003)(6666004)(316002)(54906003)(6486002)(8936002)(33716001)(66946007)(66476007)(8676002)(66556008)(2906002)(39026012);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: pJiVnSHapGLDg4kY7NQ5YW7vaBjckKw2WFwB1RGn2fWB6jxMyq/fiNivrsf5HepUFrsopuuGPn98EOQFVh8ljNpAvf8lpj/33xC33iydn6uzdn+cC6H2p4I4loacly6QAJ1olgxubu2Qt9V8NiPdT7q34R5+fUHefdu+BWoMoTG5MfEGNkbFU/QOVwki/ZWMz0/s6NJKcu9dVHuwlOkGnffFeMEiil3UeCMTHB41K56MkPC1RfxgKy5wkpYzzlnhAWHdDblhLC27Vu0u3+g2ZvFUDkYhbyXF2CBfgQWGzD/iykCCtoTxbP2T0MaVLQwt7+WLvrTFDlTQTVAEe00ca41LMlGloWMgbYwniSvNyEyOjOYrZqCal65zs4Jr2mNzqZ8RAklJOjjJe8Q1yQDeTqomI3zAWx+eV3mxmp7c3ehK4exiHp1QCmJMfnwuLGs7EyPxua2Mo7dUpebJMey1BQCyqzbZAdiK+usaC/PpECfdGr6mjlM7X+yisUkknrHsAFgvDHytpakewrEJ+27Up1M/aj285PfHn30PtXvxZiQ=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d51a7e3-acc3-4dfc-90f8-08d7fd8890cf
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2020 13:12:08.5915 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w0fmnYFb3tHMs5TQkaNiSL3S7lTuOMafbsx+WwsAYdtlOFBZn9IBsTzmatVrhbj//zarFe0tyW0zM8VpWgVtHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1632
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_061214_171289_8E57401F 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.243.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.243.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Marc Zyngier <maz@kernel.org>, Marc Dorval <marc.dorval@silabs.com>,
 Thomas Gleixner <tglx@linutronix.de>, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thursday 21 May 2020 09:26:34 CEST Maxime Ripard wrote:
[...]
> On Tue, May 19, 2020 at 10:59:26AM +0200, J=E9r=F4me Pouiller wrote:
[...] =

> > The chip WF200 allows to use a dedicated line for the IRQ (aka
> > "Out-Of-Band" IRQ). So I have enabled this feature with a edge triggere=
d =

> > IRQ. However, I missed some IRQs. Indeed, it seems that Allwinner use a =

> > 32KHz clock to sample the IRQs. It is not fast enough for us. I think i=
t =

> > explains why we miss some IRQs (using the attribute "input-debounce"[2]=
, =

> > I tried to enable the 24Mhz clock, but without success).
> =

> Without success as in you couldn't make it use the 24MHz clock, or using =
it
> didn't change anything?

I didn't make the change myself, but it seems that the board was unable
to run correctly when the attribute "input-debounce" was used. Since
"input-debounce" impacts the whole GPIO bank, I think it has impacted
other devices.

Finally, I didn't spend so much time on this and I don't know if it the
24Mhz clock has been finally correctly enabled.

-- =

J=E9r=F4me Pouiller



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
