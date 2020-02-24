Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CFDA169B14
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 01:07:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vPNj2Q8UFpPuapNe8EzwSQ4TggVnbyQ5sPSzuBCh3Ps=; b=ILNhrTyEl+R07L
	HX5FBLR1HVwLc7WeMP3zefGvXm5Bgo9Iibu7rnQj7EzD1FwS82P3zsts8vpcpWboZL8x1fv+K9gnW
	FbvPvnxPCVpR2ATmJ6au0A6UWCGHUghmtKOma9xD6H959mAnw1YFnhSM9uPCNHISKZjEspwZvT0J+
	rjipeNt7AKJR+eUGPCCwPLHGSlj+6JLwumE1fqZXhYznlfT1BOTcekhnXb9c1jEIVLZfkEltA6qVP
	ao75n3f1UZH7oK4yhUqFufFjd7rKIRgUVmp01V+ZjlbvlXNZKGSS0Qg07E8No+/9zCC8nGJrxRidd
	hQghTjZ6LSi1y3G0C3ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j61HK-0007tA-Km; Mon, 24 Feb 2020 00:07:18 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j61HC-0007sg-AC
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 00:07:11 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 8C30F20A4B;
 Sun, 23 Feb 2020 19:06:55 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Sun, 23 Feb 2020 19:06:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=zjhLqXsGdwHmDXQ4loElGl5IBhTi4NI
 teyaEj1OhzX0=; b=pMIvQxSM7Sx8a5nkQzbt7ZFK/MAHlcTi1D3f+ks+P/0EKLo
 6SAqSKgyK7eLnr9gb0WRoCjmsYSevkz8doLPRU1crKf5iem3xkd91XjVTtfyed2s
 UbmZlOaMOEb59rUmSADPxSLYxolVKZoVbLe37IJ5wPtR9xDI5YCK31SYR4xq2Rci
 ki5Nio2Ku7yuTJp5vz0QYgmRkmbr8xQgEivf7MMb5CdGnzUF8gIPfzyCe62xojx6
 8o5bo/Mht62rUZRbcPQuvEw2skBtB5C8IcZFPteC19ML2U7GcJQ0ppMkRxQjbVs+
 x7m9qqyhICAxmAiCZS/lgflQwPX0tSrkAAS0x1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=zjhLqX
 sGdwHmDXQ4loElGl5IBhTi4NIteyaEj1OhzX0=; b=Kl9m75Lgt1kvotcVMiTCEa
 JFVqY3d6ZyBArGZn0X/iKGaAt5+J2Cb747X2tw0H5gVULjjSILHn+yVRBwMZpKOY
 omSWqe+HmTx3Ie6sjlPNWbb/gSWajKydpCgmKodvgaIgQFtPT++1JbTOc2VretjJ
 uevH6h1m+YOWSDuXPZbOHvnL6rqrlGLqKL6+7VDmmPgSr5wPzwPTrdUZ3arjA2/E
 plgeoIKlvPk1hB8roLOrX8o+HSTsgctZC9bIo3maQpEh6P1I6XqFwPaVXnsC7VrS
 gYdbyKc0NuEvflaGG8hn21IuEVmU2Tlf7km9ao34juMTsOu415lpyzU83XkJzjPw
 ==
X-ME-Sender: <xms:nBNTXlGexT6W00zZwqe5NhyI45Mm3-x-EfUkj2m1tCDBTPa45nLLkQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrkeelgddulecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucevlhhush
 htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghj
 rdhiugdrrghu
X-ME-Proxy: <xmx:nBNTXoDnePLBa_Y_9k7NJkxs4WhfSQp8lTAkWuV86lg67zuSOFyFNQ>
 <xmx:nBNTXhko0weVkNUI0dB4G_laWk2E0gIVeuw7fS2hjoyfGZk3yLZYsg>
 <xmx:nBNTXjSqxLmg3j9fEEBlhoG8sA6IUJPl3sLCZdb3uQrjMKSS4GwFZQ>
 <xmx:nxNTXokN7xZ8q4h5XmrjbQQZMMPf4p_hbjDdjrAiAWe_PRVXSUi1Og>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id C3486E00D1; Sun, 23 Feb 2020 19:06:52 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-802-g7a41c81-fmstable-20200203v1
Mime-Version: 1.0
Message-Id: <020e9eb5-4fdc-44d0-b00e-42b6e6435110@www.fastmail.com>
In-Reply-To: <20200222235152.242816-1-megous@megous.com>
References: <20200222235152.242816-1-megous@megous.com>
Date: Mon, 24 Feb 2020 10:36:47 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Ondrej Jirman" <megous@megous.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drm: aspeed: Fix GENMASK misuse
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_160710_425058_224C5096 
X-CRM114-Status: UNSURE (   6.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.25 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "open list:DRM DRIVER FOR ASPEED BMC GFX" <linux-aspeed@lists.ozlabs.org>,
 David Airlie <airlied@linux.ie>,
 "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
 Joel Stanley <joel@jms.id.au>, Daniel Vetter <daniel@ffwll.ch>,
 "moderated list:ARM/ASPEED MACHINE SUPPORT"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Sun, 23 Feb 2020, at 10:21, Ondrej Jirman wrote:
> Arguments to GENMASK should be msb >= lsb.
> 
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> ---
> I just grepped the whole kernel tree for GENMASK argument order issues,
> and this is one of the three that popped up. No testing was done.

I think someone's sent a patch previously, and last time it turned into a
discussion about how the macros aren't actually used and could be
removed.

Regardless:

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
