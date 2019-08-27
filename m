Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCAD9E463
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 11:34:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Jz1YfXWGJCmDhfEUf69Cqfm46R14XL37Gq/+9ibFnBw=; b=RYLaFWpB5PGnz8op9FhNeZ2V2
	uQrygjZlGYRGSt8k/tiM8icxgckYHiETfNpfWwJHQZcAU5E50y1evyn57sT2CGIVrTKf0FNXBdKd5
	dNWjGWpbwlTRYAqSkgzHCRlHjiiT4BtcoW1tq0ThzdIawPsZamKzA7tRNJKSjqr5PhelD+P6ixBoB
	5WLMZrwrGZt/YE8PvWcUVx1g7edNVDHTXoQAuYAqyfUNfNycRt1cSCaVPh556bKOSv6/23D3VTOpV
	or7nu+qcccu/wBYkeN7VQPISBFTyYBsLPCHzqD+91z+DwhP2S82MBLyMH5SB0JzoeHQRu4H0byG3E
	+JWB46W0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2XsC-0006iV-JS; Tue, 27 Aug 2019 09:34:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Xs0-0006iB-64
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 09:34:33 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 55DD8217F5;
 Tue, 27 Aug 2019 09:34:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566898471;
 bh=ccm7nUqPvgOcQuTQ/JJPGjonenSfitNN8svivPYeMTI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HwKJsmjYOsgBrhTnTDNEZ0KVRtYoP7/0SLNj3Ze7UGB0xbuK0zNIHNCNCjCc26MUw
 tpwE5Dhiyj2Z28Q8YtSBvgO7zVVL3uvrD3ojHixwE+ssGC0yP5LDGMr6DJpPIG3AKS
 CH1lM4k+cFEDp6OGLIVHak/oht0VNcJAbecWgyb8=
Date: Tue, 27 Aug 2019 11:34:29 +0200
From: Maxime Ripard <mripard@kernel.org>
To: codekipper@gmail.com
Subject: Re: [PATCH v6 2/3] ASoC: sun4i-i2s: Add regmap field to sign extend
 sample
Message-ID: <20190827093429.fkh4cqbygxxyvkk3@flea>
References: <20190826180734.15801-1-codekipper@gmail.com>
 <20190826180734.15801-3-codekipper@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190826180734.15801-3-codekipper@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_023432_244601_3677296E 
X-CRM114-Status: GOOD (  12.01  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alsa-devel@alsa-project.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, lgirdwood@gmail.com, be17068@iperbole.bo.it,
 wens@csie.org, broonie@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4478723373148974415=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4478723373148974415==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="akegy5smhxynsxc7"
Content-Disposition: inline


--akegy5smhxynsxc7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Aug 26, 2019 at 08:07:33PM +0200, codekipper@gmail.com wrote:
> From: Marcus Cooper <codekipper@gmail.com>
>
> On the newer SoCs such as the H3 and A64 this is set by default
> to transfer a 0 after each sample in each slot. However the A10
> and A20 SoCs that this driver was developed on had a default
> setting where it padded the audio gain with zeros.
>
> This isn't a problem whilst we have only support for 16bit audio
> but with larger sample resolution rates in the pipeline then SEXT
> bits should be cleared so that they also pad at the LSB. Without
> this the audio gets distorted.
>
> Signed-off-by: Marcus Cooper <codekipper@gmail.com>

If anything, I'd like to have less regmap_fields rather than more of
them. This is pretty easy to add to one of the callbacks, especially
since the field itself has been completely reworked from one
generation to the other.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--akegy5smhxynsxc7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXWT5JQAKCRDj7w1vZxhR
xe50AQC8TXvNs/xG05yTE5nduFlJSviusolNw2OzT+nU7+RGNQEAnLeDCfdAFcFV
+5qESFVCyahAR0NhHqHtWgxldOTPwgw=
=hUzD
-----END PGP SIGNATURE-----

--akegy5smhxynsxc7--


--===============4478723373148974415==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4478723373148974415==--

