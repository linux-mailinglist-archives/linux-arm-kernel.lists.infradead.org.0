Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0621E099B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 11:04:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GzTlmOgQWxQtWjXnu0TF7uJx9KRdbsCeLdZJNorxc5A=; b=FAFbnb22Mm327O
	+Cl978bZoXOu+h/k706VEq4PfygHqA5YqI20FQMdn/INJ3K3mOlUO4VwHtnmacgr6/xPqNHE/RVZm
	T1T0UxkjNy1fG0bXOqOtuqUailYqjiqzcn1+HLUAkrsLyiGkMwfUlrk+X2nrxkJ7V01EyLLeo8SgH
	5iXUM1x4v3TOpA8Nsu6499XYZqQi0hN4wLXH4L+vwf4Eo9bm48z4V1qpetWn6RldJ6176hHwbEPxi
	OjQ6Hzv78DWVB8Nr0uPnK5dFJuB5SoQW/bkNprsbxpsmVodx1zD9QN7z8GT59yZDdLFRzqScadFnm
	eQPU/tcdgAsyseasi+Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd92I-0003RO-P1; Mon, 25 May 2020 09:04:42 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd8zE-00019g-JW
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 09:01:34 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04P8v3sP018220; Mon, 25 May 2020 11:01:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=KDyGfqOCsSIwAITLJsQ5jBrlVuKHDgmWtdIyUzqNc7s=;
 b=MbtxIZRDABNy6JGFuAeyoqQW+MSH1dNwtBsMzZMRvpUUPgxKq1A2kGlK32nmKveHpvBn
 42aShXiRL0AyczhV0A94sjoDGh1ydA8KGsqmhgSEPU2eDE30blI54VySxLDy4cNUxywq
 rRqOMZe7Zzhjn8tcpuwk/kwgdBDZQuUBJCRI4cil0Jmw8Ja0gwsfCLMIoy+8rzf8d3jd
 idXG7qpwX/t4rKC9mG83hseh5Hp+InkErAi8qCecVj1w+JNpuRpk9Gfk97GXcBFo+9iw
 WkJULKJWOYvavCPKaX/XDEQPjkZDL+CdOnACxyvJn5PPtjqS5+EHz2M285EaLUS/oCjY sw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 316tqgs2n9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 25 May 2020 11:01:08 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 08D86100034;
 Mon, 25 May 2020 11:01:07 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B16C4207490;
 Mon, 25 May 2020 11:01:07 +0200 (CEST)
Received: from SFHDAG6NODE1.st.com (10.75.127.16) by SFHDAG3NODE3.st.com
 (10.75.127.9) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 25 May
 2020 11:01:07 +0200
Received: from SFHDAG6NODE1.st.com ([fe80::8d96:4406:44e3:eb27]) by
 SFHDAG6NODE1.st.com ([fe80::8d96:4406:44e3:eb27%20]) with mapi id
 15.00.1473.003; Mon, 25 May 2020 11:01:07 +0200
From: Nicolas TOROMANOFF <nicolas.toromanoff@st.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: RE: [PATCH 5/5] crypto: stm32/crc: protect from concurrent accesses
Thread-Topic: [PATCH 5/5] crypto: stm32/crc: protect from concurrent accesses
Thread-Index: AQHWMmiSDrJlXuJ7jUCG67XoujoCbKi4bbbg
Date: Mon, 25 May 2020 09:01:07 +0000
Message-ID: <bd6cac3bd4c74db1a403df58082028fd@SFHDAG6NODE1.st.com>
References: <20200512141113.18972-1-nicolas.toromanoff@st.com>
 <20200512141113.18972-6-nicolas.toromanoff@st.com>
 <CAMj1kXGs6UgkKb5+tH2B-+26=tbjHq3UUY2gxfcRfMb1nGVuFA@mail.gmail.com>
 <67c25d90d9714a85b52f3d9c2070af88@SFHDAG6NODE1.st.com>
 <CAMj1kXGo+9aXeYppGSheqhC-pNeJCcEie+SAnWy_sAiooEDMsQ@mail.gmail.com>
In-Reply-To: <CAMj1kXGo+9aXeYppGSheqhC-pNeJCcEie+SAnWy_sAiooEDMsQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-25_04:2020-05-22,
 2020-05-25 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_020133_146406_872F9DB2 
X-CRM114-Status: GOOD (  27.26  )
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
> Sent: Monday, May 25, 2020 9:46 AM
> To: Nicolas TOROMANOFF <nicolas.toromanoff@st.com>
> Subject: Re: [PATCH 5/5] crypto: stm32/crc: protect from concurrent accesses
> 
> On Mon, 25 May 2020 at 09:24, Nicolas TOROMANOFF
> <nicolas.toromanoff@st.com> wrote:
> >
> > Hello,
> >
> > > -----Original Message-----
> > > From: Ard Biesheuvel <ardb@kernel.org>
> > > Sent: Friday, May 22, 2020 6:12 PM>
> > > On Tue, 12 May 2020 at 16:13, Nicolas Toromanoff
> > > <nicolas.toromanoff@st.com> wrote:
> > > >
> > > > Protect STM32 CRC device from concurrent accesses.
> > > >
> > > > As we create a spinlocked section that increase with buffer size,
> > > > we provide a module parameter to release the pressure by splitting
> > > > critical section in chunks.
> > > >
> > > > Size of each chunk is defined in burst_size module parameter.
> > > > By default burst_size=0, i.e. don't split incoming buffer.
> > > >
> > > > Signed-off-by: Nicolas Toromanoff <nicolas.toromanoff@st.com>
> > >
> > > Would you mind explaining the usage model here? It looks like you
> > > are sharing a CRC hardware accelerator with a synchronous interface
> > > between different users by using spinlocks? You are aware that this
> > > will tie up the waiting CPUs completely during this time, right? So
> > > it would be much better to use a mutex here. Or perhaps it would
> > > make more sense to fall back to a s/w based CRC routine if the h/w is tied up
> working for another task?
> >
> > I know mutex are more acceptable here, but shash _update() and _init()
> > may be call from any context, and so I cannot take a mutex.
> > And to protect my concurrent HW access I only though about spinlock.
> > Due to possible constraint on CPUs, I add a burst_size option to force
> > slitting long buffer into smaller one, and so decrease time we take the lock.
> > But I didn't though to fallback to software CRC.
> >
> > I'll do a patch on top.
> > In in the burst_update() function I'll use a spin_trylock_irqsave() and use
> software CRC32 if HW is already in use.
> >
> 
> Right. I didn't even notice that you were keeping interrupts disabled the whole
> time when using the h/w block. That means that any serious use of this h/w
> block will make IRQ latency go through the roof.
> 
> I recommend that you go back to the drawing board on this driver, rather than
> papering over the issues with a spin_trylock(). Perhaps it would be better to
> model it as a ahash (even though the h/w block itself is synchronous) and use a
> kthread to feed in the data.

I thought when I updated the driver to move to a ahash interface, but the main usage
of crc32 is the ext4 fs, that calls the shash API.
Commit 877b5691f27a ("crypto: shash - remove shash_desc::flags") removed possibility
to sleep in shash callback. (before this commit and with MAY_SLEEP option set, using 
a mutex may have been fine).

By now the solution I see is to use the spin_trylock_irqsave(), fallback to software crc *AND* capping burst_size
to ensure the locked section stay reasonable.

Does this seems acceptable ?

Nicolas.
 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
