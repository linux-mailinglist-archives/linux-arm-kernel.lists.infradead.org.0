Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD2E9FBDC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 09:33:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wwXHtsgEiwO/NkNMoQn/ymu8LcW+vJyel0mZZSXfELI=; b=goxy2iWjKXJedM
	jhspRKokswz4A6pj8bLo7E4BrNZX+XUhceU/M9z8yzkSn3vfEIFv0XivwIpXXQrQskNjgIOqetPk2
	htTAwP2nyNhCSo9tDr0WWwmxktGyT6VQom4WmjwmuS7w2bgkJzSQ9hA/eNO7hivTNnHgXa3PUQk3W
	G57FKcLWjp6yPZZ/fAr+1ic306zuDBNBX2o1K/aPsv0GeyeRe70W/QUf8ef+fEvxtFF4ISLklOd8Q
	FxaPpesekZ8yfpamsEDiaZj1+0dotyYEYzsvTwr37wEzRJhMc6PWbIff77wLNjFoAP97eFgW5gKFg
	MZ4p9XNiPAcPLxzAvX7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2sRv-0007tN-8x; Wed, 28 Aug 2019 07:32:59 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2sRd-0007sU-Ut
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 07:32:43 +0000
Received: by mail-ed1-f67.google.com with SMTP id z51so1806297edz.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 00:32:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FCgA4t/5pcDwS4QgIYXprPCQLaL6xdTakPz+1sovORo=;
 b=jgYuCkKvMOcQnqSjaKMYx0nRrAswee4yREEGSWPsgPstTufQxeTjxJNaCplj/Z6cW3
 4ASNYY/7WSlH2VmS7yzLH0YdXjLS3fIZ5lPn9fCm2N60b9qRogQ1sAjrfnNVVdU/CK4H
 JILUFjmnDYXL62z5S+IfyhjljtyK5Vp+hKBdAuBvuWy1pFxNahb8ZcP87RfUMyMr1yom
 i1ZbHN2ZmELP/d+l+lOXBK5PNrpGGB+GgZsUG2rwDI4GqQ37D8J/+13y53hz2zla55JN
 l5XnOFktewBSmNyUGqkyAdqECWRq//U6haRL17Eo8woIbgWNU0plr00eonAeO4s4RIOL
 2JTw==
X-Gm-Message-State: APjAAAUZOzyFztrG5m5hViAFxeQdLwEfDPKwFyqg9gTQ+ruP6b3Uh83k
 Kq8zKhcFldKeijJkA0nmg2IPmsfTOLA=
X-Google-Smtp-Source: APXvYqypMtDEZiNfBKaHBow8+A1cimiSTrcpAR8Uwt7eML6shwDdZsM7p2oDU4KBWfhpc/AAKHerjg==
X-Received: by 2002:a17:906:75b:: with SMTP id
 z27mr1908212ejb.67.1566977559124; 
 Wed, 28 Aug 2019 00:32:39 -0700 (PDT)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com.
 [209.85.128.49])
 by smtp.gmail.com with ESMTPSA id y37sm288688edb.42.2019.08.28.00.32.38
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 28 Aug 2019 00:32:38 -0700 (PDT)
Received: by mail-wm1-f49.google.com with SMTP id p13so1460911wmh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 00:32:38 -0700 (PDT)
X-Received: by 2002:a1c:eb0a:: with SMTP id j10mr3019968wmh.125.1566977558460; 
 Wed, 28 Aug 2019 00:32:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190827123131.29129-1-mripard@kernel.org>
In-Reply-To: <20190827123131.29129-1-mripard@kernel.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 28 Aug 2019 15:32:26 +0800
X-Gmail-Original-Message-ID: <CAGb2v65d3SjJEU_zqXqEKakTYoOB7tk_fo7OkJ_Gvq5Yok+_=A@mail.gmail.com>
Message-ID: <CAGb2v65d3SjJEU_zqXqEKakTYoOB7tk_fo7OkJ_Gvq5Yok+_=A@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] ASoC: sun4i-i2s: Revert "ASoC: sun4i-i2s: Remove
 duplicated quirks structure"
To: Maxime Ripard <mripard@kernel.org>, Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_003241_999731_879B1BF7 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
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
Cc: Code Kipper <codekipper@gmail.com>,
 Linux-ALSA <alsa-devel@alsa-project.org>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, Aug 27, 2019 at 8:31 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> From: Maxime Ripard <maxime.ripard@bootlin.com>
>
> This reverts commit 3e9acd7ac6933cdc20c441bbf9a38ed9e42e1490.
>
> It turns out that while one I2S controller is described in the A83t
> datasheet, the driver supports another, undocumented, one that has been
> inherited from the older SoCs, while the documented one uses the new
> design.
>
> Fixes: 3e9acd7ac693 ("ASoC: sun4i-i2s: Remove duplicated quirks structure")
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

This patch got applied as

    455b1d42e82c ("ASoC: sunxi: Revert initial A83t support")

The new subject is very confusing. If anything it should read

    ASoC: sun4i-i2s: Split H3 and later SoC support from A83T support

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
