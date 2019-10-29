Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4889BE82B7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 08:48:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6ZOaarSzO059F6qnBa1kRgfHmGbU/tI+oIxW/5WmuW4=; b=RzX2fmHESE3AZLtR72gExHwYy
	YlbO6h93seRsBW1h3K3vdqTlAqoUg9ad+k8U1paEfcZDpsh2q555NalegMCehnvXvx1qtoLcUxwwP
	fC0ViCGpWOl+MMJqtJf6z0cfTSSgpFUP4DCMsJ8jWAv2YUgzK+6XdKPF9oo1jJDfpp+AyqakB9LZB
	1eLBs71/ykNIQ/AeBQrwiXytDcVEuE73krqE1/Hbm7v+N2o1C3URbKH+8PshzvtUVkf8S11Ku3wzR
	MgK1dLZFQysxviIAIEIgX3dtTK6IsC+vwd+S3rbGAiI2ECUmFdC5oaQjIOLpc/FU5gtUqN1Kh6qpw
	9DHCOkeOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPMEz-0004rP-Sq; Tue, 29 Oct 2019 07:48:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPMEp-0004qw-Pr
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 07:48:25 +0000
Received: from localhost (unknown [91.217.168.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 72A9820862;
 Tue, 29 Oct 2019 07:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572335303;
 bh=Yu5s0hQzqtyqOCX0ElU27rS01B1OF21zXuTqphIPMvg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pzcG/Usrchf0OzEMrzzNBk9R5H8WV7Kk7nXNpnooqHRDKujaFd1i0dgtmzC8Klhoq
 Gj9Z2pZO7sJG/FCuelXEtwI9NBd6YKTmBmQOIZHhyZ14jAVWOHkdbfC+1LfkkJ5EA+
 O2zbKeG2VRh1PLl1JHScOWwuCYt4+fgDiuM/+RTM=
Date: Tue, 29 Oct 2019 08:43:08 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH] clk: sunxi: Fix operator precedence in
 sunxi_divs_clk_setup
Message-ID: <20191029074308.ll2nyv3ksuqdgxru@hendrix>
References: <20191022165054.48302-1-natechancellor@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191022165054.48302-1-natechancellor@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_004823_859830_99A64FDF 
X-CRM114-Status: GOOD (  11.62  )
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
Cc: clang-built-linux@googlegroups.com, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Emilio =?utf-8?B?TMOzcGV6?= <emilio@elopez.com.ar>,
 Chen-Yu Tsai <wens@csie.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8899518546253313810=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8899518546253313810==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3wgn7swzd7gzkmpp"
Content-Disposition: inline


--3wgn7swzd7gzkmpp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Oct 22, 2019 at 09:50:54AM -0700, Nathan Chancellor wrote:
> r375326 in Clang exposes an issue with operator precedence in
> sunxi_div_clk_setup:
>
> drivers/clk/sunxi/clk-sunxi.c:1083:30: warning: operator '?:' has lower
> precedence than '|'; '|' will be evaluated first
> [-Wbitwise-conditional-parentheses]
>                                                  data->div[i].critical ?
>                                                  ~~~~~~~~~~~~~~~~~~~~~ ^
> drivers/clk/sunxi/clk-sunxi.c:1083:30: note: place parentheses around
> the '|' expression to silence this warning
>                                                  data->div[i].critical ?
>                                                                        ^
>                                                                       )
> drivers/clk/sunxi/clk-sunxi.c:1083:30: note: place parentheses around
> the '?:' expression to evaluate it first
>                                                  data->div[i].critical ?
>                                                                        ^
>                                                  (
> 1 warning generated.
>
> It appears that the intention was for ?: to be evaluated first so that
> CLK_IS_CRITICAL could be added to clkflags if the critical boolean was
> set; right now, | is being evaluated first. Add parentheses around the
> ?: block to have it be evaluated first.
>
> Fixes: 9919d44ff297 ("clk: sunxi: Use CLK_IS_CRITICAL flag for critical clks")
> Link: https://github.com/ClangBuiltLinux/linux/issues/745
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied, thanks!
Maxime

--3wgn7swzd7gzkmpp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXbftjAAKCRDj7w1vZxhR
xaQ2AP9CAH4GHD2NPmz/Ed6cj1lbVOW1bpx4owgNtUPvu1oBnQEAtbgqPANSedSI
HKisluN+sAyzMlF1MdHXWRebPyalEAM=
=asjM
-----END PGP SIGNATURE-----

--3wgn7swzd7gzkmpp--


--===============8899518546253313810==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8899518546253313810==--

