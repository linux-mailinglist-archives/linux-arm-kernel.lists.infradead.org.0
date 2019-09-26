Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B191ABF6D0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 18:36:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zRpkEpzOk+HoE/wKjBnoFwLCCwLOD42weXBPmj9jD44=; b=NxaIWu6E6Hep5K
	MeeEhcs6tQ+K8LZi+LGwNj/EBJbH1P3RJ4vfE2+0kkuIjAj3AlVnL03Jl0oU2POvg99NYZHGch7G0
	1vhsAHGovrGsNVjCVYG1xgywZsBGfukC9XS+DlvAgnnNNrS6tQtJY9Au69HykHoJSugXNU+R14Us0
	mKmCTqSg7BNNAh0s4lGEmES0iMxRvTOsIB5cKtGWR/B2csmlM6eVAKKDv+Y3y5MhJQ4oOS6dmPds4
	2CwRCL+5ixgntbJFe1w/w2uk4dKSLyhLF5vLM63DqZ9wosxewELZPGfPyhw9BMcIoMfpM+dJcSkE5
	rMJGhUF0EDDMEX4/x5yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDWk9-0003sk-Nh; Thu, 26 Sep 2019 16:35:50 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDWjy-0003sN-1F
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 16:35:40 +0000
Received: by mail-lj1-x244.google.com with SMTP id q64so2834423ljb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 09:35:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lCcArD5l0z7DpY04H7ah68ZY1dqCueMrSSG13Ow1NK4=;
 b=Z2+niSAlTDaPDa8oRjcVzXT1eBWbbDmPiXTEk8TsNFZjVABaaLFlfG743ko36nEDnV
 2ogsPiKrqbQxUSX1PXUpCbK+8TynYYHdjW4a2tAuSkDdMYX+CMc9OsuQ/uiO8T4bcTk+
 dEY3onONAg7UkOcvJb4ufTLBqhkzJ/z4c6acc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lCcArD5l0z7DpY04H7ah68ZY1dqCueMrSSG13Ow1NK4=;
 b=sfd+RQLIzSSpkehF/CmdCou3xF6p99sUQhabHlv6vGxVibEqB2I1I5WzLGo7DE5xG8
 i8A/TmPgvWwv18D+zFpbCQrZyX56Wh7zqvB3yOGoo/hnLZ64j3AYLWukSVgSpnOm8FYT
 eUcJoToYUU0GDpBGWMYiXH41qd/mHARZSy/ddG+gdyoAEnLI3iKheQ6IZQVi5Utg7rsL
 SxvgWOchNMx8sw3QU9gdLS9KBCsohVAmVFH84QSjrwzliKQhKlY+6mN4j5d+tbC/RYC+
 0w+kfKvsT1Riy/gsUrrJm8veR2jW1h/lmTkVALFVTv5gdWutTMlvrSvOCL9oxWKa9TR4
 +lFQ==
X-Gm-Message-State: APjAAAVGBnK3rvQQzR7jkanKlXR7g+Wp9F+vhdOwyor5GR6UsU6QJDOs
 i46qYUQBEbYQJPyxrtFo2NKhwTlujek=
X-Google-Smtp-Source: APXvYqxkWHag2ny+BMpACwn53K1y28cs4qsbCo7P/7k6CpmKPcZkVbIP6TpvEvmBPB7ii3Jgyo5GKg==
X-Received: by 2002:a2e:7d19:: with SMTP id y25mr3229495ljc.177.1569515734263; 
 Thu, 26 Sep 2019 09:35:34 -0700 (PDT)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com.
 [209.85.208.172])
 by smtp.gmail.com with ESMTPSA id 77sm610659ljf.85.2019.09.26.09.35.32
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 26 Sep 2019 09:35:32 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id d1so1805746ljl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 09:35:32 -0700 (PDT)
X-Received: by 2002:a2e:1208:: with SMTP id t8mr3175782lje.84.1569515731923;
 Thu, 26 Sep 2019 09:35:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <20190925161255.1871-19-ard.biesheuvel@linaro.org>
 <CAHk-=wjYsbxSiV_XKWV3BwGvau_hUvQiQHLOoc7vLUZt0Wqzfw@mail.gmail.com>
 <CH2PR20MB29680F87B32BBF0495720172CA860@CH2PR20MB2968.namprd20.prod.outlook.com>
In-Reply-To: <CH2PR20MB29680F87B32BBF0495720172CA860@CH2PR20MB2968.namprd20.prod.outlook.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 26 Sep 2019 09:35:15 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgR_KsYw2GmZwkG3GmtX6nbyj0LEi7rSqC+uFi3ScTYcw@mail.gmail.com>
Message-ID: <CAHk-=wgR_KsYw2GmZwkG3GmtX6nbyj0LEi7rSqC+uFi3ScTYcw@mail.gmail.com>
Subject: Re: [RFC PATCH 18/18] net: wireguard - switch to crypto API for
 packet encryption
To: Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_093538_100151_D8965DA9 
X-CRM114-Status: GOOD (  33.00  )
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
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Thu, Sep 26, 2019 at 2:40 AM Pascal Van Leeuwen
<pvanleeuwen@verimatrix.com> wrote:
>
> While I agree with the principle of first merging Wireguard without
> hooking it up to the Crypto API and doing the latter in a later,
> separate patch, I DONT'T agree with your bashing of the Crypto API
> or HW crypto acceleration in general.

I'm not bashing hardware crypto acceleration.

But I *am* bashing bad interfaces to it.

Honestly, you need to face a few facts, Pascal.

Really.

First off: availability.

 (a) hardware doesn't exist right now outside your lab

This is a fact.

 (b) hardware simply WILL NOT exist in any huge number for years,
possibly decades. If ever,

This is just reality, Pascal. Even if you release your hardware
tomorrow, where do you think it will exists? Laptops? PC's? Phones?
No. No. And no.

Phones are likely the strongest argument for power use, but phones
won't really start using it until it's on the SoC, because while they
care deeply about power, they care even more deeply about a lot of
other things a whole lot more. Form factor, price, and customers that
care.

So phones aren't happening. Not for years, and not until it's a big
deal and standard IP that everybody wants.

Laptops and PC's? No. Look at all the crypto acceleration they have today.

That was sarcasm, btw, just to make it clear. It's simply not a market.

End result: even with hardware, the hardware will be very rare. Maybe
routers that want to sell particular features in the near future.

Again, this isn't theory. This is that pesky little thing called
"reality". It sucks, I know.

But even if you *IGNORE* the fact that hardware doesn't exist right
now, and won't be widely available for years (or longer), there's
another little fact that you are ignoring:

The async crypto interfaces are badly designed. Full stop.

Seriously. This isn't rocket science. This is very very basic Computer
Science 101.

Tell me, what's _the_ most important part about optimizing something?

Yeah, it's "you optimize for the common case". But let's ignore that
part, since I already said that hardware isn't the common case but I
promised that I'd ignore that part.

The _other_ most important part of optimization is that you optimize
for the case that _matters_.

And the async crypto case got that completely wrong, and the wireguard
patch shows that issue very clearly.

The fact is, even you admit that a few CPU cycles don't matter for the
async case where you have hardware acceleration, because the real cost
is going to be in the IO - whether it's DMA, cache coherent
interconnects, or some day some SoC special bus. The CPU cycles just
don't matter, they are entirely in the noise.

What does that mean?  Think about it.

[ Time passes ]

Ok, I'll tell you: it means that the interface shouldn't be designed
for async hw-assisted crypto. The interface should be designed for the
case that _does_ care about CPU cycles, and then the async hw-assisted
crypto should be hidden by a conditional, and its (extra) data
structures should be the ones that are behind some indirect pointers
etc.  Because, as we agreed, the async external hw case really doesn't
care. It it has to traverse a pointer or two, and if it has to have a
*SEPARATE* keystore that has longer lifetimes, then the async code can
set that up on its own, but that should not affect the case that
cares.

Really, this is fundamental, and really, the crypto interfaces got this wrong.

This is in fact _so_ fundamental that the only possible reason you can
disagree is because you don't care about reality or fundamentals, and
you only care about the small particular hardware niche you work in
and nothing else.

You really should think about this a bit.

> However, if you're doing bulk crypto like network packet processing
> (as Wireguard does!) or disk/filesystem encryption, then that cipher
> allocation only happens once every blue moon and the overhead for
> that is totally *irrelevant* as it is amortized over many hours or
> days of runtime.

This is not true. It's not true because the overhead happens ALL THE TIME.

And in 99.9% of all cases there are no upsides from the hw crypto,
because the hardware DOES NOT EXIST.

You think the "common case" is that hardware encryption case, but see
above. It's really not.

And when you _do_ have HW encryption, you could do the indirection.

But that's not an argument for always having the indirection.

What indirection am I talking about?

There's multiple levels of indirection in the existing bad crypto interfaces:

 (a) the data structures themselves. This is things like keys and
state storage, both of which are (often) small enough that they would
be better off on a stack, or embedded in the data structures of the
callers.

 (b) the calling conventions. This is things like indirection -
usually several levels - just to find the function pointer to call to,
and then an indirect call to that function pointer.

and both of those are actively bad things when you don't have those
hardware accelerators.

When you *do* have them, you don't care. Everybody agrees about that.
But you're ignoring the big white elephant in the room, which is that
the hw really is very rare in the end, even if it were to exist at
all.

> While I generally dislike this whole hype of storing stuff in
> textual formats like XML and JSON and then wasting lots of CPU
> cycles on parsing that, I've learned to appreciate the power of
> these textual Crypto API templates, as they allow a hardware
> accelerator to advertise complex combined operations as single
> atomic calls, amortizing the communication overhead between SW
> and HW. It's actually very flexible and powerful!

BUT IT IS FUNDAMENTALLY BADLY DESIGNED!

Really.

You can get the advantages of hw-accelerated crypto with good designs.
The current crypto layer is not that.

The current crypto layer simply has indirection at the wrong level.

Here's how it should have been done:

 - make the interfaces be direct calls to the crypto you know you want.

 - make the basic key and state buffer be explicit and let people
allocate them on their own stacks or whatever

"But what about hw acceleration?"

 - add a single indirect private pointer that the direct calls can use
for their own state IF THEY HAVE REASON TO

 - make the direct crypto calls just have a couple of conditionals
inside of them

Why? Direct calls with a couple of conditionals are really cheap for
the non-accelerated case. MUCH cheaper than the indirection overhead
(both on a state level and on a "crypto description" level) that the
current code has.

Seriously. The hw accelerated crypto won't care about the "call a
static routine" part. The hw accelerated crypto won't care about the
"I need to allocate a copy of the key because I can't have it on
stack, and need to have it in a DMA'able region". The hw accelerated
crypto won't care about the two extra instructions that do "do I have
any extra state at all, or should I just do the synchronous CPU
version" before it gets called through some indirect pointer.

So there is absolutely NO DOWNSIDE for hw accelerated crypto to just
do it right, and use an interface like this:

       if (!chacha20poly1305_decrypt_sg(sg, sg, skb->len, NULL, 0,
                                        PACKET_CB(skb)->nonce, key->key,
                                        simd_context))
               return false;

because for the hw accelerated case the costs are all elsewhere.

But for synchronous encryption code on the CPU? Avoiding the
indirection can be a huge win. Avoiding allocations, extra cachelines,
all that overhead. Avoiding indirect calls entirely, because doing a
few conditional branches (that will predict perfectly) on the state
will be a lot more efficient, both in direct CPU cycles and in things
like I$ etc.

In contrast, forcing people to use this model:

       if (unlikely(crypto_aead_reqsize(key->tfm) > 0)) {
               req = aead_request_alloc(key->tfm, GFP_ATOMIC);
               if (!req)
                       return false;
       } else {
               req = &stackreq;
               aead_request_set_tfm(req, key->tfm);
       }

       aead_request_set_ad(req, 0);
       aead_request_set_callback(req, 0, NULL, NULL);
       aead_request_set_crypt(req, sg, sg, skb->len,
                              (u8 *)&PACKET_CB(skb)->ivpad);
       err = crypto_aead_decrypt(req);
       if (unlikely(req != &stackreq))
               aead_request_free(req);
       if (err)
               return false;

isn't going to help anybody. It sure as hell doesn't help the
CPU-synchronous case, and see above: it doesn't even help the hw
accelerated case. It could have had _all_ that "tfm" work behind a
private pointer that the CPU case never touches except to see "ok,
it's NULL, I don't have any".

See?

The interface *should* be that chacha20poly1305_decrypt_sg() library
interface, just give it a private pointer it can use and update. Then,
*internally* if can do something like

     bool chacha20poly1305_decrypt_sg(...)
     {
             struct cc20p1305_ptr *state = *state_p;
             if (state) {
                     .. do basically the above complex thing ..
                     return ret; .. or fall back to sw if the hw
queues are full..
             }
             .. do the CPU only thing..
     }

and now you'd have no extra obverhead for the no-hw-accel case, you'd
have a more pleasant interface to use, and you could still use hw
accel if you wanted to.

THIS is why I say that the crypto interface is bad. It was designed
for the wrong objectives. It was designed purely for a SSL-like model
where you do a complex key and algorithm exchange dance, and you
simply don't know ahead of time what crypto you are even using.

And yes, that "I'm doing the SSL thing" used to be a major use of
encryption. I understand why it happened. It was what people did in
the 90's. People thought it was a good idea back then, and it was also
most of the hw acceleration world.

And yes, in that model of "I don't have a clue of what crypto I'm even
using" the model works fine. But honestly, if you can't admit to
yourself that it's wrong for the case where you _do_ know the
algorithm, you have some serious blinders on.

Just from a user standpoint, do you seriously think users _like_
having to do the above 15+ lines of code, vs the single function call?

The crypto interface really isn't pleasant, and you're wrong to
believe that it really helps. The hw acceleration capability could
have been abstracted away, instead of making that indirection be front
and center.

And again - I do realize the historical reasons for it. But
understanding that doesn't magically make it wonderful.

                 Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
