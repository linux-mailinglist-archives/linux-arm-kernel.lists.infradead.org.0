Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C2DBE83A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 00:23:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cCErTJkeFi3TmHuM/8AdUlsYZ1btgbeB29Ls9Q6JX+g=; b=TtUU3rXHBNUHQL
	AJ+xF0Z8lZxLBgpjLuFXJrnJeeBN4mOsZ8dHAgKaFSa2A5r4OrmK5ksiVFwk3OIYbzGtVe2cu3qHH
	v99mMJN2QOZbJT4HL2orx0hNIz4D5njRbiUQBuAnUjG1gKkpYcbnXY+KEjwgLiNJMbIS9GakMXAMq
	bckjmHHMnhDXQzNXnrc6+yFiwY8p2Soia7TkVhIzXE3k2nOXgskJLMh66z2us8lm8t9wOPjB1SbNC
	f6GiwD2A+dv6KesjbSaVHPZiKCbQ05elLtmcScngjFXxyxAEYFN0Hl/T608PaGZx3LFnMahHuVVj5
	1Mt1ZeE+0XvskbRxOYEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDFgv-0007ql-BM; Wed, 25 Sep 2019 22:23:21 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDFgk-0007qP-NJ
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 22:23:12 +0000
Received: by mail-lj1-x241.google.com with SMTP id f5so27041ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 15:23:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v5qOYcXhFbVAr9ok1la3aDcJNeyfwo4nMbHDTfn7B8k=;
 b=BC9rIMQ8jDC8E5RYdrmbTTws/8Ex8klxwwHit6B1Xey1ht2vUc5LFQN2i9CsZuf1Yl
 JbQcs5O2Mi5rd5J130Nrl1fe+qewldtiQi/8jb5iFdcQE/rZoQ9ClYd9ru0/LF/GE9sY
 PoLue1+l+DGJJXSfAABo09GAeg105zLL5q0uM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v5qOYcXhFbVAr9ok1la3aDcJNeyfwo4nMbHDTfn7B8k=;
 b=GicQTqqMqqJV3x35/PUTv148HWWKAbfKG4nQCt1uSBobcphu1Z9wPfZcFDQP58KtBd
 aSqjmVHXkYYAqSe9SMWH7uZTu5B5PUtkxzoLyQD7hzdSpe54/wXPjXS6vnDAPBYr/WIP
 ubKFHIjCjlSbiRPjS4ndPm/G4rAJ4izqeWOF+ZmH29oXxD9RwMr6u0lnE5MjGOCxTGV9
 wQdwyzq26zL5fEAvHgduGInAdWrvjcgHSplctX1XEtu6W6Vxp2GOgTCeRQZTwW0o8+V0
 Ntj6OPCfrYUmeRo1Ll0/bgEh/sv0tMJo9WPOiHRFl+CLMCdxJhxUAYxmBI5G7GQNjX7e
 S+rA==
X-Gm-Message-State: APjAAAXvbBwR7N7dVaQj2s3DhZQCc0z0CxU4yk9WNv+myzGO5/v1qL5G
 4lAGVcHZA3FjfNZni8Noq16r/ts8e+o=
X-Google-Smtp-Source: APXvYqy7nsmCj0uEJC62Mf4nnVB9HkOaokgWjZbS8LeouPFSUL0r//FYPODrZtF61gUd/c2Kw00tvw==
X-Received: by 2002:a2e:4e12:: with SMTP id c18mr343876ljb.47.1569450186186;
 Wed, 25 Sep 2019 15:23:06 -0700 (PDT)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com.
 [209.85.167.44])
 by smtp.gmail.com with ESMTPSA id z18sm94768ljh.17.2019.09.25.15.23.04
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Sep 2019 15:23:05 -0700 (PDT)
Received: by mail-lf1-f44.google.com with SMTP id w6so173083lfl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 15:23:04 -0700 (PDT)
X-Received: by 2002:a19:2489:: with SMTP id k131mr171406lfk.52.1569450184592; 
 Wed, 25 Sep 2019 15:23:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <20190925161255.1871-19-ard.biesheuvel@linaro.org>
 <CAHk-=wjYsbxSiV_XKWV3BwGvau_hUvQiQHLOoc7vLUZt0Wqzfw@mail.gmail.com>
In-Reply-To: <CAHk-=wjYsbxSiV_XKWV3BwGvau_hUvQiQHLOoc7vLUZt0Wqzfw@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 25 Sep 2019 15:22:48 -0700
X-Gmail-Original-Message-ID: <CAHk-=widERJcUqSSe3HoQ4-YE6HuXz7QuKyE6-2-wbXbn7PwZQ@mail.gmail.com>
Message-ID: <CAHk-=widERJcUqSSe3HoQ4-YE6HuXz7QuKyE6-2-wbXbn7PwZQ@mail.gmail.com>
Subject: Re: [RFC PATCH 18/18] net: wireguard - switch to crypto API for
 packet encryption
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_152310_782792_746EAF82 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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

On Wed, Sep 25, 2019 at 3:15 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> I don't really have a dog in this fight, but on the whole I really
> liked the series. But this 18/18 raised my heckles, and I think I
> understand why it might raise the heckles of the wireguard people.

To be honest, I guess I _do_ have a dog in the fight, namely the thing
that I'd love to see wireguard merged.

And this series otherwise looked non-offensive to me. Maybe not
everybody is hugely happy with all the details, but it looks like a
good sane "let's use as much of the existing models as possible" that
nobody should absolutely hate.

                   Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
