Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE1E63E15
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 00:58:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+VD3vb7zlWFcc3WiMWwZV30HKWpTV1DtsBnTdc8obw=; b=FuXZLUwGymQNQ1
	W12Pg5nLqpe9XJWoV/FFiJ0y3JUPxefqN0ZRK5N4MmIPVIsrZqvzmvSuG44tpZhISUPC5+HEU/7+u
	F86BzuoZbf15LV9CHK9hVFet1hi5Mrh/rQ483KankVORONzitbGKpBwqjHpgs9l0tQaxy/O307t4T
	gkUp3AmC2Ea1D9+LfSfcvmB2WCjTRlZ6GxHA3qKuiivg3gMeozMVFj8hkP1iClhp3XxYJuaau81SG
	pjHdPkKfC47HQiAD47eAT4z8g1FjnkYGogmrF+W7QwvSvReT9/u7es0U3UprIeayPiGo/9RjI9z73
	U08cBhQLsgV9TDwNzScg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkz3f-0001Wp-Dx; Tue, 09 Jul 2019 22:57:59 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkz3S-0001WR-Iu
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 22:57:47 +0000
Received: by mail-io1-f65.google.com with SMTP id j6so575850ioa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 15:57:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=0HhbqTghHejLe1IY3m94WTWIBE7MbWIJpDPEeXowAHc=;
 b=lQ5CD7duxgZYiRxIYqzhTpz48a57+wbZXAB+wfqJkwF/EnxO7ZF4vsCVAEQeS0Zide
 5u7tW6H9S0ti3qF/PXZLbPkR21TLTX4OVZWPQb+0FqWwai9YwFeJJzIAH77ZS8FHUH7R
 HyenAghnbELY78fFxpY1X94Z9yv7Jg8vEScLgXCV/fexWKmqrPK/GYssgC5K02DfXhoZ
 XvXe7IeaXpbcczJ8MKxR2Fx6BLrTcZ6eIHsiiLJXxzX03zKPy6rnwKmF2NVTZKWa+pag
 CgkRXHrfZg1gJNWEncf3h7R1riuHh9nKrh437YOHDOkO9SF0B4kF15hiMyiB9UFKE9/k
 a3vg==
X-Gm-Message-State: APjAAAUb1u8qLoOfpy0kxv93ARsf9BGzk5SOELVjk/ZqHJaqOKRpN5aK
 NM5xzQvGsHVa2xtqP9X6xw==
X-Google-Smtp-Source: APXvYqyapzttXsRNBkAiCzkE5cycXATjK8Ppd4rWGXk1+uAUTMH/Jp0hgxaeXExotfHxwMiG3rpOrQ==
X-Received: by 2002:a5d:8451:: with SMTP id w17mr29707761ior.226.1562713065527; 
 Tue, 09 Jul 2019 15:57:45 -0700 (PDT)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id b20sm120313ios.44.2019.07.09.15.57.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 15:57:44 -0700 (PDT)
Date: Tue, 9 Jul 2019 16:57:44 -0600
From: Rob Herring <robh@kernel.org>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v3 7/9] dt-bindings: vendor-prefixes: add Sipeed
Message-ID: <20190709225744.GA25215@bogus>
References: <20190623043801.14040-1-icenowy@aosc.io>
 <20190623043801.14040-8-icenowy@aosc.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190623043801.14040-8-icenowy@aosc.io>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_155746_619687_7EC150A4 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: devicetree@vger.kernel.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 23 Jun 2019 12:37:59 +0800, Icenowy Zheng wrote:
> Shenzhen=A0Sipeed=A0Technology=A0Co.,=A0Ltd. is a company focused on deve=
lopment
> kits, which also contains rebranded Lichee Pi series.
> =

> Add its vendor prefix binding.
> =

> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> ---
> Changes in v3:
> - Rebased because of the addition of sinlinx and sinovoip.
> =

> Patch introduced in v2.
> =

>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> =


Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
