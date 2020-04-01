Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81EE219B422
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 18:55:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y2kU9JvXehD5j3Vs3x1intbtjEopXdJTG3H98s04/70=; b=K7vc+YphAP1GDY
	8Qvia2NutLTKPN/57WzQwCqwSxsfGN0b37t5EryDtZdH4uWE2wU84wNFXTsfTDZdoHGX6rWLBks+P
	fag4lpi3ohCVA3CjJuYR0vPhFAa4/S/N1jZ8iTL7qYvAf9xTAa7P3WX/HiSjX7JvpmZaLLrWF8KbR
	rY9XOQGDo50+WGeZZSBvjHpp86RcIA2dUDNlSfKyHp7s765fPSTlyoTqdrm+hc1fivb0Q2R80xBb1
	onTSEVrYy0U0IEqWSLCLfsTGW9Raf49laZI+IdZoMApG5JeIAbVsKbzK/9rbBkzYOgQhy7KQyJ7am
	4iSzATWpo8uJFLEMHXJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJgeY-00068y-H8; Wed, 01 Apr 2020 16:55:46 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJgeT-00067k-6R
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 16:55:42 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id A2F2C5800E4;
 Wed,  1 Apr 2020 12:55:36 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Wed, 01 Apr 2020 12:55:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 subject:to:cc:references:from:message-id:date:mime-version
 :in-reply-to:content-type:content-transfer-encoding; s=fm2; bh=1
 HvVrQVgf8h1xwI4xlSisY5uAmH78ioNToEd5ZqROGo=; b=dLRSLCXF4QI/ZvstT
 RTK/iKO7vJFrPwPmtUOFhf71BqNsFb9xL5thVfMoFcY8Z1KdDJrtiBN9x0XDxX6R
 WDYmkfZ0VtyLDjfvKrF0t6rRZ3TUVu9kU0i2UzUWfKhSSIFbDnraFtPppKAJB7be
 kiYF8FWjEAQR3qeifFoLajBSPF43EP0JqkTXcOq6rDlRn7s5fC1SzUIfVzVargsI
 iuF9dj8uYJhodSktI7ajo2LwysdyM/5iDLWJhT6Ykzp5EkJef8qAR57TafoLwAuW
 EJo5wDMk8sinT6vK9NIZcTGJ68eH8PvkpnKd1mYYwgB2p62neUW+7rpbqnU+S4Sn
 I5vvw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; bh=1HvVrQVgf8h1xwI4xlSisY5uAmH78ioNToEd5ZqRO
 Go=; b=pV/3AZI7xio9jPNP/fQsHuqkYqEftJWH2VRcjCrZpmJ5hn7/JJ1nXZj0U
 zxQq6KAnO+Dx/QIbe4KTTMGLw0OJKJ2zrwoJlHTOOhHKvWOhWPbM4t4t27hCXvBJ
 pyd6NLuCV82QXwlN57vspRGKjTXNGtMtAxnvD24VXi9LxaKvVxM/h6rWkZ/QFiZn
 QVvCWY8+3wP40ns/o7yt7etVkCHQ1RCk6keyLgywj1DVnd9jt3zhrPiHkBisYqNK
 n/laYmia4QoMeAOCmU6tNTwsl2o2uVjszN6aBFwOyPE0n5oOD42i1cA6WLtvVtIF
 x+om72uu9LgFVzPzURFYCtuScpbOg==
X-ME-Sender: <xms:h8eEXi_AC7cBT8VflyA_pQ4vzWVbRahRqpTXNfmfILTHnHsDFFJS1g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrtddvgddutdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepuffvfhfhkffffgggjggtgfesthejredttdefjeenucfhrhhomhepufgrmhhu
 vghlucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecuff
 homhgrihhnpehkvghrnhgvlhdrohhrghenucfkphepjedtrddufeehrddugeekrdduhedu
 necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepshgrmh
 huvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:h8eEXjA83Kbeeuchm-TFfZ-_rgepSDMLFcq6TLmo-TQ6RkH4jBXvfg>
 <xmx:h8eEXvqjowOwm8XxVq6BQhy3O4iesWDDdywZyitqcrxONwrF05ZIow>
 <xmx:h8eEXlEfqVLVCSou99VtCYzV9opFB3iwNNE99Q3kmsEEQolVgonZGA>
 <xmx:iMeEXhRRLxhty-Sm4IOQ0Odd5b6pnsFRi6C9HwCwbRdbaPBi-OpyJA>
Received: from [192.168.50.169]
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id DF8CD3280065;
 Wed,  1 Apr 2020 12:55:34 -0400 (EDT)
Subject: Re: [PATCH v7 0/6] Allwinner sun6i message box support
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>
References: <20200223040853.2658-1-samuel@sholland.org>
From: Samuel Holland <samuel@sholland.org>
Message-ID: <59dc1ee9-a369-7cf9-df6a-4b5b99e24324@sholland.org>
Date: Wed, 1 Apr 2020 11:55:34 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200223040853.2658-1-samuel@sholland.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_095541_445460_0E59C800 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ondrej Jirman <megous@megous.com>,
 devicetree@vger.kernel.org, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/22/20 10:08 PM, Samuel Holland wrote:
> Samuel Holland (6):
>   dt-bindings: mailbox: Add a binding for the sun6i msgbox
>   mailbox: sun6i-msgbox: Add a new mailbox driver

These two patches have been applied for 5.7[1], so the DTS changes should be
ready to apply as well.

[1]:
https://lore.kernel.org/lkml/CABb+yY0-q+5+pqP-rBHCYpw-LmT+h80+OU26XL34fTrXhO+T3Q@mail.gmail.com/

Cheers,
Samuel

>   ARM: dts: sunxi: a83t: Add msgbox node
>   ARM: dts: sunxi: h3/h5: Add msgbox node
>   arm64: dts: allwinner: a64: Add msgbox node
>   arm64: dts: allwinner: h6: Add msgbox node
> 
>  .../mailbox/allwinner,sun6i-a31-msgbox.yaml   |  80 +++++
>  arch/arm/boot/dts/sun8i-a83t.dtsi             |  10 +
>  arch/arm/boot/dts/sunxi-h3-h5.dtsi            |  10 +
>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |  10 +
>  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  |  10 +
>  drivers/mailbox/Kconfig                       |   9 +
>  drivers/mailbox/Makefile                      |   2 +
>  drivers/mailbox/sun6i-msgbox.c                | 326 ++++++++++++++++++
>  8 files changed, 457 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/allwinner,sun6i-a31-msgbox.yaml
>  create mode 100644 drivers/mailbox/sun6i-msgbox.c
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
