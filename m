Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 678001533FF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 16:37:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lZ9+ZNNp51MGIHVqMoShXBDZzpfI38SubAMy22KpzV8=; b=KPInOsCkIvqkB7
	8/LiSFwVtnDsJ0VIi3wrykfRlyiGNfc3gz9Dp7oM8y57gd5FxSbJRboZPccVzbHHDNuGYRPZgTGO6
	laF6rwYdphIlXBHtKGDMBObqCVIQtYOjbL+uZmWYaeow1hruZZGcFzOaR9cIg3QF/5RYXqlRHOcpC
	4Y54cK9TB1Z9n8PL526bgb6lECb3BoKLPOywcxFbFvdamNqXmpgzc2pLOthI+oC+2fSnFMzIobJow
	6nXtkBjlrTKDaqNvHJIWWApKLbCacu2waOJ6XtKJ61LEwoeY3Ole0+hkURG+BthRTKJKM5ThH48vk
	L1oP3SGyOMvxIitjgr0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izMjq-0000NW-3R; Wed, 05 Feb 2020 15:37:14 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izMjh-0000Mr-KB
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 15:37:07 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 015FXM8d024816; Wed, 5 Feb 2020 16:36:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=O7Sww4TZDIbp8TkMcMks3ZS7nZ6/CnEAjPQocUAn6Wo=;
 b=zbXUMB1/wpXHUP/bRkJXL267xVsVsW4HfR6cgGQ9gsUkmWkU0prJqUqvuPKpJE/EsXqU
 /rvkYTGQdNy1X5BbH4ir8nWbdKRNaH3KUraL+WW8kEVkdtCJ5BM780yxxXsy/Nk0aZ/r
 S4WP7U/fKR1V0IgDI56VIIGi5IRlhDkR7JeSstaRHWAvGePjUqD0J2640B/Gxv239Sys
 NZ9+to2nmpaFwtbM9smJ3mYBuPDG7MbGZScxEBSqgno5Bvud36qIIcpyhr9ArlHJZxuR
 JrJ0iMEarhlhs/p7uYlcLUzYsFlT1ccY5oK/XOhgWZNm+z8elc+ydA3/moJ/nPfUNVz5 Ag== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xyhkyeqa2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 05 Feb 2020 16:36:56 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 42F8C10002A;
 Wed,  5 Feb 2020 16:36:52 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 28E0F2BF9C4;
 Wed,  5 Feb 2020 16:36:52 +0100 (CET)
Received: from SFHDAG3NODE2.st.com (10.75.127.8) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 5 Feb
 2020 16:36:51 +0100
Received: from SFHDAG3NODE2.st.com ([fe80::b82f:1ce:8854:5b96]) by
 SFHDAG3NODE2.st.com ([fe80::b82f:1ce:8854:5b96%20]) with mapi id
 15.00.1347.000; Wed, 5 Feb 2020 16:36:51 +0100
From: Alexandre TORGUE <alexandre.torgue@st.com>
To: Marc Zyngier <maz@kernel.org>, Marek Vasut <marex@denx.de>
Subject: RE: STM32MP1 level triggered interrupts
Thread-Topic: STM32MP1 level triggered interrupts
Thread-Index: AQHVz7/z1P1vOpoWZ0KXLaBefYjX66f1XIOA///3J4CAAZzvAIAAE5eAgADqJYD///7CAIAADd2AgAAI1oCAAAJKAIAAB2+AgAC5IgCAAMgvgP//8S2AANxGMYABhAnYAAAAY9cAAAFWlIAACBnpgA==
Date: Wed, 5 Feb 2020 15:36:51 +0000
Message-ID: <101b2f751fff440e9110102e526dfdc4@SFHDAG3NODE2.st.com>
References: <20bb72d0-8258-abc0-e729-4d3d5a75c41c@denx.de>
 <d6e02817-2464-51b9-246a-7720b607b8d6@st.com>
 <65a1c5b2-c1b9-322f-338c-e6ff6379d8d1@denx.de>
 <129d04a0-c846-506d-5726-4a1024d977a6@st.com>
 <80db762c-3b3d-f007-2f9b-dadbffd95782@denx.de>
 <360b1adc-32f1-7993-c463-e52c7a5a8a67@st.com>
 <c4f08f59acd31951527ef1d6e9409e6f@kernel.org>
 <20200123101225.nscpc5t4nmlarbw2@pengutronix.de>
 <03fd1cb7b5985b3221f66c6b0058adc8@kernel.org>
 <20200123105214.ru4j76xbisjtbtgw@pengutronix.de>
 <cf98f4fd257ba4f34c75fe1656bd341b@kernel.org>
 <e1fffd57-4814-ec36-68b4-4207e3d4ae5d@denx.de>
 <f9d98afc-6cb8-ef7b-cff7-a04e14dba4c8@st.com>
 <7e0ce712f7e34b38c8f541644026c52e@kernel.org>
 <5e1c419c-b141-52f6-88f1-ee3ab8219a4e@denx.de>
 <dcbb8f0447f2aa75f0cec6f420310b21@kernel.org>
 <760b42cd-0fc4-5675-3f55-40edfe9440b2@denx.de>
 <73a78da99d5e386bf1d3cb6e263a18ba@kernel.org>
In-Reply-To: <73a78da99d5e386bf1d3cb6e263a18ba@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.50]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-05_04:2020-02-04,
 2020-02-05 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_073706_019969_5A2E6D34 
X-CRM114-Status: GOOD (  21.66  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Patrick DELAUNAY <patrick.delaunay@st.com>,
 =?iso-8859-1?Q?Uwe_Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> >>>> [...]
> >>>>
> >>>>>> But I still wonder, what is the purpose of the EXTImux in that
> >>>>>> SoC?
> >>>>>> Shouldn't that permit routing GPIOs directly into GIC SPIs, which
> >>>>>> would then permit detecting at least level-high interrupts ?
> >>>>>>
> >>>>>
> >>>>> For this SoC, EXTI block detects external line edges and rises a
> >>>>> GIC SPI interrupt. This EXTi block is mainly used to handle HW
> >>>>> events like buttons, clocks ... So first issue seems more to be a
> >>>>> design issue (your design doesn't fit with MP1 datasheet).
> >>>>>
> >>>>> Now, let's find a solution. I'll have a look on your proposition:
> >>>>> "check the line in EOI callback and retrig".
> >>>>>
> >>>>> Marc, this kind a solution could be acceptable on your side ?
> >>>>
> >>>> It will depend on the nature of the hack you will have to put in
> >>>> there.
> >>>> If it is 100% reliable, why not? Anything short of that, probably
> >>>> not.
> >>>
> >>> I had another look into this, and what we would end up is some sort
> >>> of phandle from exti to all the gpioX nodes in DT, would that be OK
> >>> ?
> >>> However, if we do that, then we will have the pinctrl controller
> >>> (which has the gpio banks as subnodes) require the exti through a
> >>> phandle and exti require the gpio banks through a phandle, so we end
> >>> up with some sort of cyclic dependency there.
> >>>
> >>> So we would need to somehow have exti lazily deal with it's gpioX
> >>> controller phandles only when someone requests level interrupt ?
> >>> That would probably do.
> >>
> >> TBH, I don't have much of an opinion here. If you can deal with the
> >> plumbing that's required to make this thing work reliably, then why
> >> not?
> >>
> >> What I insist on is that the sampling/retriggering is made 100%
> >> reliable.
> >> I'd prefer we don't offer the functionality if it there is any doubt
> >> about it.
> >
> > That question was more in the direction of ST, to see how it fits in
> > their design/plans. I would hate to work on something only to have it
> > rejected because ST developed something else in parallel.
> 
> I think this is more of a "whoever needs it writes it" case, and ST obviously didn't
> care much about supporting external level interrupts.
> 
> So if you have the need *and* a clear idea on how to make it work, please post
> patches. If ST wakes up and wants to chime in, LKML is the right forum for having
> the discussion.
> 

Sorry for the delay (just back from business trip). This topic has triggered internal
Discussions to update our design for future product. So thanks for that.
Now we have to find a solution for MP1. I have to work on it (find a way to read
gpio line value from exti). If you have something to propose don't hesitate to share it with us.

Regards
Alexandre

> Thanks,
> 
>          M.
> --
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
