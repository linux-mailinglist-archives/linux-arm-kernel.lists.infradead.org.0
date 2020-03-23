Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9161718F24E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 11:01:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IdXeEpJLGferq8e1KC+n/21Sz7z7lMZClVDIlUUSJqo=; b=ctulf4RJVMrhp4E1UauawtNBs
	ENadeFOG69W3dfeZyjxlEhMH/WEBdL6oLq1muyCDfei6x3tmiJM0qeEEKCiwT2Yr8Y3z4ksomF6Gd
	16jbnz6P1Ka1DU2h5M5gDKvm5cr75pe4rhVevLZwX38X/wqEQCI/xffKOZtDdwC+63zgwfhl3fSqN
	9rpwOwyYWaen4KuOUM+ucxJQN2JZqTh1cHgVHOauz6a7FKRCAslSiDoKQBXRT5uIFzC6hLStqk7v9
	7AIWYHMe/hFk0tEfJLjuh/6yRFOo8r3vUp0LtKMi6NnEXl3RvVmB4+c+D3w4VjipVAoAWkZ6Ef6Hg
	gtkAmRnTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGJti-0006H4-Ff; Mon, 23 Mar 2020 10:01:30 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGJtZ-0006G8-Q9
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 10:01:23 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id A8F83580412;
 Mon, 23 Mar 2020 06:01:16 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 23 Mar 2020 06:01:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=/WvqdoYz5hLKl3XQDGdtoCAHQbJ
 /DVnk5Lp+j1NoVJE=; b=KBhRMnztT4+zGwbGOT27ZJcocQCf5IbbatGFS2Ix4AK
 i7UqTad3VvN9/BxpXfO1/bLnSWq4tnWdMsCVs3vVE+hYxxREvS4uajvOs5mDJWwx
 wF4W9E4hScT+Ry9Py2bipyjor1hy2Ne5/qi22p/uazJhi5gHiEF6XdSHVASfEmnr
 RWEVl9oR7kbGQTXTmq5RDMqH1YQnuVWwO4Y/ORqOs1ZovzK+R1gZuvhXH13hMTAb
 041VhBrMmMvCCquYaWoH55EBYM6YOQHkkX01cnct9CSBQav7+LWRoI4DskoUI5HS
 Lx5sxxY2UQztjdFTJOfB0O0ESqHlqA5I39100sQP6rw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=/Wvqdo
 Yz5hLKl3XQDGdtoCAHQbJ/DVnk5Lp+j1NoVJE=; b=1smXx7hqCAppWfSH8INChc
 YQlJcPEg6EaCt+52hhKKFwg/NHLcjvUuvCNrrlxh2vVyRg4S7qFY+EVhiLTZEfLq
 wI8q28R+egn8YoNtK5L5eQH/ow9D4naTWg59HjwiwKiVpvIqP+llEAguk8gh48Oy
 f8YJV0paTKAc5+VnBBAnfsbGcN9UQsStV+wAV/QV4RifgXdTu97ersaCqT9OMv9M
 AeIolZ3t2PihtRWKLXa6FJA552COQdyXb4XBs73dPgY4U+G/LtG/iQd/KBEbnQtK
 oFVIpMheYYHWr8hva72DenuJ/0oDhomLox0/Up2IYVKf5Wy2PlghWYQB0Y74Ks3Q
 ==
X-ME-Sender: <xms:54h4XrziilQ979XEEhoaeyyofL9igG3NuXqU2XjQUhKd_Vcw5gYbKA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudegkedgudduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:54h4Xrko6pOn_bmge1a73E1F0VmZP_VNmHU1_i1Pz-qcng4k0XGuNg>
 <xmx:54h4XvUTPNd-RbEAQ3X9l38Ep1FUnvVJGOHoRgUqP5QcREhM7BFfmQ>
 <xmx:54h4XjWHxpNML3VV6lX08dN6aRcjHpTELuak6RjodvjD6suT4ZVJBQ>
 <xmx:7Ih4XpIBrcNGc3zZckpXGzpxM9HhuDaoqrON_j7rJ1hUdkSs2lD0BQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id CF1B8328005D;
 Mon, 23 Mar 2020 06:01:10 -0400 (EDT)
Date: Mon, 23 Mar 2020 11:01:09 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Sergey.Semin@baikalelectronics.ru
Subject: Re: [PATCH v2] serial: 8250_dw: Fix common clocks usage race condition
Message-ID: <20200323100109.k2gckdyneyzo23fb@gilmour.lan>
References: <20200306130231.05BBC8030795@mail.baikalelectronics.ru>
 <20200323024611.16039-1-Sergey.Semin@baikalelectronics.ru>
MIME-Version: 1.0
In-Reply-To: <20200323024611.16039-1-Sergey.Semin@baikalelectronics.ru>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_030122_173786_5AC5C4E3 
X-CRM114-Status: GOOD (  33.33  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Kefeng Wang <wangkefeng.wang@huawei.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Heiko Stuebner <heiko@sntech.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Serge Semin <fancer.lancer@gmail.com>, Will Deacon <will@kernel.org>,
 linux-clk@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Maxim Kaurkin <Maxim.Kaurkin@baikalelectronics.ru>,
 Ramil Zaripov <Ramil.Zaripov@baikalelectronics.ru>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Russell King <linux@armlinux.org.uk>, Wei Xu <xuwei5@hisilicon.com>,
 Chen-Yu Tsai <wens@csie.org>,
 Ekaterina Skachko <Ekaterina.Skachko@baikalelectronics.ru>,
 Jiri Slaby <jslaby@suse.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Jason Cooper <jason@lakedaemon.net>, Ray Jui <rjui@broadcom.com>,
 Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
 linux-serial@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Vadim Vlasov <V.Vlasov@baikalelectronics.ru>,
 Paul Burton <paulburton@kernel.org>, Scott Branden <sbranden@broadcom.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>,
 Jisheng Zhang <Jisheng.Zhang@synaptics.com>,
 Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>
Content-Type: multipart/mixed; boundary="===============8943311647981320459=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8943311647981320459==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="sxpqz3afj6jojk4c"
Content-Disposition: inline


--sxpqz3afj6jojk4c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Mon, Mar 23, 2020 at 05:46:09AM +0300, Sergey.Semin@baikalelectronics.ru wrote:
> From: Serge Semin <Sergey.Semin@baikalelectronics.ru>
>
> There are races possible in the dw8250_set_termios() callback method
> and while the device is in PM suspend state. A race condition may
> happen if the baudrate clock source device is shared with some other
> device (in our machine it's another DW UART port). In this case if that
> device changes the clock rate while serial console is using it the
> DW 8250 UART port might not only end up with an invalid uartclk value
> saved, but may also experience a distorted output data since baud-clock
> could have been changed. In order to fix this lets enable an exclusive
> reference clock rate access in case if "baudclk" device is specified.
>
> So if some other device also acquires the rate exclusivity during the
> time of a DW UART 8250 port being opened, then DW UART 8250 driver
> won't be able to alter the baud-clock. It shall just use the available
> clock rate. Similarly another device also won't manage to change the
> rate at that time. If nothing else have the exclusive rate access
> acquired except DW UART 8250 driver, then the driver will be able to
> alter the rate as much as it needs to in accordance with the currently
> implemented logic.
>
> Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>
> Cc: Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>
> Cc: Maxim Kaurkin <Maxim.Kaurkin@baikalelectronics.ru>
> Cc: Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>
> Cc: Ramil Zaripov <Ramil.Zaripov@baikalelectronics.ru>
> Cc: Ekaterina Skachko <Ekaterina.Skachko@baikalelectronics.ru>
> Cc: Vadim Vlasov <V.Vlasov@baikalelectronics.ru>
> Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
> Cc: Paul Burton <paulburton@kernel.org>
> Cc: Ralf Baechle <ralf@linux-mips.org>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Chen-Yu Tsai <wens@csie.org>
> CC: Ray Jui <rjui@broadcom.com>
> Cc: Scott Branden <sbranden@broadcom.com>
> Cc: Florian Fainelli <f.fainelli@gmail.com>
> Cc: Wei Xu <xuwei5@hisilicon.com>
> Cc: Jason Cooper <jason@lakedaemon.net>
> Cc: Andrew Lunn <andrew@lunn.ch>
> Cc: Gregory Clement <gregory.clement@bootlin.com>
> Cc: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> Cc: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
>
> ---
>
> Changelog v2:
> - Move exclusive ref clock lock/unlock precudures to the 8250 port
>   startup/shutdown methods.
> - The changelog message has also been slightly modified due to the
>   alteration.
> - Remove Alexey' SoB tag.
> - Cc someone from ARM who might be concerned regarding this change.
> - Cc someone from Clocks Framework to get their comments on this patch.
> ---
>  drivers/tty/serial/8250/8250_dw.c | 36 +++++++++++++++++++++++++++++++
>  1 file changed, 36 insertions(+)
>
> diff --git a/drivers/tty/serial/8250/8250_dw.c b/drivers/tty/serial/8250/8250_dw.c
> index aab3cccc6789..08f3f745ed54 100644
> --- a/drivers/tty/serial/8250/8250_dw.c
> +++ b/drivers/tty/serial/8250/8250_dw.c
> @@ -319,6 +319,40 @@ static void dw8250_set_ldisc(struct uart_port *p, struct ktermios *termios)
>  	serial8250_do_set_ldisc(p, termios);
>  }
>
> +static int dw8250_startup(struct uart_port *p)
> +{
> +	struct dw8250_data *d = to_dw8250_data(p->private_data);
> +
> +	/*
> +	 * Some platforms may provide a reference clock shared between several
> +	 * devices. In this case before using the serial port first we have to
> +	 * make sure nothing will change the rate behind our back and second
> +	 * the tty/serial subsystem knows the actual reference clock rate of
> +	 * the port.
> +	 */
> +	if (clk_rate_exclusive_get(d->clk)) {
> +		dev_warn(p->dev, "Couldn't lock the clock rate\n");
> +	} else if (d->clk) {
> +		p->uartclk = clk_get_rate(d->clk);
> +		if (!p->uartclk) {
> +			clk_rate_exclusive_put(d->clk);
> +			dev_err(p->dev, "Clock rate not defined\n");
> +			return -EINVAL;
> +		}
> +	}
> +
> +	return serial8250_do_startup(p);
> +}

I've been facing that issue, so it would be great to get it fixed, but
I'm not sure this is the right solution.

clk_rate_exclusive_get is pretty intrusive, and due to the usual
topology of clock trees, this will lock down 3-4 parent clocks to
their current rate as well. In the Allwinner SoCs case for example,
this will lock down the same PLL than the one used by the CPU,
preventing cpufreq from running.

However, the 8250 has a pretty wide range of dividers and can adapt to
any reasonable parent clock rate, so we don't really need to lock the
rate either, we can simply react to a parent clock rate change using
the clock notifiers, just like the SiFive UART is doing.

I tried to do that, but given that I don't really have an extensive
knowledge of the 8250, I couldn't find a way to stop the TX of chars
while we change the clock rate. I'm not sure if this is a big deal or
not, the SiFive UART doesn't seem to care.

Maxime

--sxpqz3afj6jojk4c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXniI5AAKCRDj7w1vZxhR
xaAzAP9ZTOKvBcrPgQQ/+/TFF/Xyv1hvtNQylv3vEF/K9DeEuQEAjtCTjoyYyltZ
86dRkGN6b2RHWNb6uaZbW0Kr/LH/4wE=
=AtVK
-----END PGP SIGNATURE-----

--sxpqz3afj6jojk4c--


--===============8943311647981320459==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8943311647981320459==--

