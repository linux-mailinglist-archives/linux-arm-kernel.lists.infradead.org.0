Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 915BA31FFF
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 18:30:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uNeoqHnxigZccGlE7Fz73lL8nVByb4xPxcburRNftkk=; b=so61unYe1HIvRu
	CcReDSwOhBfGJF5T3rpuAIwTgXBdJ89Aw9dVIgyEiY+em+FzosmC9DDqzCUrBoPgB2y4Qg7SAIDAq
	+ZCNy0u6eBDfInFg07qS6bvI+BMlbBmx+Mk8pqf7ohCV33zUoEwwmoMm5mODL2v4n2qjaHAL50nzb
	EX3VOcXmEjfyeueJ0opUg66Rc6mW9F5lHwanc1REziB9Ta8E++PugzA1aLUdS7XFpRxJe0GKwXXgH
	6pOZrMJaGlXWKuwhK55JHihootNX4GONdlEV5Vvu7P5lIqDe+HdtF97UH0aqVxXhdt26I/UEJLJBz
	HsfqzN4Onk1qkHX+5gaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hX6tT-0000M4-PN; Sat, 01 Jun 2019 16:30:07 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX6tK-0000Im-2M
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Jun 2019 16:30:00 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id C63301D34;
 Sat,  1 Jun 2019 12:29:51 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Sat, 01 Jun 2019 12:29:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=G6joXSFpHr+xnj1AE0zs7wKpYB9
 XnoEfEGHkoMcid1w=; b=nRY6su9IGsDoiTe9tsxFg667lnKPfE7bbeIx592as2E
 em7dgml8pmc/pwKeUgSSxDHV4YRUE5iHljoVEX7GwRqUVrGqRVJkDxsFfQA30YNx
 KAg+vCy3UqtEA8q+fvNg10SCASxR1++3b7VtYzJYC+N1OpR7dwMlIFWnvd3amsNv
 Svcl/IGHc7g6aMVf2kFMIXlX7fD9mqL1hUcPRxNY4cX2VDdrexj6V4sFosvqQqLB
 4QzWd5PIE2iO4hyQ8H5YfT8CtVcl1yoG2xcYid/UFIJHsE1B7gaFquYpVfosEu13
 VwfxIFeXKA3/ohtuXL7ry3m+5gE3ZXXpLXrUVd048rg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=G6joXS
 FpHr+xnj1AE0zs7wKpYB9XnoEfEGHkoMcid1w=; b=LjTxODYr47rpGdziuqBMg7
 yzbx/pWEF8iqPYcSzsQUplRekJ5IrYNM+xmL983a3mf1SWpfxq3F7DR0iT7mPgeU
 STzQullm7rLdvtyZIdH+WJpqeOD1ad59UZqYzemwryvZYYdMk6CZwJScn4TborJp
 w6/yKs/RQw04Ww1niMzCezTy4/CfQDFX6NW9a9nDjT34AoDPEMxKO4MQXCnAIWvZ
 HRj6oHNnNzqVEvFuEVXb2M7l+VA8FOfffWcG2Ehe07LmrALUZbx2SQtKNDkyGsoU
 lhowFvWgeklx+BHL5sQIdBAKZwINajJLVc6FlkH/Mh8O/5JavUzd90IErunoJcYg
 ==
X-ME-Sender: <xms:_KfyXKCkChUD_dQe1UjZ39ztuPNZx9Mh3Q9HiHrIHQzqyL5Ydgpyyw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddrudeffedguddtgecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujggfsehttdertddtredvnecuhfhrohhmpefirhgv
 ghcumffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucfkphepkeefrdekiedrkeelrd
 dutdejnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomhen
 ucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:_KfyXAKecZrq_nTMfU6kDLNs03MzA4OO4ALIlZVWyuGakKuhVf5kBg>
 <xmx:_KfyXPup1dsrtKWSgylv0Ee6FekAGQ1T4Z2Xd_hJll_YFTxvMa7hKQ>
 <xmx:_KfyXHIylZ0NZn-20E8FiO40B12uzL1ENnef06W7Z-EnIcHIVC4M0A>
 <xmx:_6fyXFdKdLkEhd6BO8Vrb93mqDin6qbJozGTQ0UtET7KSfRiWhncJA>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 by mail.messagingengine.com (Postfix) with ESMTPA id E14418005C;
 Sat,  1 Jun 2019 12:29:47 -0400 (EDT)
Date: Sat, 1 Jun 2019 18:29:45 +0200
From: Greg KH <greg@kroah.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] treewide: fix typos of SPDX-License-Identifier
Message-ID: <20190601162945.GA6395@kroah.com>
References: <20190601032242.10405-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190601032242.10405-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_092958_255522_1266DDB9 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: alsa-devel@alsa-project.org, Kees Cook <keescook@chromium.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Liam Girdwood <lgirdwood@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Linus Walleij <linus.walleij@linaro.org>, Takashi Iwai <tiwai@suse.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-kernel@vger.kernel.org,
 Jaroslav Kysela <perex@perex.cz>, linux-renesas-soc@vger.kernel.org,
 linux-gpio@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Joe Perches <joe@perches.com>,
 linux-spdx@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 01, 2019 at 12:22:42PM +0900, Masahiro Yamada wrote:
> Prior to the adoption of SPDX, it was difficult for tools to determine
> the correct license due to incomplete or badly formatted license text.
> The SPDX solves this issue, assuming people can correctly spell
> "SPDX-License-Identifier" although this assumption is broken in some
> places.
> 
> Since scripts/spdxcheck.py parses only lines that exactly matches to
> the correct tag, it cannot (should not) detect this kind of error.
> 
> If the correct tag is missing, scripts/checkpatch.pl warns like this:
> 
>  WARNING: Missing or malformed SPDX-License-Identifier tag in line *
> 
> So, people should notice it before the patch submission, but in reality
> broken tags sometimes slip in. The checkpatch warning is not useful for
> checking the committed files globally since large number of files still
> have no SPDX tag.
> 
> Also, I am not sure about the legal effect when the SPDX tag is broken.
> 
> Anyway, these typos are absolutely worth fixing. It is pretty easy to
> find suspicious lines by grep.
> 
>   $ git grep --not -e SPDX-License-Identifier --and -e SPDX- -- \
>     :^LICENSES :^scripts/spdxcheck.py :^*/license-rules.rst
>   arch/arm/kernel/bugs.c:// SPDX-Identifier: GPL-2.0
>   drivers/phy/st/phy-stm32-usbphyc.c:// SPDX-Licence-Identifier: GPL-2.0
>   drivers/pinctrl/sh-pfc/pfc-r8a77980.c:// SPDX-Lincense-Identifier: GPL 2.0
>   lib/test_stackinit.c:// SPDX-Licenses: GPLv2
>   sound/soc/codecs/max9759.c:// SPDX-Licence-Identifier: GPL-2.0
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>

Very nice catch, thanks!  I'll go queue this up now.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
