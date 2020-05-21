Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D231DCDDF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 15:24:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t6amzSGbZYZfxkgAFBWLtGTSBoArhxOvYluxL5qeeco=; b=r3qa9FA++8Pj6E
	5U7uIHVR5OEZ320RdhW9xYWM7pnyFploVBIV/fy8Kz2Pl35th8TzJFgBic5LMpdqKQrQtMV15/tb7
	LIr5BCl8yH4z+Y0W26gFF9Jy6PSpcbCScmUCKnlNNFWJAZfUZgOzKbg7XXOw2klWXUzKB/UEcRCv7
	eVwqmUFspTLrTekgxF0GXjv7B6zkWftq/qd303DHGClJ1/tkpeyEZlCjlCN0jb1w1/adxdIQTXbBC
	AAu74lX+6za7d0hvl1Qh7nc8NUvbSc2J4YJX+Q3E7H3ZdKe2PM9nT+RCOYYj/N0/WijX5Bksg3pqh
	D/8FHQzH7n7TIi83Tj+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jblB2-0005tn-JL; Thu, 21 May 2020 13:24:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jblAv-0005t8-Gh
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 13:23:55 +0000
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
 [209.85.166.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CB9242078B
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 13:23:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590067432;
 bh=RheZr/ACF50PLrTLkwoyqU2PDIsZGaDPXMpYDueZCDU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=fsUEuLUMqHtuRSm/PyyGYHOzY1/CvCuc1NTmkHUzg5VCgrJTLSjC6XkJMic3/S3U/
 ZdihNuqxFeF0qLkJ0xxQz0dStFzD4nrNsIi9R0H1hKyGIk9JjHNN+1NOR9nYe2AiyO
 d47LTKjkWBXyyd6YWUl0f8f65tb1iTVqlrEfPRlw=
Received: by mail-io1-f48.google.com with SMTP id 79so7412280iou.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 06:23:52 -0700 (PDT)
X-Gm-Message-State: AOAM532sgZn4zQgQegXzmOV5ENBi0lI4LqrBuSSQMv0ol+EgOEY+cFT6
 zvDndOED0Cgm3W85nK8/3vwCEcR53njZ6wruvRc=
X-Google-Smtp-Source: ABdhPJwaIQMUfYp1lPhoz8vPxi1MQQFHmLWewLp0OWy6/cyhVbyU0V/aHNV2+SpXxkAeotpL1k1aqpoqE45s6N8cffQ=
X-Received: by 2002:a05:6638:dc3:: with SMTP id
 m3mr3675051jaj.98.1590067432179; 
 Thu, 21 May 2020 06:23:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200519190211.76855-1-ardb@kernel.org>
 <16394356.0UTfFWEGjO@tauon.chronox.de>
 <CAMj1kXF=Duh1AsAQy+aLWMcJPQ4RFL5p9-Mnmn-XAiCkzyGFbg@mail.gmail.com>
 <2010567.jSmZeKYv2B@tauon.chronox.de>
 <CAMj1kXGNqo=d-hgK=0zBZCoJYgSxxhhm=Jdk2gAGXPo1-KSCgA@mail.gmail.com>
 <CAOtvUMc8PhToLDVO+Y4NVhVkA6B7yndp3gbaeaQZJtrW_NSzaw@mail.gmail.com>
In-Reply-To: <CAOtvUMc8PhToLDVO+Y4NVhVkA6B7yndp3gbaeaQZJtrW_NSzaw@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 21 May 2020 15:23:41 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFJJcg-YeSw+_FDfyOvjQTJ6w1YyKqWaxCWSjDhRLEDoA@mail.gmail.com>
Message-ID: <CAMj1kXFJJcg-YeSw+_FDfyOvjQTJ6w1YyKqWaxCWSjDhRLEDoA@mail.gmail.com>
Subject: Re: [RFC/RFT PATCH 0/2] crypto: add CTS output IVs for arm64 and
 testmgr
To: Gilad Ben-Yossef <gilad@benyossef.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_062353_591878_4D1B2BAA 
X-CRM114-Status: GOOD (  21.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stephan Mueller <smueller@chronox.de>, Eric Biggers <ebiggers@kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 21 May 2020 at 15:01, Gilad Ben-Yossef <gilad@benyossef.com> wrote:
>
> Hi Ard,
>
> Thank you for looping me in.
>
> On Wed, May 20, 2020 at 10:09 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Wed, 20 May 2020 at 09:01, Stephan Mueller <smueller@chronox.de> wrote:
> > >
> > > Am Mittwoch, 20. Mai 2020, 08:54:10 CEST schrieb Ard Biesheuvel:
> > >
> > > Hi Ard,
> > >
> > > > On Wed, 20 May 2020 at 08:47, Stephan Mueller <smueller@chronox.de> wrote:
> > ...
> > > > > The state of all block chaining modes we currently have is defined with
> > > > > the
> > > > > IV. That is the reason why I mentioned it can be implemented stateless
> > > > > when I am able to get the IV output from the previous operation.
> > > >
> > > > But it is simply the same as the penultimate block of ciphertext. So
> > > > you can simply capture it after encrypt, or before decrypt. There is
> > > > really no need to rely on the CTS transformation to pass it back to
> > > > you via the buffer that is only specified to provide an input to the
> > > > CTS transform.
> > >
> > > Let me recheck that as I am not fully sure on that one. But if it can be
> > > handled that way, it would make life easier.
> >
> > Please refer to patch 2. The .iv_out test vectors were all simply
> > copied from the appropriate offset into the associated .ctext member.
>
> Not surprisingly since to the best of my understanding this behaviour
> is not strictly specified, ccree currently fails the IV output check
> with the 2nd version of the patch.
>

That is what I suspected, hence the cc:

> If I understand you correctly, the expected output IV is simply the
> next to last block of the ciphertext?

Yes. But this happens to work for the generic case because the CTS
driver itself requires the encapsulated CBC mode to return the output
IV, which is simply passed through back to the caller. CTS mode itself
does not specify any kind of output IV, so we should not rely on this
behavior.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
