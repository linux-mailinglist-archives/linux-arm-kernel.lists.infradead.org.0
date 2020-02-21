Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 339E4167E79
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 14:26:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Raf3MDpF3uXfU7Emx8Ph2qVr8aqGHeWOHN9oKD8k0GU=; b=EJ/5JgtE6LTNp8decNKJbUWv0
	51zX+AY7gtkZ81CcY03AurwmflKyl3vXycLeKHtz6RhhwG3LbTVsAKdwDcff9+LnWMZMUxxAIIOcz
	HipeXU/DlYRw/2P9lAoi69U/svVwjmqv51XpPMltL2BTJG+38hkuLOtJqKKm/kEbiLPmPyVEGTvkR
	Tayah0LdZurHPcFUsCHiuRRi9mU9SdEsI9obZDVb9hdr7SX8kMN8+HKBz6u1lHQBJzlP696YwS1iM
	msS9S+onWRjvfa0QV9w30mDfxHboezN48HngSQkRvD2mw/ekhmy2mfRcIXERTR2bfol0CowjXmn+C
	bCRoyU4nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j58KF-0000Em-1f; Fri, 21 Feb 2020 13:26:39 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j58K4-0000EE-9o
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 13:26:29 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 6128821D25;
 Fri, 21 Feb 2020 08:26:21 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 21 Feb 2020 08:26:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=gVU2eTz5BGWktfD3OmcPbB4Fnbr
 h4G05fM39zqichlk=; b=kXmy1NEkzkfppwmu4OEbS5Zr9wgfLIfcY7QwojdFs+J
 nUnEORzVLWPbfRV7dxPhOPWDe1q+MFh3MNnE7iqMYIM0z0fXQLbIy6cwN7HOGH8n
 nBJ22EEvqhyLtNNxhVWBHzeLjMJ/4rO8d4MDkNtwR4EBEc2yEg/QegGQJfwyzwXN
 OAHfuFwF1xeusbaILP0ZJGyjGARXIBTevYfoCq3UgwpF3CXOHWv7UG69GG0YF4oy
 ALo/zPP4PbLEQeZ7OjElRVXUC88VVE/1++EPWYrNXuQ/q7s+xa1v2stq6uxMe+n+
 HpvV2UC7toVCyXWBwwzCaPu4KqlM4Y6+eeOAhFK4c6g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=gVU2eT
 z5BGWktfD3OmcPbB4Fnbrh4G05fM39zqichlk=; b=IshiBhERftd1y2cVr7BD0C
 8tp917z+XmZiifYyjZolgTJX7A/1lAGwdY/68YhGggyOEnLfZJal8QfantlJS5WR
 iLPOtjDZBjrvYQBvTyQ4SX0EbYJX9VHUhExmSv1KqorVwc/3sll2qdmHoZLlhrbn
 JFL6szNG+qWeL6Dmi9wALnFJ6OmznpBd3YRPbkRbfqg1guVuh0EJsfpoOX406Qsf
 Bu0Ajg/ChqPq7F8BJPeWq3M7s1HQgD1xnxGozBc6UsxfntIHUz1lg89PoYGwtF7J
 ZYVY1j3sFP1hDyatvQ0T9KtKnVnmVXsPF9A9gkM/Aeo5LNxghd1GIFJ6LfinLB9w
 ==
X-ME-Sender: <xms:fNpPXjzstiSr5Wo4m0u-LknVmeTTlBavU1W-JSfL5zGOvnkyTuapRg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrkeeggdehvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtderre
 dttddvnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegtvghr
 nhhordhtvggthheqnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuih
 iivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordht
 vggthh
X-ME-Proxy: <xmx:fNpPXpPFqR_T5YaW0DVyaTMigHzQPk-ekrEx0OSfQsquJZhEskprqQ>
 <xmx:fNpPXvpywJfKZ8Ya56ya0Ivst16xu3umgYKeK4PYmyp63flYdIQHgQ>
 <xmx:fNpPXiHreJeNZ6H1IHDvVAwOcRc5voIV6izaldULNH8ajBgKlkXDCQ>
 <xmx:fdpPXsTdkNJG1MdqsGv9l7q3uQVCO_LvWz56KXpryXc9YXHtWYsZpg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 9F0F63280064;
 Fri, 21 Feb 2020 08:26:20 -0500 (EST)
Date: Fri, 21 Feb 2020 14:26:18 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH] drm/sun4i: tcon: Support LVDS on the A33
Message-ID: <20200221132618.lonh563jzmzbyfmd@gilmour.lan>
References: <20200214120934.107924-1-maxime@cerno.tech>
 <CAGb2v67L9uMQJfx7BBgGUSq7D=LEE1w89s-kYQX+u3iPtrJX_A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v67L9uMQJfx7BBgGUSq7D=LEE1w89s-kYQX+u3iPtrJX_A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_052628_709126_7CB86BA7 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============8576315257757905366=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8576315257757905366==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="iggi2um5qsfmp5qg"
Content-Disposition: inline


--iggi2um5qsfmp5qg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi

On Fri, Feb 21, 2020 at 11:10:47AM +0800, Chen-Yu Tsai wrote:
> On Fri, Feb 14, 2020 at 8:09 PM Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > The A33 TCON supports LVDS, so we can toggle the support switch.
> >
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>
> Acked-by: Chen-Yu Tsai <wens@csie.org>
>
> The user manual doesn't list the bits for LVDS signal polarity though.
> I assume this was verified with the BSP or actual testing? (or rather,
> will be in the LVDS signal polarity patches.)

The polarity stuff is a separate series :)

But yeah, both were tested on hardware.

I've applied it, thanks!
Maxime

--iggi2um5qsfmp5qg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXk/aegAKCRDj7w1vZxhR
xe1WAQDRAxv0CunuTF31mcwpiIU+JC7FQfX0s4f8uDnNOsDMeAD/ZTPT+nfs0zkL
fOUlgcv9iMCTEFVI5O4e9K1rt352aQs=
=Py7j
-----END PGP SIGNATURE-----

--iggi2um5qsfmp5qg--


--===============8576315257757905366==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8576315257757905366==--

