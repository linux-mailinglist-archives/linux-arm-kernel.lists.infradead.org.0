Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C62FC0984
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 18:24:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EDDxGMnixN+RdxLhWza9HiwpP9sW5wRtJmc0kkRJWEA=; b=DzW92Lz/CXzc7a
	FzAOH7siFryHSvat3twMq23NmBfhKgSWlxfLXtL5a1gg0tuaKPGgfr8K905MY0l+UfuvwlCzFVu5z
	Kyy76f2SN/UqEOW1Ofbse6HpY0LA+O76w+K8o0pqrmOribLW+b4rWH/NNUpxLI00x52EZ4noYd7Ir
	lRtuA2kjro8x1TMp0qDLCX6lH31uO26c+04H4Vago/sqHpQB5cXJTxyN0hZLYQfqE9phz3x9Tn5+/
	18mFgfY+1aEih1o1XjBb30BCr+aG4afaHyoTfWX7tx7GNMPP3M5AVe1O08L4wPSAPWZYLsaMH4h0j
	3cWpfHdwsQ9fVaKFopFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDt2g-0005DS-UJ; Fri, 27 Sep 2019 16:24:26 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDt2R-0005Cq-Ry
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 16:24:13 +0000
Received: by mail-lj1-x243.google.com with SMTP id b20so3092698ljj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 09:24:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0ZSEhf5bO/SF1c0tSKvmNNeWxWL147w5YdOvl2Gnjpw=;
 b=KU36TUyGvfLb65v10CffeuYRR2Y01pARWIeV/Vo2qTbklo0V+XA7MrpdKGqR8Ak/KF
 7xi3WhZMUWFK5wmMlbUFTMpDFM+pU5EJBRaIuZosAYuB/0qdZiP1XToldMkdMHQ3GmKk
 gv11WbFW6DUox0vozNZvM6ewmDOPeiEUTX56c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0ZSEhf5bO/SF1c0tSKvmNNeWxWL147w5YdOvl2Gnjpw=;
 b=GyudHXaL5lk9/l1PN1Wdm004e5/BvQVRFhrc/CsvhUIZ7SP7X13R7lxJxXA+jzpROu
 8QDRrpiefyGtenR+pbX+VZyc02DBviHRtv7/OmeO+lbLHocNcQxfzQKHD8xkdF+wu+oo
 hVUg1Y8oMra6Bg9ZwN9cCZp+1XBeDDrRdkx/WUDFOdzrzINFk0xKVzn2QKlbr3edWKBm
 ut2Htp2W7rkkGXEGxDx6qLAPjPLVlLYJ/fexrzBR7ZjFV7QzeRhun172YkJa5YybZbKV
 Hpnmz/VMudRn6XAijPVZIA65NxRohGkrXKkgIx3jVms9fp7TTqguTLTB39w4EF18eSOL
 WpqA==
X-Gm-Message-State: APjAAAWsQxbdCMr8qA5vWIa+ZJr1OIbCz5TStt27yUlxelXGDuXEFozF
 Uj8dB1mqN73B2D+7dgePx1Ut59WVwt0=
X-Google-Smtp-Source: APXvYqzbC4pb3Et9eakiGUpUC+tNFsxamrKTcUVNw8wo01Nw5MgBSRJXaVjUg/5E23Fg8h5ZH1zlQw==
X-Received: by 2002:a2e:9610:: with SMTP id v16mr3624896ljh.21.1569601449122; 
 Fri, 27 Sep 2019 09:24:09 -0700 (PDT)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com.
 [209.85.208.181])
 by smtp.gmail.com with ESMTPSA id t24sm553834lfq.13.2019.09.27.09.24.05
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 27 Sep 2019 09:24:06 -0700 (PDT)
Received: by mail-lj1-f181.google.com with SMTP id m13so3057205ljj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 09:24:05 -0700 (PDT)
X-Received: by 2002:a2e:1208:: with SMTP id t8mr3435615lje.84.1569601445451;
 Fri, 27 Sep 2019 09:24:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <20190925161255.1871-19-ard.biesheuvel@linaro.org>
 <CAHk-=wjYsbxSiV_XKWV3BwGvau_hUvQiQHLOoc7vLUZt0Wqzfw@mail.gmail.com>
 <CH2PR20MB29680F87B32BBF0495720172CA860@CH2PR20MB2968.namprd20.prod.outlook.com>
 <CAHk-=wgR_KsYw2GmZwkG3GmtX6nbyj0LEi7rSqC+uFi3ScTYcw@mail.gmail.com>
 <MN2PR20MB297317D9870A3B93B5E506C9CA810@MN2PR20MB2973.namprd20.prod.outlook.com>
 <CAHk-=wjr1w7x9Rjre_ALnDLASYNjsEHxu6VJpk4eUwZXN0ntqw@mail.gmail.com>
 <MN2PR20MB2973A696B92A8C5A74A738F1CA810@MN2PR20MB2973.namprd20.prod.outlook.com>
In-Reply-To: <MN2PR20MB2973A696B92A8C5A74A738F1CA810@MN2PR20MB2973.namprd20.prod.outlook.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 27 Sep 2019 09:23:49 -0700
X-Gmail-Original-Message-ID: <CAHk-=wj9BSMzoDD31R-ymjGpkpt0u-ndX6+p0ZWsrJFDTAN+zg@mail.gmail.com>
Message-ID: <CAHk-=wj9BSMzoDD31R-ymjGpkpt0u-ndX6+p0ZWsrJFDTAN+zg@mail.gmail.com>
Subject: Re: [RFC PATCH 18/18] net: wireguard - switch to crypto API for
 packet encryption
To: Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_092411_923656_36456564 
X-CRM114-Status: GOOD (  20.08  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg KH <gregkh@linuxfoundation.org>, Eric Biggers <ebiggers@google.com>,
 Samuel Neves <sneves@dei.uc.pt>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Will Deacon <will@kernel.org>,
 David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 27, 2019 at 2:58 AM Pascal Van Leeuwen
<pvanleeuwen@verimatrix.com> wrote:
>
> > I'd want to see wireguard in an end-to-end situation from the very
> > client hardware. So laptops, phones, desktops. Not the untrusted (to
> > me) hw in between.
> >
> I don't see why the crypto HW would deserve any less trust than, say,
> the CPU itself. I would say CPU's don't deserve that trust at the moment.

It's not the crypto engine that is part of the untrusted hardware.
It's the box itself, and the manufacturer, and you having to trust
that the manufacturer didn't set up some magic knocking sequence to
disable the encryption.

Maybe the company that makes them is trying to do a good job. But
maybe they are based in a country that has laws that require
backdoors.

Say, France. There's a long long history of that kind of thing.

It's all to "fight terrorism", but hey, a little industrial espionage
is good too, isn't it? So let's just disable GSM encryption based on
geographic locale and local regulation, shall we.

Yeah, yeah, GSM encryption wasn't all that strong to begin with, but
it was apparently strong enough that France didn't want it.

So tell me again why I should trust that box that I have no control over?

> Well, that's the general idea of abstraction. It also allows for
> swapping in any other cipher with minimal effort just _because_ the
> details were hidden from the application. So it may cost you some
> effort initially, but it may save you effort later.

We clearly disagree on the utility of crypto agility. You point to
things like ipsec as an argument for it.

And I point to ipsec as an argument *against* that horror. It's a
bloated, inefficient, horribly complex mess. And all the "agility" is
very much part of it.

I also point to GSM as a reason against "agility". It has caused way
more security problems than it has ever solved. The ":agility" is
often a way to turn off (or tune down) the encryption, not as a way to
say "ok, we can improve it later".

That "we can improve it later" is a bedtime story. It's not how it
gets used. Particularly as the weaknesses are often not primarily in
the crypto algorithm itself, but in how it gets used or other session
details.

When you actually want to *improve* security, you throw the old code
away, and start a new protocol entirely. Eg SSL -> TLS.

So cryptographic agility is way oversold, and often people are
actively lying about why they want it. And the people who aren't lying
are ignoring the costs.

One of the reasons _I_ like wireguard is that it just went for simple
and secure. No BS.

And you say

> Especially since all crypto it uses comes from a single
> source (DJB), which is frowned upon in the industry.

I'm perhaps not a fan of DJB in all respects, but there's no question
that he's at least competent.

The "industry practice" of having committees influenced by who knows
what isn't all that much better. Do you want to talk about NSA
elliptic curve constant choices?

Anyway, on the costs:

> >  - dynamically allocate buffers at "init time"
>
> Why is that so "wrong"? It sure beats doing allocations on the hot path.

It's wrong not becasue the allocation is costly (you do that only
once), but because the dynamic allocation means that you can't embed
stuff in your own native data structures as a user.

So now accessing those things is no longer dense in the cache.

And it's the cache that matters for a synchronous CPU algorithm. You
don't want the keys and state to be in some other location when you
already have your data structures for the stream that could just have
them right there with the other data.

> And you don't want to have it on the stack initially and then have
> to _copy_ it to some DMA-able location that you allocate on the fly
> on the hot path if you _do_ want HW acceleration.

Actually, that's *exactly* what you want. You want keys etc to be in
regular memory in a location that is convenient to the user, and then
only if the hardware has issues do you say "ok, copy the key to the
hardware". Because quite often the hardware will have very special key
caches that aren't even available to the CPU, because they are on some
hw-private buffers.

Yes, you want to have a "key identity" model so that the hardware
doesn't have to reload it all the time, but that's an invalidation
protocol, not a "put the keys or nonces in special places".

               Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
