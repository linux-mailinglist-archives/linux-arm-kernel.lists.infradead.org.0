Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3794195873
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 14:59:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bbJP/5MTN2QhEh8Qqm4QjGScoZtEd97q9JOzykECLu4=; b=rvy6pfaMkkm37C
	WQ18oxwdAbrgW92CoGWR+TyGmfkw6NMSbbcaIQN8YuRoAd8NohvBBecB/HLetv+vrtAmKv3Dyr3Y4
	xAMACrcbiHXDsC3l0KQrcVda8p/msY+L+Xn2nh/fwkpG+PkoWRhgDLbEMCQfSZlru0hvmWWagtUSO
	VGfq4MpY/XUWBPEhKr21As1aoSk0uciJA83pNFj5gXAdmiWX6HxFKRws+N6u/PPl3hsxmiGAYiipG
	PZsOj8SYcIJ4IyJy7raiM40HaXq8tmGGYPeIRcGxBk8Xy3F/E3L9FrYbt6OxJuSV2od8LryWJIoMd
	MYY55WroHrcZ8Ia/CbGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHpWT-0007aX-8Q; Fri, 27 Mar 2020 13:59:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHpWK-0007a8-0Q
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 13:59:37 +0000
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
 [209.85.166.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 42CD920774
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 13:59:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585317575;
 bh=Jd38g6hUpeXc65bqRs8jSstB3VYR7iFsF7Sq09uHuFE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Kq6bKdsTnXU54O+VAwdQ9sU+Usqa4o+pnFQ4TWAw5Gs8C05SJm3wjuSHnWpeU3Ke2
 FFqufDWQehtmzGIwEuSonSobMJYlvpVFXIDyXgg5AfsnYkolSzQrogMlZDZCyZysBI
 iFQEcCrgtddyTwOlg+jw6xH9dC6Zy/42NIAsrv1M=
Received: by mail-io1-f53.google.com with SMTP id q9so9923373iod.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 06:59:35 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3vkvtzmfDwGLCpmy3sT3swzX4/noxEKXNNyQF8PBWrbZFHjKg/
 7TktEs9SQ3nzoSxCaxBxlkqG8GqKzrvxWzwAypo=
X-Google-Smtp-Source: ADFU+vvoKNJuf52tKIR5b28M0Ugzsaf01+axqgNcB5Qpi8DxZYVCKV6OE47xlXkAUtUITI1kZs/qBqeBH+mmsi++DMo=
X-Received: by 2002:a02:c985:: with SMTP id b5mr12408162jap.71.1585317574578; 
 Fri, 27 Mar 2020 06:59:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200327105906.2665-1-ardb@kernel.org>
 <20200327105906.2665-2-ardb@kernel.org>
 <CAMuHMdWewhg9nDNrKw7F6f3uajxvw_mBZs17cZL64FQ8VrvrNA@mail.gmail.com>
In-Reply-To: <CAMuHMdWewhg9nDNrKw7F6f3uajxvw_mBZs17cZL64FQ8VrvrNA@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 27 Mar 2020 14:59:23 +0100
X-Gmail-Original-Message-ID: <CAMj1kXF2nqGNL+YnfrPqRH3+ceYkpUqJzU4wbR1HMdmPZ+crqA@mail.gmail.com>
Message-ID: <CAMj1kXF2nqGNL+YnfrPqRH3+ceYkpUqJzU4wbR1HMdmPZ+crqA@mail.gmail.com>
Subject: Re: [PATCH 1/5] ARM: decompressor: move headroom variable out of LC0
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_065936_074531_0F3B4222 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-efi <linux-efi@vger.kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Nicolas Pitre <nico@fluxnic.net>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hallo Geert,

On Fri, 27 Mar 2020 at 14:23, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Ard,
>
> Thanks for your patch!
>
> On Fri, Mar 27, 2020 at 11:59 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> > Before breaking up LC0 into different pieces, move out the variable
> > that is already place relative (given that it subtracts 'restart' in
>
> placed
>

Actually, what I meant here was 'place-relative', i.e., the expression
subtracts two symbol offsets, whereas the others are absolute, link
time values that need to be fixed up according to the actual runtime
location of the code.


> > the expression) and so its value does not need to be added to the
> > runtime address of the LC0 symbol itself.
> >
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
>

Thanks,
Ard.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
