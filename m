Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5490F1DCF0B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 16:09:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ONVK4TJx9FeIEMW4BBhpax0NneXYNQV3atSJT0NSJiY=; b=iL84LLoXsKDQ0T
	8E04QR2K1A1bmBC4jjGjO1/+L2uwGqFzb8edQ9iWHiKSQiRBVigb0kiS2LkjHIGsCH3lOAXyU7PIb
	0uZl1mizSfwKnOW2rDuN7sj7w1gSPxuMi4l9HlOE7QzWWsUP/JVJYPsMo5yDPirsjoDEefvS5SR8+
	xd/eJdxdItdwNl98Cho18iBisXrlajPxVdzMRroCBZrOWWLCNiRZ2qgoGiBzqjl6G9fzr3hHBWyz8
	Ysh+B6IDeBtjiGrLEQkFyc8njTxjHTVsVQuk6uxrK8hsBZ/oJ/8Bk2WjPUeINL+H6Z5ae7Wm2PkfO
	AYy438KES/OIy7lwclAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jblsd-0003eR-5n; Thu, 21 May 2020 14:09:03 +0000
Received: from mail-bn8nam12on2086.outbound.protection.outlook.com
 ([40.107.237.86] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jblsP-0003dW-8Y
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 14:08:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TWFL+LuTyLoLTrC35ZEzXZEw0HjZeieByWv7SGV/eifS8cjl7Jic2W0kPonxlKzLlF7g6we6NqeXhf2HO5sWLZ1MNoK6yH+lXVmasDRMlgGXZu+Nz2OIW4p8BygVbQBT4SmwQks/cFxKG3avdcGUQR48GCvULN8GNlCHfVpSHvyfnLFLKKX3TZwgJwAe1HTvChJcRNkI0EHTUNpOPcMuAUP/La899gWAhEWATY6oNrNMDXeFBTYKVGV1Zk64G8/TiFu5+yFLKfTtiMaYi9V+Drppg0FV6aApHtE7PNobN2DjNx3yV8aMADGjTGfBKnGrkW1PU08RGNWekYjY8Sf93g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=usUupoqEBcBYaBy0ThzqUykUqi0j6B5uBU+ylQ+26rs=;
 b=YDajP3cLthmQhppmcPETH5yiF0Ugnj7bcgOrkB1K+o23hXP/qP2jszFJGA7ZOV0QCjVh9WUIgcRSaWZnJuJiMhRF6rPSPakVxgXJjkgtTXOkg53f1L96RlpOIsHO/e6yMd9+4j5TaAEvxLLG3FfYXd+1q3C0NkUTP/dzvltRbJ7BDN5GuocWaeF5oB+yy0AIYQt5oGwluUt18KrMrPSqsrwXOFWHLVJdhUqASq91w9ZBuC9cBYnMA6N9aKi2jnLWCa5rcfK7uLJHqji4CtJXxCQ9A7MbfeX/eRzTNJy0G6L+sxA0y4byWTWTXbCkhX79ykON3vzhURkZJiRc8VItyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=usUupoqEBcBYaBy0ThzqUykUqi0j6B5uBU+ylQ+26rs=;
 b=WDShXSR8O7dnmKPP2S4p/RHaEf+L7vsY5l+isgzQuFw18n9M5OdDNerVx75J7cwq4GceZaSvpAh0UWthMCCo7w8f+CJXyjT1xjNUrRPogVAJ7ahkrTsq2vcLOzjxLqxKi6YJwTXfbuRFU712s7kbWTFvurP35s9hLymk2PJjMA4=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=silabs.com;
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB1328.namprd11.prod.outlook.com (2603:10b6:300:2b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Thu, 21 May
 2020 14:08:45 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::e055:3e6d:ff4:56da]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::e055:3e6d:ff4:56da%5]) with mapi id 15.20.3021.020; Thu, 21 May 2020
 14:08:45 +0000
From: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: Possible race while masking IRQ on Allwinner A20
Date: Thu, 21 May 2020 16:08:38 +0200
Message-ID: <5660213.hxA4Uj6jp3@pc-42>
Organization: Silicon Labs
In-Reply-To: <faca3f8ee1269b70b46a271dbdf00265@kernel.org>
References: <11042983.UNsANRFJuY@pc-42> <4055631.Zo4jul7Flx@pc-42>
 <faca3f8ee1269b70b46a271dbdf00265@kernel.org>
X-ClientProxiedBy: MR2P264CA0115.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:500:33::31) To MWHPR11MB1775.namprd11.prod.outlook.com
 (2603:10b6:300:10e::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.localnet (2a01:cb00:89d9:f400:78be:b52e:82a1:1e54) by
 MR2P264CA0115.FRAP264.PROD.OUTLOOK.COM (2603:10a6:500:33::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.24 via Frontend Transport; Thu, 21 May 2020 14:08:43 +0000
X-Originating-IP: [2a01:cb00:89d9:f400:78be:b52e:82a1:1e54]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d5004d8e-a500-4e63-a393-08d7fd907996
X-MS-TrafficTypeDiagnostic: MWHPR11MB1328:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR11MB1328141527556070DD42EC8993B70@MWHPR11MB1328.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 041032FF37
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fnNTQPkjWVNluFjAhbw4VUip25yMt7UjAV5PXkMVBHs38w/26zuZhFSco4L8PrfIeZDsraqZDXSBPHj6jkgjTVyG7az5eUPqsnulVe3Gj5njAOCJ0X9lj4amWbZcQHtoHQQ6ArDtgJXNEH2s02d36/Hg2VTUZY8t9wirYt6iCqEdqd1dy7LG7KgwvPKC26kMcHlFkTwbJRHSodSV62xL4B4OXD4wHiKpd/ZWb9wiSUKRvjVfX0mjWwsivdo9kiPDOE/R6dvx8aNskjyvYZ3mMiIfMRT1py0cUnVPy9RpJVRPrWmUdQMglNAXEWifFOjw8WopKeoVUEV/e9Mco+kRzBTqjESs8fX3m17SHRIFOb17sALZwN1zuxN/WU49WJxR
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(346002)(39860400002)(136003)(366004)(396003)(52116002)(36916002)(4326008)(6512007)(8676002)(9686003)(2906002)(8936002)(186003)(86362001)(53546011)(6506007)(16526019)(66556008)(316002)(54906003)(66476007)(66946007)(6666004)(33716001)(5660300002)(478600001)(66574014)(6916009)(6486002)(39026012);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: P8QbWHIhlHE+DM34ayrtnwTTf8wD0eLo+yhcSkGPJBE+MNp5lVrutspM5SZU16v3OIJdU34J8uI3zrfhIs2MEISawOSYj7Y6eoNStKr5zIGnDwMUgcICNbcB+/rkwzxo4Laq0euHcxDIRTvJzD9ztMr+jM8c12+aIS0+co3GftE47Yvxk2Cn7OBEkX4ISC0uTwoeCZYldNyVe/sPwMGe8RJy2cqxTnX4DMOLY9zptfpiWYS13n4IA7IfHlKQIJ3Obv2oONq3qykIMtxsZqYTH3GoY+JWgil/WXI8uXYzv6t9DL2jgagsWm1/VVqdJCxE6WzLVwagM9peICanYSczBzdf/UI+bvGxbc2QDkb/sHixFBlBUxCDIOqTdnKpKNCUA8y9UahSq2HFta0FevZmLBdBlUDG80DbVIMHRs3wBymelk1QpxzgdcT2pTis6rh5Ou00zZVTQfml4Jikj57a83wePWhBjUsA1vMHoIpn6wI+er4Yy1TmX80MMpaTVVADR+h0qDjlvupc+fmX/Oy3JK+bEiZFntqqYtoOja7wnbogwr7hb8CwF0TaZnM4Lf77
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d5004d8e-a500-4e63-a393-08d7fd907996
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2020 14:08:45.4957 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RR+J1Kdely/LfyUbOa+Yj6PnSyDxuo3BOaPydlbb/ShT4DM4nEIx/xo8aDCNtFaRuSwirTN9EH9UM/heEqhQ/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1328
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_070849_304877_AEAFDBE8 
X-CRM114-Status: GOOD (  24.38  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.237.86 listed in wl.mailspike.net]
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
Cc: Marc Dorval <marc.dorval@silabs.com>, Chen-Yu Tsai <wens@csie.org>,
 Thomas Gleixner <tglx@linutronix.de>, Maxime Ripard <maxime@cerno.tech>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thursday 21 May 2020 15:39:09 CEST Marc Zyngier wrote:
> On 2020-05-21 14:28, J=E9r=F4me Pouiller wrote:
> > On Thursday 21 May 2020 10:02:48 CEST Marc Zyngier wrote:
> >> On 2020-05-21 08:26, Maxime Ripard wrote:
> >> > On Tue, May 19, 2020 at 10:59:26AM +0200, J=E9r=F4me Pouiller wrote:
> > [...]
> >> >> Nevermind, I tried to use a level triggered IRQ (and my request is =
on
> >> >> this part). As you can see in the wfx driver (in  bus_sdio.c and
> >> >> bh.c), I use a threaded IRQ for that. Unfortunately, I receive some=
 IRQs
> >> >> twice.
> >> >> I traced the problem, I get:
> >> >>
> >> >>  QSGRenderThread-981   [000] d.h.   247.485524: irq_handler_entry: =
irq=3D80 name=3Dwfx
> >> >>  QSGRenderThread-981   [000] d.h.   247.485547: irq_handler_exit: i=
rq=3D80 ret=3Dhandled
> >> >>  QSGRenderThread-981   [000] d.h.   247.485600: irq_handler_entry: =
irq=3D80 name=3Dwfx
> >> >>  QSGRenderThread-981   [000] d.h.   247.485606: irq_handler_exit: i=
rq=3D80 ret=3Dhandled
> >> >>       irq/80-wfx-260   [001] ....   247.485828: io_read32: CONTROL:=
 0000f046
> >> >>       irq/80-wfx-260   [001] ....   247.486072: io_read32: CONTROL:=
 0000f046
> >> >>     kworker/1:1H-116   [001] ....   247.486214: io_read: QUEUE: 8b =
00 84 18 00 00 00 00 01 00 15 82 2b 48 01 1e 88 42 30 00 08 6b d7 c3 53 e0 =
28 80 88 67 32 af ... (192 bytes)
> >> >>     kworker/1:1H-116   [001] ....   247.493097: io_read: QUEUE: 00 =
00 00 00 00 00 00 00 06 06 00 6a 3f 95 00 60 00 00 00 00 08 62 00 00 01 00 =
5e 00 00 07 28 80 ... (192 bytes)
> >> >>     [...]
> >> >>
> >> >> On this trace, we can see:
> >> >>   - the hard IRQ handler
> >> >>   - the IRQ acknowledge from the thread irq/80-wfx-260
> >> >>   - the access to the data from kworker/1:1H-116
> >> >>
> >> >> As far as I understand, the first call to the IRQ handler (at
> >> >> 247.485524) should mask the IRQ 80. So, the second IRQ (at 247.4856=
00)
> >> >> should not happen and the thread irq/80 should be triggered only on=
ce.
> >> >>
> >> >> Do you have any idea of what is going wrong with this IRQ?
> >> >
> >> > That's pretty weird indeed. My first guess was that you weren't using
> >> > IRQF_ONESHOT, but it looks like you are. My next lead would be to see
> >> > if the mask / unmask hooks in the pinctrl driver are properly called
> >> > (and actually do what they are supposed to do). I'm not sure we have
> >> > any in-tree user of a threaded IRQ attached to the pinctrl driver, so
> >> > it might have been broken for quite some time.
> >>
> >> What is certainly puzzling is that this driver doesn't seem to use
> >> threaded IRQs at all. Instead, it uses its own workqueue that seems
> >> to bypass the core IRQ subsystem altogether. So any guarantee we'd
> >> expect goes at of the window.
> >>
> >> It is also pretty unclear to me how whether the HW supports switch
> >> from edge to level signalling. The request_irq() call definitely asks
> >> for edge, and I don't know how you'd instruct the HW to change its
> >> signalling method (in general, it isn't possible).
> >
> > You are talking about the wfx driver? Be sure you read the right
> > version
> > of the driver. The ability to use a level-triggered IRQ does not exist
> > in
> > the stable tree. You have to check the "staging-next" tree from
> > Greg[1].
> =

> Right. It still remains that in this (new) code, the threaded handler
> seems to kick a workqueue, and returns saying "I'm done". With a level
> triggered interrupt, this is likely to result in an interrupt storm if
> nothing masks the interrupt.

The core the threaded IRQ handler is in bh.c/wfx_bh_request_rx():

	control_reg_read(wdev, &cur);
	prev =3D atomic_xchg(&wdev->hif.ctrl_reg, cur);
	complete(&wdev->hif.ctrl_ready);
	queue_work(system_highpri_wq, &wdev->hif.bh);

The call to control_reg_read() acknowledge the IRQ (and get the length of
data to read). After this function, the IRQ line is down (then, indeed the
read of data is done from a workqueue).


Concerning the hard IRQ handler, we use the default IRQ handler, that
indeed just return IRQ_WAKE_THREAD. Since we also specify IRQF_ONESHOT,
the IRQ should be masked until the threaded IRQ ends.


(You may wonder why the driver does not call wfx_bh_request_rx() from a
regular IRQ handler. It is because control_reg_read() is not atomic.)

-- =

J=E9r=F4me Pouiller



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
