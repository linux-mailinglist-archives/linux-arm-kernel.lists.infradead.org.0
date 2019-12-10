Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 712FC119B0C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 23:11:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UGvaXWNKWiM3UnSihIjxgne7HVaFF8kBPPWAqs4p7+g=; b=FAkNRUkGYTLOBO
	FglNHmG+r0TYZCjysRBQFLb04ZuTTRv7EsfTeysuusaWueu8ZSWu5YYMI4beTSwEchJrLk5JNOS8q
	8WsMcgfN+oWJskBliOPuXrfiQFRWEGj0Ujd5AMl0Fx4GhIBsrNxocv+xnZCeryC3P9aQg4hEZMLbx
	ME7675BVMiTUaAzyyyPF/nBzIXSuAWtQ0ByNX6O7ALLlQVv9MnVKLqIZqlEVR4TjsEgbmZHBiqRys
	X3ByG3i3HEKCpcQyJjBwLQAQWoObxqYIJEnUoTVNh/i4CqCmJFYl5zU020sLYyLH+g32WrxgPECXW
	Tn4xKeccCbNCDn2nfbow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ienir-0005NS-3Q; Tue, 10 Dec 2019 22:11:13 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ienih-0005M8-9t
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 22:11:04 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 326DAF5A;
 Tue, 10 Dec 2019 17:10:57 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Tue, 10 Dec 2019 17:10:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm1; bh=iTzj/LXruarNxkB4mF+5qgnxYnni345
 HnB4zzW+dtao=; b=CeFET6SFvvOE8YyX5U34URQmorm1Zg3iCfE5rXF71XrLsVG
 giyMAGOcfVkLtVPHkfQNU1dCrua9wiUW9Np2OHESJiYHcc090vZyjEMIdEvkYxnn
 ZuYcMc7hmSP611btvl7KumhtA5vrmJwWtoMfLZuGLvseUMVk9kL16OmKjxXcgtVN
 MKmtwhlc6gP6P7hP3tNT1QNTg5quvUs6KpR466SRb51wv4XaEifDJJunVgPAgoZy
 ZepqZRxvMqx5TNoWdLacjk3E7vp5TwJdIpsnS5NzbCDQUHRxCGAfrO9LMHAZ34q2
 Y7MK+ct62tW0jBiaXpmVdDoWx7oRqQGydg8hLvg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=iTzj/L
 XruarNxkB4mF+5qgnxYnni345HnB4zzW+dtao=; b=ipJwzUWJtdhmKRNun/ZAsR
 aMJ+C3uwPWPBTkCIeYbXdnP7phZ9WcW+P8DN8BVA1KwVrMQ23gTZkR2u//dwUCxe
 YroByIKLA3BfeSthfMMDPhhiE9938ISPW03bEr+VUMke1hA8K47MZwwjS5qjNgwC
 nZdTmoQIzW14j4XmYLjBHBky+x5jAkzDS1cMOWB+rRgQ4vfmemLCTZU/e0AJLNZ2
 KFpmbFSDFxraP8nqzlPITpvd8EHvk+CLYO3fpGbP71hSHvtwbZ5ryeddofpZ42Uy
 l3jzqHr0Vyg+x15g2PLwA+VNjsJO4BfQzCeKH1m/miWQiELGOZYdZ6fTK4JCKB0A
 ==
X-ME-Sender: <xms:7xfwXY-JogK4UnIVNCkzWFBVV5d4RmKSrOPzwzavIsixdDhUueZZtQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudelfedgudehjecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehn
 ughrvgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrg
 hrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushht
 vghrufhiiigvpedt
X-ME-Proxy: <xmx:7xfwXcGiJxH3pF9WB_W9UqzemEHMu2DN__Qi5Gy42va_s7-oz1VoEw>
 <xmx:7xfwXb42G6oXpxQpY6OyGru9RkoJqIsfN-WL3b2U-5cmfkiK9-W4SQ>
 <xmx:7xfwXTmMCcNi4xGkFOcmkjHwUKL8BYE2o_l_yX-3sg2Wwm3pezufCA>
 <xmx:8BfwXbFv2yYn4A5iNzu1Uzqg1LES15xXThOEbQtiJxOt934a-ItNAQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 78AE2E00A2; Tue, 10 Dec 2019 17:10:55 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-679-g1f7ccac-fmstable-20191210v1
Mime-Version: 1.0
Message-Id: <f6a514d1-44cb-4577-af07-fd2f3fefc974@www.fastmail.com>
In-Reply-To: <20191210202842.2546758-1-arnd@arndb.de>
References: <20191210202842.2546758-1-arnd@arndb.de>
Date: Wed, 11 Dec 2019 08:42:35 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Arnd Bergmann" <arnd@arndb.de>,
 "Linus Walleij" <linus.walleij@linaro.org>,
 "Bartosz Golaszewski" <bgolaszewski@baylibre.com>,
 "Joel Stanley" <joel@jms.id.au>
Subject: Re: [PATCH] gpio: aspeed: avoid return type warning
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_141103_686783_017BC53D 
X-CRM114-Status: UNSURE (   5.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-gpio@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Hongwei Zhang <hongweiz@ami.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Wed, 11 Dec 2019, at 06:58, Arnd Bergmann wrote:
> gcc has a hard time tracking whether BUG_ON(1) ends
> execution or not:
> 
> drivers/gpio/gpio-aspeed-sgpio.c: In function 'bank_reg':
> drivers/gpio/gpio-aspeed-sgpio.c:112:1: error: control reaches end of 
> non-void function [-Werror=return-type]
> 
> Use the simpler BUG() that gcc knows cannot continue.
> 
> Fixes: f8b410e3695a ("gpio: aspeed-sgpio: Rename and add Kconfig/Makefile")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Acked-by: Andrew Jeffery <andrew@aj.id.au>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
