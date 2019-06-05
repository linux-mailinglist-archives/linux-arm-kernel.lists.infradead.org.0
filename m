Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 991BC36533
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 22:15:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O6Y5U9oYsJ49GiaF+DkkppD9HGE9SiPbltLdIJD2VuQ=; b=AqOzZMOg4gO/gP
	wAZnC9zuROjlxRpVh7U3Hi+OafUH5Zrj2D6G0pH6/i0Z+3Qpr7l99kUYfS4719w7OtgSw3yf2FW+O
	+RY/LT++mC6UCQZ6vUA+7r1LRTYk/u/QTD+6CxX2c9oxsd0M6IvgkhRyr3/glPUmmEwk05FGZRrjV
	04qp2OhdLAW9wu4UXNInAhT32qT9ZEvCrNgYdURjUQ8MH8PElpFPl0pk+xkB9dddF6V0wR6LK8m6N
	sJwOLb4piY2Djf6uPrvZJfD1dC7l5WaQRu5cEqJ/ef3IjkPoHx2HQNL2ldv0CzowJsfG6WK93ovdw
	/2+vLhO4Wcsrip21mhug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYcJb-0006ea-7X; Wed, 05 Jun 2019 20:15:19 +0000
Received: from mail-it1-f176.google.com ([209.85.166.176])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYcJU-0006dc-8X; Wed, 05 Jun 2019 20:15:13 +0000
Received: by mail-it1-f176.google.com with SMTP id a186so5583533itg.0;
 Wed, 05 Jun 2019 13:15:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=THJJt/ZPhh8isKdn2NsQHGAKZfNn4iulXXsjjcZVkJk=;
 b=dlz7wkrjiC/bC/xubwrzJJ1CO8HNWpGnkFWwgJv+GyzrS9l/UAQiws9/ye4sacG6Ld
 sXi4EiQGsFCtMdzLBZclwrQJT2vuENfUTnKqqFbZAqLkSGFIF0Xf+N6KGjmhf8FIq0Cd
 bnBu6EyKOIsgmJNRSSzFxOVYyr+dyCakLdbjnhfdYJNitsAlaHwf2fIQe/bMfI6T8aU+
 1hlUWYSncnjufwMQDP8a1fpRY8SZyw3O51vfMt7PAbvcf5C+DFgJaV1AQ4mpQaH+CsbN
 Q8VWwEBfNRr0/zh7TjDQpjN4iOcL2aaIIjqgCZ0vZh1pCZ6eXmNgD8mCiAJDkE4c/XY7
 fasQ==
X-Gm-Message-State: APjAAAV6B2acVREHYm55SH1/2+et446op27Hfh3MsMVLPBevdobCbZwm
 M2iQHjI9kskGuJRWwsXSNkFxYUYF2kcNOEVs1QA=
X-Google-Smtp-Source: APXvYqyrpsndryg2pdcv8bRbnFKvQOW5n7ws+8amqaHflUu9NqIphSTk1hfXgnbNdWzwKOBlue4Rts3JPGsdQ7vzs78=
X-Received: by 2002:a02:a001:: with SMTP id a1mr28751687jah.115.1559765710777; 
 Wed, 05 Jun 2019 13:15:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190412105320.2924-1-kernel@esmil.dk>
 <20190508103358.5C7EB440010@finisterre.sirena.org.uk>
 <CANBLGcxiXR7KqKn4U-2PgefuxpBFX=yR06cw6A5GEALuqa54FA@mail.gmail.com>
 <20190605195511.GX2456@sirena.org.uk>
In-Reply-To: <20190605195511.GX2456@sirena.org.uk>
From: Emil Renner Berthing <kernel@esmil.dk>
Date: Wed, 5 Jun 2019 22:14:59 +0200
Message-ID: <CANBLGcwE_KfwJ=-FKNJ9RzrH58FVcmyxAR9niWQRubjM0pZgWA@mail.gmail.com>
Subject: Re: Applied "spi: rockchip: turn down tx dma bursts" to the spi tree
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_131512_303175_DE743D52 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.176 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (emil.renner.berthing[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Heiko Stuebner <heiko@sntech.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Vicente Bergas <vicencb@gmail.com>, linux-spi@vger.kernel.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 5 Jun 2019 at 21:55, Mark Brown <broonie@kernel.org> wrote:
>
> On Wed, Jun 05, 2019 at 09:36:44PM +0200, Emil Renner Berthing wrote:
> > On Wed, 8 May 2019 at 12:34, Mark Brown <broonie@kernel.org> wrote:
>
> > >    spi: rockchip: turn down tx dma bursts
>
> > I've tried looking in the for-next and for-5.x branches here, and I
> > can't seem to find this patch.
> > Am I missing something?
>
> > It fixes a problem introduced in 4.19, so it'd be nice if it could
> > make it to stable trees eventually.
>
> 47300728fb213486a830565d2af49da967c9d16a is in my tree.  When it reaches
> Linus' tree send a request to Greg for it to be backported if none of
> the stable automation picks it up.

You're absolutely right, sorry about the noise.

Thanks.
/Emil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
