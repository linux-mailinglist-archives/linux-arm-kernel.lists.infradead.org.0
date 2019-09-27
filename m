Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09939BFD5A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 04:54:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vH4n9IzTT+Fz1xXNazjAB35fRgW0jNkBfVWqu72Evl0=; b=jPkeKav4sCVcMU
	dIXt2lHuWxfLx3d6rDEMaTt99mNXZiUREH2mT+zT8BE9i84Rh/Smf7CrmiSSAFrNf0K0gN/V2qol8
	HOL61uEPkInZtjBfs7PLN4UBBoC2CZAw59mybjVA040onHyhNPrViWQXRoEKuNM0czJYP0Tu07zOz
	u4inWYWlHQdVXj5r3WQlMgrHD6vZc48tUrwcaIBPRsTe0Cwk3NOikdWFejopiRQirSnMLrA2xmBT5
	Nhmtym3TpNQGMA12YYaiMSQpPFWowYj53wh5suyguFUFdS53Qdpq8Q6yRBL4bMzkN5VxfiGOEll71
	l/++AhDFFkCF00NKh4tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDgOz-0004lx-V2; Fri, 27 Sep 2019 02:54:38 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDgOn-0004lX-V2
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 02:54:27 +0000
Received: by mail-lj1-x244.google.com with SMTP id v24so969724ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 19:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=izprtTacDNeg/U0ozkxIJBmawaAbDPW9muDV/dWzvVY=;
 b=abf33mtRxt+TnpRpol1admztTaB2ANRYfIf06LL3Lr5koIfkLhJoEtK3jZumD3RuBH
 +P5INGOa46VPzThQlBpDZ+cAIYDeY46piId4HdvRTTg8h+eXIwNd0L7mRaO4GW+QPPeg
 PGX9Jug0rJHzno8LLPHlzUdGMzpETpO937XFw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=izprtTacDNeg/U0ozkxIJBmawaAbDPW9muDV/dWzvVY=;
 b=GeL5512oRbSYOrIl4/NUsg72d7xtfhTeOixHNLUGfQTF5OOlUVPDzwztZB8xuhGCtr
 PShUbooiBP5b3AH/idzq5JxJX+1mnFe95cz7mUkRInD9GTUdkeqiEP9O+5dlPfRjBUIt
 DOqEU90oEyIaOxaq9JkmCnJGI4uOv0qRiy+ZomUweCQvBOYoAVk+W2o2p1XMV/TXyjZl
 LEa7eVpkbEvFhtYxXgeoOoXNP/VdemRYZERWQ4uszTVf1ivmvsayxy7zO03Xni5cvpYl
 j4hMYeaw9WjxlsMKl/0nseDMzEiPRROPUsjO8R5Ked5d+q5Ebx7ddcmT7xnrcofCLeFh
 eamA==
X-Gm-Message-State: APjAAAWP9/cDhDv471yprJCFKuYGyRRmN/dniyqbHNi0mcuNafOGkL/B
 d+Bgylbs+C6CYjx2OFcIEKDS/jKkrmU=
X-Google-Smtp-Source: APXvYqwUDLeanhXrHIXE3bENEg2zIiN/9+5PZ04S4g3BA/2BTlZsah8PqFTVKHGY1HHae5maljn1jg==
X-Received: by 2002:a2e:9a0c:: with SMTP id o12mr1088579lji.204.1569552863614; 
 Thu, 26 Sep 2019 19:54:23 -0700 (PDT)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com.
 [209.85.208.178])
 by smtp.gmail.com with ESMTPSA id a23sm207427lfl.66.2019.09.26.19.54.21
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 26 Sep 2019 19:54:23 -0700 (PDT)
Received: by mail-lj1-f178.google.com with SMTP id j19so984583lja.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 19:54:21 -0700 (PDT)
X-Received: by 2002:a2e:2c02:: with SMTP id s2mr1146724ljs.156.1569552859807; 
 Thu, 26 Sep 2019 19:54:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <20190925161255.1871-19-ard.biesheuvel@linaro.org>
 <CAHk-=wjYsbxSiV_XKWV3BwGvau_hUvQiQHLOoc7vLUZt0Wqzfw@mail.gmail.com>
 <CH2PR20MB29680F87B32BBF0495720172CA860@CH2PR20MB2968.namprd20.prod.outlook.com>
 <CAHk-=wgR_KsYw2GmZwkG3GmtX6nbyj0LEi7rSqC+uFi3ScTYcw@mail.gmail.com>
 <MN2PR20MB297317D9870A3B93B5E506C9CA810@MN2PR20MB2973.namprd20.prod.outlook.com>
 <CAHk-=wjr1w7x9Rjre_ALnDLASYNjsEHxu6VJpk4eUwZXN0ntqw@mail.gmail.com>
In-Reply-To: <CAHk-=wjr1w7x9Rjre_ALnDLASYNjsEHxu6VJpk4eUwZXN0ntqw@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 26 Sep 2019 19:54:03 -0700
X-Gmail-Original-Message-ID: <CAHk-=whqWh8ebZ7ryEv5tKKtO5VpOj2rWVy7wV+aHWGO7m9gAw@mail.gmail.com>
Message-ID: <CAHk-=whqWh8ebZ7ryEv5tKKtO5VpOj2rWVy7wV+aHWGO7m9gAw@mail.gmail.com>
Subject: Re: [RFC PATCH 18/18] net: wireguard - switch to crypto API for
 packet encryption
To: Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_195426_023214_0B9C117C 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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

On Thu, Sep 26, 2019 at 6:30 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> And once you have that cookie, and you see "ok, I didn't get the
> answer immediately" only THEN do you start filling in things like
> callback stuff, or maybe you set up a wait-queue and start waiting for
> it, or whatever".

Side note: almost nobody does this.

Almost every single async interface I've ever seen ends up being "only
designed for async".

And I think the reason is that everybody first does the simply
synchronous interfaces, and people start using those, and a lot of
people are perfectly happy with them. They are simple, and they work
fine for the huge majority of users.

And then somebody comes along and says "no, _we_ need to do this
asynchronously", and by definition that person does *not* care for the
synchronous case, since that interface already existed and was simpler
and already was mostly sufficient for the people who used it, and so
the async interface ends up being _only_ designed for the new async
workflow. Because that whole new world was written with just that case
is mind, and the synchronous case clearly didn't matter.

So then you end up with that kind of dichotomous situation, where you
have a strict black-and-white either-synchronous-or-async model.

And then some people - quite reasonably - just want the simplicity of
the synchronous code and it performs better for them because the
interfaces are simpler and better suited to their lack of extra work.

And other people feel they need the async code, because they can take
advantage of it.

And never the twain shall meet, because the async interface is
actively _bad_ for the people who have sync workloads and the sync
interface doesn't work for the async people.

Non-crypto example: [p]read() vs aio_read(). They do the same thing
(on a high level) apart from that sync/async issue. And there's no way
to get the best of both worlds.

Doing aio_read() on something that is already cached is actively much
worse than just doing a synchronous read() of cached data.

But aio_read() _can_ be much better if you know your workload doesn't
cache well and read() blocks too much for you.

There's no "read_potentially_async()" interface that just does the
synchronous read for any cached portion of the data, and then delays
just the IO parts and returns a "here, I gave you X bytes right now,
use this cookie to wait for the rest".

Maybe nobody would use it. But it really should be possibly to have
interfaces where a good synchronous implementation is _possible_
without the extra overhead, while also allowing async implementations.

                Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
