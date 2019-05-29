Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D22CB2DC87
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 14:15:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jCRC8mMTv5JOdQ1cPnFsnNif7NyODTV1p2q6Eq55+sM=; b=irr+/ZR/z1s8CJ
	UcUBdy0xtJ6EBle1nvW2ys2oc0X6BLQfmxT1A0H8UgYOwuifqDVZpIfwHy7vyG6K0HBbCqd8pYPML
	7K5j7Nkrnx5f8o6wO3noRgCLm+MaDy5izY/UhvBjSXFb4yeI2OveUMSsjTG0KOcS+MXQMvWa1YznA
	LXoey0+tI2qy5zqrsVvvJia2wSe8j8szaMwA61jRYS7tQmzjJnuk5lroVGw5k14780X2fvS3nLj+Q
	SuAtLGD8Cae26TXuWYOZqhCQ/2enOgoicC2A4B3Z2/tHH7qhUC7/9mcH0A1iJy5LWY/pbKjwPMNWV
	pWv7VqcahasStmJJzRMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVxUM-0000rh-PY; Wed, 29 May 2019 12:15:26 +0000
Received: from mail-it1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVxUD-0000og-IZ
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 12:15:18 +0000
Received: by mail-it1-f194.google.com with SMTP id g24so3328008iti.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 05:15:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QZE90PbMQUMysN2cdrlqFeh9pTGQMp2qxHloA4A2Q7Q=;
 b=muOWC7OZ++5bQPwm8IClSloSXuWnu9yHu3WYunDQT969HZ+oAkzsVOn3hH7yS53e5m
 /0ES9paYj5AIy6LGd6zQL1EjE8bCDhJGsuynLUPOHq66q6pfBUy2gXUkFkgN4f9fCzFA
 jXKSqsNhxuAl10hP2Hsne6TQqcDGFQwHmW3BEbGpIDNrHhH9UuLUEQIHjL0C2tqcnHun
 5k1MfWHmOSsMdidHtgGAX++X9ZodAiDo1ciUog9pGTx4baLHK728v1hMX+MoLeyvduT0
 Rq8sW8rW3bZlr5naitxjTicIRnixqhEPIvoFXC9OGtrjT9owJnVYxk1jjkoYa0Egan+o
 CRwA==
X-Gm-Message-State: APjAAAWr9zv8f7A3uxNEMpTJNucA/CO9qryeL/PvqR3r3OjsKuaVYJxb
 tj3/pfBX6GjU+Bbrmq2YWhTt0DnsX9k=
X-Google-Smtp-Source: APXvYqx/DdRQv15ecSJnBEvgVTHtnLGaJTMIvtvFQIAZENFsFCG7lhYGIeHaSUM8qGNtAcbtprnoNw==
X-Received: by 2002:a24:910b:: with SMTP id i11mr7562009ite.76.1559132113980; 
 Wed, 29 May 2019 05:15:13 -0700 (PDT)
Received: from mail-it1-f176.google.com (mail-it1-f176.google.com.
 [209.85.166.176])
 by smtp.gmail.com with ESMTPSA id i4sm5677005iof.48.2019.05.29.05.15.12
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 05:15:13 -0700 (PDT)
Received: by mail-it1-f176.google.com with SMTP id i63so3125408ita.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 05:15:12 -0700 (PDT)
X-Received: by 2002:a24:5252:: with SMTP id d79mr6656156itb.14.1559132112561; 
 Wed, 29 May 2019 05:15:12 -0700 (PDT)
MIME-Version: 1.0
References: <1559040459-16488-1-git-send-email-georgii.staroselskii@emlid.com>
 <CAGb2v64osE5yVdpCxSRfpkaq2TqeUUiLUbr3wZWW1rawuqxW-Q@mail.gmail.com>
 <20190529102824.GN2456@sirena.org.uk>
In-Reply-To: <20190529102824.GN2456@sirena.org.uk>
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 29 May 2019 20:14:59 +0800
X-Gmail-Original-Message-ID: <CAGb2v67dFY+CYBLMe2p9tq6eS9J-SJqAgF-APGdXVjcqbp2Kxw@mail.gmail.com>
Message-ID: <CAGb2v67dFY+CYBLMe2p9tq6eS9J-SJqAgF-APGdXVjcqbp2Kxw@mail.gmail.com>
Subject: Re: [PATCH v2] ASoC: sun4i-codec: fix first delay on Speaker
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_051517_612999_D8605815 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Danny Milosavljevic <dannym@scratchpost.org>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Georgii Staroselskii <georgii.staroselskii@emlid.com>,
 Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 6:28 PM Mark Brown <broonie@kernel.org> wrote:
>
> On Wed, May 29, 2019 at 10:34:25AM +0800, Chen-Yu Tsai wrote:
>
> > I wonder if we shouldn't just keep the amplifier section powered up
> > all the time.
> > Also it seems not very many codec drivers go all out with DAPM.
>
> Leaving the amplifier powered up all the time is going to burn a lot of
> power and make any pop/click issues in the inputs more apparent.

Sounds like this patch is a better compromise. Thanks for the insight.

The patch is

Reviewed-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
