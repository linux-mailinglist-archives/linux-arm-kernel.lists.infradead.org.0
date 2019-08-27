Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53FF59E478
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 11:35:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w94Kd2AifC9QELlO+p+HA9WMqhJ5mvrezARy7J4ExnM=; b=DTC04pthiFsUFmVo9VrZOisHx
	5/SWqq7K0/l7FBdj2ZHM+k9kvYE0xdCULkNcr9WHGXrLCLo29A1VXGcBuSm9UJZ+F1TE4mYzyByav
	5xjvbsdVIlsnU5yqTpzqtABm3WKdsYV6zNu87pzx0823lYhs9XDkch0O9uTJfRqdCFSqkp2HeSLjV
	lXt35yb7qC7qrFIEMSd4K67LlvwsikEnf0R7V6d168N6cWNaVFVFJto8ALjEMA52Gxk2ViIO5tA35
	tUYsnpsiBTj8ydmTNY00fYrmzOyc6xGvhflGp7Rbhgw6W5cFKUl318pJA9s54Gry7A3CX4y/BPEGz
	5pE2U0EsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2XtL-0008Ew-Nz; Tue, 27 Aug 2019 09:35:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Xt5-0008EZ-6E
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 09:35:40 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5C22D2186A;
 Tue, 27 Aug 2019 09:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566898538;
 bh=QwBJ6oW0mDUbmXmBZq/xOiSb0AoEWSa+i67Fo2EQs3E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IBElxmoUKNRUm9l3uA8x2MyS+ZMpfcJG5jPMcXf/AbP8WeAt4AK0moq7YYtVCyMi3
 +WABBe3yhR0HqCC4213+rKtjpwTL8ALAwhzGjnw5yiBdZrBXKUzg70rj1OhmcRmOM1
 SBZPITCAS7sME54Y/kLDWZ6+0EI5Yz4Kn9JxqPu4=
Date: Tue, 27 Aug 2019 11:35:36 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH 00/21] ASoC: sun4i-i2s: Number of fixes and TDM Support
Message-ID: <20190827093536.rl6fjuvctjwd33as@flea>
References: <cover.e08aa7e33afe117e1fa8f017119d465d47c98016.1566242458.git-series.maxime.ripard@bootlin.com>
 <CAGb2v64xOcs3Vi5k3yUwMiUrzZMuJ5vZ3kxp9w1=CQDrkn3cgA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v64xOcs3Vi5k3yUwMiUrzZMuJ5vZ3kxp9w1=CQDrkn3cgA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_023539_267905_DA3E7243 
X-CRM114-Status: GOOD (  20.63  )
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
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Code Kipper <codekipper@gmail.com>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============3503150571234465844=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3503150571234465844==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zfutohgftfydg3jy"
Content-Disposition: inline


--zfutohgftfydg3jy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Aug 27, 2019 at 04:20:24PM +0800, Chen-Yu Tsai wrote:
> Hi everyone,
>
> On Tue, Aug 20, 2019 at 3:25 AM Maxime Ripard <mripard@kernel.org> wrote:
> >
> > From: Maxime Ripard <maxime.ripard@bootlin.com>
> >
> > Hi,
> >
> > This series aims at fixing a number of issues in the current i2s driver,
> > mostly related to the i2s master support and the A83t support. It also uses
> > that occasion to cleanup a few things and simplify the driver. Finally, it
> > builds on those fixes and cleanups to introduce TDM and DSP formats support.
> >
> > Let me know what you think,
> > Maxime
> >
> > Marcus Cooper (1):
> >   ASoC: sun4i-i2s: Fix the MCLK and BCLK dividers on newer SoCs
> >
> > Maxime Ripard (20):
> >   ASoC: sun4i-i2s: Register regmap and PCM before our component
> >   ASoC: sun4i-i2s: Switch to devm for PCM register
> >   ASoC: sun4i-i2s: Replace call to params_channels by local variable
> >   ASoC: sun4i-i2s: Move the channel configuration to a callback
> >   ASoC: sun4i-i2s: Move the format configuration to a callback
> >   ASoC: sun4i-i2s: Rework MCLK divider calculation
> >   ASoC: sun4i-i2s: Don't use the oversample to calculate BCLK
> >   ASoC: sun4i-i2s: Use module clock as BCLK parent on newer SoCs
> >   ASoC: sun4i-i2s: RX and TX counter registers are swapped
> >   ASoC: sun4i-i2s: Use the actual format width instead of an hardcoded one
> >   ASoC: sun4i-i2s: Fix LRCK and BCLK polarity offsets on newer SoCs
> >   ASoC: sun4i-i2s: Fix the LRCK polarity
> >   ASoC: sun4i-i2s: Fix WSS and SR fields for the A83t
> >   ASoC: sun4i-i2s: Fix MCLK Enable bit offset on A83t
> >   ASoC: sun4i-i2s: Fix the LRCK period on A83t
> >   ASoC: sun4i-i2s: Remove duplicated quirks structure
>
> Unfortunately the patches that "fix" support on the A83T actually break it.
> The confusion stems from the user manual not actually documenting the I2S
> controller. Instead it documents the TDM controller, which is very similar
> or the same as the I2S controller in the H3. The I2S controller that we
> actually support in this driver is not the TDM controller, but three other
> I2S controllers that are only mentioned in the memory map. Support for this
> was done by referencing the BSP kernel, which has separate driver instances
> for each controller instance, both I2S and TDM.
>
> Now to remedy this I could send reverts for all the "A83t" patches, and
> fixes for all the others that affect the A83t quirks. However the fixes
> tags existing in the tree would be wrong and confusing. That might be a
> pain for the stable kernel maintainers.
>
> Any suggestions on how to proceed?

I've just sent two patches to address that (adding a comment in the
process so that hopefully it doesn't happen again).

Let me know if it works, and sorry for the mess :/
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--zfutohgftfydg3jy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXWT5aAAKCRDj7w1vZxhR
xdWcAP92UC8ohpBC1hEZ+YE9YtL68wqEMKjjgaiRbBPuMCI9tQEAvzYPAtyZtF9A
o8AofY1070asyuWTmZNoBs4WWZOnHQ4=
=P/nX
-----END PGP SIGNATURE-----

--zfutohgftfydg3jy--


--===============3503150571234465844==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3503150571234465844==--

