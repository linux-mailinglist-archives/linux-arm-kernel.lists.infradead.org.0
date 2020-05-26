Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE901E1C99
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 09:56:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3qEdDsel+BsJBVWEB9Em3O2ljfxZYMGGSZo97zMjssE=; b=ai7ZUKux6C5j1V
	jfKKX1ofefWKZYW5O/5yFUJvEZARzuwDB2Ri10HGXfz0sWpposOIhBbQCWoTKHQQ2KjHDPUOZC0Gw
	svvJXAmh9765MmuOTVXmJKd4pDqemG8Yg2G1jk4NOVgN13RGuRjvZ5SyllJm9h+jaHpnY0jIewIMD
	YBBNDc7HtHU5M8hPOzN3C8zTsSnCbTicJTT7TWra4CLlH1Cy+Bs7O4PkMDy/svQDDQqE1cYXgYZKw
	ZALvmb++uJLxhZV93hunUmO386wS1Ba/9U6RgdopVmc0p21nAWDMZmo9+OCKbcu9yxI86Rufh1l/O
	uFxbPOzLghUr9tur5ARQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdUSC-0007lG-1C; Tue, 26 May 2020 07:56:52 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdUS3-0007k6-A3
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 07:56:44 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id E90A95C0058;
 Tue, 26 May 2020 03:56:37 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 26 May 2020 03:56:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:content-transfer-encoding:in-reply-to; s=fm2; bh=Z
 u9qqU+I+thjV7ih0gjMq+r1LnUk7vFMdi7Yew8UXJA=; b=xneF9++arCV/I77rR
 8tDgoctxQlEU8NQEX4Ez381uoRVlHrFxRnwUQt6j/dmP6Tz8QrKj9xh5oi+qGkf7
 7CLIYDqQ50alvXSblYSOK35/JoV/lycqKEVACaq07FM1XhYkpvld9OKDf/T/nPIX
 oMstbQijFskdWwMkeXr/L2Fnmx/NYkholzSYmB/zk3JRxq7ZopMK+ZAuxGOx9sg8
 mCq6aiv4ZETpLj26t5tOZPj5jQii2pHk7fvadHK1pjYXIK78++k/8Tt+BbMH++3h
 7EErQaTF1K5uUuSQwYOnu2tyg9OvX8rmlI8SaZrEx1Slq9L911h5oOyeS1SglYLp
 fVUzQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; bh=Zu9qqU+I+thjV7ih0gjMq+r1LnUk7vFMdi7Yew8UX
 JA=; b=p0cu4g70VqbywSbgNEoJJGrVh0fks3lfYnbqF9+Dt5jSYkkdic/bllsTh
 O77J/jq4X9lj2+sAWxFz++C7TzM2ywsTdVLknidD6RSBd1EpubjQWs3WLfG+Z3sm
 1uPZ0UDxrl9ndLRGaUxZ9lIRmtBR7jWDaUnO95RPsbBhVgo/3BKz/A9/MJH3imaG
 fmPXLLginST6wZlqGI1y9Ip4j96L2TPbclo22ejhobOsAGAW9xGlzdqn5We3osZ6
 GTOOr4sFK35zy3jbiTbFHO5hwrAbhp/2Ida66TJgNMpP9x4I8iIHiAoelkRHfJVc
 yxlj9AyEOox/5lmzjM4IVsdnB96qA==
X-ME-Sender: <xms:scvMXtW6yirSIt1uH7W78oOy4M0e6wqkOFer8qkJJ2MiaZMPRuFJ2A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvuddguddvvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggugfgjsehtqhertddttddvnecuhfhrohhmpeforgig
 ihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrf
 grthhtvghrnhepgfejtedtjefggfffvdetuedthedtheegheeuteekfeeghfdtteejkeel
 udegvddunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptd
 enucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:scvMXtkGf5broUr6pAbTdzLfNgFpIixxtsz-1ba5es1lu3Sy8OiVXA>
 <xmx:scvMXpY4qalIlkQ9EWDOhnvEhEoTtynFhThong14ufMKt6lp0SZrYA>
 <xmx:scvMXgVID8mORfqJf9rT0xHxW6GJ7TqUIm3trViClXYj0w8pmMOhJQ>
 <xmx:tcvMXsyv-p5n67fNuL0DwsQ7uh4PB8z8SzI0caVkb1jgVU5OHgqEQA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id E28AD328005E;
 Tue, 26 May 2020 03:56:32 -0400 (EDT)
Date: Tue, 26 May 2020 09:56:30 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Rikard Falkeborn <rikard.falkeborn@gmail.com>
Subject: Re: [PATCH 2/2] iommu/sun50i: Constify sun50i_iommu_ops
Message-ID: <20200526075630.wjevamadh5mcnleb@gilmour.lan>
References: <20200525214958.30015-1-rikard.falkeborn@gmail.com>
 <20200525214958.30015-3-rikard.falkeborn@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200525214958.30015-3-rikard.falkeborn@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_005643_488736_F8505979 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Joerg Roedel <joro@8bytes.org>, Chen-Yu Tsai <wens@csie.org>,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 25, 2020 at 11:49:58PM +0200, Rikard Falkeborn wrote:
> The struct sun50i_iommu_ops is not modified and can be made const to
> allow the compiler to put it in read-only memory.
> 
> Before:
>    text    data     bss     dec     hex filename
>   14358    2501      64   16923    421b drivers/iommu/sun50i-iommu.o
> 
> After:
>    text    data     bss     dec     hex filename
>   14726    2117      64   16907    420b drivers/iommu/sun50i-iommu.o
> 
> Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
