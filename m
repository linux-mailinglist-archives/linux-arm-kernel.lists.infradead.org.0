Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5141B10C09D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 00:27:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WGUGoKKPDGkw/t1iDWJ8KTKOQoaZ+1uC7XH8fqf3JCI=; b=CSqfMMw5pUJjBx
	Tb0WNKXvw4bIIPvp/a5kMEcfHW7JBK/Nj81Pus04wZ1FPn3TX/b1LcyvJgGTz6m/LaJuaKco7nSBd
	OotGrUmlJn83u7yHadVnDTx+J2BkxqndXhUnGqKGVRHHrzfRDuBYTQk38c9cBx0YyZGWp8ncciiRV
	KLiiNeE2sdXJfmWe2lIzW0yJEfjJJEkmbRAQhdROJP4LA4mskFCkKhezlmT8NkQzp0LpozTEQeq66
	UJ2M6qgjIZNzPHWvP2H5gA02x7TvThd1ka1cR6/8B7+r6Nigo7VfXY4JxIqEJVMzG+aY3UPEnaDRS
	UijhnY36kQqYTwAa/nFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia6iL-00055R-9W; Wed, 27 Nov 2019 23:27:17 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia6iC-00054n-Nk
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 23:27:10 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id D30B52268A;
 Wed, 27 Nov 2019 18:27:07 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Wed, 27 Nov 2019 18:27:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm1; bh=yBXiasXxv0gjhYCb054yfAMOsqC33OB
 WoEwFmmhBlDA=; b=CtG0VEmfW54ClNVWa6lkKSLgU4CLCQgybG6EGbYDalGEPMm
 FsfG7J8/ig4x8DxwEx4qV8A0Ee9hyFFq8lWl3gdqqfoR87ebIFaXR44g+OhSlsmJ
 i0k7hHmyN5LIrZ+S26rzmj088HzrgGasbH9fDkmPxMvu9AmvvPKaMYZ/5w/W75DJ
 kysFPwMZzoDoe0gxM7H7fnP1l1mVEHWMTpXMbARASNSlRPlKec1+xAaz1u/upT8K
 DcswakEHKtFx3GETC2SaeHZnQ2dF1O+ixFwNUL6gyxgKwh3kjCHW94PToi0UN3XC
 2DTJ+KQLjGJTiO0Rb3eFZcx7YJRxZqT5QTJi+3g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=yBXias
 Xxv0gjhYCb054yfAMOsqC33OBWoEwFmmhBlDA=; b=DpByWhcoz5fQJTyByH06/r
 fV2sTlTnBpTfBb1dElxF+kpeEGdEMDuDgAXddJ94Gs4/oVUHHzJH1L1xq4LDGqnD
 aW+CP5ZJs1JliPsmOKcAvG5tTGujC0QzHLLzbu0i6P3oyDT6nyD38Yf2Mgxj09e+
 vWnRXTxMSDTEemm6vlwA0hPCJQ8bh3xyTHRBRXLKrP/LyAnnaIIA2+APKmrKHuCj
 LOPL9gQQxpg2spwsorgVdpj2HhAmt4ubR3JUZFjfa2CDxX4xEGsAphDemb8rLPfm
 fFyGY38TkaUPPSRg6vM6tR6bWq/muWCVl/45L83/bLxvxU/uavkAS5HMwlZYzkYg
 ==
X-ME-Sender: <xms:SgbfXUZ0teA62JsetIiouIbDFZ2wIgIqrkoRupzWmriMeaGyUtpNjw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudeiiedgtdelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:SgbfXfYtg8mGRSgkaeRQJoYHgqYG_HscXjG5EWhiN1ea-XhZYQldpg>
 <xmx:SgbfXW1-LZMMZWOA9WIfrTeapZOF5tT2yYOuUDAk2IHQM0AssjTJ5A>
 <xmx:SgbfXdUd-QLH1pe_RzGcVR2_qv5okNT5u4viCWCC_2jLajY4XBTsbA>
 <xmx:SwbfXWwI73HKS4JN_feji9NFDdfWof7FuLFkS5jmB9G3Gj7ny05Edw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 3CAF8E00A2; Wed, 27 Nov 2019 18:27:06 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-578-g826f590-fmstable-20191119v1
Mime-Version: 1.0
Message-Id: <01b18f38-2faa-4896-9a61-d0c657596c6f@www.fastmail.com>
In-Reply-To: <493e2f9ed5aff112519adcdf2d3044bf54c2d91a.1572945709.git.matti.vaittinen@fi.rohmeurope.com>
References: <cover.1572945709.git.matti.vaittinen@fi.rohmeurope.com>
 <493e2f9ed5aff112519adcdf2d3044bf54c2d91a.1572945709.git.matti.vaittinen@fi.rohmeurope.com>
Date: Thu, 28 Nov 2019 09:58:35 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Matti Vaittinen" <matti.vaittinen@fi.rohmeurope.com>,
 mazziesaccount@gmail.com
Subject: Re: [PATCH 07/62] gpio: gpio-aspeed: Use new GPIO_LINE_DIRECTION
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_152708_844138_0B62368C 
X-CRM114-Status: UNSURE (   6.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-aspeed@lists.ozlabs.org, linux-gpio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Joel Stanley <joel@jms.id.au>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Tue, 5 Nov 2019, at 20:42, Matti Vaittinen wrote:
> It's hard for occasional GPIO code reader/writer to know if values 0/1
> equal to IN or OUT. Use defined GPIO_LINE_DIRECTION_IN and
> GPIO_LINE_DIRECTION_OUT to help them out.
> 
> Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>

Not sure where the series is at, but this looks fine to me:

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
