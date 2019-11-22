Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7323D107280
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 13:53:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JnSY+XB5mKpdsesRuPQAVhd0PucKR8Wm374+8O6O8p0=; b=B6XO0kSyNI2jbW
	UcMkRHfj4pM/VQsqxaDGiW6YJnnCITqfyhbJRb52F+y4FDNt1uhb5fsRFhLkCq4LEziB5bRuIxrnv
	yPvQA9rCEMTijdWZ6kfXgp6yYQtTwMi2RoJvgY4OLVoRoFgOZScSyu7AWm1nsztyza17qM3jh0SHL
	2lP8AyA1uyDrZ8OKOfvZY0OvzfiLL9e1uB2RVq18985NsH+gb30jNTye6EWCoQ0AhXVwMDazrvMC/
	k9YZgZ+AjQFtJWbmmTod7y2WXMjew/OU5TBN629l6xID+KJoewNsjRh4za/kkucG0j/9siLnqFpxH
	GdvNYds3gtUOVWoIUJvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY8RJ-0000go-JV; Fri, 22 Nov 2019 12:53:33 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY8RA-0000f9-6S
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 12:53:25 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 778A150EA;
 Fri, 22 Nov 2019 07:53:16 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 22 Nov 2019 07:53:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=6sTaGdNaAmXwRq4Z1SN9IJKH5kM
 GbGtleKNhLuS6KCc=; b=GY3TSJ3cyNB/ELYaZuV8A4JzI1BnSHgTsWtwatzFMQ1
 +qyz/x4YpfIKfKwrxY14//8TUBs/sNm4IX89awRfB91iRdT3Qs8IBFEiiAGVp94D
 yVy1wB4cCHPAIkdS1nLHsgt9AzSlP+KhU04bxg46IMRT+9isBpe1QEJX+pdrKU5g
 QF8mHkIKr2rTNDjOwzoWKCK5wXsJfWuzcBJjc+gI7NTe3+x3r4CuIGQeu+DyGRzo
 C0JXS7dhk0R/Rqujk3ZlYG1NdlLADsSmxry7weB69Af84sgI2RYiCOpoDMIaLCws
 1Ec0vbvhbrKSLjjeqtX5A2TU6Gmecc5nEKzbHx0Micw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=6sTaGd
 NaAmXwRq4Z1SN9IJKH5kMGbGtleKNhLuS6KCc=; b=N2614tNYPyX/Ppe8PZ7zoG
 OKJIyoH0vBdx58kOTNIEA4g4i5JAJiEX8fOdTX03t3E0hwHAy87hTvsZu8GL4vCv
 nMGos43iq3x3eUvMiPuWxVtfNGQPD0J3hAHQmNDucZsoQOT6upX4P9dn1x+IBAJR
 GVweTZka4jKc6D1T797Qt5/CqQIrOmg6PdodkG345U+XimATQoCYFrwDVc3Vm0n7
 wY9Bt4elDZ3XLU1KlBPplcPukeVY+guEhcHnIySzQKolG4dOPmkLPlUrbBOfUFY+
 DonKbF8GZvVl4bszSxshEaJzkAo6BQg97WQEB39j8BoKIeed2UgpwB422gz6sprw
 ==
X-ME-Sender: <xms:ONrXXfspYttb_FGwg4feQCUKW3Cuze2CKmn7gG8ultW6G6OyTKNPFg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudehgedggeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujggfsehttd
 ertddtredvnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegt
 vghrnhhordhtvggthheqnecukfhppeeltddrkeelrdeikedrjeeinecurfgrrhgrmhepmh
 grihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghhnecuvehluhhsthgvrhfu
 ihiivgeptd
X-ME-Proxy: <xmx:ONrXXR0A77t3Rrze9Stj3tjITlYJ9AbhRQbTDiroGSsfKYolhTB-ww>
 <xmx:ONrXXfxwTluPtoy8Vk-wAC-heffLw0dWicrlsRGrVmjqzNo16feFnw>
 <xmx:ONrXXVVqCv5JZ1My3N64FvfyexWvqlrx_t4BLF6v6biF18p6bBlSQA>
 <xmx:PNrXXTeRfTFSjCBjey-yFNLl_uofxUM5PdxlXGUT5Z_Aa1XYjxXA3g>
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id DD2DC8005B;
 Fri, 22 Nov 2019 07:53:11 -0500 (EST)
Date: Fri, 22 Nov 2019 13:53:09 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH v2 3/3] crypto: sun4i-ss: add the A33 variant of SS
Message-ID: <20191122125309.GL4345@gilmour.lan>
References: <20191120152833.20443-1-clabbe.montjoie@gmail.com>
 <20191120152833.20443-4-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191120152833.20443-4-clabbe.montjoie@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_045324_307617_780121E8 
X-CRM114-Status: UNSURE (   7.46  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 20, 2019 at 04:28:33PM +0100, Corentin Labbe wrote:
> The A33 SS has a difference with all other SS, it give SHA1 digest
> directly in BE.
> So this patch adds variant support in sun4i-ss.
>
> Fixes: 6298e948215f ("crypto: sunxi-ss - Add Allwinner Security System crypto accelerator")
> Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>

Acked-by: Maxime Ripard <mripard@kernel.org>

I'll apply the DT patches once Herbert will have merged this patch.

Thanks!
Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
