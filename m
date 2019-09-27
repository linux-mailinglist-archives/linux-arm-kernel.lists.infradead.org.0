Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A4F3BFCB7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 03:31:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gol2pF+sDIqYbxZenY5dvhBBWzgc+mSNVHejvKxFT1M=; b=OyX1XDkH3WvKDr
	xZq+396vVFFQIM/R2E7j0ITAq8+zoNEexOFFBTIb+GiqVuT/WurFJBHFYnyJAsN0P3A9lRXqeB0gd
	FcR+VHcvJd1QfdfJarZtDZ75OXG6X8M241YS+SQ0O4DsFQDAfkU0bET70ihsbTqCGNop+aN17J9QY
	scTsryrcNQa7akezAVCYULXcpyAORpbXkBjsJ9lCKlsVC3L8+CzTRkQ3ftcTkeJlWWx42lsV/3f0+
	vvRDCrGUGuelVYsc4jzC8xmMC+IxEb0ADHgPM10QkKR88CzT6VTRD41FRQLPPZRP4488BnYLdnFl+
	98a0iJpEysNBNLbwG24w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDf6H-00034J-N5; Fri, 27 Sep 2019 01:31:13 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDf65-00033o-Py
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 01:31:03 +0000
Received: by mail-lf1-x144.google.com with SMTP id c195so607443lfg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 18:30:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Y/kNRa+FZLOFlIwuCXVz7nJiD6HA2dI+YJ9/E6wCcQ4=;
 b=TVHyiGBDvae6bZXGebhK/blHgPNDjYfumORGT+FpcUBXfboYigbCjBueMnw3bBb7L6
 g7hfpEIO29H1AJ3VvzodmMvDz6YoOOInaCxs+zhXJ4G5oUM2MEaoAtVDu2+GYod5vpio
 EQF9WIp691oAklRXwcgbwGjj9XLQHHXpCTYdw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Y/kNRa+FZLOFlIwuCXVz7nJiD6HA2dI+YJ9/E6wCcQ4=;
 b=KL+UmmCS7Hftzjf5qWww+4VKi6n5F3z4OlweemcN8Kw28AhhI2tCZHhglTBQVfdCgK
 VvL9HdnJY3rX09DACPdYZzMcroI/XiYy1Swp5GXUlh+X3gIBlCu5VB1yIQ8iLB4c2y0f
 Oqj8ApNpGHru+42c7KdUJqCaGWmoUQkqwFLyWBlnCNOU2ftuodjL0RQNW2q6AsgMkHJw
 gbGS4bD5uX5RcvxZkQn/oU9N1w+oAMn52smCVOhe/bRleUOJcJOpGufDc1FlwGZt/Xof
 vR9RBWA6K1GMFzhSaj50NZwmDpp/w+yP74HjaXrqeDdo/xUs6OcZRwwksg1qvDRD+ieh
 DGXw==
X-Gm-Message-State: APjAAAXyRm8RleB8VchX3EIbIi+XitweyHYrDqgAwBCaClkBBYTcxnRw
 0U6dvFoIitNVEgMt7PLSuUUSLpOfuQ0=
X-Google-Smtp-Source: APXvYqyfKV1ZV+JGX8FFH0RCipgGZnvMdel8G1teoY3RgsMevbWQLQbqK3pc0Zp0Lt/9i8iE+hFaOw==
X-Received: by 2002:ac2:44c8:: with SMTP id d8mr870209lfm.101.1569547855727;
 Thu, 26 Sep 2019 18:30:55 -0700 (PDT)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com.
 [209.85.208.178])
 by smtp.gmail.com with ESMTPSA id m18sm170596lfb.73.2019.09.26.18.30.54
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 26 Sep 2019 18:30:54 -0700 (PDT)
Received: by mail-lj1-f178.google.com with SMTP id y3so824445ljj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 18:30:54 -0700 (PDT)
X-Received: by 2002:a2e:3e07:: with SMTP id l7mr959811lja.180.1569547853755;
 Thu, 26 Sep 2019 18:30:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <20190925161255.1871-19-ard.biesheuvel@linaro.org>
 <CAHk-=wjYsbxSiV_XKWV3BwGvau_hUvQiQHLOoc7vLUZt0Wqzfw@mail.gmail.com>
 <CH2PR20MB29680F87B32BBF0495720172CA860@CH2PR20MB2968.namprd20.prod.outlook.com>
 <CAHk-=wgR_KsYw2GmZwkG3GmtX6nbyj0LEi7rSqC+uFi3ScTYcw@mail.gmail.com>
 <MN2PR20MB297317D9870A3B93B5E506C9CA810@MN2PR20MB2973.namprd20.prod.outlook.com>
In-Reply-To: <MN2PR20MB297317D9870A3B93B5E506C9CA810@MN2PR20MB2973.namprd20.prod.outlook.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 26 Sep 2019 18:30:37 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjr1w7x9Rjre_ALnDLASYNjsEHxu6VJpk4eUwZXN0ntqw@mail.gmail.com>
Message-ID: <CAHk-=wjr1w7x9Rjre_ALnDLASYNjsEHxu6VJpk4eUwZXN0ntqw@mail.gmail.com>
Subject: Re: [RFC PATCH 18/18] net: wireguard - switch to crypto API for
 packet encryption
To: Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_183101_870827_5C927C03 
X-CRM114-Status: GOOD (  33.85  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Thu, Sep 26, 2019 at 5:15 PM Pascal Van Leeuwen
<pvanleeuwen@verimatrix.com> wrote:
>
> That remark is just very stupid. The hardware ALREADY exists, and
> more hardware is in the pipeline. Once this stuff is designed in, it
> usually stays in for many years to come. And these are chips sold in
> _serious_ quantities, to be used in things like wireless routers and
> DSL, cable and FTTH modems, 5G base stations, etc. etc.

Yes, I very much mentioned routers. I believe those can happen much
more quickly.

But I would very much hope that that is not the only situation where
you'd see wireguard used.

I'd want to see wireguard in an end-to-end situation from the very
client hardware. So laptops, phones, desktops. Not the untrusted (to
me) hw in between.

> No, these are just the routers going into *everyone's* home. And 5G
> basestations arriving at every other street corner. I wouldn't call
> that rare, exactly.

That's fine for a corporate tunnel between devices. Which is certainly
one use case for wireguard.

But if you want VPN for your own needs for security, you want it at
the _client_. Not at the router box. So that case really does matter.

And I really don't see the hardware happening in that space. So the
bad crypto interfaces only make the client _worse_.

See?

But on to the arguments that we actually agree on:

> Hey, no argument there. I don't see any good reason why the key can't
> be on the stack. I doubt any hardware would be able to DMA that as-is
> directly, and in any case, key changes should be infrequent, so copying
> it to some DMA buffer should not be a performance problem.
> So maybe that's an area for improvement: allow that to be on the stack.

It's not even just the stack. It's really that the crypto interfaces
are *designed* so that you have to allocate things separately, and
can't embed these things in your own data structures.

And they are that way, because the crypto interfaces aren't actually
about (just) hiding the hardware interface: they are about hiding
_all_ the encryption details.

There's no way to say "hey, I know the crypto I use, I know the key
size I have, I know the state size it needs, I can preallocate those
AS PART of my own data structures".

Because the interface is designed to be so "generic" that you simply
can't do those things, they are all external allocations, which is
inevitably slower when you don't have hardware.

And you've shown that you don't care about that "don't have hardware"
situation, and seem to think it's the only case that matters. That's
your job, after all.

But however much you try to claim otherwise, there's all these
situations where the hardware just isn't there, and the crypto
interface just forces nasty overhead for absolutely no good reason.

> I already explained the reasons for _not_ doing direct calls above.

And I've tried to explain how direct calls that do the synchronous
thing efficiently would be possible, but then _if_ there is hardware,
they can then fall back to an async interface.

> > So there is absolutely NO DOWNSIDE for hw accelerated crypto to just
> > do it right, and use an interface like this:
> >
> >        if (!chacha20poly1305_decrypt_sg(sg, sg, skb->len, NULL, 0,
> >                                         PACKET_CB(skb)->nonce, key->key,
> >                                         simd_context))
> >                return false;
> >
> Well, for one thing, a HW API should not expect the result to be
> available when the function call returns. (if that's what you
> mean here). That would just be WRONG.

Right. But that also shouldn't mean that when you have synchronous
hardware (ie CPU) you have to set everything up even though it will
never be used.

Put another way: even with hardware acceleration, the queuing
interface should be a simple "do this" interface.

The current crypto interface is basically something that requires all
the setup up-front, whether it's needed or not. And it forces those
very inconvenient and slow external allocations.

And I'm saying that causes problems, because it fundamentally means
that you can't do a good job for the common CPU  case, because you're
paying all those costs even when you need absolutely none of them.
Both at setup time, but also at run-time due to the extra indirection
and cache misses etc.

> Again, HW acceleration does not depend on the indirection _at all_,
> that's there for entirely different purposes I explained above.
> HW acceleration _does_ depend greatly on a truly async ifc though.

Can you realize that the world isn't just all hw acceleration?

Can you admit that the current crypto interface is just horrid for the
non-accelerated case?

Can you perhaps then also think that "maybe there are better models".

> So queue requests on one side, handle results from the other side
> in some callback func off of an interrupt handler.

Actually, what you can do - and what people *have* done - is to admit
that the synchronous case is real and important, and then design
interfaces that work for that one too.

You don't need to allocate resources ahead of time, and you don't have
to disallow just having the state buffer allocated by the caller.

So here's the *wrong* way to do it (and the way that crypto does it):

 - dynamically allocate buffers at "init time"

 - fill in "callback fields" etc before starting the crypto, whether
they are needed or not

 - call a "decrypt" function that then uses the indirect functions you
set up at init time, and possibly waits for it (or calls the callbacks
you set up)

note how it's all this "state machine" model where you add data to the
state machine, and at some point you say "execute" and then either you
wait for things or you get callbacks.

That makes sense for a hw crypto engine. It's how a lot of them work, after all.

But it makes _zero_ sense for the synchronous case. You did a lot of
extra work for that case, and because it was all a styate machine, you
did it particularly inefficiently: not only do you have those separate
allocations with pointer following, the "decrypt()" call ends up doing
an indirect call to the CPU implementation, which is just quite slow
to begin with, particularly in this day and age with retpoline etc.

So what's the alternative?

I claim that a good interface would accept that "Oh, a lot of cases
will be synchronous, and a lot of cases use one fixed
encryption/decryption model".

And it's quite doable. Instead of having those callback fields and
indirection etc, you could have something more akin to this:

 - let the caller know what the state size is and allocate the
synchronous state in its own data structures

 - let the caller just call a static "decrypt_xyz()" function for xyz
decryptrion.

 - if you end up doing it synchronously, that function just returns
"done". No overhead. No extra allocations. No unnecessary stuff. Just
do it, using the buffers provided. End of story. Efficient and simple.

 - BUT.

 - any hardware could have registered itself for "I can do xyz", and
the decrypt_xyz() function would know about those, and *if* it has a
list of accelerators (hopefully sorted by preference etc), it would
try to use them. And if they take the job (they might not - maybe
their queues are full, maybe they don't have room for new keys at the
moment, which might be a separate setup from the queues), the
"decrypt_xyz()" function returns a _cookie_ for that job. It's
probably a pre-allocated one (the hw accelerator might preallocate a
fixed number of in-progress data structures).

And once you have that cookie, and you see "ok, I didn't get the
answer immediately" only THEN do you start filling in things like
callback stuff, or maybe you set up a wait-queue and start waiting for
it, or whatever".

See the difference in models? One forces that asynchronous model, and
actively penalizes the synchronous one.

The other _allows_ an asynchronous model, but is fine with a synchronous one.

> >        aead_request_set_callback(req, 0, NULL, NULL);
> >
> This is just inevitable for HW acceration ...

See above. It really isn't. You could do it *after* the fact, when
you've gotten that ticket from the hardware. Then you say "ok, if the
ticket is done, use these callbacks". Or "I'll now wait for this
ticket to be done" (which is what the above does by setting the
callbacks to zero).

Wouldn't that be lovely for a user?

I suspect it would be a nice model for a hw accelerator too. If you
have full queues or have problems allocating new memory or whatever,
you just let the code fall back to the synchronous interface.

> Trust me, I have whole list of things I don't like about the
> API myself, it's not exacty ideal for HW acceleration  either.

That';s the thing. It's actively detrimental for "I have no HW acceleration".

And apparently it's not optimal for you guys either.

> But the point is - there are those case where you _don't_ know and
> _that_ is what the Crypto API is for. And just generally, crypto
> really _should_ be switchable.

It's very much not what wireguard does.

And honestly, most of the switchable ones have caused way more
security problems than they have "fixed" by being switchable.

                 Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
