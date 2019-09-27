Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F22A7BFE32
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 06:37:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0gG4dC6RQ/3EKJ4o4rqp5TYzJBDuWH0Umm8Apjw3r9o=; b=kwxdPSBbJu11Lz
	kZ29HHGewCxreYlFlZFIIesc60vcOjbI+AaLbRKB5ZPkMTxtbdOeSxQkPqJNT+TPqggJ97ph/ehS6
	Br+MTp2PjraB8B6Fdbcll3a1qt+flpHYWusrGaTBuI3ZKufoROUrdip7JDbRw+r8qittcjdM7iEG8
	HMGAXPeOpX1Doaad3SNSfVEx/Rqj9NsMxkTZXvKxI+zl1hpJ+dheKm3+CtnOwjgc0yLO2S5kZtUWm
	9lx8CCfKS4aXBCW6elo4PNKEOvCM3PJk9O0wyMYpNnQzKgdKM4vhpODFHaO418bBxCLgqfR8c1fjq
	y6aVSuAj9NG21L8x4fpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDi05-0004w9-F7; Fri, 27 Sep 2019 04:37:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDhzj-0004vp-J2
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 04:36:40 +0000
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
 [209.85.128.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AEC4A207FF
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 04:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569558999;
 bh=HWXGSg8v7PMtX2AtP+Cj10Yp3jFpXmeRJ7sWexKkbRA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=BgiVQRF5ok2sLpmM7sYDzoJc4cPQhJZftyNrpCPOx2Gc8HNz0u8iiBrsiuE0G1T7Z
 B61SfNfq3UnTgXqh8Jb2qLFw1j3d8yTz4nzhVUSHIXvXFc94w88V9Qq02tXLx64yFR
 IzQpj50mjsfnVgY1+wvAhT7PmFNs//sZuvqJBDXQ=
Received: by mail-wm1-f49.google.com with SMTP id a6so4974846wma.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 21:36:38 -0700 (PDT)
X-Gm-Message-State: APjAAAWmlOKXg4zmRcPcuOoGijceZWN8xW9biBEEBp0GxVfBXCTzepEY
 ELsrHRCGlfWtgWHY3t3rCvK5Sg81Xqhw2yVy+Vp/Ng==
X-Google-Smtp-Source: APXvYqzj1HLQsMd2PmSxW2B6qKm90Gu2HeZkUPjkQm7cbVdmcR6dOh2UevoBS7cKL6nqBIdpydaXzL7jhyzpQEXBD3Y=
X-Received: by 2002:a1c:608b:: with SMTP id u133mr5519478wmb.27.1569558997223; 
 Thu, 26 Sep 2019 21:36:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <20190925161255.1871-19-ard.biesheuvel@linaro.org>
 <CAHk-=wjYsbxSiV_XKWV3BwGvau_hUvQiQHLOoc7vLUZt0Wqzfw@mail.gmail.com>
 <CH2PR20MB29680F87B32BBF0495720172CA860@CH2PR20MB2968.namprd20.prod.outlook.com>
 <CAHk-=wgR_KsYw2GmZwkG3GmtX6nbyj0LEi7rSqC+uFi3ScTYcw@mail.gmail.com>
 <MN2PR20MB297317D9870A3B93B5E506C9CA810@MN2PR20MB2973.namprd20.prod.outlook.com>
 <CAHk-=wjr1w7x9Rjre_ALnDLASYNjsEHxu6VJpk4eUwZXN0ntqw@mail.gmail.com>
In-Reply-To: <CAHk-=wjr1w7x9Rjre_ALnDLASYNjsEHxu6VJpk4eUwZXN0ntqw@mail.gmail.com>
From: Andy Lutomirski <luto@kernel.org>
Date: Thu, 26 Sep 2019 21:36:26 -0700
X-Gmail-Original-Message-ID: <CALCETrVPr6g=vx2Ero2VDZpYzvTTzfdTWqNjTo1JNYzQBRy37A@mail.gmail.com>
Message-ID: <CALCETrVPr6g=vx2Ero2VDZpYzvTTzfdTWqNjTo1JNYzQBRy37A@mail.gmail.com>
Subject: Re: [RFC PATCH 18/18] net: wireguard - switch to crypto API for
 packet encryption
To: Linus Torvalds <torvalds@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_213639_670955_F6002E35 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Will Deacon <will@kernel.org>,
 David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> On Sep 26, 2019, at 6:38 PM, Linus Torvalds <torvalds@linux-foundation.org> wrote:
>
> - let the caller know what the state size is and allocate the
> synchronous state in its own data structures
>
> - let the caller just call a static "decrypt_xyz()" function for xyz
> decryptrion.
>
> - if you end up doing it synchronously, that function just returns
> "done". No overhead. No extra allocations. No unnecessary stuff. Just
> do it, using the buffers provided. End of story. Efficient and simple.
>
> - BUT.
>
> - any hardware could have registered itself for "I can do xyz", and
> the decrypt_xyz() function would know about those, and *if* it has a
> list of accelerators (hopefully sorted by preference etc), it would
> try to use them. And if they take the job (they might not - maybe
> their queues are full, maybe they don't have room for new keys at the
> moment, which might be a separate setup from the queues), the
> "decrypt_xyz()" function returns a _cookie_ for that job. It's
> probably a pre-allocated one (the hw accelerator might preallocate a
> fixed number of in-progress data structures).

To really do this right, I think this doesn't go far enough.  Suppose
I'm trying to implement send() over a VPN very efficiently.  I want to
do, roughly, this:

void __user *buf, etc;

if (crypto api thinks async is good) {
  copy buf to some kernel memory;
  set up a scatterlist;
  do it async with this callback;
} else {
  do the crypto synchronously, from *user* memory, straight to kernel memory;
  (or, if that's too complicated, maybe copy in little chunks to a
little stack buffer.
   setting up a scatterlist is a waste of time.)
}

I don't know if the network code is structured in a way to make this
work easily, and the API would be more complex, but it could be nice
and fast.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
