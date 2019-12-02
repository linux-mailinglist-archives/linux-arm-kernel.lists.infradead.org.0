Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6875210E4C3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 03:58:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ua/3lZSRxl5ovAFNYanD3ceTHL9QEmi+7TiXQ7oDhwA=; b=OadAGQUCVqQPby
	MyHdd32NfavpvrHkXWJQcHRsJzzVCqk2ES7303KzqBZCx7oO02KX2guOuJUKMB4qsYmJxaQeFPYGe
	sv4ZvcWCnZKv3syJsTikl+IDXpf0taEYVXArlDC+AVOFobd1lCmyNKQZen7hdnBvyomemV4vZq3lJ
	fpQRd8NdcczdCrcP+yWJ818laxyqTDrqNbwuJo1Ar3Bjre8RPOcNdXEWUuMMhKPNLGZhz9GWLw8sO
	4U5x4vTXKgUWCz850rWbZwwlm/AEjuE8wdgXruO5ovWMsOyLU3kT5zDU45bkPkTBz9EogMiOykCfg
	VL77JR8aCHDoJ5CGXX1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibbv5-0006VJ-OJ; Mon, 02 Dec 2019 02:58:39 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibbuy-0006Uk-VI
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 02:58:34 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 1B3AC7454;
 Sun,  1 Dec 2019 21:58:32 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Sun, 01 Dec 2019 21:58:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm1; bh=va9zds2kkUShR4/2SREiF7f/aOZtuH3
 Ys0/FEp1ZZwk=; b=jDceI3nutGxbAnXwraCwd0awJdlJLIV6nu86POF1goIGjwj
 fkJTh25UjJHlQ7tXafJZFsFI7NHapbjsnmJhewc+lZxxF/haezryPBwkxhJLop5U
 2UPj59fTtotjlzuHBMUeoCOkC3vJDcLZUY0hE1681x9X84llYSxPii7CAwkO0JRD
 Y3Kf1A3UWbGqD+cJwqjZ2uXFFj0BO7X+BsTE0zwsDmEZjJfCER0OWUCE271npCWc
 omInFVhWsmqjRr4VKbndggzaTqhD6FLfznHTRAdvFA+BDRTQrNRl4pBHiwdqLxKu
 kb/NB1LeH5iDZcLuMkDIY7jVeKrHDAg7ALZi65Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=va9zds
 2kkUShR4/2SREiF7f/aOZtuH3Ys0/FEp1ZZwk=; b=O4z1YV2ZcKXlyoADN68i23
 fUWjLMPJSxjjrRkBoFgZfVXyFpLVKUdJ2SCkWjXAW8tDpCxh2KA0TQ9MoOF/HKRc
 yJTW8o05RhhK4QkGB+utHy2CrVKHoUOg19Rv1AiYXlSU1g6snDXKy0Jp85UCyVrq
 5BrNdunwfP3AH4ygvU/2X1J2s5iDgvMHtpgww2UsTIY03Svvt2ZSXtiXdqu+TTZx
 BMWYb+c41h8ePkOmieAulbCZ0DeQhWrCmFZboQ7vp+XhOjjJTBj7GU3wqXVXJO6K
 m3DIGYhkyxN72TEnNcFGIhWJcIoriJSMDkORVOdJbjEsxFgNqmLhTs9w9Ke9yItg
 ==
X-ME-Sender: <xms:133kXey_hHH90ZeIXz0PoPZx-AesddbFlCyHqhreGeabCZbG-3Un2A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejgedgheefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuffhomh
 grihhnpehlkhhmlhdrohhrghenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgif
 segrjhdrihgurdgruhenucevlhhushhtvghrufhiiigvpedu
X-ME-Proxy: <xmx:133kXdbBpwIgMIZCczyiKMb7j8BB6YfbLNlnfI2qsVN4a6hje9XK2w>
 <xmx:133kXdxdHEMWPuOsLvaET6elCJs_3mUYaYRHifla1dhHNlpbD2PBKg>
 <xmx:133kXZEdWm1-Ex58vbF_gV_2CYGAJqQcVksLf3YgNDI3ddz7snB81w>
 <xmx:2H3kXcYiLFyK3Z5DQJ16JfqzwmN3yN79gDv1ty-X1vsUpGmolVhPRA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id D3C7AE00A2; Sun,  1 Dec 2019 21:58:31 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-578-g826f590-fmstable-20191119v1
Mime-Version: 1.0
Message-Id: <23d79dff-6577-4fba-b7e6-d494ec7b8a93@www.fastmail.com>
In-Reply-To: <20191129172537.31410-3-m.felsch@pengutronix.de>
References: <20191129172537.31410-1-m.felsch@pengutronix.de>
 <20191129172537.31410-3-m.felsch@pengutronix.de>
Date: Mon, 02 Dec 2019 13:30:04 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Marco Felsch" <m.felsch@pengutronix.de>, support.opensource@diasemi.com, 
 "Lee Jones" <lee.jones@linaro.org>, "Rob Herring" <robh+dt@kernel.org>,
 "Linus Walleij" <linus.walleij@linaro.org>,
 "Bartosz Golaszewski" <bgolaszewski@baylibre.com>,
 "Joel Stanley" <joel@jms.id.au>, lgirdwood@gmail.com, broonie@kernel.org
Subject: =?UTF-8?Q?Re:_[PATCH_v3_2/6]_gpio:_make_gpiod=5Fto=5Foffset()_available_?=
 =?UTF-8?Q?for_other_users?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_185833_143639_93E3F72F 
X-CRM114-Status: UNSURE (   9.18  )
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
> Currently gpiod_to_offset() is a gpio-subsystem private function which
> is used by the gpiolib itself and by the aspeed gpio driver. The time
> has shown that there are other drivers as well which need this
> information in some special cases e.g. MFD drivers. The patch makes the
> function public but you need to explicit add the <linux/gpio/private.h>
> include. See discussion [1] for more information.
> 
> [1] https://lkml.org/lkml/2019/11/27/357
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> v3:
> - former patch description was "gpio: add support to get local gpio number"
> - adapt commit message and description to reflect new state
> - don't add wrapper instead use the already existing gpiod_to_offset
> - move gpiod_to_offset from gpiolib.h into gpiolib.c
> - move declaration into linux/gpio/private.h
> ---
>  drivers/gpio/gpio-aspeed.c   | 11 +++++------

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
