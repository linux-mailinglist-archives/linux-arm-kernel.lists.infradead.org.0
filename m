Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E68DC35BF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 15:33:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KBa06HHEG3Tu20gQK6Qk0B8poKnvbBZRvkwSpzfkBYY=; b=RG5c+DJNYbW99N8pjoi+Pf7gDG
	dkBgb7jUPToHs4k0goqfmszbwqFkjgUbEwnuVOdvxb50YMqTwa3mHC743MBzcfDKHqePS/X9ztTOl
	4JTw+G92KXDrEm9lWDTAmJPot779QP9lINib0db2EjvAzXjevjFG8TT6PYDlw9ggGvlneS4va+PZC
	rhsoLj5/P9vX9lI0U9sbjHf3rqc4L/kXaIePP6laxXS8daV3FcLtR/oOUjSUfTR3w9khBeO5qTC1K
	3cZQXte0WSPaVVOY3nsG742k3pfGdj7zIUwr1yn64WmwwR9GZ2QL0PnJg2rcsD3On/9cJ2EfMJnn2
	gefEVGGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFIHI-0000rq-L8; Tue, 01 Oct 2019 13:33:20 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFIH6-0000qE-DO
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 13:33:09 +0000
Received: by mail-wr1-x443.google.com with SMTP id y19so15567845wrd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 06:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=q8MDE5plyoRNJmUuOBtTSfs834j7Iqw1FfFcyxYnumg=;
 b=WPpYuDJwCz9iNVKgfF0rxipBxqDz6nlIWJyQIYTX2tjmWW31ckS60u4AMpswyn2LXa
 t/z/KbgIpMw0jeuBWup6RQaWXmzgbkMuviyWh7pu/BS7MFjCd5YodsekhVnLC2jJbeM5
 v1Xlo9Ye4EKeKfKyubaQzvhchUSVrEKefUqWTNWKoD+agXHS2Lj4h/Nwmk+haJiKOpad
 +6zU2nJo+igVlwYj/14q/YChadBZJmS+2yMEomfmzDXPJZsF994+SqMSkXntC1anNA/L
 0SMsHeTkXHiS5IZ5boMwcT5i8VVU2Aev2dTD23LStWXuQi8qaFI7OmkknTiLH5NWqaCm
 13kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=q8MDE5plyoRNJmUuOBtTSfs834j7Iqw1FfFcyxYnumg=;
 b=mx5BOLhQ2xhajgtyFt2/yRBo+q70ai6dVTZgxc7Wl8zmwKXIqFKH1uwABVFj+jOF9C
 DlltH8InWPTuUZRSuaQo7+4b5xPuj6aX5k5mgwdxSpf+pjsuKeU7oA0qrnmLiNJ9Qmqj
 mwZNeQTN0SjxG7aiwd6xV3mbNjj+COSZkaDeFfdqAtD+CVJHA9ZvwmF3jgWqGZF1tCZU
 wynRoE7+bBUbBYPi+xqYc257e40Op+Tc6ImlYdOLWNV8xb5h2rTxt7gQlyjVDKHh5Xki
 896Db4+XO8z6paX3wfewvehkDfN+VqhxilTfC20BBsDByeU0yBwAZUSJsjmalGVVppqS
 2BAg==
X-Gm-Message-State: APjAAAWcCV0f1cmgFCe5/bdlIjlsXlTMrBtmo3csENutXIpNaBb5Q2mm
 VpO9Rj8cjZZnkpfHfFM9QSXqDQ==
X-Google-Smtp-Source: APXvYqx5UTPwgHB49ZkRR24PRLoPJyqRoXoDTxxZ9PbUtFADeW5Y7oQDqDrFvTZvadHS8fHEj1cltA==
X-Received: by 2002:adf:ee05:: with SMTP id y5mr17074158wrn.291.1569936786513; 
 Tue, 01 Oct 2019 06:33:06 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a18sm24360812wrh.25.2019.10.01.06.33.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 06:33:05 -0700 (PDT)
References: <20190921151835.770263-1-martin.blumenstingl@googlemail.com>
 <1jsgons4wy.fsf@starbuckisacylon.baylibre.com>
 <CAFBinCAHD+D=a2mHeHMGq12MvoksHBr308jSrdcH+UYsUmwd8w@mail.gmail.com>
User-agent: mu4e 1.3.3; emacs 26.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH 0/6] add the DDR clock controller on Meson8 and Meson8b
In-reply-to: <CAFBinCAHD+D=a2mHeHMGq12MvoksHBr308jSrdcH+UYsUmwd8w@mail.gmail.com>
Date: Tue, 01 Oct 2019 15:33:04 +0200
Message-ID: <1jeezwr3ov.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_063308_452384_26B0310C 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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


On Mon 23 Sep 2019 at 22:49, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:

> Hi Jerome,
>
> On Mon, Sep 23, 2019 at 12:06 PM Jerome Brunet <jbrunet@baylibre.com> wrote:
>>
>> On Sat 21 Sep 2019 at 17:18, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:
>>
>> > Meson8 and Meson8b SoCs embed a DDR clock controller in their MMCBUS
>> > registers. This series:
>> > - adds support for this DDR clock controller (patches 0 and 1)
>> > - wires up the DDR PLL as input for two audio clocks (patches 2 and 3)
>>
>> Have you been able to validate somehow that DDR rate calculated by CCF
>> is the actual rate that gets to the audio clocks ?
> no, I haven't been able to validate this (yet)
>
>> While I understand the interest for completeness, I suspect the having
>> the DDR clock as an audio parent was just for debugging purpose. IOW,
>> I'm not sure if adding this parent is useful to an actual audio use
>> case. As far as audio would be concerned, I think we are better of
>> without this parent.
> there at least three other (potential) consumers of the ddr_pll clocks
> on the 32-bit SoCs:
> - CPU clock mux [0]
> - clk81 mux [1]
> - USB PHY [2]
>
> I have not validated any of these either
>

Then I would suggest to leave patch 4 out until we can somehow validate
this. 

>
>
> Martin
>
>
> [0] https://github.com/endlessm/u-boot-meson/blob/345ee7eb02903f5ecb1173ffb2cd36666e44ebed/board/amlogic/m8b_m201_v1/firmware/timming.c#L441
> [1] https://github.com/endlessm/u-boot-meson/blob/345ee7eb02903f5ecb1173ffb2cd36666e44ebed/board/amlogic/m8b_m201_v1/firmware/timming.c#L452
> [2] https://github.com/endlessm/u-boot-meson/blob/f1ee03e3f7547d03e1478cc1fc967a9e5a121d92/arch/arm/cpu/aml_meson/m8/firmware/usb_boot/platform.c#L22


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
