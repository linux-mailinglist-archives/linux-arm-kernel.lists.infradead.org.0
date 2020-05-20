Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1081DAB9B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 09:10:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pmj5RPq1cOYDvjUy/8Smsvuy2Qa3nKegHIp36mMbWqQ=; b=lP+8wtkcxhdo92
	rIEzgVmf6jBJmQTPFphiZ3rUkaBiowrHRCkvCgjlmy43x+w+sSReel8Hv8Co2RMBDWWGdEA4i0MsN
	LZC7Jig8Vi4BpLuhIJxI5r9fZdfoAfmOltxwsK43XMwI6hiVY/7DMi5mTSWyZohjci5MRuWdBkq/A
	t/QXuA/taXjL6pKK37oTzAl4aMwD9IFQQw4bZ4zcACBvdVhIsRyyRyYWd4VfTJGt0agTGe2goIbzU
	Ae0+LXrfagazCkNi0AHN+g9xpWbuK4H/k4NEPvL0qlct2o13w0g12r41DQf9lRMGFC9VLNsKPedqj
	BWC1fPADkFoPo8RL/j7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbIrf-0002kc-8C; Wed, 20 May 2020 07:10:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbIrU-0002kG-2R
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 07:09:57 +0000
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com
 [209.85.166.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9A288207ED
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 07:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589958595;
 bh=4sY4q9CroctrXjv/UwpUkw02mR25DQOr6OzfqIelbjE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=RJO6YFoh2r5xPKUS6+X6N3myoxI8Wb9pyEgiYSYFMZF8Rp6LabwukwbmDBcQofqA1
 c9JyndZq0tRfuaoGNGRYAkvPltuf4oeg5/BA9O4tA3yILprA1eofYt718Ob2Shbe6h
 9sC95/7QYTZgKKPwqpNa2CwHm3f1k4WZ1EKysEAw=
Received: by mail-io1-f52.google.com with SMTP id w25so1985748iol.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 00:09:55 -0700 (PDT)
X-Gm-Message-State: AOAM533aoRxasti1j2XKhjAKTmIwUoq8CkVsg2Un7fUiREvgj97kOkV5
 nJWVO86QEYFXZAdYfIvU6xb46E1pliSvC5oiyWM=
X-Google-Smtp-Source: ABdhPJyOXjsFOkYhmYHT7iFdcXVegTXxIRAIBTriQ0zKyf5yT8sidmor3hf/bZlBjVkaEA/C8+qtSjXgUCVFcgWgCcE=
X-Received: by 2002:a05:6638:41b:: with SMTP id
 q27mr2996869jap.68.1589958594942; 
 Wed, 20 May 2020 00:09:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200519190211.76855-1-ardb@kernel.org>
 <16394356.0UTfFWEGjO@tauon.chronox.de>
 <CAMj1kXF=Duh1AsAQy+aLWMcJPQ4RFL5p9-Mnmn-XAiCkzyGFbg@mail.gmail.com>
 <2010567.jSmZeKYv2B@tauon.chronox.de>
In-Reply-To: <2010567.jSmZeKYv2B@tauon.chronox.de>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 20 May 2020 09:09:44 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGNqo=d-hgK=0zBZCoJYgSxxhhm=Jdk2gAGXPo1-KSCgA@mail.gmail.com>
Message-ID: <CAMj1kXGNqo=d-hgK=0zBZCoJYgSxxhhm=Jdk2gAGXPo1-KSCgA@mail.gmail.com>
Subject: Re: [RFC/RFT PATCH 0/2] crypto: add CTS output IVs for arm64 and
 testmgr
To: Stephan Mueller <smueller@chronox.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_000956_125002_0644C03A 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Eric Biggers <ebiggers@kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 20 May 2020 at 09:01, Stephan Mueller <smueller@chronox.de> wrote:
>
> Am Mittwoch, 20. Mai 2020, 08:54:10 CEST schrieb Ard Biesheuvel:
>
> Hi Ard,
>
> > On Wed, 20 May 2020 at 08:47, Stephan Mueller <smueller@chronox.de> wrote:
...
> > > The state of all block chaining modes we currently have is defined with
> > > the
> > > IV. That is the reason why I mentioned it can be implemented stateless
> > > when I am able to get the IV output from the previous operation.
> >
> > But it is simply the same as the penultimate block of ciphertext. So
> > you can simply capture it after encrypt, or before decrypt. There is
> > really no need to rely on the CTS transformation to pass it back to
> > you via the buffer that is only specified to provide an input to the
> > CTS transform.
>
> Let me recheck that as I am not fully sure on that one. But if it can be
> handled that way, it would make life easier.

Please refer to patch 2. The .iv_out test vectors were all simply
copied from the appropriate offset into the associated .ctext member.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
