Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 222411085B1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 01:03:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5BxcbZnIitO8X499dlZ9SKCR3APhMFG201XeStCq/+g=; b=UPpA4SXmuPnYW4uNd5URKfBwAr
	Ge+OvvRlF9W87Aoa3FMnJa/V7jM9+kiZSQdhmJGtubNdIwQrCA0qUntVoweWqO1GtJ1NTHGHhAOSR
	m0SOCiD1x20JjNrkTW+DH+REIcz93495m6/KXf0sak1p/Ytmi8WPZOMbfOWxqkcG4Hc2dtcS1cBzQ
	/x50VxkOliheDLUQ6uw2b6+bPq34SgIn7KOX3A7VCK15LD7inWDIFF/cxs4BIuQhjfuOmFNy+GP7J
	pD45XMSMv/MmtPEqyfnQbpL1x1HLNgB5BCB9PnIuJc1sFwCASzoevnHG+BIEDN0MoNT7q1y/1CYmL
	IOlFgE6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ1qR-00072k-0Z; Mon, 25 Nov 2019 00:03:11 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ1qG-0006rA-62; Mon, 25 Nov 2019 00:03:02 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 7CFB15C3D;
 Sun, 24 Nov 2019 19:02:54 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Sun, 24 Nov 2019 19:02:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to
 :subject:content-type; s=fm1; bh=yAnKxPZbRoo2OEW2NIbW2/4bJIIdzho
 1/YK4gE1VRSI=; b=CpsQQPIhPJ/jYdZjfnThBWlUg781MVJEU4QU+iJ6hrboGoH
 BQsmQIfd8fPnBwmdp36oTQWfl4ne2rOqyYGXRZaxw6DBTW+RxHrpQ4TeqnR7Da04
 lYHKG8nETc29H3Sqbg2tcjWiKXGA6jDKGSEXWYjV+YmwxjXox7FMo0d0K8XFy6/c
 +Tfot/aRG3tRp6M+luzjlzvTyxDTNot77hdK0Idw1dT5yHkLatejQxgeFx44waTX
 2KD2uGu1bpHNyt/0F/BproROs/moImh4jCuyJkC6s2ZqHa+N9VA54Hlv1bOQNcBv
 k5Qzt2H9cRVrCdapq4hTAWkyFOzpjhGSJZXmcpg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=yAnKxP
 ZbRoo2OEW2NIbW2/4bJIIdzho1/YK4gE1VRSI=; b=LGOno1P+W3b/rePYylNzoK
 bBxLTrKmyFUTwlm86ughlr1HMuV62A2DQuSVMLFgLMY2SYdzXBepH/jbrB6d+azZ
 9/F7fBp1ZzRQ9uIt1FYUViwoSYRy2ZSsckdengfnTNJWOIDwqesJGXjRgZIRqioU
 +jhN5tHyiFhurj2b2HhHQOiUrR1TNF6Uf3CVXadfrDsMSzz2lVSnA2W/rWiipQmh
 LyLJPjIu9e3sdGFJuMZjIvkJMQnZHooYsJmvt6pG2gCRGZNzi62iD+08Q2m6YOSd
 I/N8c4nSwHGDeJFvbVPeWNJ0/O2nbW+5mM0uWiHys3Alxv8yMyVV0hSlrWVsiEVw
 ==
X-ME-Sender: <xms:LRrbXWUvwxkLfpXcaYQh4THV3cG8v3qN88Yz_EoLsJIK87BcFDVPOg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudehledgudejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:LRrbXRRKtLxr4ZWaqqIOYvR1Day3I9pQjOgnBMXSL21zCHwcghRwOA>
 <xmx:LRrbXdtkdba12QZVYsGYAO-y3uHHrs5UV3A-z1MfsQoQd34ej5nMRA>
 <xmx:LRrbXaMaSzHburtqGZ2qO0hvR3WyKvrgLNBX-y1tssUWxrmtQ9mJIg>
 <xmx:LhrbXaxeNjVY1OcNxmMWetzIFofI1MOqPtBc_xvODKv-MQJ2oZGIUA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 59B21E00A3; Sun, 24 Nov 2019 19:02:53 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-578-g826f590-fmstable-20191119v1
Mime-Version: 1.0
Message-Id: <ef65b741-baec-484d-a5f4-984452e9d4e5@www.fastmail.com>
In-Reply-To: <20191031014040.12898-1-rentao.bupt@gmail.com>
References: <20191031014040.12898-1-rentao.bupt@gmail.com>
Date: Mon, 25 Nov 2019 10:34:22 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Tao Ren" <rentao.bupt@gmail.com>, "Russell King" <linux@armlinux.org.uk>, 
 "Matthias Brugger" <matthias.bgg@gmail.com>,
 "Arnd Bergmann" <arnd@arndb.de>, 
 "Linus Walleij" <linus.walleij@linaro.org>,
 "Paul Burton" <paulburton@kernel.org>,
 "Andrew Morton" <akpm@linux-foundation.org>,
 "Mauro Carvalho Chehab" <mchehab+samsung@kernel.org>,
 "Bartosz Golaszewski" <bgolaszewski@baylibre.com>,
 "Mike Rapoport" <rppt@linux.ibm.com>,
 "Doug Anderson" <armlinux@m.disordat.com>,
 "Ard Biesheuvel" <ard.biesheuvel@linaro.org>,
 "Benjamin Gaignard" <benjamin.gaignard@linaro.org>,
 "Joel Stanley" <joel@jms.id.au>, arm@kernel.org, soc@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, openbmc@lists.ozlabs.org,
 "Tao Ren" <taoren@fb.com>
Subject: =?UTF-8?Q?Re:_[PATCH_v2]_ARM:_ASPEED:_update_default_ARCH=5FNR=5FGPIO_fo?=
 =?UTF-8?Q?r_ARCH=5FASPEED?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_160300_373487_83D5AFF0 
X-CRM114-Status: UNSURE (   4.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Thu, 31 Oct 2019, at 12:10, rentao.bupt@gmail.com wrote:
> From: Tao Ren <rentao.bupt@gmail.com>
> 
> Increase the max number of GPIOs from default 512 to 1024 for ASPEED
> platforms, because Facebook Yamp (AST2500) BMC platform has total 594
> GPIO pins (232 provided by ASPEED SoC, and 362 by I/O Expanders).
> 
> Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Hopefully userspace is not making assumptions about sysfs gpiochip numbers.

Acked-by: Andrew Jeffery <andrew@aj.id.au>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
