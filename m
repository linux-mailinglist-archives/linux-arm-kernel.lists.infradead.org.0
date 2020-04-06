Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E8119F242
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 11:15:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8LpAzk+GNJjoTylcH9+TDC0JkEW7PHCmLPcRk1HVzPY=; b=IqFjrJqV699xwQxmUj42bqJy0
	jEc7RavvfNoPx5h3wprc+DcoGZWxHKJ5Ku56fr1wIkrhIdf5K23hj5YAZ7RB9Z3HKYN/7sY3mubtk
	oos+YpezvuBoWSR6P/XXBNFZ/EL6TjCTcGdDG3YyqyLsk71zWfBlr94k+mK1Dsiqk/yYY3VMFFJOh
	r13ZK3cLli81fG+WWCEKA5sGirKGxDqJRFRqPGuRXbhwTeDFlEbWfSxulzfek2KauDyH9UUxI4+33
	4BxunB7ElG4AS3RHxNVcjXI1nYGkuC+jQu0J2QKeFzTMTTm4XeMSziUMDQ/03eTdVCK/5shDL/6WX
	xm59M+9IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLNqn-0001hA-Bg; Mon, 06 Apr 2020 09:15:25 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLNqe-0001Ms-KV
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 09:15:19 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id DB10B58014F;
 Mon,  6 Apr 2020 05:15:10 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 06 Apr 2020 05:15:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=Yo+kk4ssQ5zTwLnaP0Ele1F1y+q
 26rLa/dshj8KwXRs=; b=Ro214fb4noi/VPI5Awh/ibsEBUH7Z0GDSeRdL6qHYNE
 WSGTgsQP5+6VhuWw9Ijk1lgaOPmNONRf3EXjX8sa2BbJjqInAyBuf7Uv+Iy9M5+L
 usgr7yewwEJCyjQBbXkhtq1iAOxPOgrQKjQn97RIGsIpyIvAbly7HOg72t48Anxc
 8DH12mBcovs+0oMyKWConql2bipT4Xc3eACcVNNoXxKaaaWJfQMbqRSSel++g22P
 88fpGjS/9ACxPKF+9zWSFkDNDfukHxY7Wq/CvlnVHC40a2M4Am/eO/w6YbA0mu2x
 vcyPGvsuxx1bp4fA/89o74GRTRPjrTba2A8I+WhmUTQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=Yo+kk4
 ssQ5zTwLnaP0Ele1F1y+q26rLa/dshj8KwXRs=; b=FR5Grp1IpF2SHehuXf4r3T
 jtjEpQUxE/4oUH49uBfa3ICmSkitQx0xtqkdtzt9M/hCnqxkETqV7RBMO/0CkIu9
 xeBKOs9HQS2snUBhB3iidR9TZaoU3kG4SaTcsr8RKXhgLrHih+Muo4tTin/yFwEP
 O6tLMUSLGUkCCNCRi0u9oLIkmmJoAUkyU/5TlYtTZsTBZmKxrVW74qoGeI5nnS+5
 5VObxN3qoh1brt1cxFT5fdkNMERQrJ5AcqzOzqLGEtHAgV7TZaz7z+Si/AY3TobL
 vZ4vzoDsgtCsa17DkciA/hIEqII76xDso8J5lB5yuSC5gLhGxnwXssch2lh5Jm2g
 ==
X-ME-Sender: <xms:HfOKXr5Nyxk6k1GVM9huhudZON1Hd0xo4IV5rT93EZvHaC1VzD3jTw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudefgdduhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinh
 epkhgvrhhnvghlrdhorhhgnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnh
 hordhtvggthh
X-ME-Proxy: <xmx:HfOKXn0d3TaUbMsAZPubP-kvk10FGNh38AW9nbJRP30Fl6YIAcNAAg>
 <xmx:HfOKXnn4plu2WCUixfRxj3e5hNUQWt_Gk-ZHD2dx30OJhCPOGFUKQw>
 <xmx:HfOKXggQ-btirr7O0G8WO0ikBaRltjPaSejWBznZ5pkiSr3u8c_CCg>
 <xmx:HvOKXmsisu5MBDr0BCoB62pLG6EMM8T4AHp8Oc61JSeoAWyA-6YXhw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7C6C9328005D;
 Mon,  6 Apr 2020 05:15:09 -0400 (EDT)
Date: Mon, 6 Apr 2020 11:15:07 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH v7 0/6] Allwinner sun6i message box support
Message-ID: <20200406091507.jojdzjidru64sjhm@gilmour.lan>
References: <20200223040853.2658-1-samuel@sholland.org>
 <59dc1ee9-a369-7cf9-df6a-4b5b99e24324@sholland.org>
MIME-Version: 1.0
In-Reply-To: <59dc1ee9-a369-7cf9-df6a-4b5b99e24324@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_021517_054586_DB4347B7 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ondrej Jirman <megous@megous.com>,
 devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3893452004733694367=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3893452004733694367==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xdzfhjy327jx4nkm"
Content-Disposition: inline


--xdzfhjy327jx4nkm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 01, 2020 at 11:55:34AM -0500, Samuel Holland wrote:
> On 2/22/20 10:08 PM, Samuel Holland wrote:
> > Samuel Holland (6):
> >   dt-bindings: mailbox: Add a binding for the sun6i msgbox
> >   mailbox: sun6i-msgbox: Add a new mailbox driver
>
> These two patches have been applied for 5.7[1], so the DTS changes should be
> ready to apply as well.
>
> [1]:
> https://lore.kernel.org/lkml/CABb+yY0-q+5+pqP-rBHCYpw-LmT+h80+OU26XL34fTrXhO+T3Q@mail.gmail.com/

Sorry, I missed that it was merged and sent for a PR.

I've queued the DT changes for 5.8

Maxime

--xdzfhjy327jx4nkm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXorzGwAKCRDj7w1vZxhR
xfkjAQDQamF1U+7L7tVY2lQH6acuSJ6qmfCYNC0tJ9ZUu1NNmQD9H2qUHh5Aqh+d
wYXK+j0yeHQAgMu9TwBZ32Dg/eeKRwU=
=ay2J
-----END PGP SIGNATURE-----

--xdzfhjy327jx4nkm--


--===============3893452004733694367==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3893452004733694367==--

