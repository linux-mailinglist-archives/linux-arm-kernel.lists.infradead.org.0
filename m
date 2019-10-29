Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0095E82B8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 08:48:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NoSLCaGAlkMnQAJRdS9hrcXzV/c4YjUL7u5DBquV6eo=; b=OWEmdvBnbkBXjz2joKJRU8mDd
	RU++qGWAgnzU2z1MkEWldxaIWiHE/ncjW7LYe/0FrI3WfNImNvIToXhySWkXamcEx7dETaVXb0UGZ
	C4kBFTDz8aDlYdUcMf9aF/0EFtfxVq/d7AmL0uNuxxQIgmBRikQU7708ZO1yxOQ6iMAGuItSSC/XT
	/XYsKJ/mPRbxboP9vAFwFGLsgs6aGoqI3Ff7T5q8SMacmRmKxvGIyg8Ed29iJwOY77qZe/97GhYNj
	LVj+/CKtdZgDTZ4/+/YLdgoEXuyDHO9S+BA6PX0Wp4z3YUHtJ/oxO9d5zEXKamShAA49+ReLPFN3P
	FE39M8KTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPMFH-00054E-C2; Tue, 29 Oct 2019 07:48:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPMF2-00051i-LN
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 07:48:38 +0000
Received: from localhost (unknown [91.217.168.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 66E1F20862;
 Tue, 29 Oct 2019 07:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572335316;
 bh=FXgcfNOvXeZ6eBY7zQ7oil3dfcM2q0wnJso7d5WHhxw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dZKqDQIox/2uMUpK/QV6sPMi1BfuzxaFYWsLchJ5qWl0GxCWShvDRUhJBZbs92VRD
 PUAOmymSQcIYE6Gf9taNX2oiMh9322kdr1JVg/8IgWcf/K3gSyuN4vf7LaJQ68tzG3
 ZCqTUMCXNhvGpokgte0iXmwd9F+ywIBkqlrvPovM=
Date: Tue, 29 Oct 2019 08:43:21 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH] clk: sunxi-ng: a80: fix the zero'ing of bits 16 and 18
Message-ID: <20191029074321.ftamn6qitkbfrucm@hendrix>
References: <20191023112809.27595-1-colin.king@canonical.com>
MIME-Version: 1.0
In-Reply-To: <20191023112809.27595-1-colin.king@canonical.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_004836_766569_0480C8D2 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [91.217.168.176 listed in zen.spamhaus.org]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0840181398624491671=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0840181398624491671==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gufwthkvpo2ckxgg"
Content-Disposition: inline


--gufwthkvpo2ckxgg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 23, 2019 at 12:28:09PM +0100, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
>
> The zero'ing of bits 16 and 18 is incorrect. Currently the code
> is masking with the bitwise-and of BIT(16) & BIT(18) which is
> 0, so the updated value for val is always zero. Fix this by bitwise
> and-ing value with the correct mask that will zero bits 16 and 18.
>
> Addresses-Coverity: (" Suspicious &= or |= constant expression")
> Fixes: b8eb71dcdd08 ("clk: sunxi-ng: Add A80 CCU")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Applied, thanks!
Maxime

--gufwthkvpo2ckxgg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXbftmQAKCRDj7w1vZxhR
xUkfAP9Z5pgiCu01sgdMtiTA28A0ugCnNsspfAqhabiBnF1uMAD/UtXwYMkvUTC7
Eqx/KFAYrADVGg14oOUSrdk0eFxowwY=
=j3Hb
-----END PGP SIGNATURE-----

--gufwthkvpo2ckxgg--


--===============0840181398624491671==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0840181398624491671==--

