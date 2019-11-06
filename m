Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD200F105F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 08:33:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BCtvLK8qHjUCKelUeKb90Cub0DV1dG6v+Qlo94VvH4s=; b=O/2tQme9bKVBhg
	DYnEnWr1CWHYy6/vft7X3yQkcrpcT139jsYhvyB7ZrhLSSx8x1sGjOiVuLeVzrEBEwGrBLqSeVVVC
	SgS7nwQTORK8cXXBokNPbOcDj4pqv032Cdvy/7a5DIU1GMAexMsx4jeYX5Cz4JFqGRCNrE2vCULnp
	6oR4lZrPwoMSUoKp/wWxvcbDWzYcXI/CWjxhWTTBSmL73kKHLP4Fc35vSdbrH4Q4YgaOnOgXdwk4s
	keHWU13JpXHestAT164t4Dhf6LwcVfM5oIGpIJXbU3qPo+RuH9bwW0dSgomu+kgFlsgL3+qX0czpD
	C9X70PyXfUTr2YTozy5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSFoz-0001uD-6J; Wed, 06 Nov 2019 07:33:41 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSFoq-0001th-IJ
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 07:33:33 +0000
Received: by mail-vk1-xa43.google.com with SMTP id u79so5381037vke.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 23:33:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=benyossef-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fbVrCNlPLaDTmcKHIN3LtBZK21JIiPNghUTOX5jQAi0=;
 b=tXq9+cEdTgcUL/rTgW92c4PNWlxnqdy9ufzkcqPbyt0BmkFpZwtDr2SKTAZ2B2adPA
 F+XDqVbx7RMa+5XEnQg/NkxPXT5p1qsf2Il96TWl2Xo9SSM9hUuVYMdG4OSux/yBuUE8
 /lt+ifyc1imI3ov8PQ2W9bkBv+/tM6c/VcGIy/P/kI10Cz+YzkEMxuP+yQO8wBG0+vvv
 4n+EMc34+wsK62rjmo/p32ZrKZm00eMyRRnbQWc2dTB1jGdGHtZvt3NtPvauqSi+hfbZ
 LBqtHWQ+Da8ZxU44fzKnYQQKozNVLB2Tu1/P25qp5db4qn1FRQ9kkdL7iUFiBnTCljtW
 Vuzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fbVrCNlPLaDTmcKHIN3LtBZK21JIiPNghUTOX5jQAi0=;
 b=SOFWU5mTdbZEMC7l45UuPIcrOfQqbNjGwcYfq8e43Oas1LHkeBJMMOSDuOWfkd3LOs
 c2OUsgNZ1nUpJsp4dvWKzrVGJ7ojMGhzwPdXw6CzBp3a+q93Hwrgnf7U8OelqR2rLVMR
 /p65lQexeteFFfJpLq+2ooKIbPBMzVx7hkgUSLxde3vnAlXjeCE1HlSYlC1UbZ7QIlRq
 dcewlBAFmBU6v83wDVGf87+7ZxoIsPBxVhzsFekWuzcXceOAj3CIygwZGHrY4SjTsjBK
 CX35h+pMzpRRmyIHjrpBowlq+Hka9C2Omag9uT2lTa+IUmZMBSJWq70O1zt/cpeKBrxn
 VmPg==
X-Gm-Message-State: APjAAAWOi1z6FEvp1/z8XTh1t3IwPdq1hIUhBe/4vUDJBbOzSCf+K+3m
 wjlfImP+wtkD5CFboAf76yzXh9M8cXC4hwM/Xizv9g==
X-Google-Smtp-Source: APXvYqw32qEeWfeBSD+BM8iRa57I4atoH5ZwU4QbRCyWX48m3mTUA1rFPOiMiu2Vt5iwu172Y/DEdSEJXJ81xV0PdLY=
X-Received: by 2002:ac5:c756:: with SMTP id b22mr628305vkn.2.1573025611342;
 Tue, 05 Nov 2019 23:33:31 -0800 (PST)
MIME-Version: 1.0
References: <20191017122549.4634-1-t-kristo@ti.com>
 <20191017122549.4634-10-t-kristo@ti.com>
 <CAOtvUMeBXjDBhSVgMOW=hshEx_AkNPg-Zk2c2jCDzY8vyXWW5g@mail.gmail.com>
 <076f0bc6-ad04-9543-db02-d7c7060db036@ti.com>
In-Reply-To: <076f0bc6-ad04-9543-db02-d7c7060db036@ti.com>
From: Gilad Ben-Yossef <gilad@benyossef.com>
Date: Wed, 6 Nov 2019 09:33:20 +0200
Message-ID: <CAOtvUMc7pbtPAPUbEmz_MTHmB9LboQVdgG-t9tHCr=biEbFuUQ@mail.gmail.com>
Subject: Re: [PATCH 09/10] crypto: add timeout to crypto_wait_req
To: Tero Kristo <t-kristo@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_233332_627570_1CC1B513 
X-CRM114-Status: GOOD (  20.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Eric Biggers <ebiggers@google.com>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 linux-omap@vger.kernel.org, David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 6, 2019 at 9:25 AM Tero Kristo <t-kristo@ti.com> wrote:
>
> On 06/11/2019 08:39, Gilad Ben-Yossef wrote:
> > Hi,
> >
> >
> > On Thu, Oct 17, 2019 at 3:26 PM Tero Kristo <t-kristo@ti.com> wrote:
> >>
> >> Currently crypto_wait_req waits indefinitely for an async crypto request
> >> to complete. This is bad as it can cause for example the crypto test
> >> manager to hang without any notification as to why it has happened.
> >> Instead of waiting indefinitely, add a 1 second timeout to the call,
> >> and provide a warning print if a timeout happens.
> >
> > While the incentive is clear and positive, this suggested solution
> > creates problems of its own.
> > In many (most?) cases where we are waiting here, we are waiting for a
> > DMA operation to finish from hardware.
> > Exiting while this pending DMA operation is not finished, even with a
> > proper error return value, is dangerous because
> > unless the calling code takes great care to not release the memory the
> > DMA is being done from/to, this can have disastrous effects.
> >
> > As Eric has already mentioned, one second might seem like a long time,
> > but we don't really know if it is enough.
> >
> > How about adding a second API (ig. crypto_wait_req_timeout) which
> > supports a calee specified timeout where
> > the calle knows how to correctly deal with timeout and port the
> > relevant call sites to use this?
>
> Yeah, that would work for me. I guess we could just swap the testmgr to
> use this timeout API, as it is quite clear it should timeout rather than
> wait indefinitely, and afaics, the data buffers it uses are limited
> size. It doesn't really matter for it whether the timeout is 1 second or
> 10 seconds, as long as it eventually times out.


As long as you avoid releasing the memory used on timeout, that should
work well, I think.

Gilad

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
