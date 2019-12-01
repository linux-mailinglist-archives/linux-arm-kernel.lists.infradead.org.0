Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC6810E3EC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 00:28:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2onowT9YFiCgiTEuC6iwesBPrBYImqWJIL8HYgcxogY=; b=SLoVOFzujjK4zh
	koxi/ryfhSTT7VuiNPInEJWkm3hWPIG0kryG0ciaVZJQelt7oyPHYYDHNAh/SfqXSSjActn1VN3kQ
	jr2eYWC51lTMBxNTyaGx5Pt6e57I62efSVczpqNAP76k7XD+C/3NPNiabOcF68tG0kbcZz4cmXNi9
	e9yPgOonMpkFkndcK5U6bKbgE6rtCOdNL2KXXmCOBIgUSQH1Czr22ejOLdeKUBrpWzO3QgFNokTXI
	4hLs8srmqfViOY7iMT9P1g+Qporwyf2WaVCcPGE6ywJrJON89sPaXD8Dr4/OHNy7B7d2wbfs17D4o
	WtB38mWBCwdxVGK6CMPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibYdp-0004me-UO; Sun, 01 Dec 2019 23:28:37 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibYdk-0004lv-FW
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Dec 2019 23:28:33 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id DAA39B59;
 Sun,  1 Dec 2019 18:28:25 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Sun, 01 Dec 2019 18:28:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm1; bh=9iNu/StSTwvVolzT5BSQE4CDTn1BdOH
 wa5OXvvpgJOs=; b=Gxi2ecUvzZT0u5JXvhYuEyFyAhoVoeNh6YkocpxhuEBd9ZE
 pKDO7OqH3tzWx9Odf53njngOz8U7Rf0KjcqsA2zcZGBxxQSE6g+Taxr732qTsG08
 NmMK0jEU15kr8Ec4E3S2Nl5eKbLbVOUITbg6lihDJFoWxTl36mhZOaiprChzXmUM
 gD49lK++GnryC80KPzRhYzGnB/ZjFG478n48NS0dm5tMiKalWdcRmzBr1Nx54aYy
 eSwFXllBGB0Rq4GkQA2LMtAAnCe5FCL3s8nBpRuNbrRwaDCGKeLl19QUAT9UK5Mg
 4vXS/cBS/iNbSoEx+j32q2Yh/IvjkgEYsr07goA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=9iNu/S
 tSTwvVolzT5BSQE4CDTn1BdOHwa5OXvvpgJOs=; b=AIFo9OU6OhHIk+jHZL7NCj
 wVAxqtexSYOCs8bV5YMdfHkOn2dkJ35OHG2p/T1jwwhp7beGVp7j/CNX2JUvgy+K
 Rv38zwWEB27XYQG+N4x8lgPeEwbUiVcvSO16ZDLSRWBr0st6VbyUKwdzrUjTt9HG
 iYZc4G/fv1NreJO8NkJUnIWqrUnynwOL/nvAoJ7peFYwBVlOHHVeMnHtsOdDQofM
 4CzR73Q1tkjcha2eq62ZFWUBW3EZjbamemoH33w7DyR+gnnCvcU+IwsFW6n7BVZQ
 vAC/xZDdIxJYspUpbk53JnpG2346a5tV+R5lrIC0hQykhrY54e2Gxs7/9tpBB4JA
 ==
X-ME-Sender: <xms:l0zkXWGqlPvPlqeFweDYVnRTRqrFsLgv0I4RoqLizKANGEm3AWOP-w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejgedgudduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:l0zkXZOOIMfhOdo9Kh-oTcHz15zXHA9jgJNjO0goshsg7PT9-ZoQbw>
 <xmx:l0zkXZjMnVFO98GRmpUzNo5ftA95gcfDQ0whm5MoDP41vKJ1lzHYbA>
 <xmx:l0zkXZmEvbq1WDF-6IESJw3o5v-q4niA9ufZ7ye1Yfmijiu707Ub1g>
 <xmx:mUzkXUXKA8tAR5JGl0pLx12iUD4EeFZhBtm7wAXV9gRz1pr24PhoVA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 9B780E00A2; Sun,  1 Dec 2019 18:28:23 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-578-g826f590-fmstable-20191119v1
Mime-Version: 1.0
Message-Id: <09b06ed9-ae1c-4bbe-bcb6-c518c4dfd5d2@www.fastmail.com>
In-Reply-To: <20191129000827.650566-2-joel@jms.id.au>
References: <20191129000827.650566-1-joel@jms.id.au>
 <20191129000827.650566-2-joel@jms.id.au>
Date: Mon, 02 Dec 2019 09:59:57 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Joel Stanley" <joel@jms.id.au>, "Lee Jones" <lee.jones@linaro.org>,
 "Rob Herring" <robh+dt@kernel.org>, "Philipp Zabel" <p.zabel@pengutronix.de>
Subject: Re: [PATCH v2 1/2] dt-bindings: mfd: Add ast2600 to ASPEED LPC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_152832_708509_CE234AC8 
X-CRM114-Status: UNSURE (   4.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.25 listed in list.dnswl.org]
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Fri, 29 Nov 2019, at 10:38, Joel Stanley wrote:
> The AST2600 has the same LPC layout as previous generation SoCs.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
