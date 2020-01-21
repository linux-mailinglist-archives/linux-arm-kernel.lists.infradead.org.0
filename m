Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47DB114390C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 10:06:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w6m1T4koAVXl8dE/W+u8K7eoZYX5QhmL6vaDBRUl1tk=; b=dUUAL08xTmr7p/OUw528fqAI3
	DNbJLNBzivNCSWyWrtj5tWlJowdACz86vIId1bEAOB5JCmCfyjjEhurdClfA+DlB0G9INzcxiQB0W
	9hQXc9ej28hIGJrDTuqkixp3uzrjHcEaxq7tosYf7pYmckGhXqFsvqYLcN/8Ief10vurg5s0s+kmH
	+EH4zgXHZS4fN61c5TNFCcLmqJVkJtTgOb/fZOMfASZY6NCT+7Vs7+mclslioTq0jIDZKUnrJ21Uj
	19kTicPot2KUXUY6X76Syf5bSI+trPMGRCGdghoQ/lUjqDF7eVdB6jRV2nr9+e9XLsI1NdGGNZflg
	8wt0qpRgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itpUU-0004GF-Os; Tue, 21 Jan 2020 09:06:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itpUE-0004F1-7R
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 09:06:19 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 78A8A217F4;
 Tue, 21 Jan 2020 09:06:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579597573;
 bh=IP8TTw8eR6SNbEms/U3ClJl6G3JlSnBntMjeiJR+aLw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ulkwydaYKwH9sf+SVZaVUZfxrIobH2lusklXVx+kmgK+Kzk5JDwSZMEaSUrba1W69
 63heEO5/XmOh2pRT6cDt7Mm/Io6roY0YChYpLaWIhPlgbRMXjNjyvIN1OC1MBYb8su
 IXsv/WISN1AU7847ysZLyc/zGZD20HXf0JuMnuXo=
Date: Tue, 21 Jan 2020 10:06:11 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH 4/9] arm64: dts: allwinner: pinebook: Sort device tree
 nodes
Message-ID: <20200121090611.nnhfpudc2qlws6mi@gilmour.lan>
References: <20200119163104.13274-1-samuel@sholland.org>
 <20200119163104.13274-4-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20200119163104.13274-4-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_010614_284315_C1C1440F 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Content-Type: multipart/mixed; boundary="===============1251529835809143671=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1251529835809143671==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kyhjvp2xlumhq76a"
Content-Disposition: inline


--kyhjvp2xlumhq76a
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Jan 19, 2020 at 10:30:59AM -0600, Samuel Holland wrote:
> The r_i2c node should come before r_rsb, and in any case should not
> separate the axp803 node from its subnodes.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Applied, thanks!
Maxime

--kyhjvp2xlumhq76a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXia/AwAKCRDj7w1vZxhR
xeUkAPsHyBiBu4ddK9CKV4lDlwvilSLPKPU3fxtE40NQ0dpbtQEAj3n7bHXSXtlf
0dJ+UHMRUsdK2cvMIHQjLcGzUq0ZogM=
=9Udq
-----END PGP SIGNATURE-----

--kyhjvp2xlumhq76a--


--===============1251529835809143671==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1251529835809143671==--

