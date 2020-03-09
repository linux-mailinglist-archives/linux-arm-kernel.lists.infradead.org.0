Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5152E17E5CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 18:33:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:MIME-Version
	:In-Reply-To:References:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+HsphV03ftYNaeeMLsMIJYaJoGZvj4/oi2Z3MC88fK8=; b=gqTdXUn7TT2iMf
	uBZytnVZcr7W8J5Zm/se6hKWOdhEFUNxdpJo/o2AFNtvZoteEpFxr8IUNZlG/ja5uAowetonmfupZ
	7j/r+iqEt1MnhdmpF8gtlchEOszx5FgfySPVOXXaP1Eq9LVoPc9FICWQo/w6pz6ah/ViJRnq1IzPz
	yGZLZxKncVDD3cA29McbOLjAFAT4DPXKCXOItilnIx+DQxikyIJ3dyY1NpIE+r+Ns29TKq0vY7eqW
	SlSbtYDi1jFWXCDd2FjSAfsN7iTOsK7DhP+tAndSnoUeBl1THJfsS0GPpEwUOx2Jf6jJkulhvi9G1
	pJ8qVt51Z20PjBlgiSnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBMHj-0000fo-5R; Mon, 09 Mar 2020 17:33:47 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBMHX-0000fM-QC
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 17:33:37 +0000
Received: by mail-lf1-x12b.google.com with SMTP id i19so2483705lfl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 10:33:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:references:in-reply-to:mime-version:thread-index:date
 :message-id:subject:to:cc;
 bh=bgiHSLTQXM8E0mv0SF7G09UBPAaNCg/++oKU9IO6Jv0=;
 b=DQxdAFgBLzOAYx5M0Q2Fh/zkVoV6kRmCETSjJWCX2qfbDblPeSMRSyXVWiyOt5Ig3w
 gMJcpRqwnRBelmbxOy+sO0cchBZqoMdedCWSBBTnV3n3ng/yHVlq3GqcCNbjCr0OjUSN
 bIhthscycsWpgsCe1Hw6pRZIVFPhvr5K67Giw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:references:in-reply-to:mime-version
 :thread-index:date:message-id:subject:to:cc;
 bh=bgiHSLTQXM8E0mv0SF7G09UBPAaNCg/++oKU9IO6Jv0=;
 b=cFCQQ9rYV0xmHiRCV8vMua7ptQ8qjvCx4wWXlHiF8KOIgsdi5sfBjDnmCb86XcjGk0
 a7nQBHkiBJhEKWR30S4YvKoBQH9ZSsX45sl+D2mbGAI7J/flxq/zaXgN97oLdnEVBXcD
 Sgg7MCNcOXFuSAs525Y4p4bOmbt3RZ0U3m9qUlxpeRB3ukGVfuMsLNUIpQe+oPKXNKDD
 tUDi5KJ6qvBEOZg9PlA4VG9XiAtoETnHT04ebITyI9YA9/GaegXsfl0B0y6Hy/U8mgq8
 MdAsFfmUdi0YqhfDu/+2ujzuSw617a6JfINJQQNcdo7Cx/xTVcwqMuCZQoGANw3U+Cgc
 08ug==
X-Gm-Message-State: ANhLgQ2lqEj++TD9IhcAkue5iP9FeyLwQWaGC28poiI6etOSOMxy/pnZ
 Kq1ryTUA22iVlxXvyD3os7qCjJfMv0hBh5gqZGKl/Q==
X-Google-Smtp-Source: ADFU+vuq3eH9wkuVNiO3iVGw7rhwXN2qPoAEtL/Vxw8RjRXO3sz1OPnFMpu3+6cw1VwM6E+14wRoY4uUL6ksq3D8aLA=
X-Received: by 2002:ac2:4834:: with SMTP id 20mr9943688lft.93.1583775213105;
 Mon, 09 Mar 2020 10:33:33 -0700 (PDT)
From: Kevin Li <kevin-ke.li@broadcom.com>
References: <20200306222705.13309-1-kevin-ke.li@broadcom.com>
 <20200309123307.GE4101@sirena.org.uk>
In-Reply-To: <20200309123307.GE4101@sirena.org.uk>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQK6AtPk+W1UvlC/8YJn5FlJAEq5hQGCyJpIpmw/bzA=
Date: Mon, 9 Mar 2020 10:33:30 -0700
Message-ID: <69138568e9c18afa57d5edba6be9887b@mail.gmail.com>
Subject: RE: [PATCH] ASoC: brcm: Add DSL/PON SoC audio driver
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_103335_853110_A867FC88 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Scott Branden <sbranden@broadcom.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, bcm-kernel-feedback-list@broadcom.com,
 Stephen Boyd <swboyd@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

The SoC I2S block we currently have shares one clock and frame sync signal
for both playback and capture stream, plus playback and capture can only
have one master at a time. If we set playback and capture master at same
time, it will have jitter on clock and FS.

Based on above, for playback and capture, whichever starts first, it will
be master, another stream will be slave if it starts before the first
stream shutting  down. So working as master or slave for a stream is
depending on another stream's status.

Same thing for shutting down a stream. A master stream shutting down will
have to set another stream to master if another stream is on working
status as a slave. A glitch/Jitter will happen at this moment. But we
minimize it.

That is why this master/slave mode handles in startup/shutdown functions.
Not sure how other company handles this kind of I2S block.

Let me know if it is still not clear.

Yes, set_fmt() is not needed. Will be addressed along with rest questions
you mentioned on the next patch, with a patch version.


Thanks!
Kevin


> +	struct bcm_i2s_priv *i2s_priv = snd_soc_dai_get_drvdata(dai);
> +	struct regmap *regmap_i2s = i2s_priv->regmap_i2s;
> +
> +	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
> +		regmap_update_bits(regmap_i2s, I2S_TX_CFG,
> +				   I2S_TX_OUT_R | I2S_TX_DATA_ALIGNMENT |
> +				   I2S_TX_DATA_ENABLE |
I2S_TX_CLOCK_ENABLE,
> +				   I2S_TX_OUT_R | I2S_TX_DATA_ALIGNMENT |
> +				   I2S_TX_DATA_ENABLE |
I2S_TX_CLOCK_ENABLE);
> +		regmap_write(regmap_i2s, I2S_TX_IRQ_CTL, 0);
> +		regmap_write(regmap_i2s, I2S_TX_IRQ_IFF_THLD, 0);
> +		regmap_write(regmap_i2s, I2S_TX_IRQ_OFF_THLD, 1);
> +
> +		regmap_read(regmap_i2s, I2S_RX_CFG_2, &slaveMode);
> +		if (slaveMode & I2S_RX_SLAVE_MODE_MASK)
> +			regmap_update_bits(regmap_i2s, I2S_TX_CFG_2,
> +					   I2S_TX_SLAVE_MODE_MASK,
> +					   I2S_TX_MASTER_MODE);
> +		else
> +			regmap_update_bits(regmap_i2s, I2S_TX_CFG_2,
> +					   I2S_TX_SLAVE_MODE_MASK,
> +					   I2S_TX_SLAVE_MODE);

Setting master or slave mode should be done with a set_fmt() operation but
your set_fmt() operation was empty.  How would this be configured?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
