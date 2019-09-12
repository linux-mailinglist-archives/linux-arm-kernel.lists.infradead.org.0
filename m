Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6401AB0CDB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 12:27:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZHgo3FEOeItQmSC8pP0hmsYy5qjiYK87V5PDLgNW5og=; b=WDTimuVi/yZmTL
	s6VbsjV+9Lhcnw9eKuwjrfLdIluHvBZj4x4VfgSWNQxutufL4CuON3SA3GfZwQ9NnYIU9phm9adCx
	xUw3QhMI+tV5fmFXwqVdRKVdSGD57w13UEXPlgAApYoynWNYR+HsEqzkKiXHFTt7sDBS/wGb6w063
	OQPkPEbIcfaFx0GckOOnjmQw3o0lLi2KR0iViZL4BkYEvCaiIp9toYojLO+95Hnx49zS5Mp13NY4Z
	4lX8K9KTug6YzBaDu5WD/Vdvhb3iVcuL2US80PW133pdZdTcLyMRLbFi4K44C5grfuARn8rTtcdOV
	1ybalNv2IKdEsUhgcNbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8MJN-00026v-8E; Thu, 12 Sep 2019 10:26:49 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8MJ6-000267-Eb
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 10:26:35 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id CDAA322245;
 Thu, 12 Sep 2019 06:26:27 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Thu, 12 Sep 2019 06:26:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=hH6krjDyM1ef7cBjth9GvNBMbTUI9b+
 39ETpeM1V4vs=; b=NHMNQMg+HFPouEvMQ00sKE/W0BsIAYFMCmqPDrTUQO6EqlR
 0wh/LUFfCkK9s3vYt2qjyKQvYd4tFrh0P/t00fYORmhhxbXQqQj4bzkZ2uaWfPk+
 n3qrYCOHYv30kvYh+P+myvR4uJg/mKyMOd1Ay0Iz1wtq0QXaArzQieqCrNvwU2qs
 1bTfGjrhRV7DSto1+GrQ0gvyJyzfgBUEaRDfKugJ23ZYqC71h3fgj6CKARc/ZGw/
 4Ml53ei0IbK/SWxVNT4+jV2iUfiCOTU2NTrmow3LFuPGtUxQZa0Z5amAV6dj1w1s
 MA10yj0+f/TMChNfXg04bVJXrWeX52EQDpSWS6Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=hH6krj
 DyM1ef7cBjth9GvNBMbTUI9b+39ETpeM1V4vs=; b=SXH9K8WEkJux2WUVSDI78n
 AOj3buJkf8DgR3jYi7VHNH2a3c4uqEsc/dGKY1uknNvnrgJfp6dJZk7gWVHwC9zi
 S1SpNPI6ChUtzJEojbDYRGZP/EL2sMlMWX4KHJygDIapXlMsKS+9xPLdKbPhImRg
 S4BoBRe+i1MpHIubusilRTqr5GB6nAVmchSAQItbTYxHHN5/67E/her2lw18oQiD
 8SxcH9CoFvKxXBcCBNHbzGTm7WltTmzg1kPQrxxAJxZp/F8v+/I6XLNTqRNck2I8
 kN6nri4R6vUf4Pu2nWEfiH23TIZDHwTK/CofWJ58x/5u9IaUZgODEQWsTngifRPA
 ==
X-ME-Sender: <xms:Uh16XSVBjtb16JkF2tIvIYISZaCxuUrOVo92Ul0Z-4MDK0VbF0HJ-Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrtdehgddviecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderreejnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrghrrg
 hmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghr
 ufhiiigvpedt
X-ME-Proxy: <xmx:Uh16XQL3Oxbb0GmE0XZZDmuKp1_PaBTv2QJpPgBENmsyMaV6XdHv1Q>
 <xmx:Uh16XcveF0GiadG_lUbwsrsYyUrA5VLiSrWrVGY1iO1MG0bb3U-1fA>
 <xmx:Uh16XVJ3HgoxVidgB2HsX8LfawoOQtQ02K13OoyzQrzvTnhobwfVEw>
 <xmx:Ux16XUk7PROLbEoYHv_ELhTN8sOnkupa5QZJq7d4yxrADFT3zS1jnA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id DB132E00A9; Thu, 12 Sep 2019 06:26:26 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-237-gf35468d-fmstable-20190912v1
Mime-Version: 1.0
Message-Id: <c51f0ef0-cd1a-47db-8551-706c5864e0be@www.fastmail.com>
In-Reply-To: <CACRpkdYW_PX7npB+b1YJ4pfFQNLVOsMx2hpKtntBeHg=C1j-Cg@mail.gmail.com>
References: <20190829071738.2523-1-andrew@aj.id.au>
 <CACRpkdYW_PX7npB+b1YJ4pfFQNLVOsMx2hpKtntBeHg=C1j-Cg@mail.gmail.com>
Date: Thu, 12 Sep 2019 19:56:05 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Linus Walleij" <linus.walleij@linaro.org>
Subject: =?UTF-8?Q?Re:_[PATCH_pinctrl/fixes]_pinctrl:_aspeed:_Fix_spurious_mux_fa?=
 =?UTF-8?Q?ilures_on_the_AST2500?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_032632_856921_BCE8D4C4 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 John Wang <wangzqbj@inspur.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Thu, 12 Sep 2019, at 17:53, Linus Walleij wrote:
> On Thu, Aug 29, 2019 at 8:17 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> 
> > Commit 674fa8daa8c9 ("pinctrl: aspeed-g5: Delay acquisition of regmaps")
> > was determined to be a partial fix to the problem of acquiring the LPC
> > Host Controller and GFX regmaps: The AST2500 pin controller may need to
> > fetch syscon regmaps during expression evaluation as well as when
> > setting mux state. For example, this case is hit by attempting to export
> > pins exposing the LPC Host Controller as GPIOs.
> >
> > An optional eval() hook is added to the Aspeed pinmux operation struct
> > and called from aspeed_sig_expr_eval() if the pointer is set by the
> > SoC-specific driver. This enables the AST2500 to perform the custom
> > action of acquiring its regmap dependencies as required.
> >
> > John Wang tested the fix on an Inspur FP5280G2 machine (AST2500-based)
> > where the issue was found, and I've booted the fix on Witherspoon
> > (AST2500) and Palmetto (AST2400) machines, and poked at relevant pins
> > under QEMU by forcing mux configurations via devmem before exporting
> > GPIOs to exercise the driver.
> >
> > Fixes: 7d29ed88acbb ("pinctrl: aspeed: Read and write bits in LPC and GFX controllers")
> > Fixes: 674fa8daa8c9 ("pinctrl: aspeed-g5: Delay acquisition of regmaps")
> > Reported-by: John Wang <wangzqbj@inspur.com>
> > Tested-by: John Wang <wangzqbj@inspur.com>
> > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> 
> Applied for fixes already yesterday!

Thanks! Hoping to avoid such late fixes in the future...

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
