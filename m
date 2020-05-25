Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 959561E07F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 09:25:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cq8AvgVQ5x2hpDK3a6nQ6qAllYY6tYdklJcWtz7+yyw=; b=vB+QYRfDvPcpg7
	Hql1wiPQrq3AgU6gMiOyHq3/4OjS6LVJF2yDm6xTSF6hsUyXKcGe7qn1EYaoGfyMIZHJXCcSFV/3R
	vO7KXQ4YU4ME16j/6/xnldb+ZplzuVG508j9MJUau81bQwrZdEgISUKOJYDi+Sg6Ht7cjKmALHGEa
	7SjESP38/Gqpmh6PTPCq7snw+1N6Bw/5QZUJih34Z7ixwDWq/tOUDYMpFM31LXeQl2YOSXZ55qE6v
	LLMq6Tfbi88LEmzDiPvTFEwkmHwQR1AWHgG7eXNS9OLYN28JEjDyO896cAVMs19Sz86ILEi2TFT2w
	Aj8G8sM+R3yUxmR0GbyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd7U3-0006td-Jl; Mon, 25 May 2020 07:25:15 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd7Tc-0006sb-TM
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 07:24:50 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04P7LmsH031192; Mon, 25 May 2020 09:24:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=uJWboNdI9Fne2EVmQsnu0M7tiRztbcc/DAD3CUCrI1E=;
 b=V1tL8NZbHOPYl3mFUWuhdBS7MK53SFZjDpkz9Eto8ynpMZpAQZehDjokkDTos5+A9ByT
 mHObntfUKYfsziwO6WHJXizLTUfMJkk6yWT8/rp8Ec+0HDBDL92VNcWncSwvdEDXdmmO
 D3A3ABrx0VwMfDJiVut6Yx0C6wDEHR4q78GRYsH67aiwMhva+/bd+8RN1uAnsVw/TZby
 vjsDlWp5q8z1xExWCvPnc9HsQBceuZuJeh/STJYPImiqhOLJ6BCqrlcJTndT9C3v31YO
 lDD2muSk+a7KxnL4yZVUqE3d6pEMIpJzKSuDy/s8HR8junwSf5dgHyCDH/ZHjQigmZ1y Qg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 316sa1s0gm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 25 May 2020 09:24:23 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8E03610002A;
 Mon, 25 May 2020 09:24:19 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 4086E206038;
 Mon, 25 May 2020 09:24:19 +0200 (CEST)
Received: from SFHDAG6NODE1.st.com (10.75.127.16) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 25 May
 2020 09:24:18 +0200
Received: from SFHDAG6NODE1.st.com ([fe80::8d96:4406:44e3:eb27]) by
 SFHDAG6NODE1.st.com ([fe80::8d96:4406:44e3:eb27%20]) with mapi id
 15.00.1473.003; Mon, 25 May 2020 09:24:18 +0200
From: Nicolas TOROMANOFF <nicolas.toromanoff@st.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: RE: [PATCH 5/5] crypto: stm32/crc: protect from concurrent accesses
Thread-Topic: [PATCH 5/5] crypto: stm32/crc: protect from concurrent accesses
Thread-Index: AQHWKGdMVH9jV+o/X0uyAZQ0uxDfN6i0NRcAgAQ4E3A=
Date: Mon, 25 May 2020 07:24:18 +0000
Message-ID: <67c25d90d9714a85b52f3d9c2070af88@SFHDAG6NODE1.st.com>
References: <20200512141113.18972-1-nicolas.toromanoff@st.com>
 <20200512141113.18972-6-nicolas.toromanoff@st.com>
 <CAMj1kXGs6UgkKb5+tH2B-+26=tbjHq3UUY2gxfcRfMb1nGVuFA@mail.gmail.com>
In-Reply-To: <CAMj1kXGs6UgkKb5+tH2B-+26=tbjHq3UUY2gxfcRfMb1nGVuFA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-25_02:2020-05-22,
 2020-05-25 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_002449_392971_51CA5803 
X-CRM114-Status: GOOD (  30.91  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hello,

> -----Original Message-----
> From: Ard Biesheuvel <ardb@kernel.org>
> Sent: Friday, May 22, 2020 6:12 PM> 
> On Tue, 12 May 2020 at 16:13, Nicolas Toromanoff
> <nicolas.toromanoff@st.com> wrote:
> >
> > Protect STM32 CRC device from concurrent accesses.
> >
> > As we create a spinlocked section that increase with buffer size, we
> > provide a module parameter to release the pressure by splitting
> > critical section in chunks.
> >
> > Size of each chunk is defined in burst_size module parameter.
> > By default burst_size=0, i.e. don't split incoming buffer.
> >
> > Signed-off-by: Nicolas Toromanoff <nicolas.toromanoff@st.com>
> 
> Would you mind explaining the usage model here? It looks like you are sharing a
> CRC hardware accelerator with a synchronous interface between different users
> by using spinlocks? You are aware that this will tie up the waiting CPUs
> completely during this time, right? So it would be much better to use a mutex
> here. Or perhaps it would make more sense to fall back to a s/w based CRC
> routine if the h/w is tied up working for another task?

I know mutex are more acceptable here, but shash _update() and _init() may be call 
from any context, and so I cannot take a mutex.
And to protect my concurrent HW access I only though about spinlock. Due to possible
constraint on CPUs, I add a burst_size option to force slitting long buffer into smaller one,
and so decrease time we take the lock.
But I didn't though to fallback to software CRC.

I'll do a patch on top.
In in the burst_update() function I'll use a spin_trylock_irqsave() and use software CRC32 if HW is already in use.

Thanks and regards,
Nicolas.

> Using spinlocks for this is really not acceptable.
> 
> 
> 
> > ---
> >  drivers/crypto/stm32/stm32-crc32.c | 47
> > ++++++++++++++++++++++++++++--
> >  1 file changed, 45 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/crypto/stm32/stm32-crc32.c
> > b/drivers/crypto/stm32/stm32-crc32.c
> > index 413415c216ef..3ba41148c2a4 100644
> > --- a/drivers/crypto/stm32/stm32-crc32.c
> > +++ b/drivers/crypto/stm32/stm32-crc32.c
> > @@ -35,11 +35,16 @@
> >
> >  #define CRC_AUTOSUSPEND_DELAY  50
> >
> > +static unsigned int burst_size;
> > +module_param(burst_size, uint, 0644); MODULE_PARM_DESC(burst_size,
> > +"Select burst byte size (0 unlimited)");
> > +
> >  struct stm32_crc {
> >         struct list_head list;
> >         struct device    *dev;
> >         void __iomem     *regs;
> >         struct clk       *clk;
> > +       spinlock_t       lock;
> >  };
> >
> >  struct stm32_crc_list {
> > @@ -109,6 +114,7 @@ static int stm32_crc_init(struct shash_desc *desc)
> >         struct stm32_crc_desc_ctx *ctx = shash_desc_ctx(desc);
> >         struct stm32_crc_ctx *mctx = crypto_shash_ctx(desc->tfm);
> >         struct stm32_crc *crc;
> > +       unsigned long flags;
> >
> >         crc = stm32_crc_get_next_crc();
> >         if (!crc)
> > @@ -116,6 +122,8 @@ static int stm32_crc_init(struct shash_desc *desc)
> >
> >         pm_runtime_get_sync(crc->dev);
> >
> > +       spin_lock_irqsave(&crc->lock, flags);
> > +
> >         /* Reset, set key, poly and configure in bit reverse mode */
> >         writel_relaxed(bitrev32(mctx->key), crc->regs + CRC_INIT);
> >         writel_relaxed(bitrev32(mctx->poly), crc->regs + CRC_POL); @@
> > -125,18 +133,21 @@ static int stm32_crc_init(struct shash_desc *desc)
> >         /* Store partial result */
> >         ctx->partial = readl_relaxed(crc->regs + CRC_DR);
> >
> > +       spin_unlock_irqrestore(&crc->lock, flags);
> > +
> >         pm_runtime_mark_last_busy(crc->dev);
> >         pm_runtime_put_autosuspend(crc->dev);
> >
> >         return 0;
> >  }
> >
> > -static int stm32_crc_update(struct shash_desc *desc, const u8 *d8,
> > -                           unsigned int length)
> > +static int burst_update(struct shash_desc *desc, const u8 *d8,
> > +                       size_t length)
> >  {
> >         struct stm32_crc_desc_ctx *ctx = shash_desc_ctx(desc);
> >         struct stm32_crc_ctx *mctx = crypto_shash_ctx(desc->tfm);
> >         struct stm32_crc *crc;
> > +       unsigned long flags;
> >
> >         crc = stm32_crc_get_next_crc();
> >         if (!crc)
> > @@ -144,6 +155,8 @@ static int stm32_crc_update(struct shash_desc
> > *desc, const u8 *d8,
> >
> >         pm_runtime_get_sync(crc->dev);
> >
> > +       spin_lock_irqsave(&crc->lock, flags);
> > +
> >         /*
> >          * Restore previously calculated CRC for this context as init value
> >          * Restore polynomial configuration @@ -182,12 +195,40 @@
> > static int stm32_crc_update(struct shash_desc *desc, const u8 *d8,
> >         /* Store partial result */
> >         ctx->partial = readl_relaxed(crc->regs + CRC_DR);
> >
> > +       spin_unlock_irqrestore(&crc->lock, flags);
> > +
> >         pm_runtime_mark_last_busy(crc->dev);
> >         pm_runtime_put_autosuspend(crc->dev);
> >
> >         return 0;
> >  }
> >
> > +static int stm32_crc_update(struct shash_desc *desc, const u8 *d8,
> > +                           unsigned int length) {
> > +       const unsigned int burst_sz = burst_size;
> > +       unsigned int rem_sz;
> > +       const u8 *cur;
> > +       size_t size;
> > +       int ret;
> > +
> > +       if (!burst_sz)
> > +               return burst_update(desc, d8, length);
> > +
> > +       /* Digest first bytes not 32bit aligned at first pass in the loop */
> > +       size = min(length,
> > +                  burst_sz + (unsigned int)d8 - ALIGN_DOWN((unsigned int)d8,
> > +                                                           sizeof(u32)));
> > +       for (rem_sz = length, cur = d8; rem_sz;
> > +            rem_sz -= size, cur += size, size = min(rem_sz, burst_sz)) {
> > +               ret = burst_update(desc, cur, size);
> > +               if (ret)
> > +                       return ret;
> > +       }
> > +
> > +       return 0;
> > +}
> > +
> >  static int stm32_crc_final(struct shash_desc *desc, u8 *out)  {
> >         struct stm32_crc_desc_ctx *ctx = shash_desc_ctx(desc); @@
> > -300,6 +341,8 @@ static int stm32_crc_probe(struct platform_device *pdev)
> >         pm_runtime_irq_safe(dev);
> >         pm_runtime_enable(dev);
> >
> > +       spin_lock_init(&crc->lock);
> > +
> >         platform_set_drvdata(pdev, crc);
> >
> >         spin_lock(&crc_list.lock);
> > --
> > 2.17.1
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
