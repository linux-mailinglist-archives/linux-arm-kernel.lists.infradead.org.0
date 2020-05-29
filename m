Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4261E7B45
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 13:09:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nHfE0jkkUZS4GGP4NP8WkcYwoQipjfvKhmFCwDlHio8=; b=pPpMhWBXw6Ioe47AZx4x09/Fw
	rC9TJEftvHz8gkTBDXTBT7HLa5SKkAYlbDelO4GjuoQTOZeuWGHwfRrJ45o5ZaoO6+xLE7DSaaMy2
	ZqLFgIYHXlrzzyyg+sgPgue4ve3iVc0z6W8hg1yxVpe3FMsEXkCEHwDZ0ywj1NUuaATrpB7cP+1i/
	l0KR+4FDbwCrtpZzMGoTReiKzO+j7iY6t95heSQI6bAp2l4bETlah7j7j0qdDNCM9cnRPKpvusmQ/
	nMJd7WyNB63zCUtDRp8cbi4pK9ISK42xzR/vJlafyaGUyvkU4GY8WoTCDi+6WTstLGzL8YLjMh37H
	rnjbk9+YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jectG-0008He-Bt; Fri, 29 May 2020 11:09:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ject5-0008FQ-CK; Fri, 29 May 2020 11:09:20 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1A1292074B;
 Fri, 29 May 2020 11:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590750558;
 bh=bNs4Fp0Ooi+xfHhQ8BXp4A2WXIzoLKgHBPiDTBQ4BUg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=C1cE12Lrdc/YrKo0DmHo/ufRLkXADE8la0AOb7Bwp8gFC4QmPr35agLnvnpbLxngn
 cTgy0Hk+Na707yQKdL05M3NWniNbQZOdU6DVlCPLift57F56RgRd71rL3slc3W1VaP
 Jv+9vAUe1fBnks/TB62lYrEQwu/oIzoP4t42r24c=
Date: Fri, 29 May 2020 12:09:15 +0100
From: Mark Brown <broonie@kernel.org>
To: Jiaxin Yu <jiaxin.yu@mediatek.com>
Subject: Re: [PATCH] ASoC: mediatek: mt6358: support DMIC one-wire mode
Message-ID: <20200529110915.GH4610@sirena.org.uk>
References: <1590750293-12769-1-git-send-email-jiaxin.yu@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <1590750293-12769-1-git-send-email-jiaxin.yu@mediatek.com>
X-Cookie: The Killer Ducks are coming!!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_040919_439425_824BF78E 
X-CRM114-Status: UNSURE (   6.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: hariprasad.kelam@gmail.com, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, howie.huang@mediatek.com, lgirdwood@gmail.com,
 tiwai@suse.com, tzungbi@google.com, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0763888221300707053=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0763888221300707053==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="QDd5rp1wjxlDmy9q"
Content-Disposition: inline


--QDd5rp1wjxlDmy9q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 29, 2020 at 07:04:53PM +0800, Jiaxin Yu wrote:
> Supports DMIC one-wire mode. Adds a mixer control to enable and disable.

What is DMIC one wire mode?  This doesn't sound like something I'd
expect to vary at runtime.

--QDd5rp1wjxlDmy9q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7Q7VoACgkQJNaLcl1U
h9DwIQf/QoUXcR5znRfl1nQpP4QTwnoPi7CPIFAYYQv475mekxLBWIopRSwlj19A
kwQRFL85PeTib/Pngyr5KhcHjyDqURrVmuCRgO+8dtEXcq8RVYVo0J/tSSMcYtKw
bNpDZKkp98v+uMHgY5ldvoscyTMC/hFjsN9c31bMIjhSSyvFsAkjTTGTTsg9o8iy
bmMzVAEUwkuYfYFXypmN0PYIgMo74x0CxmAjbvp1WoZpQv1vI0Hxe+Fc3s0LgjLC
CUka+MsG6+52tpHF/fazhv8oBFbUOh70roWkZ4ZlhxV7CpR2iWFjw/0Om/T+2U1L
27KuaQ/3mh5q4RPeSDyAMeFwOjQJbg==
=Texz
-----END PGP SIGNATURE-----

--QDd5rp1wjxlDmy9q--


--===============0763888221300707053==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0763888221300707053==--

