Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 191D5C39AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 17:59:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JJmSgnP2scSG340+9TKy4gKq6X0Rwr8IWCpye3D/Ymk=; b=BqRhsFLb3t1/BG
	dowQn6AGMMRT7joSJUCI8Q2d0cHIkIFHXaTHW4nadcvisD0kvR5gd/hjCdqCEgBCZ0aQGR7mzHtdp
	J0lwrpG5YuwGPf1T4q6WLZiWG8OXH7EtMH1nJ+20dvMHAo224gRnvXfIXMp0D1tJgyfwTS16WeeL8
	eF2xeiDBPDmKTtw9vCXRzQ9mIYRncLAjGWK6Pg32SYUcQ/vtz8y6Vb9WnyhjP+F5oXbQWmlulB/ry
	TxQOt67L5DoiNplDQicX13k0gwkaaSx4WrXpkYV1eV1ckpfr9bOdkDhgmPlz6mGqmVYPw/omsJ0hm
	GQyY3TFlAap9HGhTFoDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFKYt-0004aY-1C; Tue, 01 Oct 2019 15:59:39 +0000
Received: from mail-qk1-f196.google.com ([209.85.222.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFKYk-0004Zn-Q8
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 15:59:32 +0000
Received: by mail-qk1-f196.google.com with SMTP id f16so11716118qkl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 08:59:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PVA9zycwwTmxrHgzivoqyA4S7B6/Ae12ZgJJqfTA6ZE=;
 b=UwWzjokKbN4Pv0dptkf8rmSWSkYT2oDUAfeXgr+FkA0Y9DuEh1BICNC/zEhOn81E3O
 i0diLlmKnIDTAwctK58p5yf4dvK2glg6twNjYGhI1npI2+kfYqByvUIS8HibAZ6FdkmC
 7TvRcXp31AA7wzAVvSVXgNRW/jMhTBP2Qy6l70jsccp1fvy13V7KUJ044/H0TMH77RmB
 iuu1ECuoq/YrLxN8H69lqNuu8YDrFei/oOw6pGdjDX9W20iKv2klt504HKlT2lbd/JN5
 aLmXGowLtIGPhHlpmGhioQgvrJtE5YB+41g+iLlgCmSVqpX5qkw/mXha0OuGD8OPKRfM
 lJKA==
X-Gm-Message-State: APjAAAWlipsSuEnF33es7Lo+M/yb7fsaaqlPcQfzfSHdPCatFkM2I6Hd
 13glMKIkw3eQO9gJpALJ7JAduWNNfRta28Cxuvc=
X-Google-Smtp-Source: APXvYqw8OSzTRQKAtzD5yJNb3X/TKsuG58PVn13xDbhiPbbzHk02DUCmHWqaGsNg1xN9FhUJmk9LIa3wCb6Y08Qz7k8=
X-Received: by 2002:ae9:ef8c:: with SMTP id d134mr1425740qkg.286.1569945569712; 
 Tue, 01 Oct 2019 08:59:29 -0700 (PDT)
MIME-Version: 1.0
References: <20191001142116.1172290-1-arnd@arndb.de>
 <20191001142734.GD4106@piout.net>
In-Reply-To: <20191001142734.GD4106@piout.net>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 1 Oct 2019 17:59:13 +0200
Message-ID: <CAK8P3a3ovgR4THuXb17Fh7DDts188jWRqP3OAZ7cknNUsWQ-dg@mail.gmail.com>
Subject: Re: [PATCH] ASoC: atmel: fix atmel_ssc_set_audio link failure
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_085930_848510_620305FF 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Takashi Iwai <tiwai@suse.com>, Jaroslav Kysela <perex@perex.cz>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Mark Brown <broonie@kernel.org>,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 =?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 1, 2019 at 4:27 PM Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:

> > -obj-$(CONFIG_SND_ATMEL_SOC_PDC) += snd-soc-atmel-pcm-pdc.o
> > -obj-$(CONFIG_SND_ATMEL_SOC_DMA) += snd-soc-atmel-pcm-dma.o
> > +# pdc and dma need to both be built-in if any user of
> > +# ssc is built-in.
> > +ifdef CONFIG_SND_ATMEL_SOC_PDC
> > +obj-$(CONFIG_SND_ATMEL_SOC_SSC) += snd-soc-atmel-pcm-pdc.o
> > +endif
> > +ifdef CONFIG_SND_ATMEL_SOC_DMA
> > +obj-$(CONFIG_SND_ATMEL_SOC_SSC) += snd-soc-atmel-pcm-dma.o
> > +endif
>
> Doesn't that prevent them to be built as a module at all?
> I'm not sure there is a use case though.

It should not: the idea was that snd-soc-atmel-pcm-{pdc,dma}.o
get built as modules if CONFIG_SND_ATMEL_SOC_SSC=m.

      arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
