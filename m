Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C73910E4BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 03:57:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lk8qva/gQha7fO/eL3zzqZ7EqVnCfzOlYJLcatf0YnA=; b=cB9m68m5mCMiiB
	JAC/eHYiBLoa+UGgEJx/bGYpxDRTfJYid7JMqGvYHTXEAPCVU2bY0aqM4iF0S4k57gOtjDFViZIx/
	612MS+Yq1BpneP4QRdb6cF3PIvEzTx3TsxfbAj8lP3Q8g4ZtKXKtFL6riDWqyxkWvnZZf4r6F1jVJ
	nRITSoOwo1Hz1E9B4I8bHnzfUUSm+7pCuA86c5RJSM0vp/GhBB1UPJFortaA+qywIDtQrEf0ywO2k
	Gj1r1cHJWFraTe/KCCPehTTDLpc9inMBTMpP4HmdIxoPhiivq+vPVmQYSK7iMZLVBIrdOiQRZtcyi
	PVA4L4FClpXZM4UVuibg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibbuG-0006A4-4k; Mon, 02 Dec 2019 02:57:48 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibbu8-00069F-1y
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 02:57:42 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 290347437;
 Sun,  1 Dec 2019 21:57:37 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Sun, 01 Dec 2019 21:57:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm1; bh=wSdioubNB8nqmTFpTzhR8Z+t1EFlBSz
 ab3/FKICD/lc=; b=KN5ig6OZEqGfBX/Rumto6i6sx1rtMOhaI6BJN3q2+Q1plY3
 gt3ok1IjHP6eUgmFtcOhCsUFDHcJMMETwyW1kNkgnzdTNrUhklVNn3Due9mb+PqL
 ZqFG/vURwhXsGJlBIIneUrXw1bzkotJf+brjGXtr2O11R2AAOXTC4EWDsKuy3MGC
 jrqr5x+NfKn3/J1Hwq+1VsfTQYuAqJ870yMSQHGVrN4gUgX4UeQrPXV2hxReNeKe
 GC0l9RII49Hj/E/3fRoENvV3Qh+knzIh5eP1bk0KjXepCUU2WHx5sqiywdqH45gm
 M9XRrpVA1L+E+OrMvzAx7UTT7YxHVp8Duplcs/w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=wSdiou
 bNB8nqmTFpTzhR8Z+t1EFlBSzab3/FKICD/lc=; b=ObHTChLJcDsN9jr4FsX3wC
 lWsH0ePz6o2+4A88M5NQ1mlCyit4bwpm6LladeMGvBuhNOlcwU3GsoK60ytq2KBO
 UVmRB857B16cqc24MOabuZXtdqv7u/6u45QtPNgM3lQDK9NauzP2B9ZuxqGhWuRZ
 0ZRHe5z1+LTfzeWQ51yCrD8FkYYC1S3FM4DJqtahVUyK2Vi98iPQDiwdnCLpyMH3
 hJnGI9zsxhQiyds+KEZpAYh17eT0GS7AgPJX6UmurkBlPYphWaC1xDIPyjrX2EBD
 8q++nOEBDCEw/dxvOGwD/57PfsYN3HE8qBhWxMYVS8xa7UxPtf/5JsRZb+xAOCzA
 ==
X-ME-Sender: <xms:nn3kXVuwQmoyZHo8NP-h5dZ1sCRuuwhVv8cCwxSITjiHYX53v90rFQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejgedgheefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuffhomh
 grihhnpehlkhhmlhdrohhrghenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgif
 segrjhdrihgurdgruhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:nn3kXS7nl_rKgqz8G8_UUGKTRu9dwi7XOqi9ub_oWK-TZ0csEpwoDg>
 <xmx:nn3kXUHXAQs9LUR3kqP07XQyZTY4Maq8EjrOeHDBPt_CNA2Zd1X35Q>
 <xmx:nn3kXZi4vQc-7qxy43gFmEL4YtX_3DCsvfJ2Qn_Hdf9vx8meieuNsA>
 <xmx:oX3kXTyXveBHH_-eTLcSvff7zDfowtXzhNQEcYDlRMrU2kwRAA6QLA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 9BD7CE00A2; Sun,  1 Dec 2019 21:57:34 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-578-g826f590-fmstable-20191119v1
Mime-Version: 1.0
Message-Id: <0ab227da-869a-4533-a361-a825a7e20813@www.fastmail.com>
In-Reply-To: <20191129172537.31410-2-m.felsch@pengutronix.de>
References: <20191129172537.31410-1-m.felsch@pengutronix.de>
 <20191129172537.31410-2-m.felsch@pengutronix.de>
Date: Mon, 02 Dec 2019 13:29:07 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Marco Felsch" <m.felsch@pengutronix.de>, support.opensource@diasemi.com, 
 "Lee Jones" <lee.jones@linaro.org>, "Rob Herring" <robh+dt@kernel.org>,
 "Linus Walleij" <linus.walleij@linaro.org>,
 "Bartosz Golaszewski" <bgolaszewski@baylibre.com>,
 "Joel Stanley" <joel@jms.id.au>, lgirdwood@gmail.com, broonie@kernel.org
Subject: =?UTF-8?Q?Re:_[PATCH_v3_1/6]_gpio:_treewide_rename_gpio=5Fchip=5Fhwgpio_?=
 =?UTF-8?Q?to_gpiod=5Fto=5Foffset?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_185740_448301_6978871F 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Sat, 30 Nov 2019, at 03:55, Marco Felsch wrote:
> During discussion [1] we decided to rename the gpio subsystem local
> helper so the name is more meaningful for users outside the gpio
> subsystem. Making the helper public is done by a 2nd patch. The
> current users are the gpiolib itself and the aspeed gpio driver.
> The renaming is done by the following command:
> 
>     find ./drivers/gpio -type f -exec sed -i 
> 's/gpio_chip_hwgpio/gpiod_to_offset/g' {} \;
> 
> [1] https://lkml.org/lkml/2019/11/27/357
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> Changelog:
> v3:
> - new patch
> 
>  drivers/gpio/gpio-aspeed.c   |  6 ++---

For the aspeed portion:

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
