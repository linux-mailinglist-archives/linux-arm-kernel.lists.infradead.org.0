Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4BB68951E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 02:53:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ETEMuiALO+QXC1TGShfQpcNLv6kxQWTxZNJrMLxiSXE=; b=ME5biF0Tqkv1N0
	k6hamozwE04zUfUb6UozmWTwKhN0eGxy+FIZhGSaFd9K8otmVsi7swgbDQ43en8AMzTNfznAS/6hg
	r9YWv3Cuqck3z9/Gb378UviMkv6EA97LORMiWTVyu+ZHmeuEVlccEmHSwrJ8ycwwdl1RG9Yez/7vK
	aNYxxG5IQGOjBKK+u/DVXhOrFubtt6OolkHd1fSl0rL88WUdhkFXq5HYe4nlnfyp+TuC7HiMcmty5
	uugUpWijTort4av7k+4RdNnyR2OZaALKA6+se1PvTTMnDs9sO+qdrViHbwgx1AZTALCThPq/BXaFK
	EBqYwMawykFYXUiCfvFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwyZn-000077-1a; Mon, 12 Aug 2019 00:52:43 +0000
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwyZF-00006a-3o
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 00:52:10 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id A1B5321E;
 Sun, 11 Aug 2019 20:51:54 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Sun, 11 Aug 2019 20:51:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=/vRZS0DH6BibYTI+jPSXeATx8DCWgvz
 KB2bf68zgCYQ=; b=OQek2Bg6nPx+MsQpoORrSMQGYewK50sRAfUejX06ZLWlOBG
 gn7XgbylvKurPPS5ys0R5IVfpXhTFMDXdWyX0mKClfr7T75O5bD3f7IJCU8Gh1s9
 YLSS1rsgbUsk6QfhyFv/srD+1BbDXgAD/89Y6r5vMCbhP9aHbxgE3KuY82EDN/lr
 ZvhX5WsHp78jWXRxsr1DhvuTJ+Kwk7Fe9op7n1PpfNiGdGVukF2WR1N6g33Be3Vc
 bM/HCQrRjmhxp7v/owwpJezKnNwEDyY3ZcYKrLEIXy9CSCRiHnaPJmHKzW+D760P
 DtNmt1qWG4i9DP9UQQSYbunB5/D26fewO9BxAow==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=/vRZS0
 DH6BibYTI+jPSXeATx8DCWgvzKB2bf68zgCYQ=; b=l4EgbgtFwY2Rpc1UyNz2W+
 SVRmVfLyLc4sGVwItuaAv9LJ/jyolnlF5S9783mgLebzuLBhoA29b1mfBtjfXlts
 nt6Qa/vDIhZUFwfSEXXitbVgP54MPr45swxOvFlpy1+X3/48Sn0flYvsdCrocClv
 MS3KOs2ZS3tyoY8zAwtSmlqSnwXglqStBVKdLy+19+/SJEqTHkK1H2fie7Hp1zmr
 s/KUU61alWy7z+Exs29OZunIrAoHKqq2YxK/idCRFkgRJ9dDk7/GeUA6L/jk0Y2V
 rtlWVclnKR7Ik144F39sFM0Y3e3Uk4/gh97MJmSnTUM/2RfPfMPFeW61hPmPH+9A
 ==
X-ME-Sender: <xms:KbhQXUG9-62aDcJWln-0fRcKkW7dmXKPACWIugq9hkhX3w-TU-muhQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddruddvfedggeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuffhomh
 grihhnpehgihhthhhusgdrtghomhenucfrrghrrghmpehmrghilhhfrhhomheprghnughr
 vgifsegrjhdrihgurdgruhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:KbhQXU9W_omMMMEsdmyjaJCTtlhrXfmQ3KUB8ekL7_ANC9twYQ9hXA>
 <xmx:KbhQXby0EuRf6TnVmdBphx1eiSVUUC8rYJuvXidsen8cy4t_cOTOeg>
 <xmx:KbhQXQOaNCOxABK2Jby3AbZlBGd4snluNAwo42JMlCx9npfu7ftg5g>
 <xmx:KrhQXTalqmfKIW_ZqyRhUrTSCKbpaRqhFzQ2d9LCJDTIvYS19-x12w>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 0A5CCE00A2; Sun, 11 Aug 2019 20:51:52 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-809-g8e5c451-fmstable-20190809v1
Mime-Version: 1.0
Message-Id: <e5aa4940-41d8-4c35-9783-09548e406885@www.fastmail.com>
In-Reply-To: <CACRpkdbDgOQXfxgM4dEyzBRhtske3=V+858B7J8jGExnJE5fJQ@mail.gmail.com>
References: <20190807003037.48457-1-natechancellor@gmail.com>
 <CACRpkdbDgOQXfxgM4dEyzBRhtske3=V+858B7J8jGExnJE5fJQ@mail.gmail.com>
Date: Mon, 12 Aug 2019 10:21:55 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Linus Walleij" <linus.walleij@linaro.org>,
 "Nathan Chancellor" <natechancellor@gmail.com>
Subject: =?UTF-8?Q?Re:_[PATCH]_pinctrl:_aspeed:_g6:_Remove_const_specifier_from_a?=
 =?UTF-8?Q?speed=5Fg6=5Fsig=5Fexpr=5Fset's_ctx_parameter?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_175209_337427_06DD276D 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.19 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 clang-built-linux@googlegroups.com,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Sat, 10 Aug 2019, at 17:43, Linus Walleij wrote:
> On Wed, Aug 7, 2019 at 2:32 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> 
> > clang errors:
> >
> > drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c:2325:9: error: incompatible
> > pointer types initializing 'int (*)(struct aspeed_pinmux_data *, const
> > struct aspeed_sig_expr *, bool)' with an expression of type 'int (const
> > struct aspeed_pinmux_data *, const struct aspeed_sig_expr *, bool)'
> > [-Werror,-Wincompatible-pointer-types]
> >         .set = aspeed_g6_sig_expr_set,
> >                ^~~~~~~~~~~~~~~~~~~~~~
> > 1 error generated.
> >
> > Commit 674fa8daa8c9 ("pinctrl: aspeed-g5: Delay acquisition of regmaps")
> > changed the set function pointer declaration and the g6 one wasn't
> > updated (I assume because it wasn't merged yet).
> >
> > Fixes: 2eda1cdec49f ("pinctrl: aspeed: Add AST2600 pinmux support")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/632
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> Patch applied with Andrew's ACK.

FYI this fixes pinctrl/for-next which is likely where Nathan ran into the issue,
however to fix pinctrl/devel we'll need a back-merge of pinctrl/fixes, or to
apply 674fa8daa8c9 ("pinctrl: aspeed-g5: Delay acquisition of regmaps") to
pinctrl/devel also.

Fixing that bug was unfortunate timing wrt the 2600 driver.

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
