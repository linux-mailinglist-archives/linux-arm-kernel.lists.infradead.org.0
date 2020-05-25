Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5CF1E0DBF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 13:50:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3zfE5A/8gHDXm6wGL3KH4vE+pBFh32j708/ChhSEBgM=; b=QDF+RxJFonjsez
	W7MQax3QGilgcrUR/0bU44C3Bpx3nlYl8OAJW6jwPhrJ0jkjjIuNl2QOCZ8D4Vn++RFnZqveu6VpL
	EOCWhiVsLCHTtskEoClETJOU543AKDPYNrAEExWlXp2E1f+pXsbtSfxun4tgos+4EcU7iJpoNhE5k
	g6DdTglRuU3mGXUjPADiyw9m75F2xUYiZbF/NQDUrlvBYnX+9AIGcqYS+Gtyd01jq+OLv1Bfq/ZFx
	StcQPzmEY91j5M+fe2ks9OcC9Op8S4QV9/IYOFSvqBSDHiwWPNrGfHtql05Ynm3vslcx4JxGVqJ7b
	Lv1zMLcoVJxWifuOHE4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdBcY-0007G2-OL; Mon, 25 May 2020 11:50:18 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdBcF-0006mA-JG
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 11:50:02 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04PBm2dF023009; Mon, 25 May 2020 13:49:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=ZLPJbD1i52pQmhWGud8u9OF5Yeh//Hrj8jaTYYs9M5U=;
 b=Kd6js+c0GtO9/IEl9vzto9Y8GRXycY27HMPexBUqs+VTSoehYyl+sjHlU1lrl+GElZLK
 WE1Mf3lI5suTEZKRtnv0a7knaBYa0SZV/1V7COQiI79ue5zX9MJV9R9hY7bG4lPmqM8H
 MxNc+UaPLdg46wE59rALpCUX+roPIerHdStpPpIEZ09pb6nAILTuKJx11U2HmUkgdIoM
 oGShsqDs2T/76Ka0CzY1lxjCYs9QHlUHEw2WAeb+EIiUXNIEmDB963Kt8ZIE6bQ/u4/H
 g4n1zaNdojeeyXLwkYpwvxqDpcnMBl67VJSxXZUAKispXLGsUKRRV4oqsf0Rvui4+k42 xQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 316rya26p9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 25 May 2020 13:49:38 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 10CAF10002A;
 Mon, 25 May 2020 13:49:37 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id BB6C121E681;
 Mon, 25 May 2020 13:49:37 +0200 (CEST)
Received: from SFHDAG6NODE1.st.com (10.75.127.16) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 25 May
 2020 13:49:37 +0200
Received: from SFHDAG6NODE1.st.com ([fe80::8d96:4406:44e3:eb27]) by
 SFHDAG6NODE1.st.com ([fe80::8d96:4406:44e3:eb27%20]) with mapi id
 15.00.1473.003; Mon, 25 May 2020 13:49:37 +0200
From: Nicolas TOROMANOFF <nicolas.toromanoff@st.com>
To: Ard Biesheuvel <ardb@kernel.org>, Eric Biggers <ebiggers@kernel.org>
Subject: RE: [PATCH 5/5] crypto: stm32/crc: protect from concurrent accesses
Thread-Topic: [PATCH 5/5] crypto: stm32/crc: protect from concurrent accesses
Thread-Index: AQHWMnPoC6hseRPByUqqkn4smN/k96i4hBOA
Date: Mon, 25 May 2020 11:49:37 +0000
Message-ID: <31e99726fa6544fcaac88490de3186e6@SFHDAG6NODE1.st.com>
References: <20200512141113.18972-1-nicolas.toromanoff@st.com>
 <20200512141113.18972-6-nicolas.toromanoff@st.com>
 <CAMj1kXGs6UgkKb5+tH2B-+26=tbjHq3UUY2gxfcRfMb1nGVuFA@mail.gmail.com>
 <67c25d90d9714a85b52f3d9c2070af88@SFHDAG6NODE1.st.com>
 <CAMj1kXGo+9aXeYppGSheqhC-pNeJCcEie+SAnWy_sAiooEDMsQ@mail.gmail.com>
 <bd6cac3bd4c74db1a403df58082028fd@SFHDAG6NODE1.st.com>
 <CAMj1kXFwt6cs-MJhAeMRF4-yiddm=ezq=qvSjA_sRAX+_Gdqhw@mail.gmail.com>
In-Reply-To: <CAMj1kXFwt6cs-MJhAeMRF4-yiddm=ezq=qvSjA_sRAX+_Gdqhw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-05-25_07:2020-05-25,
 2020-05-25 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_045000_096733_DCD183C4 
X-CRM114-Status: GOOD (  33.84  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Herbert Xu <herbert@gondor.apana.org.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Ard Biesheuvel <ardb@kernel.org>
> Sent: Monday, May 25, 2020 11:07 AM
> To: Nicolas TOROMANOFF <nicolas.toromanoff@st.com>; Eric Biggers
> <ebiggers@kernel.org>
> On Mon, 25 May 2020 at 11:01, Nicolas TOROMANOFF
> <nicolas.toromanoff@st.com> wrote:
> >
> > > -----Original Message-----
> > > From: Ard Biesheuvel <ardb@kernel.org>
> > > Sent: Monday, May 25, 2020 9:46 AM
> > > To: Nicolas TOROMANOFF <nicolas.toromanoff@st.com>
> > > Subject: Re: [PATCH 5/5] crypto: stm32/crc: protect from concurrent
> > > accesses
> > >
> > > On Mon, 25 May 2020 at 09:24, Nicolas TOROMANOFF
> > > <nicolas.toromanoff@st.com> wrote:
> > > >
> > > > Hello,
> > > >
> > > > > -----Original Message-----
> > > > > From: Ard Biesheuvel <ardb@kernel.org>
> > > > > Sent: Friday, May 22, 2020 6:12 PM> On Tue, 12 May 2020 at
> > > > > 16:13, Nicolas Toromanoff <nicolas.toromanoff@st.com> wrote:
> > > > > >
> > > > > > Protect STM32 CRC device from concurrent accesses.
> > > > > >
> > > > > > As we create a spinlocked section that increase with buffer
> > > > > > size, we provide a module parameter to release the pressure by
> > > > > > splitting critical section in chunks.
> > > > > >
> > > > > > Size of each chunk is defined in burst_size module parameter.
> > > > > > By default burst_size=0, i.e. don't split incoming buffer.
> > > > > >
> > > > > > Signed-off-by: Nicolas Toromanoff <nicolas.toromanoff@st.com>
> > > > >
> > > > > Would you mind explaining the usage model here? It looks like
> > > > > you are sharing a CRC hardware accelerator with a synchronous
> > > > > interface between different users by using spinlocks? You are
> > > > > aware that this will tie up the waiting CPUs completely during
> > > > > this time, right? So it would be much better to use a mutex
> > > > > here. Or perhaps it would make more sense to fall back to a s/w
> > > > > based CRC routine if the h/w is tied up
> > > working for another task?
> > > >
> > > > I know mutex are more acceptable here, but shash _update() and
> > > > _init() may be call from any context, and so I cannot take a mutex.
> > > > And to protect my concurrent HW access I only though about spinlock.
> > > > Due to possible constraint on CPUs, I add a burst_size option to
> > > > force slitting long buffer into smaller one, and so decrease time we take
> the lock.
> > > > But I didn't though to fallback to software CRC.
> > > >
> > > > I'll do a patch on top.
> > > > In in the burst_update() function I'll use a
> > > > spin_trylock_irqsave() and use
> > > software CRC32 if HW is already in use.
> > > >
> > >
> > > Right. I didn't even notice that you were keeping interrupts
> > > disabled the whole time when using the h/w block. That means that
> > > any serious use of this h/w block will make IRQ latency go through the roof.
> > >
> > > I recommend that you go back to the drawing board on this driver,
> > > rather than papering over the issues with a spin_trylock(). Perhaps
> > > it would be better to model it as a ahash (even though the h/w block
> > > itself is synchronous) and use a kthread to feed in the data.
> >
> > I thought when I updated the driver to move to a ahash interface, but
> > the main usage of crc32 is the ext4 fs, that calls the shash API.
> > Commit 877b5691f27a ("crypto: shash - remove shash_desc::flags")
> > removed possibility to sleep in shash callback. (before this commit
> > and with MAY_SLEEP option set, using a mutex may have been fine).
> >
> 
> According to that commit's log, sleeping is never fine for shash(), since it uses
> kmap_atomic() when iterating over the scatterlist.

Today, we could avoid using kmap_atomic() in shash_ashash_*() APIs (the
ones that Walks through the scatterlist) by using the
crypto_ahash_walk_first() function to initialize the shash_ahash walker
(note that this function is never call in current kernel source [to remove ?]).
Then shash_ahash_*() functions will call ahash_*() function that use kmap()
if (walk->flags & CRYPTO_ALG_ASYNC) [flag set by crypto_ahash_walk_first()]
The last kmap_atomic() will be in the shash_ahash_digest() call in the
optimize branch (that should be replaced by the no atomic one)

I didn't investigate more this way, because I didn't check the drawback of
using kmap() instead of kmap_atomic(), I wanted to avoid modifying behavior
of other drivers and using a function never use elsewhere in kernel scarred
me ;-).
If these updates correct visible bugs in the ahash usage of the stm32-crc32
code [no more "sleep while atomic" traces even with mutex in tests], 
Documentation states that shash API could be called from any context,
I cannot add mutex in them.

> > By now the solution I see is to use the spin_trylock_irqsave(),
> > fallback to software crc *AND* capping burst_size to ensure the locked
> section stay reasonable.
> >
> > Does this seems acceptable ?
> >
> 
> If the reason for disabling interrupts is to avoid deadlocks, wouldn't the switch
> to trylock() with a software fallback allow us to keep interrupts enabled?

Right, with the trylock, I don't see why we may need to mask interrupts.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
