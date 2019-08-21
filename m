Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 928EF971DD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 08:01:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FGDLrNhPklYlK1RqZ7zLXnu2bd7nqNbBQxyKAsdkkAc=; b=KJCElRKl1cu4By
	uoH7GP7tvJOugiWD0axXp6TrGgj5pHEuoDo75hGg1IhtRR/4EKGxFf9OT3VrJeTpfeIO21uIHfkOZ
	iox7mQy683jP7Uyw+MMwZ15wF/4/ctQ6LjRQ+kiNiuBlGH+s3m5VLjv63La3uQqt+MvUxMSntB0oP
	40d5zv5O3YMMtMsTYUM8sSL+Nr5lKG/aMNmgCqd4qTuJ6VPB2FS3rYEVnTeLUek9ul9D+y6vteAQB
	ajAi7EKhso4kVyzPStRuQmjI/8a7SzSRRJg1Jg8GbjmfpZqkpvVMTG4NbPMSJSUGUcbO6tsV76IHm
	La0/5bdvtsxSshgKQcNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Jgq-0004i9-8v; Wed, 21 Aug 2019 06:01:48 +0000
Received: from mail-ed1-f41.google.com ([209.85.208.41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0JgZ-0004gs-HV
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 06:01:33 +0000
Received: by mail-ed1-f41.google.com with SMTP id h8so1515044edv.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 23:01:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hs9Q4JQ4sAzVdPQmb3HqoJDxpZfogEn9LhSdqe880xI=;
 b=i62tLd2TF9p9zw/Wx+NWFMCAqtbdAJCccx4yAzMxbNm9Apy5jd8Mc9aSI/Ff0LBgNi
 FyAAN+v9NKwUhE1SQ85i5hmb2zM565CurMvKFcvVUiyxbgFv8dRn+ncYhH4jEiaFtW2k
 uyNJ3Oro/lQCHMrwmFXH9oE1iqa7e0ZUl2Q4WH9Y3Dl9EfF8xb93rBP57lGQUsy5ADte
 tm7+vsThxTUiD/FV1DtWn6vlObKozFZnvrk4fdBPX51O3nbHnzWjnPj8A17QvH1kmnpF
 mcuo+mkeeYNQgu84V/0rifzAMn+ZfHEIRdKxQ5JKmcaZPJh/vKcHF4GXbYaxhV0fQgKK
 ckzg==
X-Gm-Message-State: APjAAAURJnPVNnEXgG/kuLa24sSMlDQQyG3qHbhshCbCJJRuL0gJTe4g
 yEuOHjYYDP516rNXQHicAYDC9v6qrp4=
X-Google-Smtp-Source: APXvYqwAVEk0KD5aDcEm0ogwUewfOxgNqPpr/G6RKGXE2MZJDF+pvf57WWuJbP0KDUmIDbW8G6KkyA==
X-Received: by 2002:a17:906:2ac3:: with SMTP id
 m3mr26649667eje.212.1566367289271; 
 Tue, 20 Aug 2019 23:01:29 -0700 (PDT)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com.
 [209.85.128.46])
 by smtp.gmail.com with ESMTPSA id h15sm3925335edb.57.2019.08.20.23.01.28
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Aug 2019 23:01:28 -0700 (PDT)
Received: by mail-wm1-f46.google.com with SMTP id c5so610158wmb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 23:01:28 -0700 (PDT)
X-Received: by 2002:a1c:4c06:: with SMTP id z6mr3726750wmf.47.1566367288272;
 Tue, 20 Aug 2019 23:01:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190814060854.26345-1-codekipper@gmail.com>
 <20190814060854.26345-10-codekipper@gmail.com>
 <CAGb2v65+-OB4zEyW8f7hcWHkL7DtfEB1YK2B1nOKdgNdNqC0kQ@mail.gmail.com>
 <CAEKpxBnxf=iejk887A7qFkzt3BXVxiRS1PeA45aZYR9DsBAU4Q@mail.gmail.com>
In-Reply-To: <CAEKpxBnxf=iejk887A7qFkzt3BXVxiRS1PeA45aZYR9DsBAU4Q@mail.gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 21 Aug 2019 14:01:15 +0800
X-Gmail-Original-Message-ID: <CAGb2v65CueHKeZMCsMFjwWA1vo7ne3K8uVu2_yGOsXChY371ew@mail.gmail.com>
Message-ID: <CAGb2v65CueHKeZMCsMFjwWA1vo7ne3K8uVu2_yGOsXChY371ew@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v5 09/15] clk: sunxi-ng: h6: Allow I2S to
 change parent rate
To: Code Kipper <codekipper@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_230131_582200_2AA4CE68 
X-CRM114-Status: GOOD (  19.14  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.41 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 "Andrea Venturi \(pers\)" <be17068@iperbole.bo.it>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Mark Brown <broonie@kernel.org>,
 Maxime Ripard <maxime.ripard@free-electrons.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 1:52 PM Code Kipper <codekipper@gmail.com> wrote:
>
> Thanks....I've added to my next patch series but if you could add it
> when applying that would be great.

Please reply with an explicit SoB to put it on the record.

ChenYu

> BR,
> CK
>
> On Wed, 21 Aug 2019 at 06:07, Chen-Yu Tsai <wens@csie.org> wrote:
> >
> > On Wed, Aug 14, 2019 at 2:09 PM <codekipper@gmail.com> wrote:
> > >
> > > From: Jernej Skrabec <jernej.skrabec@siol.net>
> > >
> > > I2S doesn't work if parent rate couldn't be change. Difference between
> > > wanted and actual rate is too big.
> > >
> > > Fix this by adding CLK_SET_RATE_PARENT flag to I2S clocks.
> > >
> > > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> >
> > This lacks your SoB. Please reply and I can add it when applying.
> >
> > ChenYu
>
> --
> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/CAEKpxBnxf%3Diejk887A7qFkzt3BXVxiRS1PeA45aZYR9DsBAU4Q%40mail.gmail.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
