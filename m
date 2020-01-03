Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B6812F629
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 10:37:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kejuCsR1kuWgpT8qQnM5nKKeBFOpQXpUAllJwhNEuhA=; b=Gn3Bgb+DZwQMJcXYtPTGN888l
	KF7D58e5eUc/4EaVKAYgUaOuWH7LltpnrHq/0nEtMa8MBf5oIRNUgSHTiwrpG7roSOEbZybYufE6t
	JZTA7eoIF2L4v635RctVh//a9ujl2V/l/pMIs0Tp2g2q6PgAxLv2IcR+xm+exwyDN5O6SXi1bY2kn
	ARAnNKXNTCF/Qzi9rgbmhbaOT09zlv9ZYCMoKZusy0bya8J3F4zdd5ZawdbhIjr7NrhqJndKdlkHf
	NdLSvgiBj1ywzr3wiWAa8kCQqlFJCA2bD76zNX3Hhilh1RBkNYdU+l+7bZWzbwotGLOXU9xwiSf5i
	WqwuPd1Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inJOj-0004F2-KQ; Fri, 03 Jan 2020 09:37:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inJOb-0004Dl-D6
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 09:37:30 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 121A821734;
 Fri,  3 Jan 2020 09:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578044247;
 bh=t1n4osX8UFyfzagbobo+KoZCptgIJ8gvbeKetytczeM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=H6+N5bPGQlNhV1gyvOOg2A1ukTS7rQlhfNWi+c/GaXeqQYGYgRzbiDrVw9GctGa3P
 BDAjdvQDi8XqZV/vhzmGC8cCssXQwvcTd1Lv0QDXWUzKaoTfKCCeGhCebE7SY6VmSy
 mM3QibPSZ/Z5n5vQSCNzCYvjKYD01jayq8lpO9co=
Date: Fri, 3 Jan 2020 10:37:24 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH] clk: sunxi-ng: r40: Export MBUS clock
Message-ID: <20200103093724.qo2enqqpr5dzcvfc@gilmour.lan>
References: <20200103071848.3977-1-wens@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200103071848.3977-1-wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_013729_469585_B80E9A35 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0935602161346649338=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0935602161346649338==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6ydtg2u437jgrsyi"
Content-Disposition: inline


--6ydtg2u437jgrsyi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jan 03, 2020 at 03:18:48PM +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
>
> The MBUS clock needs to be referenced in the MBUS device node.
> Export it.
>
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Applied, thanks
Maxime

--6ydtg2u437jgrsyi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXg8LVAAKCRDj7w1vZxhR
xTXyAPwOmHJ3brL7yUfKmR5he70BqWy5MhxZQ3ik2vpHkUxeEwD9F58DhQY/DVl+
PPeLEWk09d1ZxePABfHlBOoPLFXWXAQ=
=vkyJ
-----END PGP SIGNATURE-----

--6ydtg2u437jgrsyi--


--===============0935602161346649338==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0935602161346649338==--

