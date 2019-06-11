Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FC23C67D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 10:50:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MxfNGhPkIXNa5xAzcIgS0ayPZE+UPc9OZGoSv1DqsJQ=; b=ly4yM3MfxrAej6
	hX3BxndgsmwVvMrtc7IdpiUkVh7aIt8/R13DKCdheD7ozHPJzatmJ4Dk4x7cd0clxoNE36fpQWerp
	ma92UFY1j/EsfU7mYp68jG3zgMticjT7o+8E4eiHCcBP6rAAFRbCOX3lUv6kblcINna5/XaF5fUJ2
	GtbX7F4lG6zH1rX737vC3oDn9w4tlmRJiVmrDxSRsprBWPKf7czA32HvbaKG5xFtbDT23LYjnmgQn
	1aYxxQe/lvXTnt95d4u4tJNoR2vEjlnDfI4CsAAj9P6FNfRd44F5hQaEnvyIv4IFk8Gd5pFfn3AXB
	6/5j5rq412kfswxOwbSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hacUQ-0007K7-Bw; Tue, 11 Jun 2019 08:50:46 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hacRP-0003z6-Sl
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 08:47:43 +0000
Received: by mail-it1-x143.google.com with SMTP id l21so3567353ita.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 01:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VF1kGVddFpIAC2XDRsCvaPTsWd3oiEHLMIFP7bJNfAA=;
 b=reminkYhknpgdw0v9vXBEw95OofOGqApJUgWcHaSh16CgrHXJXS8OtPV36w7Zq70cM
 EmxlFXFUtrBEtCXunBLiYs8kz3hoHrk8fu9usuDrl4n8gSMZIhzmITSjQt7vL7WNLT9M
 zcg0hyYUoXdPC+hessziNzI+NZexuBDumxKk1/MV67daWLoVCe117k1Umb5tsjif7rBu
 0Cqs+UhO1mRfaYY4iANoRoOYkqYLUt5xwIBOI97pT7vweGbyT04VyL0rPXXIV8S6697t
 eaANouGUse1HFf+IpSbgudkBFPxuTYG4PBtcQlvNDFYNBF+Tuj4RY9HsU8dExhxoBOpj
 F/EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VF1kGVddFpIAC2XDRsCvaPTsWd3oiEHLMIFP7bJNfAA=;
 b=erZraBO/+IXH4JB1klem2KhvakyQzt3PgwkFteiVDuIaX7g0KzHfQZnQixHTQ4I2PV
 35g2ZtO+ULfI7CS20ZzSdtwfbZCcZHO5TbtetS2s4x/2IifMYtZAEUR8xieItc+MNQaV
 kjO2xZ90MxB1se1AjQoB8b5FnYmwKD0gsf8nCwRj8OSCVz/ECZiwXDanVwNMzpcxgnXm
 B4j1/1LfvqJ0xPNleG0cBQsTisRt7RvYTyzIdNl1WLrA3ugZK+Dik/7GKMu5Rj8WQcRv
 T285QCeGFWuwymUbchrUOXEqgx+12T4WyBD08eNx38/ozKDUO0PQmtUr33z6wSPAhUOd
 bFbQ==
X-Gm-Message-State: APjAAAWHQIeYKXnl6niQOzIWaf7rGrWSm3QVnZzr+efvu785QDtfOWJg
 QlzWF2heGy/1MLmFCaiU9cs7h0Xq4/i3EUgLzCCu6Q==
X-Google-Smtp-Source: APXvYqwF6zNmNcPE0CVkeRShHOR/TQk7tS5fBa3s4YV+C/yBlnq2caZY5W4qDsUYjoAoh/3qbdw2XofS9YrS5nYofTE=
X-Received: by 2002:a24:4417:: with SMTP id o23mr18107239ita.88.1560242858490; 
 Tue, 11 Jun 2019 01:47:38 -0700 (PDT)
MIME-Version: 1.0
References: <1559651172-28989-1-git-send-email-walter-zh.wu@mediatek.com>
 <CACT4Y+Y9_85YB8CCwmKerDWc45Z00hMd6Pc-STEbr0cmYSqnoA@mail.gmail.com>
 <1560151690.20384.3.camel@mtksdccf07>
 <CACT4Y+aetKEM9UkfSoVf8EaDNTD40mEF0xyaRiuw=DPEaGpTkQ@mail.gmail.com>
 <1560236742.4832.34.camel@mtksdccf07>
In-Reply-To: <1560236742.4832.34.camel@mtksdccf07>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Tue, 11 Jun 2019 10:47:27 +0200
Message-ID: <CACT4Y+YNG0OGT+mCEms+=SYWA=9R3MmBzr8e3QsNNdQvHNt9Fg@mail.gmail.com>
Subject: Re: [PATCH v2] kasan: add memory corruption identification for
 software tag-based mode
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_014740_071842_BF407E7F 
X-CRM114-Status: GOOD (  31.22  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match 0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 "Jason A. Donenfeld" <Jason@zx2c4.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Arnd Bergmann <arnd@arndb.de>, Linux-MM <linux-mm@kvack.org>,
 Andrey Konovalov <andreyknvl@google.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 Pekka Enberg <penberg@kernel.org>, Martin Schwidefsky <schwidefsky@de.ibm.com>,
 =?UTF-8?B?TWlsZXMgQ2hlbiAo6Zmz5rCR5qi6KQ==?= <Miles.Chen@mediatek.com>,
 Alexander Potapenko <glider@google.com>, David Rientjes <rientjes@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, Christoph Lameter <cl@linux.com>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 9:05 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
>
> On Mon, 2019-06-10 at 13:46 +0200, Dmitry Vyukov wrote:
> > On Mon, Jun 10, 2019 at 9:28 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > >
> > > On Fri, 2019-06-07 at 21:18 +0800, Dmitry Vyukov wrote:
> > > > > diff --git a/include/linux/kasan.h b/include/linux/kasan.h
> > > > > index b40ea104dd36..be0667225b58 100644
> > > > > --- a/include/linux/kasan.h
> > > > > +++ b/include/linux/kasan.h
> > > > > @@ -164,7 +164,11 @@ void kasan_cache_shutdown(struct kmem_cache *cache);
> > > > >
> > > > >  #else /* CONFIG_KASAN_GENERIC */
> > > > >
> > > > > +#ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
> > > > > +void kasan_cache_shrink(struct kmem_cache *cache);
> > > > > +#else
> > > >
> > > > Please restructure the code so that we don't duplicate this function
> > > > name 3 times in this header.
> > > >
> > > We have fixed it, Thank you for your reminder.
> > >
> > >
> > > > >  static inline void kasan_cache_shrink(struct kmem_cache *cache) {}
> > > > > +#endif
> > > > >  static inline void kasan_cache_shutdown(struct kmem_cache *cache) {}
> > > > >
> > > > >  #endif /* CONFIG_KASAN_GENERIC */
> > > > > diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
> > > > > index 9950b660e62d..17a4952c5eee 100644
> > > > > --- a/lib/Kconfig.kasan
> > > > > +++ b/lib/Kconfig.kasan
> > > > > @@ -134,6 +134,15 @@ config KASAN_S390_4_LEVEL_PAGING
> > > > >           to 3TB of RAM with KASan enabled). This options allows to force
> > > > >           4-level paging instead.
> > > > >
> > > > > +config KASAN_SW_TAGS_IDENTIFY
> > > > > +       bool "Enable memory corruption idenitfication"
> > > >
> > > > s/idenitfication/identification/
> > > >
> > > I should replace my glasses.
> > >
> > >
> > > > > +       depends on KASAN_SW_TAGS
> > > > > +       help
> > > > > +         Now tag-based KASAN bug report always shows invalid-access error, This
> > > > > +         options can identify it whether it is use-after-free or out-of-bound.
> > > > > +         This will make it easier for programmers to see the memory corruption
> > > > > +         problem.
> > > >
> > > > This description looks like a change description, i.e. it describes
> > > > the current behavior and how it changes. I think code comments should
> > > > not have such, they should describe the current state of the things.
> > > > It should also mention the trade-off, otherwise it raises reasonable
> > > > questions like "why it's not enabled by default?" and "why do I ever
> > > > want to not enable it?".
> > > > I would do something like:
> > > >
> > > > This option enables best-effort identification of bug type
> > > > (use-after-free or out-of-bounds)
> > > > at the cost of increased memory consumption for object quarantine.
> > > >
> > > I totally agree with your comments. Would you think we should try to add the cost?
> > > It may be that it consumes about 1/128th of available memory at full quarantine usage rate.
> >
> > Hi,
> >
> > I don't understand the question. We should not add costs if not
> > necessary. Or you mean why we should add _docs_ regarding the cost? Or
> > what?
> >
> I mean the description of option. Should it add the description for
> memory costs. I see KASAN_SW_TAGS and KASAN_GENERIC options to show the
> memory costs. So We originally think it is possible to add the
> description, if users want to enable it, maybe they want to know its
> memory costs.
>
> If you think it is not necessary, we will not add it.

Full description of memory costs for normal KASAN mode and
KASAN_SW_TAGS should probably go into
Documentation/dev-tools/kasan.rst rather then into config description
because it may be too lengthy.

I mentioned memory costs for this config because otherwise it's
unclear why would one ever want to _not_ enable this option. If it
would only have positive effects, then it should be enabled all the
time and should not be a config option at all.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
