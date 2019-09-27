Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E071BFE34
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 06:37:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YHuQAD30sIXEakynReN0SYdTYA4v1veY0PXSpJ2cftg=; b=tRHJpdng+3RSjR
	m+Fmmndm0Ph2oA8w9lz0Ce88nM4D3186C+H6m0evg2iM9kpmBZmkPinYiOSLFPJcuqY6VYLOorlIw
	sTGSKvmUSZ+OrIV1FjSAehseEeQnalxfDZ1A3uzQVI5Tgv9fQ1Zt2Pdp4ZkmJ54J4JwKSfZE9A7W8
	gOd+jXY9SnTBXS0errTjF2lm3H7JcrFrz0own7pVnvstQJWfKTrd1KRhEhQIH2mtFyEt51adOpxyo
	LsuY4X81EewmLMMgV8zNClaLG6bjH6hpJDvcnczt2wehsHEL82yn1bQcjmHnvtfv/60Kg5OGleTaK
	ZOXDbOOoP0X4R8KHulBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDi0n-0005Bh-9z; Fri, 27 Sep 2019 04:37:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDi0Y-0005B1-2D
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 04:37:31 +0000
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7A7162146E
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 04:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569559049;
 bh=eokZR0QU/MEdg5xNwIt/H+MlFZDTmtpGw9NN9iq+r7Q=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=a2/hT5LZEzF1NtCWpl4GeZNpM9S/9uQQq2vNlZvQHkKujHjSfIZqzcJIfO45PWYAe
 PVTG1p8QdY0zW6dry/lwz7g/WE+Y75xGrKgNiZMbA6f7SloblPvryF1G8ntr2pJvHw
 +M43KpM6meyxkcmaZn7DygcEKB8RN/sjqd/GdvuU=
Received: by mail-wr1-f47.google.com with SMTP id n14so1067147wrw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 21:37:29 -0700 (PDT)
X-Gm-Message-State: APjAAAWqhgTwfFSnDvCj7LN3IZ1/v7a5AbnF8OvDmgkWj/1eWqwfmLml
 zgJ3Vmy64VtauxXwCGChwMdIV90kl8nZT5JnZlQdQg==
X-Google-Smtp-Source: APXvYqwrftlm7qI7fsd0ba+Wsits6X8BpdrHVxzp1NpMrMUyP6+l8wrnnBSOLZK2x/KKKP1mETeG4SdEZLQw91H7YwM=
X-Received: by 2002:adf:e908:: with SMTP id f8mr1212909wrm.210.1569559048029; 
 Thu, 26 Sep 2019 21:37:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <20190925161255.1871-19-ard.biesheuvel@linaro.org>
 <CAHk-=wjYsbxSiV_XKWV3BwGvau_hUvQiQHLOoc7vLUZt0Wqzfw@mail.gmail.com>
 <CH2PR20MB29680F87B32BBF0495720172CA860@CH2PR20MB2968.namprd20.prod.outlook.com>
 <CAHk-=wgR_KsYw2GmZwkG3GmtX6nbyj0LEi7rSqC+uFi3ScTYcw@mail.gmail.com>
 <MN2PR20MB297317D9870A3B93B5E506C9CA810@MN2PR20MB2973.namprd20.prod.outlook.com>
 <CAHk-=wjr1w7x9Rjre_ALnDLASYNjsEHxu6VJpk4eUwZXN0ntqw@mail.gmail.com>
 <CAHk-=whqWh8ebZ7ryEv5tKKtO5VpOj2rWVy7wV+aHWGO7m9gAw@mail.gmail.com>
 <20190927035319.GA23566@gondor.apana.org.au>
In-Reply-To: <20190927035319.GA23566@gondor.apana.org.au>
From: Andy Lutomirski <luto@kernel.org>
Date: Thu, 26 Sep 2019 21:37:16 -0700
X-Gmail-Original-Message-ID: <CALCETrW28rDxLs+UOO+k5gfHJZHzy_xra-e0f6kBp6YdeWA36A@mail.gmail.com>
Message-ID: <CALCETrW28rDxLs+UOO+k5gfHJZHzy_xra-e0f6kBp6YdeWA36A@mail.gmail.com>
Subject: Re: [RFC PATCH 18/18] net: wireguard - switch to crypto API for
 packet encryption
To: Herbert Xu <herbert@gondor.apana.org.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_213730_124376_3E3D67C7 
X-CRM114-Status: GOOD (  13.45  )
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
 Catalin Marinas <catalin.marinas@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg KH <gregkh@linuxfoundation.org>, Eric Biggers <ebiggers@google.com>,
 Will Deacon <will@kernel.org>, Samuel Neves <sneves@dei.uc.pt>,
 Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 26, 2019 at 8:54 PM Herbert Xu <herbert@gondor.apana.org.au> wrote:
>
> On Thu, Sep 26, 2019 at 07:54:03PM -0700, Linus Torvalds wrote:
> >
> > Side note: almost nobody does this.
> >
> > Almost every single async interface I've ever seen ends up being "only
> > designed for async".
> >
> > And I think the reason is that everybody first does the simply
> > synchronous interfaces, and people start using those, and a lot of
> > people are perfectly happy with them. They are simple, and they work
> > fine for the huge majority of users.
>
> The crypto API is not the way it is because of async.  In fact, the
> crypto API started out as sync only and async was essentially
> bolted on top with minimial changes.

Then what's up with the insistence on using physical addresses for so
many of the buffers?

--Andy

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
