Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A1962116
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 17:04:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gAeW2g6MvYqo8/+promN19/Zemt+vuTZHiJ+L78dCqs=; b=F/XVzo/gHeYmlW
	imHTeLuWw6l5+Tzk3HOJvDwMoVU7bq6Uqs3PXmzlnzWSNRor/sjyRk0FeqZIocirFIIIZV5p3MhzL
	+GfJuLK1XhApgFm9xFL/jziJRd4YfIpIQdEG2K9R9dSFW4w1cDwhopPPFVb1kD6j/Yost1gZPSqgc
	D4BIaCASm9zH9pcr79cV35rouEtN7V7971znf1eqtYKG2A4n4XmXc72w5dXg/vzv8LVi7Wooq2YIZ
	XjnIQj7zFfgY0N4ueAf4ZF9GrWi5H8HKfdFYOArdmjOgPrbzWVV20cwVHor451sCtt+NNfoTBw1mN
	dar+CONPOPhHwcl3/klA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkVBc-0008MP-JP; Mon, 08 Jul 2019 15:04:12 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkVBO-0008Jq-Kg
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 15:04:00 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 3788B1FF8E;
 Mon,  8 Jul 2019 17:03:55 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 1D49020DD5;
 Mon,  8 Jul 2019 17:03:55 +0200 (CEST)
Subject: Re: [RFC] SW connection between DVB Transport Stream demuxer and
 I2C-based frontend
To: Enrico Weigelt <lkml@metux.net>, I2C <linux-i2c@vger.kernel.org>,
 linux-media <linux-media@vger.kernel.org>, GPIO <linux-gpio@vger.kernel.org>
References: <5e35b4fb-646d-6428-f372-ee47d7352cd6@free.fr>
 <b6abf5a2-3151-29e5-8eb7-c960580fd4ea@metux.net>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <79b9bd5e-be05-daa8-0d16-d84a383138a7@free.fr>
Date: Mon, 8 Jul 2019 17:03:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <b6abf5a2-3151-29e5-8eb7-c960580fd4ea@metux.net>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Mon Jul  8 17:03:55 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_080358_829472_81FC884C 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: Peter Korsgaard <peter@korsgaard.com>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>, Wolfram Sang <wsa@the-dreams.de>,
 Linus Walleij <linus.walleij@linaro.org>, Brad Love <brad@nextdimension.cc>,
 =?UTF-8?Q?Jonathan_Neusch=c3=a4fer?= <j.neuschaefer@gmx.net>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Antti Palosaari <crope@iki.fi>,
 Simon Horman <horms+renesas@verge.net.au>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Olli Salonen <olli.salonen@iki.fi>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08/07/2019 16:44, Enrico Weigelt wrote:

> On 08.07.19 13:08, Marc Gonzalez wrote:
> 
>> The tuner (si2157) is not on the i2c5 bus, instead it is on a private
>> i2c bus *behind* si2168, which routes requests to the proper client.
> 
> Should the si2168 make up its own i2c controller ?

It does AFAIU ;-)

https://elixir.bootlin.com/linux/latest/source/drivers/media/dvb-frontends/si2168.c#L780

	/* create mux i2c adapter for tuner */
	dev->muxc = i2c_mux_alloc(client->adapter, &client->dev, 1, 0, I2C_MUX_LOCKED, si2168_select, si2168_deselect);

	ret = i2c_mux_add_adapter(dev->muxc, 0, 0, 0);

	/* this is the new internal i2c bus */
	struct i2c_adapter *si2168_bus = dev->muxc->adapter[0];


One problem is that since the internal bus is "created" (declared?) at run-time,
it doesn't seem possible to define it (or its client) in DT.

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
