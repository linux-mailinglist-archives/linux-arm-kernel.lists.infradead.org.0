Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C7F971B2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 07:53:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NGEjMSo5hpEmtNvJpg1xID8mPuW/PB4/K4+w1fVfKmg=; b=UBwKhV9x56aJR3
	2jc2iDH8zTtbx50+i51aMku2dSGCwXdR118eDi7Gk0NY65RpV0a5YoUTmJYbISTLOiYizEIgBPAqK
	Rgi18SrPYRK04TlvYZDvMLomlYaJUSb1itBbg2Kjy2OJg4v6hte07iGi1SUm0fTdKImRH2u8UznKd
	Xk9iwtI2BduGEP1F6sJONtDgQhjZSxXimwqepkR/48WNJz2d/UteTtVL1OKfFb59s8Du3cKsoOoYn
	Qp98EwDuD8sMaBCsC0mhWWLImL2dSsTbsU2xdF/IwzjjnPm3pA6I7Db+TKvHfPZWS9ZbGvbiYxVm2
	SmgeRX1jJhyZ53tbpNcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0JYA-0005ZZ-Ug; Wed, 21 Aug 2019 05:52:51 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0JXy-0005ZF-4E
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 05:52:39 +0000
Received: by mail-lf1-x144.google.com with SMTP id c19so829623lfm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 22:52:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2TIxCfXD2eyh6zMqJFg2GtypILTlpE+TvhurqKYvOlo=;
 b=h571lOuE9rlh6jokPyR7zPtOUmcT0wb5cZZZavJmW/PBnp3LZfPhHObeuyTdEe2dk0
 +SLiwrZFafrspkXS1P35VzI8s1XqPU4YgJOGJ84d7cOsBPlHLhVIrpBJHnYHuad4tnR9
 LC9W2mth3VpWn5RAy56inC04YRNfLAsAYR9E5dzK0xOfdKYvmgM0cOSSZVIGSc7cNb7Q
 iUC8Ic/r2Gqw5H92RKoLhMsjYdRT0oSSI74UyH6Jg6gfMKeBpAo+DYhFw3aWoSVjNQoM
 mYxRyV89+I3hQ0Vl/CZBaKw6KFpw/fmpwyezY9AWSe4VTQ/F19fwdVuhfH+nETxh5Rv4
 8bqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2TIxCfXD2eyh6zMqJFg2GtypILTlpE+TvhurqKYvOlo=;
 b=a8To6K9yBXFLKNz32L+A2sjrHlRKxq7ISrg/yDzU3qXkoQAUSak0zV49dHp59L/pyF
 71jxLB7/Sr2b33j8E/zj2mYLnv2lLU21OG+CC+e+gf5Bdbi8Y45SJ/eSPZoTarJrxAec
 vuIbGQ4g64Obqhdtd3w0L4gpUP2eIum6eAS30YlQzwlIXzsnm5g4MqJyEHVP7pXmMXV7
 JBu4hiM4dGqCr0G8lyaP/Ygfj5Pc3cNcSJFzhnWYJEwk9Q84O4sru9A5jiTa5JjpMv7O
 7PbvmUQq/wwldET0YGlFqyfB0tskFcKpVFozf3lj0jPgVs0ZJvqEpU/23TeGSUaDEXqR
 hgKA==
X-Gm-Message-State: APjAAAUhKw9mtCjxLw6dDDIqwxosmJ+NFzv+ir7ImEeNs0QhA4itsGU+
 Ru1ljtgoegSd5+T3WOeW87ta85Nhj0nsGg8dOc4=
X-Google-Smtp-Source: APXvYqyD9sge8d6nZp1df6LdnHet72hp2VogL583tm9cg6fYFMjjAZbyS0l7gUXxlDHmk9VAXZ4ToWq94s9ugar1QmM=
X-Received: by 2002:ac2:4644:: with SMTP id s4mr17334296lfo.158.1566366755409; 
 Tue, 20 Aug 2019 22:52:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190814060854.26345-1-codekipper@gmail.com>
 <20190814060854.26345-10-codekipper@gmail.com>
 <CAGb2v65+-OB4zEyW8f7hcWHkL7DtfEB1YK2B1nOKdgNdNqC0kQ@mail.gmail.com>
In-Reply-To: <CAGb2v65+-OB4zEyW8f7hcWHkL7DtfEB1YK2B1nOKdgNdNqC0kQ@mail.gmail.com>
From: Code Kipper <codekipper@gmail.com>
Date: Wed, 21 Aug 2019 07:52:24 +0200
Message-ID: <CAEKpxBnxf=iejk887A7qFkzt3BXVxiRS1PeA45aZYR9DsBAU4Q@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v5 09/15] clk: sunxi-ng: h6: Allow I2S to
 change parent rate
To: Chen-Yu Tsai <wens@csie.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_225238_196061_63F3E2C5 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Thanks....I've added to my next patch series but if you could add it
when applying that would be great.
BR,
CK

On Wed, 21 Aug 2019 at 06:07, Chen-Yu Tsai <wens@csie.org> wrote:
>
> On Wed, Aug 14, 2019 at 2:09 PM <codekipper@gmail.com> wrote:
> >
> > From: Jernej Skrabec <jernej.skrabec@siol.net>
> >
> > I2S doesn't work if parent rate couldn't be change. Difference between
> > wanted and actual rate is too big.
> >
> > Fix this by adding CLK_SET_RATE_PARENT flag to I2S clocks.
> >
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
>
> This lacks your SoB. Please reply and I can add it when applying.
>
> ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
