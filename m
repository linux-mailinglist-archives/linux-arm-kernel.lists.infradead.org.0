Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B05BF3DE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 15:16:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/jsCUvETc3o9Vm1pEKmD8iqMpl59rjfIHSZfLyOwFrA=; b=SYwrdftp4E0OGV
	b9tJVobZHKyjEENMLjhnFbRl4SG7UONnhtvnk/ZAPD1K1kRIXV/qMURGCNm1Mp/0lluVRIt0anMmC
	uBww7KQcjAFdUfJNZIomcpkcnrgRQfgmLoge5SaMM0HVjw+X3Y6f4EtOD+R0ztT/odnJN6kkzaHnR
	dC7RwToyhtuEQVO0AyJBPjQS1NrzQEzCAjnSx+whhlDs7BWu10lNQtm9Wfv1ks2Aqmj9hHRLRw9pO
	VUJx5f5XBuwSyKrzB+zwLIoIGAN4Sgo+SOPNp1s1QnwhX90I5ojK/nPq1ZtbZjnpdOWf5R0cTFZqw
	502FUy9J5EJYtcyi4BJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDTd7-0007Rz-Ry; Thu, 26 Sep 2019 13:16:22 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDTct-0007Rb-OU
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 13:16:09 +0000
Received: by mail-wm1-x344.google.com with SMTP id b24so2527984wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 06:16:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DYKCkf/9udb08zDyVDa+j9RshyXNha3pc6th2ByyF9c=;
 b=Ui7A0IxWRvD0n0EPRBZpCiL8RXAZI/9JhGIUii+M0h6Q8WYWVbYy0nUBC7r3squbUl
 irrFobTVKHJX3kf4n2zrVZeYwzoTefH4ZWP6FUhvrECNsblCL7Dqm0k7k5Udg33WQaHp
 0F3e6q2ovkiS0FX0g/BxfK45pGLxom7LBR2tdpqaU3rTF54kruEBUhnkIsP+/xwFrhVn
 Uo8ij4fKonWcV1N6ZhF5oxpZ1PwKOEeSIwy4HeUINl2afp7e43/lFpUZaiqlcxezNgXe
 d80HRJckphF7lqkcfbirFGMlowoIItQF+dcGBtm8Y5fh2hRT4U+zzPVykdybR+hNFP/H
 lYuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DYKCkf/9udb08zDyVDa+j9RshyXNha3pc6th2ByyF9c=;
 b=QTrJOXVDAc5Slz0kABCOzEu6+rMZvGKKynkY1tzmK82Azf8KpL5gop4+OyooEM8qkF
 REOZWUIg0GAXxRbyhqRBg/GPssmTM9yj9LRpHtk4BVPbv76/3tCRKp7r+KYLxbBrqTR4
 bFTiinxd/UUC9g3CRhhxHikwohlVyy4yN1wIPIewkJoxa7/GomP6neBBMM8vNIkwA34X
 aaqlZBDA6bV8gcV78emiina+u1bQZpzAOev3TGseI/xp/Zg39+JKQSb+QAdZlzDXCGDZ
 e5yVr8ZZsDVvRmlfW1HYlkhimoSGRGbXCBCW2SJOOb4D+c5Fdn3+XBoMRZjzDJemNnnj
 nN6Q==
X-Gm-Message-State: APjAAAU2XRs3V3yR773/fhvVvdv2myXFY7FZglSMDTWUHdYa5fbsCLXW
 hdCJ7gFrA9A3lUR5MBCcG1K/uHPrX+qJ17cMGVofsIqhuFI=
X-Google-Smtp-Source: APXvYqxJi0lkkMXSCOu7S2Y50VqJ9EZ89R56Po9SG6oZxbjYPkG0NwzF/unO72G5Jlie6aCd2LhWvNpvk/J3Ul2zGKg=
X-Received: by 2002:a1c:e906:: with SMTP id q6mr2812638wmc.136.1569503763943; 
 Thu, 26 Sep 2019 06:16:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <CAHmME9oDhnv7aX77oEERof0TGihk4mDe9B_A3AntaTTVsg9aoA@mail.gmail.com>
 <CAKv+Gu-RLRhwDahgvfvr2J9R+3GPM6vh4mjO73VcekusdzbuMA@mail.gmail.com>
 <MN2PR20MB29731267C4670FBD46D6C743CA860@MN2PR20MB2973.namprd20.prod.outlook.com>
In-Reply-To: <MN2PR20MB29731267C4670FBD46D6C743CA860@MN2PR20MB2973.namprd20.prod.outlook.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 26 Sep 2019 15:15:52 +0200
Message-ID: <CAKv+Gu_eNK1HFxTY379kpCpF8FQQFHEdC1Th=s5f7Fy3bebOjQ@mail.gmail.com>
Subject: Re: [RFC PATCH 00/18] crypto: wireguard using the existing crypto API
To: Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_061607_869661_84E95B2F 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Eric Biggers <ebiggers@google.com>, Greg KH <gregkh@linuxfoundation.org>,
 Samuel Neves <sneves@dei.uc.pt>, Will Deacon <will@kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 David Miller <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 26 Sep 2019 at 15:06, Pascal Van Leeuwen
<pvanleeuwen@verimatrix.com> wrote:
...
> >
> > My preference would be to address this by permitting per-request keys
> > in the AEAD layer. That way, we can instantiate the transform only
> > once, and just invoke it with the appropriate key on the hot path (and
> > avoid any per-keypair allocations)
> >
> This part I do not really understand. Why would you need to allocate a
> new transform if you change the key? Why can't you just call setkey()
> on the already allocated transform?
>

Because the single transform will be shared between all users running
on different CPUs etc, and so the key should not be part of the TFM
state but of the request state.

> >
> > It all depends on whether we are interested in supporting async
> > accelerators or not, and it is clear what my position is on this
> > point.
> >
> Maybe not for an initial upstream, but it should be a longer-term goal.
>
> >
> > What I *don't* want is to merge WireGuard with its own library based
> > crypto now, and extend that later for async accelerators once people
> > realize that we really do need that as well.
> >
> What's wrong with a step-by-step approach though? i.e. merge it with
> library calls now and then gradually work towards the goal of integrating
> (a tweaked version of) the Crypto API where that actually makes sense?
> Rome wasn't built in one day either ...
>

I should clarify: what I don't want is two frameworks in the kernel
for doing async crypto, the existing one plus a new library-based one.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
