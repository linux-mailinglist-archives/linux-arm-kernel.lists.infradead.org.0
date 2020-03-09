Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A62BA17DCD0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 10:58:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hRpb5ad0bWIfGtGkH5S/xaf7jAlHCASDdIi8oP+zrxY=; b=lQAYkiaNIQZwlYUFN1gl56LD7
	EH9VHVZhDzXmCq7q8+Ety8m1A5zz8FgSVrGIymUpvQ7+GFb8syb/h3ooLPZilauFZ+95omigs6Sna
	bBz7cgRbF5sfonfU/h49L57m2oDrzO7NDu1rYZVWE1MCwBmbF9Yv3E3rhD2TObakC0ES84baYEiY2
	SZd0ITQk9/aZ0xPK541VZRTKONLT9HUgLr4XHNmQZHqrRUI0NqR7PdBccDN/SY6rX3yEbqYeL48P7
	Itu/y8Ndr+6hHr7JPAK6eitszxEmnhs3OC4TwTY6mMVYsp82VrPV3JQmBzMfE5hmBzcAUjwMZkZr/
	GzNX1hcQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBFB9-0002G3-64; Mon, 09 Mar 2020 09:58:31 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBFB2-0002EO-04; Mon, 09 Mar 2020 09:58:25 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id BA7F52616;
 Mon,  9 Mar 2020 05:58:14 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 09 Mar 2020 05:58:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=x843TymkohDL0CNnlBbHCXKt7Ii
 gsbMrdZT6H6SSLmM=; b=rhP8IqmZ+jnmVnsMHlCOIX+LbZ63kU8RwEc3J0svGNY
 6l8keSJodZj1KEAzWpHFBUVsnNW/4Hoc5BNgfSJx1dlqwpUOnP6llj1JLVytgp8n
 G1VcpWl/HmiI62RepxfoKu4dquSqAHs+Yz2NPjR98pBIxB6DvTh0Oe7zzXa4V2io
 bzkne9Fd1SjR1ug31fLXuWQM62HVBP5MBI0uuZDcCSzNA9ForGP2B3w+r3lSMXGc
 Uaml2qVaTO/vYNR1e5lJAGzgiN6rewod4YdnLGuTyoNiwxk4k/H9Sd1Ox4uG0vX7
 8GALFXpaZxngop8xIjwSQ+ObinvCPW7UGMToYY+QvEw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=x843Ty
 mkohDL0CNnlBbHCXKt7IigsbMrdZT6H6SSLmM=; b=MalW71/b0+98hpXSkEDGTd
 vItpnoXZ67gxttvgn8L//69iT2ScZYAkAXmTTi686fLpmjy6KIfpyTygbxyjv2gu
 NHiCm6ALZHS2jrMN4UW0bUHTyOJB4wgSaiuosEQwG3fqjuFm8t6MeuFNiPQbtBov
 H28FF+AvM84P6KVV/DHjHXvXL300JIBQWkkTqg4qxh7Nv8b9Oqhc4qaygrsNWMBe
 Yjr7emvKu9pF2YVO/Cf1pnTTr/WCYh/BplhCbQIgkVvWzJWyws+sPlDOVkQ8mUD5
 zRvHUEB5Efx+n/zMaqbn+U2GTLEJMZDUFhMIZcC8TL+lDH+hKe/OC2IfF60iJJUg
 ==
X-ME-Sender: <xms:NRNmXpJ642poT0Dt5Kmbum1UY08WvQ2u-9noaK5LPgiEhXZ_Q_8JcA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedruddukedgudduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:NRNmXvJKMpM5sDIjsIbInMlrLqbf8VAmWT6jQzFtiXrlhS7-654RDg>
 <xmx:NRNmXrxTqXFf5uSjuEE01s01PFt-cmZKHMZHD60E7njKY7Tmp-clFA>
 <xmx:NRNmXsJk5dlb4qXdDhwjsS0WwflSz1y6CIusJe9p-qL30nODKfJnfw>
 <xmx:NhNmXjlWHrL3bFOKqIfhkg4kI_jidnrmXT-SZ4RyTgi6r-VKZPseCg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0A780328005D;
 Mon,  9 Mar 2020 05:58:12 -0400 (EDT)
Date: Mon, 9 Mar 2020 10:58:11 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH 4/7] mtd: rawnand: sunxi: Use dma_request_chan() instead
 dma_request_slave_channel()
Message-ID: <20200309095811.hg4maq663eaj3opz@gilmour.lan>
References: <20200227123749.24064-1-peter.ujfalusi@ti.com>
 <20200227123749.24064-5-peter.ujfalusi@ti.com>
MIME-Version: 1.0
In-Reply-To: <20200227123749.24064-5-peter.ujfalusi@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_025824_180543_65F677E0 
X-CRM114-Status: UNSURE (   7.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: vkoul@kernel.org, vigneshr@ti.com, richard@nod.at,
 linux-kernel@vger.kernel.org, wens@csie.org, linux-mtd@lists.infradead.org,
 mcoquelin.stm32@gmail.com, miquel.raynal@bootlin.com, han.xu@nxp.com,
 linux-arm-kernel@lists.infradead.org, alexandre.torgue@st.com
Content-Type: multipart/mixed; boundary="===============2886440775199320947=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2886440775199320947==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ghgfzfwbprbf3thj"
Content-Disposition: inline


--ghgfzfwbprbf3thj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Feb 27, 2020 at 02:37:46PM +0200, Peter Ujfalusi wrote:
> dma_request_slave_channel() is a wrapper on top of dma_request_chan()
> eating up the error code.
>
> By using dma_request_chan() directly the driver can support deferred
> probing against DMA.
>
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

--ghgfzfwbprbf3thj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXmYTMwAKCRDj7w1vZxhR
xUqpAP9DxNAJ2AawCZ9Jr/Mw8AxjK5nNtLKe6A6jtOsi8iEfGAD/ScHhr9eJJULD
Ty0cjoA0+ExrVGQk6FoSzvrsIHJ3BwE=
=BoAI
-----END PGP SIGNATURE-----

--ghgfzfwbprbf3thj--


--===============2886440775199320947==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2886440775199320947==--

