Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E155BE82C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 00:16:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oL5gIWGotAQW6753l05vDRubDbciNCO5mDnH3FNhGaQ=; b=XpvZa7O1dBvXhr
	2GLxf4cOd3y7bOe0/DsPjQ353Lifakgt6bn/dfu+HBE0NzaZH+yZ1yo38LPO4IdlDXgeRd9AmGu4O
	fUwnhCNgL3jhb3u4FlBrdQ0LfXYK2umb2yjF4jx/FPIGC0+5UFMQh6l/MdM1Ckfc8T26HJzklXzVr
	ohgGyVrAHfGTT2M+DeK8CSxKsssEY7udtuoE2bJ8Jim55dAV6+HIXSMrTiNUiWREEptmNTZ0ek0ch
	v5NeGKCXxG6cRR90PoMBSOXYN4dubeZ7IXMKNcuXEZc3YjrZFpmK+6ZaUSjEFpKcCpnS6qiILccKV
	14o5YP4Gcu/ybwAyEZHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDFZt-0005wP-EU; Wed, 25 Sep 2019 22:16:05 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDFZi-0005w5-09
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 22:15:55 +0000
Received: by mail-lj1-x243.google.com with SMTP id v24so35095ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 15:15:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=q6rnzFynrN+pSeGnR7/tGRjyet/+hxqle5CmHd7xYJk=;
 b=HxnimenHWTMNeNCGuD7LMOv0S2WRtXkK1gwrLqAj5ojqup2bH3tBj26KVIAaMSJ16I
 oqDYp/UgKk7dHAiRP7RP+4QaK5+DYzCzBK89mV562txZaDl/x2geGE/NEyOB2XBNx9RR
 D/nQagUEh8NbBSmaHcL5Cz24qvBwP16UT7LdE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=q6rnzFynrN+pSeGnR7/tGRjyet/+hxqle5CmHd7xYJk=;
 b=qYAs7GyF/auI1YtM3+mveUKx9tben1xGwGLBJdh83CITLppFo/vxO3mhj1HxKKLp8P
 Xh/htY/cnpuGfIVXPFEedX+AfA1BbBbbcXfpJSoOP8QlG6nesmVlWaq5MXiZWIvSUAN4
 +r5Wif5f3fwq2UJC8ZqMOtzcS1O7Rqi3u8QZAiYmj4UEqbMnQpkZpArYZKpjVvQeSwri
 6nIdRubA6FBtwZgpVWN2B4nF7HwnxQqaXLYX9pSsj2BEAad/d6kjoQaykkhFfoiWsbE5
 hOvUsVDCDKupqP0r/cg3dGTj5u6dE2emA/p4n15jwB+eEDVHUwTRZhFVsHS5cNvVEMFH
 z+bQ==
X-Gm-Message-State: APjAAAVAM/oNuQxkIdEGEbD8JeZuPM7yn2j4Ffx8ACngzgefCZDmKNnK
 CTj2etCsbCN8ckCA9Us2WtWt4Q6pqOE=
X-Google-Smtp-Source: APXvYqzPX9fUDYqdae91kLDNeSGqvaJ9oloh0VpF80bPnCIvWDA6VysY2e9OFr1C6etGoy9wdOo1Ig==
X-Received: by 2002:a2e:b4c4:: with SMTP id r4mr355532ljm.69.1569449751475;
 Wed, 25 Sep 2019 15:15:51 -0700 (PDT)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com.
 [209.85.167.45])
 by smtp.gmail.com with ESMTPSA id x2sm23778ljj.94.2019.09.25.15.15.50
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Sep 2019 15:15:50 -0700 (PDT)
Received: by mail-lf1-f45.google.com with SMTP id t8so122944lfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 15:15:50 -0700 (PDT)
X-Received: by 2002:a19:7d55:: with SMTP id y82mr159667lfc.106.1569449749917; 
 Wed, 25 Sep 2019 15:15:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <20190925161255.1871-19-ard.biesheuvel@linaro.org>
In-Reply-To: <20190925161255.1871-19-ard.biesheuvel@linaro.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 25 Sep 2019 15:15:34 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjYsbxSiV_XKWV3BwGvau_hUvQiQHLOoc7vLUZt0Wqzfw@mail.gmail.com>
Message-ID: <CAHk-=wjYsbxSiV_XKWV3BwGvau_hUvQiQHLOoc7vLUZt0Wqzfw@mail.gmail.com>
Subject: Re: [RFC PATCH 18/18] net: wireguard - switch to crypto API for
 packet encryption
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_151554_069132_9F3776E8 
X-CRM114-Status: GOOD (  24.16  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Eric Biggers <ebiggers@google.com>, Greg KH <gregkh@linuxfoundation.org>,
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

On Wed, Sep 25, 2019 at 9:14 AM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:
>
> Replace the chacha20poly1305() library calls with invocations of the
> RFC7539 AEAD, as implemented by the generic chacha20poly1305 template.

Honestly, the other patches look fine to me from what I've seen (with
the small note I had in a separate email for 11/18), but this one I
consider just nasty, and a prime example of why people hate those
crypto lookup routines.

Some of it is just the fundamental and pointless silly indirection,
that just makes things harder to read, less efficient, and less
straightforward.

That's exemplified by this part of the patch:

>  struct noise_symmetric_key {
> -       u8 key[NOISE_SYMMETRIC_KEY_LEN];
> +       struct crypto_aead *tfm;

which is just one of those "we know what we want and we just want to
use it directly" things, and then the crypto indirection comes along
and makes that simple inline allocation of a small constant size
(afaik it is CHACHA20POLY1305_KEY_SIZE, which is 32) be another
allocation entirely.

And it's some random odd non-typed thing too, so then you have that
silly and stupid dynamic allocation using a name lookup:

   crypto_alloc_aead("rfc7539(chacha20,poly1305)", 0, CRYPTO_ALG_ASYNC);

to create what used to be (and should be) a simple allocation that was
has a static type and was just part of the code.

It also ends up doing other bad things, ie that packet-time

+       if (unlikely(crypto_aead_reqsize(key->tfm) > 0)) {
+               req = aead_request_alloc(key->tfm, GFP_ATOMIC);
+               if (!req)
+                       return false;

thing that hopefully _is_ unlikely, but that's just more potential
breakage from that whole async crypto interface.

This is what people do *not* want to do, and why people often don't
like the crypto interfaces.

It's exactly why we then have those "bare" routines as a library where
people just want to access the low-level hashing or whatever directly.

So please don't do things like this for an initial import.

Leave the thing alone, and just use the direct and synchronous static
crypto library interface tjhat you imported in patch 14/18 (but see
below about the incomplete import).

Now, later on, if you can *show* that some async implementation really
really helps, and you have numbers for it, and you can convince people
that the above kind of indirection is _worth_ it, then that's a second
phase. But don't make code uglier without those actual numbers.

Because it's not just uglier and has that silly extra indirection and
potential allocation problems, this part just looks very fragile
indeed:

> The nonce related changes are there to address the mismatch between the
> 96-bit nonce (aka IV) that the rfc7539() template expects, and the 64-bit
> nonce that WireGuard uses.
...
>  struct packet_cb {
> -       u64 nonce;
> -       struct noise_keypair *keypair;
>         atomic_t state;
> +       __le32 ivpad;                   /* pad 64-bit nonce to 96 bits */
> +       __le64 nonce;
> +       struct noise_keypair *keypair;
>         u32 mtu;
>         u8 ds;
>  };

The above is subtle and silently depends on the struct layout.

It really really shouldn't.

Can it be acceptable doing something like that? Yeah, but you really
should be making it very explicit, perhaps using

  struct {
        __le32 ivpad;
        __le64 nonce;
   } __packed;

or something like that.

Because right now you're depending on particular layout of those fields:

> +       aead_request_set_crypt(req, sg, sg, skb->len,
> +                              (u8 *)&PACKET_CB(skb)->ivpad);

but honestly, that's not ok at all.

Somebody makes a slight change to that struct, and it might continue
to work fine on x86-32 (where 64-bit values are only 32-bit aligned)
but subtly break on other architectures.

Also, you changed how the nonce works from being in CPU byte order to
be explicitly LE. That may be ok, and looks like it might be a
cleanup, but honestly I think it should have been done as a separate
patch.

So could you please update that patch 14/18 to also have that
synchronous chacha20poly1305_decrypt_sg() interface, and then just
drop this 18/18 for now?

That would mean that

 (a) you wouldn't need this patch, and you can then do that as a
separate second phase once you have numbers and it can stand on its
own.

 (b) you'd actually have something that *builds* when  you import the
main wireguard patch in 15/18

because right now it looks like you're not only forcing this async
interface with the unnecessary indirection, you're also basically
having a tree that doesn't even build or work for a couple of commits.

And I'm still not convinced (a) ever makes sense - the overhead of any
accelerator is just high enought that I doubt you'll have numbers -
performance _or_ power.

But even if you're right that it might be a power advantage on some
platform, that wouldn't make it an advantage on other platforms. Maybe
it could be done as a config option where you can opt in to the async
interface when that makes sense - but not force the indirection and
extra allocations when it doesn't. As a separate patch, something like
that doesn't sound horrendous (and I think that's also an argument for
doing that CPU->LE change as an independent change).

Yes, yes, there's also that 17/18 that switches over to a different
header file location and Kconfig names but that could easily be folded
into 15/18 and then it would all be bisectable.

Alternatively, maybe 15/18 could be done with wireguard disabled in
the Kconfig (just to make the patch identical), and then 17/18 enables
it when it compiles with a big note about how you wanted to keep 15/18
pristine to make the changes obvious.

Hmm?

I don't really have a dog in this fight, but on the whole I really
liked the series. But this 18/18 raised my heckles, and I think I
understand why it might raise the heckles of the wireguard people.

Please?

     Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
