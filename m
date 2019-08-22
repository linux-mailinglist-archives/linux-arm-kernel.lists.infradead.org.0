Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7FF098934
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 04:04:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7FBpFOUtxyslw/NwDIm50ZxuAhvHL4KLD/E/w6hq+us=; b=lMiu5uSNW2/ceX
	/ctY4OQGy13JjTSbIvmoghjOWA0zaqNWHzgONtBIdBBWnr4I+X/bn75Foi6NYwklJK3Nbi+P2SyUY
	aXLgAru+LxrPkiD/zyrxTyc3nHiAp3kNOKYuwbtEGgZOwY5He/0RiZG8huddKLu2pTPzd9IjB7vvP
	xMIYU6tsmF0rgoo/KR0KLX+McaI28WzmIjSvj9n1vNQRQ+7sFodjwvisdNVMJ9LQ/bti7CnflgzYc
	7T4cuCeEeY/JuozyF3gnyLzZk1JljNbJsrRdrCaC6SuXSS6oAFJqLX9SYwiMRGTivSh0A5gN/Bjj2
	xxYoud6ui3HjCm2gCZDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0cT7-0006TF-5Y; Thu, 22 Aug 2019 02:04:53 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0cSz-0006Ss-AR
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 02:04:46 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 652AD22006;
 Wed, 21 Aug 2019 22:04:44 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Wed, 21 Aug 2019 22:04:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=4KsJNflIPTen+FfCDNntEFNVCkG4oeQ
 LrHFU/KsYntM=; b=YmQkm0HTNrxTpyTG14K+WD6emqf4Kp8ky7+ssOPlWCjH601
 5CWog5SXZxLPopNMF+3rKM7Y1/toANEWDiU6Iw/YmZ9Ti7bOiueCrrXHbcHKi6Zq
 dIAsZ1DlqG5B7fCKLd3dz6cSYIzPO6hUgIrMtnoVNM5Whpqn3Am575meiKoa+vCR
 8hlXv+aww4sfQtT2cdEfBASaVYcdDeLbWpQYtpZeBDuAydbwh/QVLSIfQNz82OyJ
 kIQ7bLezqoaS1VIi4kXaUvnUm7ZynWdEUU6NXOLmhvuZTgDTBdtKG70tMvML8o7G
 dDJd/p/BJh/Dm2bDzsFkDyPR8LPGJS5qwnPQ5iQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=4KsJNf
 lIPTen+FfCDNntEFNVCkG4oeQLrHFU/KsYntM=; b=hAVpx+m/pVr1J5nULxorc+
 IA9HPQCRy4DpcnxFogMPiKEZtbmcRZx43waGesel4urR3CSj4YIt/tFZ5mEFk//A
 eECJ4Cpo75FxTJgILzsXP6ZiG2sLv0NI8Nk3eMPZy3RnBfmvE+o0gkdqnxTb6I8b
 pk+UALWZAKyBoN2G536NLPYAhq22JkQEXa71J+vpTeBUG4y8K5x5WMxcnLg0G4mK
 3aL8Hd/KLbxr3N36hQy+oKAUIhJhza1Hc7iU5A6/tlqgBLHmnOtnqS5r7zP6gU1G
 kkXdOMNXYENPKuhzQDSHAjvatDm0g44ii7TGH/GjBufZUANWbii2qGaCG8ELlNkQ
 ==
X-ME-Sender: <xms:OvhdXXnRoubPXv7DZCDuJMnOihv5e1-QA9Hi6MuXi2y6NYc6rQGxUQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudeggedgheeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:OvhdXQc27KTwScFJnwDI0_DvTuGypCqsGtnOoGLv3tIuTHe5OoG2og>
 <xmx:OvhdXc09I7IqLOloRsm-neasD3wjVM7aNASwUov0WLWN9Dj1h-qflQ>
 <xmx:OvhdXdgK1iiqEHodjAbrC44h_oND5H_VdtEnLk7c5C1Ipn8yjE3eHw>
 <xmx:PPhdXcirWs9uY6FUUVgg_nuJl_yjQFEchHS28pvDpB4M4xkPOAidyw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id D79C6E00A3; Wed, 21 Aug 2019 22:04:42 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-916-g49fca03-fmstable-20190821v7
Mime-Version: 1.0
Message-Id: <0e036aee-fbd1-4c54-8d7b-fea8eca1bc05@www.fastmail.com>
In-Reply-To: <20190821055530.8720-7-joel@jms.id.au>
References: <20190821055530.8720-1-joel@jms.id.au>
 <20190821055530.8720-7-joel@jms.id.au>
Date: Thu, 22 Aug 2019 11:34:58 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Joel Stanley" <joel@jms.id.au>, "Rob Herring" <robh+dt@kernel.org>,
 "Arnd Bergmann" <arnd@arndb.de>, "Olof Johansson" <olof@lixom.net>
Subject: Re: [PATCH 6/7] ARM: configs: multi_v7: Add ASPEED G6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_190445_432794_0CAB285F 
X-CRM114-Status: UNSURE (   6.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ryan Chen <ryan_chen@aspeedtech.com>, linux-aspeed@lists.ozlabs.org,
 =?UTF-8?Q?C=C3=A9dric_Le_Goater?= <clg@kaod.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Wed, 21 Aug 2019, at 15:26, Joel Stanley wrote:
> This adds the ASPEED AST2600 system and associated ASPEED devices so we
> get build coverage.
> 
> The changes to the UART configuration to ensure the default console
> (UART5) works.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>

Acked-by: Andrew Jeffery <andrew@aj.id.au>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
