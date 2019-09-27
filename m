Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFED1BFDE8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 06:20:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h28vjzlN5/JfN1mFezsDRl9ziD+iyjDyIome+ARZQrA=; b=d7N+qGVp5jv+/e
	WJ4EpXNGFjg1a062/V6wF1m2AOvHvgC028DtHirfezrbRbOM8hTRTKIeqKbVOkzMOMpP3r7eKBEow
	hG/J5BUzsSFbXSMzX1WL5EcHAGQTyxw6aDWr+dLPbIMrA3WkcDz1Yauhp2SWWNULm6eR79dkx01c/
	4DijfkHyPqQdU/mDEI2LsEzzGTbElKEdN19fsyuEYM4ulRM+t/iHbrbKpzx72luGkL8slM/XPc5JE
	ZR35nn6+b50R4coZdPmw/LoWaCZ5KPWTkFI96JoOLH3gJLxXfMEkQH/jPXhSOiaSgG52mBKSFVR6K
	4O3rQFcl6PLJFLfYOWtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDhk7-0008QV-A1; Fri, 27 Sep 2019 04:20:31 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDhjs-0008QB-UC
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 04:20:18 +0000
Received: by mail-lj1-x244.google.com with SMTP id y3so1091659ljj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 21:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5UH138tG9PRYMsFiBULF307JYuT/lrT57+qHytLZwTU=;
 b=bBr8IhrV4sosw8kqW0dHsTq9GgR0+dGbb+WZnt90hJKIYvZIVl9uJsc+OuNBXNvjes
 O6N01AGJP1KsO+TyFpDEMT2T7EIMNKn4xgTgO+MVoe6U95I8Y9c+kh8bIUmhNNK5h9JR
 exqx/qee3opyNYZGxe07JPuXx9b8lC0gZSeiM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5UH138tG9PRYMsFiBULF307JYuT/lrT57+qHytLZwTU=;
 b=K2yN+o7TyRvKnOH1qJ7un9EwvHJna6PTEv8b0Hg6sJSqi7PDMQyuWiMbyK8esQm8rE
 KCxVXBdfsKQBcenOO4jKaYvuxLNVnAh2xn3ngInbOlbs04w1ahHY+HFS8j8y0zVJzkW3
 ABWqGvaI6whLK1U5mC/WgI0LlblZMJBHcU8liLo6ThfCFtsU0TamzGHpLE0KcTA4Io6k
 +D6vtKBDPpwxO6e+U655ph/InlaG/yC6YKis8FIu49+skr8eHPJER5k1uOhLs/RCyypv
 wCMg3m6coAAr7ijv+MdE1OzE+wgMtYMJvvQh9eZHmj6asCO2Ua8icQgjCr5vMWA1Otyy
 +hSA==
X-Gm-Message-State: APjAAAXYXs+FCSd3huMCYs6TVAZoTlT7KspKLwuxF1I5F7Y+wZpm51oe
 VnoFmWjuSmXqIYzJb274zYO8snlP9kE=
X-Google-Smtp-Source: APXvYqx39AVR0Pa208kHBu5sPkxnwSuuZ7TllJwqZaeqy2jNfGTSHcEQ/ZZutb5zXsvcTxEna79TXg==
X-Received: by 2002:a2e:9096:: with SMTP id l22mr1246707ljg.125.1569558014590; 
 Thu, 26 Sep 2019 21:20:14 -0700 (PDT)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com.
 [209.85.167.41])
 by smtp.gmail.com with ESMTPSA id z128sm235982lfa.1.2019.09.26.21.20.14
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 26 Sep 2019 21:20:14 -0700 (PDT)
Received: by mail-lf1-f41.google.com with SMTP id r2so827751lfn.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 21:20:14 -0700 (PDT)
X-Received: by 2002:ac2:5c11:: with SMTP id r17mr1187992lfp.61.1569557603654; 
 Thu, 26 Sep 2019 21:13:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <20190925161255.1871-19-ard.biesheuvel@linaro.org>
 <CAHk-=wjYsbxSiV_XKWV3BwGvau_hUvQiQHLOoc7vLUZt0Wqzfw@mail.gmail.com>
 <CH2PR20MB29680F87B32BBF0495720172CA860@CH2PR20MB2968.namprd20.prod.outlook.com>
 <CAHk-=wgR_KsYw2GmZwkG3GmtX6nbyj0LEi7rSqC+uFi3ScTYcw@mail.gmail.com>
 <MN2PR20MB297317D9870A3B93B5E506C9CA810@MN2PR20MB2973.namprd20.prod.outlook.com>
 <CAHk-=wjr1w7x9Rjre_ALnDLASYNjsEHxu6VJpk4eUwZXN0ntqw@mail.gmail.com>
 <CAHk-=whqWh8ebZ7ryEv5tKKtO5VpOj2rWVy7wV+aHWGO7m9gAw@mail.gmail.com>
 <20190927040140.GA24370@gondor.apana.org.au>
In-Reply-To: <20190927040140.GA24370@gondor.apana.org.au>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 26 Sep 2019 21:13:07 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgJ0ZSsrCoPRKGx5a46cSWGB-Prb4wDRLR2oCeyaXyYyg@mail.gmail.com>
Message-ID: <CAHk-=wgJ0ZSsrCoPRKGx5a46cSWGB-Prb4wDRLR2oCeyaXyYyg@mail.gmail.com>
Subject: Re: [RFC PATCH 18/18] net: wireguard - switch to crypto API for
 packet encryption
To: Herbert Xu <herbert@gondor.apana.org.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_212016_995593_A6D20B02 
X-CRM114-Status: GOOD (  10.14  )
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
 Catalin Marinas <catalin.marinas@arm.com>, Arnd Bergmann <arnd@arndb.de>,
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

On Thu, Sep 26, 2019 at 9:01 PM Herbert Xu <herbert@gondor.apana.org.au> wrote:
>
> So there is really no async overhead in the crypto API AFAICS if
> you're always doing sync.  What you see as overheads are probably
> the result of having to support multiple underlying algorithms
> (not just accelerations which can indeed be handled without
> indirection at least for CPU-based ones).

Fair enough, and sounds good. The biggest overhead is that indirection
for the state data, and the fact that the code indirect calls the
actual function.

If that could be avoided by just statically saying

     crypto_xyz_encrypt()

(with the xyz being the crypto algorithm you want) and having the
state be explicit, then yes, that would remove most of the overhead.

It would still leave setting the callback fields etc that are
unnecessary for the synchronous case and that I think could be done
differently, but that's probably just a couple of stores, so not
particularly noticeable.

              Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
