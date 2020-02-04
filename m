Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA151520C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 20:08:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R9Ywd6viR/uoyy3OE22TLZqHomxP3cYNS3tGHGeZWPo=; b=bAR/J11PcNIvgW
	DjYXOBIvsbCW1kzAQeo0fZEVneRqzg0xOkAzV6cRxvEK9dlM7TRZKVGs6ihPGM2YjqNMTHk0XEnqJ
	78InPI/bC6KS4YQ2YEXBt4hlQenWqfelkT6xr6sasNqF4cLkSBcK6zizlFVc/+4V0Lc05edxMYwPv
	hcdnBZyfyrwLI2qVzcFKXgKjsVKs7Z/iaifZ3tX/kSBXJVUYEIaGN39jf7NRzjA4pnVb4VfGqs56a
	krvL46QUa+KzvDWIkV6M+KxToABbomSS1VSoTaef6NqRBpcBW8bYVutARkl548E7ND+iNcqyIoDAL
	/CWXEPuJrIyfazTnGTqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz3Z2-0005Ol-UB; Tue, 04 Feb 2020 19:08:48 +0000
Received: from mail-bn8nam12on2074.outbound.protection.outlook.com
 ([40.107.237.74] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz3Yv-0005N7-LC
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 19:08:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hPkzUghNOWEg5VPXEwtNBi1CaBKVVSvP6XgR0WblZEe4/Yi9qohELrCsVbDmJWCamilzeBFERAyVMyQvkKTWl2ICXScjNyLsOr9usW5sqIjA607Y6tnl2rtHS1iNo0ZHGP+GOyl/OWm04thEPawJHLKapRPwA9oy9XbiCECtPa4RHJsogyfUuvt/KhAeASCP+LsJulbPnR7Fzq/U4MqN2azxKJ8YDzFJTVoC5Oe09WF6oP6dJ1wZhiewRpjha2bZgLHTWk1RR55CuoWcWELEm6llGAtNt7nr/ii9dzu99VafM9ekxSDilM3iQnrAcDo2YslqZfzoyJNadog9D92XNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Z2WeSN6w+/+6yi8SsUJmbXmRagu9aJzbUdGY+2+m3Q=;
 b=Be2qB7w1fx7g/IZAWyWVWs18B0DNmYCZFbhpO+tEeTbNAy57jQAonj/a1mPxZHHXDz7cK0KEBysG15zsGphq5X/7gbbU4Md2hnt/D4FvhkaaHaRqgUHHk+z086eTljDtPe6qwBobeK5iy7FKNqZZtgwpdmLSYu+XVFva/4xnlhdDrr+NSkB2UaciGak+wQiiBwM0PQBQ60wG+2Qvu3o8e8I0mVvh6nH9AOEagSp1F8ArOUlB7TBaAOWm6puziyhzs+0ybEQwZqqDLfek9SeLeeBHoTcNjtt41263FmUDA/O2XnhR3s035d2IgVUBsQi5/R0MGJcJZqKtkoaY9tNCjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Z2WeSN6w+/+6yi8SsUJmbXmRagu9aJzbUdGY+2+m3Q=;
 b=kdS8Hdebzv2979Egke08o/VzVrwZv4pvkd5qviLwJulDnNqLrKYYBGbEXkhacyi8q4V7zKkXbfHTmNexpcUSTXfH5EGk4+hXV5doYXTZJDYsPTn7b0s/NOy6jK3QvEzaXUZc4FT/yc+UDRgeTx378XXfISM5QWAZ5Fn7/cVIuBs=
Received: from MN2PR02MB5727.namprd02.prod.outlook.com (20.179.85.153) by
 MN2PR02MB6240.namprd02.prod.outlook.com (52.132.174.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.32; Tue, 4 Feb 2020 19:08:36 +0000
Received: from MN2PR02MB5727.namprd02.prod.outlook.com
 ([fe80::e09d:a160:5349:8ed0]) by MN2PR02MB5727.namprd02.prod.outlook.com
 ([fe80::e09d:a160:5349:8ed0%6]) with mapi id 15.20.2686.031; Tue, 4 Feb 2020
 19:08:36 +0000
From: Mubin Usman Sayyed <MUBINUSM@xilinx.com>
To: Michal Simek <michals@xilinx.com>, "tglx@linutronix.de"
 <tglx@linutronix.de>, "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "maz@kernel.org" <maz@kernel.org>, Michal Simek <michals@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH] irqchip: xilinx: Add support for multiple instances
Thread-Topic: [PATCH] irqchip: xilinx: Add support for multiple instances
Thread-Index: AQHV2EFy1wtnp2eJaEKfI1gB9M0udKgE1vsAgAaUMeA=
Date: Tue, 4 Feb 2020 19:08:36 +0000
Message-ID: <MN2PR02MB5727F3B9694669B10D25E841A1030@MN2PR02MB5727.namprd02.prod.outlook.com>
References: <1580480338-3361-1-git-send-email-mubin.usman.sayyed@xilinx.com>
 <28c517f7-9cff-f897-c5a9-2216dd769c64@xilinx.com>
In-Reply-To: <28c517f7-9cff-f897-c5a9-2216dd769c64@xilinx.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=MUBINUSM@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: dcdf5ac3-818f-4f87-1d95-08d7a9a5a303
x-ms-traffictypediagnostic: MN2PR02MB6240:|MN2PR02MB6240:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR02MB62403AEFF357BA78358997E7A1030@MN2PR02MB6240.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 03030B9493
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(346002)(396003)(136003)(376002)(199004)(189003)(81166006)(33656002)(8936002)(81156014)(8676002)(66476007)(66446008)(5660300002)(66556008)(66946007)(76116006)(7696005)(316002)(64756008)(110136005)(54906003)(478600001)(4326008)(6506007)(53546011)(86362001)(107886003)(55016002)(26005)(52536014)(2906002)(186003)(71200400001)(9686003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6240;
 H:MN2PR02MB5727.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IFsBdaKuDeAXK+R4zowpCkLgXZ0YkLebeb+ixWMs9WU+k/6LwADmpc/UUe9sBPVtafkWCa+AmdXYnH1q1XBQEGvg16FYQAEOI11G/S/vgBGxas1kqU45HxSkEtxrfz82p0NEWHnMYoKPQdupSL6R1E4kOhfi/LoiZ9ZqrfOtYNWeoQf/afa0lbt+HdeKQuE9sncADrWnNgz44UjoqTQCMse+ywwTPnsENVkpYCXUJn65D4wL+FHAs8GW/KXwxWRpNB+C9Ov1mmcx4o17A/Ron6UDjhlH22EjIT8L2f1klrTSycMJLbBGgLXp9USiRGd9Fw2phCACqKoB83gyGNDgMkcr4jEY71tMAslzfQRfQPChlElYNHXYf7bP6Ex8o/nHn3woR4XL8IMS8Y6YrsnghuAk9DiG9XY+ctHMUxceRdDquVw/F/rUVOrzDGJ7yqw6
x-ms-exchange-antispam-messagedata: s+C8IPZ8tWI52aNkFl6fRv8R4iD0WzMSdpVMLn0QY83SPjXgnAFKvwLR1fv8uB1Trcf7XYNjySktCjOc55gbWRxJI0r2SjUvxdPVLuFu7DaV6GWBB60dIPCjNwDeeSitvWr0KUyNIoQd8DCOiVd9Fw==
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dcdf5ac3-818f-4f87-1d95-08d7a9a5a303
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2020 19:08:36.4793 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yJ43KNy15s56xFVC21Rn6CcBUbXcZBmIIgggW5WL9ViOWHPAQEtUVs7f4/qSo2jjDiCODo8kGlRfzT1GEigEUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6240
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_110841_723750_1BDB46E6 
X-CRM114-Status: GOOD (  16.98  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.74 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Anirudha Sarangi <anirudh@xilinx.com>,
 Siva Durga Prasad Paladugu <sivadur@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Michal,

> -----Original Message-----
> From: Michal Simek <michal.simek@xilinx.com>
> Sent: Friday, January 31, 2020 8:06 PM
> To: Mubin Usman Sayyed <MUBINUSM@xilinx.com>; tglx@linutronix.de;
> jason@lakedaemon.net; maz@kernel.org; Michal Simek
> <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org; Siva Durga Prasad Paladugu
> <sivadur@xilinx.com>; Anirudha Sarangi <anirudh@xilinx.com>
> Subject: Re: [PATCH] irqchip: xilinx: Add support for multiple instances
> 
> On 31. 01. 20 15:18, Mubin Usman Sayyed wrote:
> > From: Mubin Sayyed <mubin.usman.sayyed@xilinx.com>
> >
> > This patch adds support for multiple instances of xilinx interrupt
> > controller. Below configurations are supported by driver,
> >
> > - peripheral->xilinx-intc->xilinx-intc->gic
> > - peripheral->xilinx-intc->xilinx-intc
> >
> > Signed-off-by: Anirudha Sarangi <anirudha.sarangi@xilinx.com>
> > Signed-off-by: Mubin Sayyed <mubin.usman.sayyed@xilinx.com>
> > ---
> >  drivers/irqchip/irq-xilinx-intc.c | 143
> > +++++++++++++++++++++++---------------
> >  1 file changed, 87 insertions(+), 56 deletions(-)
> >
> > diff --git a/drivers/irqchip/irq-xilinx-intc.c
> > b/drivers/irqchip/irq-xilinx-intc.c
> > index e3043de..43d6e4e 100644
> > --- a/drivers/irqchip/irq-xilinx-intc.c
> > +++ b/drivers/irqchip/irq-xilinx-intc.c
> > @@ -15,10 +15,11 @@
> >  #include <linux/irqchip/chained_irq.h>  #include <linux/of_address.h>
> > #include <linux/io.h> -#include <linux/jump_label.h>  #include
> > <linux/bug.h>  #include <linux/of_irq.h>
> >
> > +static struct xintc_irq_chip *primary_intc;
> 
> nit: please place it below xintc_irq_chip.
[Mubin]:  I will fix it in v2.
> 
> > +
> >  /* No one else should require these constants, so define them locally
> here. */
> >  #define ISR 0x00			/* Interrupt Status Register */
> >  #define IPR 0x04			/* Interrupt Pending Register */
> > @@ -32,35 +33,40 @@
> >  #define MER_ME (1<<0)
> >  #define MER_HIE (1<<1)
> >
> > -static DEFINE_STATIC_KEY_FALSE(xintc_is_be);
> 
> I am playing with this driver a little bit now and I pretty much dislike remove
> this. I haven't see any configuration which mixes little and big endian
> together. That's why I prefer not to create read_fn/write_fn hooks.
[Mubin]:  Agreed,  I will remove read_fn/write_fn and use xintc_is_be in v2.

Thanks,
Mubin
> 
> Thanks,
> Michal
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
