Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B306A15DA3A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 16:04:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yfLTsDL2ceGT8kD/678rl5gyrHtHZIk2Pgxodu/kf0U=; b=H6CvK/no4B0thk/L/mmBRcLXV
	LDV227+/Jwk697nWt2eUYUnN9J0HtCKoK1PMDiqV08AcKPvmwnJh4yvirMIJXzWw9Z/xmCkJUDEJd
	0vyzgpNkNGJGj7VTfXWLQjfDneW0x0d+kjz4ZrSI7fKQE0NKfM8ZmwY4Ap/u/IjJPqmlAtDZ3CD7W
	q1rcQCG5UYmNMKkST5Ha/d4oTXYGYHwDE/7kGpZegK8i/bBVBDtBF+Mmb3H/bhuyYtWMHvu47Spnv
	hHlzbevUTVGt+2DK1KmlZi2PLxmBZH2qi+p730KqBOdkw3S2yMPuGANoSGKnYILb9VIOw1KOUwFV8
	7DT5Qm4oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2cVk-00083u-1O; Fri, 14 Feb 2020 15:04:08 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2cVb-00082x-MM
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 15:04:01 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 5B09E21EA7;
 Fri, 14 Feb 2020 10:03:49 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 14 Feb 2020 10:03:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=jYZ/ja4iJGYnt7/lz+TnPFTC+sp
 g0HFZPU3salWJn5s=; b=yROXWEyysHhj/JBFaqOPnh831Pk8/t3rcOj765F6Vt7
 AKGOGSFl7pI8JlBT5kMmAP8Afz7k7XVKQ7hsPK/I4uG8nyaUtzKIvPMc5P3OfCEX
 jeSTkrGgRXGDifHU1XpoSWQQW7xaXlY669JrDyHYhK7RL1qh/62Yj2+tQP3uZnx8
 H4wHTKC7XYO45dqRiy4pxq87K4QClwAPf+VNEf5FoXK3bY033Jb1gl+Qh0C6FCE7
 lTXYSvIl81zI0fmKcD3Ne3lEPla+pNIK4s5Rq3FeKCthyOcmcEFCEEGQurnksnQ9
 ULu9FBmdWTkv21ki8GjvF2h9btWz0lDgkXIdyT1vITA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=jYZ/ja
 4iJGYnt7/lz+TnPFTC+spg0HFZPU3salWJn5s=; b=eZz9oCPy0M90LIiHTXINc2
 vhsHElbuCS0yc3WCE76cgDMAGQnUjpwQYM5czZ9DBNxrq4gxG3K7ajBSL7RPuJvd
 y4cSehXREHII7dhQs7Icr+2q9NO22YKBP/kPMbVMVb4h0qVpvVq1nRCDriTsuJS1
 1x2fecvOL1DO0PlUc5QhtVJx/vWrY+8Hg0KIRRM1VE8hb/k8RKopcJD7MjuVGaG2
 XSs4nrTX1vZGxEgeRNSpgyT+sTfrfPgpVj9t26/mqS/DbNzkevbgBv/8SJ1UyU9P
 lZtS2wn4SNs9iClPkcTUWkpQGeOfDkGUB0hAsiwsMSv7LCo514ewzHkP+Vvx1RYQ
 ==
X-ME-Sender: <xms:0bZGXu3b8_nZrEwos6Qs5eyYyI_Kcb_Hse2jZBin7UXchkd8NAfmWg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjedtgdejfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:0bZGXo2FbXgc58cFZ9n1AJvQiy5RbL2GxfYrr8D6BAAWFzXtFrGgHg>
 <xmx:0bZGXlexDPRwW_IfdgsAYR1K0E1QjjAHqwybP8dYzMajwfcpjyDLQA>
 <xmx:0bZGXqKtgjj1E5hDCQrBx5xdh2Boa79MiMvC3l1RGwtCX-JPh8x5tQ>
 <xmx:1bZGXq79eZ39-HjlJyq7pdIH6r6eblQANn5l7i45CvzC7pvYyqtOCQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 63D4A3280065;
 Fri, 14 Feb 2020 10:03:45 -0500 (EST)
Date: Fri, 14 Feb 2020 16:03:43 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH 3/9] arm64: dts: allwinner: pinebook: Remove unused
 AXP803 regulators
Message-ID: <20200214150343.7nn4ovmtm7tuz5qf@gilmour.lan>
References: <20200119163104.13274-1-samuel@sholland.org>
 <20200119163104.13274-3-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20200119163104.13274-3-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_070359_875287_F813769C 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6598277504937664857=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6598277504937664857==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3ki72llztinxksue"
Content-Disposition: inline


--3ki72llztinxksue
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Jan 19, 2020 at 10:30:58AM -0600, Samuel Holland wrote:
> The Pinebook does not use the CSI bus on the A64. In fact it does not
> use GPIO port E for anything at all. Thus the following regulators are
> not used and do not need voltages set:
>
>  - ALDO1: Connected to VCC-PE only
>  - DLDO3: Not connected
>  - ELDO3: Not connected
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Applied, thanks!
Maxime

--3ki72llztinxksue
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXka2zwAKCRDj7w1vZxhR
xY44AP0czZQey3xSnwLKppvGWIIPwWWcGREom04q9kJ3D3ZsvAEAkHuJVUNpyN2v
xumTYpqi90IwDQHuwMCwpBqjPAX2Kwg=
=zPwE
-----END PGP SIGNATURE-----

--3ki72llztinxksue--


--===============6598277504937664857==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6598277504937664857==--

