Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDDE1982CB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 19:54:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tZt8Zb1FMnvG95dXpVjusrySrInxUbeyQqRn6dJVnFQ=; b=BYr98GmXIdprtzUPkyrjFTa3j
	xwznbZCKMuvKejwHCFZmiV8cdzX6rbMWuyCFD3ohQ8f7TkoXt3RsxR3Feky3l6R+A3IzbEBzrp25i
	VUk9S8oWSt2+1gceNDsqaR7jJQVMIJ7psVM5jSzasPzi41v/Dg1eDWAfp9bTPrAHI5MGnUPGPHXWH
	PDz5BdkEj7bI8uJknCRx5KNhXr88Wmoszr1L4WSYzxX2fogYwyE6DnhHktz4tiwHcI/jBlOHSv3lh
	Iv8IjEf2hwrHLdQenkzXrrv5WuBatkuo5aslyiM4sEqW86ykp47q0zFWsuxR5/VrHReR4queTfbMA
	FVx9E0wcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIybu-0008KB-Es; Mon, 30 Mar 2020 17:54:06 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIybe-0008F2-Sm
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 17:53:52 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id CEF555C0156;
 Mon, 30 Mar 2020 13:53:49 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Mon, 30 Mar 2020 13:53:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=CO/QIjk6nVgu5l6xwmRAbGjYJII
 JyujEhdRtGQKC0yE=; b=WDPNg7gjzTvVo7d+rIGUCh5Q+yydtxODX3VC2EbKStl
 l8HDIRZLUTl3O831dUMZEC/1GrKL8CFx0BdqMcKNMgiv+MQLc87HmlX2iX7H4FYq
 15azSmdvBc4FBn3eNMFlSixNbxYyRA1BaVvZVlCRW+SWYSi6qeHnd6yURHIH0Wm1
 dCsTdOghvAo+cFxuWNpq63AX2lZWphfkq4zYE5e5/lhERtwYQPQQakNqZHWbiS/K
 LI/h0UxifIw8thUWg1m1u77S7nNQK2BAW5FoIlBUUqIpMPyiPZGT3E8WmtPT4ySZ
 cl+5S+zDpLBkD0GhuNDz4ASSDrfXj6cfXmvQFQkcWXQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=CO/QIj
 k6nVgu5l6xwmRAbGjYJIIJyujEhdRtGQKC0yE=; b=NSrzvOuU7xZY7KjoQZaek9
 QKirBMApR5sbHK6sByJvBcJby3HAsNE+xCGVmWqAIWuhNv79adbpcyehrdEEk8ne
 5dqft9smcmI5ief3RdWQhly9sHK07X/FZtiQBREC99HDQF9hkZ55H0Ely0fM1blu
 ZVPt5k/UlMnmFB7C3cg+jgVucKc7usy9bM5glkMtYXyAyEIFsluL2j6PsGeV4qOg
 QvmvYnRRf0NwNsROHyQVLrJGV8GcAu67ThtDdHXeWkHNAOIFgLCMPalNp/AeBMMo
 0ldgHtNrW0Os9PxSah4jIUpnLvlrgXIw+8OHUQhXkWOJBq1duIe+FA2ggfINO2CQ
 ==
X-ME-Sender: <xms:LTKCXvlC9v0ufYkzn3wmyUvw4StGhSJNYPPGh95j174wXGtFz01XGQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudeihedguddukecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujgesghdtreertddtjeenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkpheple
 dtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgr
 ihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:LTKCXu9SAXFkJ4gGPB073ikDj8R8hAVTuqRrRFKmUtHz3kBX-nDRlw>
 <xmx:LTKCXrHoetWILzt06Wtg1Cy1xk_wOmF8D70AT8QaAVq96XawU7D83g>
 <xmx:LTKCXm0GepNm5MEIzYtsyxjLuVl53wvhdJuE7vUfCTYi0CgEJ4Ecjw>
 <xmx:LTKCXk5uQMWH-EwF-EBHfQDTtDuKlvHCtSp6v_2mv5dXl-8F6TH6sA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 3B89D306CA01;
 Mon, 30 Mar 2020 13:53:49 -0400 (EDT)
Date: Mon, 30 Mar 2020 19:53:47 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: olinuxino: add user red LED
Message-ID: <20200330175347.r4uam7cybvuxlgog@gilmour.lan>
References: <20200325205924.30736-1-ynezz@true.cz>
MIME-Version: 1.0
In-Reply-To: <20200325205924.30736-1-ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_105351_124910_CEBD18AE 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5958276407151018012=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5958276407151018012==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nwt6gyfwcuq2byho"
Content-Disposition: inline


--nwt6gyfwcuq2byho
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 25, 2020 at 09:59:24PM +0100, Petr =C5=A0tetiar wrote:
> There is a red LED marked as `GPIO_LED1` on the silkscreen and connected
> to PE17 by default. So lets add this missing bit in the current hardware
> description.
>
> Signed-off-by: Petr =C5=A0tetiar <ynezz@true.cz>

QUeued for 5.8, thanks!
Maxime

--nwt6gyfwcuq2byho
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXoIyKwAKCRDj7w1vZxhR
xd6FAQDYqWDZm020M4w5o+B3FOfze/BkzqWC4OhCWE+zV1F8MwD8DpZYBKfNcDSq
p4b9HbGJU/Wpobkc5NXQmfPwF+viIww=
=v6rS
-----END PGP SIGNATURE-----

--nwt6gyfwcuq2byho--


--===============5958276407151018012==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5958276407151018012==--

