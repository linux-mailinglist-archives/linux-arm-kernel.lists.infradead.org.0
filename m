Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C94C4A89
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 11:22:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cSB5qngW3TFMdnfJHaEXk9c7YjzZ9XtmrcMmlOUKeBo=; b=ElWsci6YCLptH3SFKjmv/v1/a4
	zzmuoYbBwzQfJ9JwDPV1JiFfgzQuxgBex5HjSIDk0D3uJyWG/xf4eF5Q6USpFU0U/3w8XleKXjETg
	x9Ff824iFcYc9Y+J2DMbZZQOVqfDTlnGDyBsHS1rTMdu3s4z7g6nDUCC2yexq4nXDXthEKgW5KN/y
	JLHGn/2Mpeepg4ngcadnBFkzA2FfaakUUsxye8WadrqSkXGFP/oUn/RMzgZtfEonh/LAyUJKgCy/c
	j0U4OSgG21cdLk74qLyY42WLC0B75aCSbiQ4q1/oAVFtaJHqcKL2r38GSTgDGnO6bUmh1rh9vByfM
	jfh8dycw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFapk-000199-LT; Wed, 02 Oct 2019 09:22:08 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFaZ6-0007jB-KT
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 09:09:43 +0000
Received: by mail-wm1-x342.google.com with SMTP id m18so6093451wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 02:04:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=NUl5H/X55FwqiGWpQnEfkahJrpZC2qJ4sf7YHZbx+Mo=;
 b=nGMwtOVq6c+feMh+KqdhlBh7+TRijtwX5wnIuxZmPu8W540zZ1Nu8EGAU0zrua3PbJ
 uN5mrg0k9pe+ELk0VqDhYVlgKP+ftu2SC3CkuZJgqKmeswDdzIpbz5yZYBwcgEvuwoUP
 TJoAyKXu6IVDGKAM3Ae5ENk9zZRqM/culu8SSruFe+JvgJmwuJmilpxk/bpxABGzF+5Z
 WmOkRac2WtJwWKiAhV/qo74PCxN5yj1Bg4SP1cl1RACQpYkfu6HDPGoBLx+MZNWfLZoh
 1zhU5jlyLsS+xVJMg8K2RthVgC/QfavM1mv5cPB2XmoDzjtPtGLKWOuxACh8syRH/0nZ
 v2XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=NUl5H/X55FwqiGWpQnEfkahJrpZC2qJ4sf7YHZbx+Mo=;
 b=o1sf0WC9mWGRmpCyss8htImXK6XhjtQlLYXU0UZZcTnJ26QUOqau7qZWPV5Tw8KYH4
 1eiaffgD8QOocjb3iFAH8ZUlUbDV/t6jQpP7C79itxsofrsqRC/KFhuMxZCAiEO552hs
 kitpptuKE1aLjmms8sXrxgc/3lyoN5UidEb4jgGM6aAuF1qUCFd9GXUtE0uhuuj5+Bxa
 kxtuJ/cxiQ0+Vo4PZt3oQYyDXWHZpcoStVPJ5Rg6K6pltsZJu5PDLRH2Yr5W0BN/2Nf7
 v4gxE4CorblX6boeC//HLY/AljOeLVgT4jmyqX1nUvyVpMR/npQjMew78qt1TTlNjhoh
 2jdQ==
X-Gm-Message-State: APjAAAVE4KBWxKbQXzueiIxBJfCyLwde2EUooqnX2stufaGIV9qY163b
 e96qorNFvrK7x3lUW/2qh2VyWg==
X-Google-Smtp-Source: APXvYqxt+M7/70wLUwWopsHlywqqp7CNL3Dj65++dXEA9VyT5aKdfM9l9wqePVfd0PRNaGcjORzcnw==
X-Received: by 2002:a1c:4d0d:: with SMTP id o13mr2017915wmh.19.1570007084692; 
 Wed, 02 Oct 2019 02:04:44 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id f186sm5961453wmg.21.2019.10.02.02.04.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2019 02:04:43 -0700 (PDT)
References: <20190921151835.770263-1-martin.blumenstingl@googlemail.com>
 <20190921151835.770263-3-martin.blumenstingl@googlemail.com>
 <1jftkcr3uy.fsf@starbuckisacylon.baylibre.com>
 <CAFBinCCED4YWYkdtrfrC80C8WLE=fyMJdjTa3wFNMJgC1OsoOA@mail.gmail.com>
User-agent: mu4e 1.3.3; emacs 26.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH 2/6] clk: meson: add a driver for the Meson8/8b/8m2 DDR
 clock controller
In-reply-to: <CAFBinCCED4YWYkdtrfrC80C8WLE=fyMJdjTa3wFNMJgC1OsoOA@mail.gmail.com>
Date: Wed, 02 Oct 2019 11:04:42 +0200
Message-ID: <1jbluzr00l.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Note: SpamAssassin invocation failed
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Tue 01 Oct 2019 at 20:53, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:

>
> [...]
>> > +static struct clk_hw_onecell_data meson8_ddr_clk_hw_onecell_data = {
>> > +     .hws = {
>> > +             [DDR_CLKID_DDR_PLL_DCO]         = &meson8_ddr_pll_dco.hw,
>> > +             [DDR_CLKID_DDR_PLL]             = &meson8_ddr_pll.hw,
>>
>> I wonder if onecell is not overkill for this driver. We won't expose the
>> DCO, so only the post divider remains
>>
>> Do you expect this provider to have more than one leaf clock ?
>> If not, maybe you could use of_clk_hw_simple_get() instead ?
> there's some more clock bits in DDR_CLK_CNTL - the public A311D
> datasheet has a description for these bits but I'm not sure they do
> the same on Meson8/Meson8b/Meson8m2
> all I know is that some magic bytes are written to DDR_CLK_CNTL in the
> old u-boot code
>
> that's why I don't want to make any assumptions and play safe here (by
> using a onecell clock provider)

Understood. Let's keep onecell then.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
