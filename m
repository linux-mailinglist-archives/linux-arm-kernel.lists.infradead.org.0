Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54DDA19F838
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 16:48:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E8EWFRuOoxT29gaHPwh1NskEk5oBP9mbYgeaXxnPwrE=; b=dZlGai9RaozoBy
	dO5a0zITeZIiha5fLQ36TpTchVMwITJNmY/ptI/EFh7WnIapPDQECO8U66HDZcXP2HvizX97xKVZ9
	+ZRKHVZA2BSB/sJnoK4ocXgP8Aq8/0WPq39jnSGOq1Bnwxn+9tSB+WORvWzvzZwfjkPP9Cv00lEV7
	Ned6Lwj5DAlEPgEmDlNZFgW+JF0+r7xk4FnXOdAj7Yzloj17DrYEmeMR/0bI2t6hNHqvauqnbwaki
	E2BtBormVNCBWtBJxzSTwz/8jgi/6e1jnKsj7JTEnAZqpjpsXi9JOIds9KCk7GkZUqG1e6uG6mkXq
	sJn7A0xyFiHuLwApM0Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLT39-0003qz-26; Mon, 06 Apr 2020 14:48:31 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLT30-0003pD-Tc; Mon, 06 Apr 2020 14:48:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jndYh7GlwNS3Suqwh3rj4zu5D8kBRWnhUuUbjJc1gaY=; b=uenn7vmk6Yn/aMdzsb5yOlZEQg
 lmUvAB9L8kZcEAW7MJWAVVXcYp1+GBAIwLi8LhwAV/FaBpePG5WM97NOX9y6nSyonXUXC6+NHwot1
 dmw7unMoScx35Irnh5jLDmwtEB9ck2xeUJPQP0Y6+rmARhSanowU7kPspgLzREWlV5oQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jLT2c-001HDo-6R; Mon, 06 Apr 2020 16:47:58 +0200
Date: Mon, 6 Apr 2020 16:47:58 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Alexander Lobakin <79537434260@yandex.com>
Subject: Re: [PATCH net-next] net: dsa: add GRO support via gro_cells
Message-ID: <20200406144758.GC301483@lunn.ch>
References: <20200406105910.32339-1-79537434260@yandex.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406105910.32339-1-79537434260@yandex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_074822_955848_2D95D23B 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
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
Cc: Woojung Huh <woojung.huh@microchip.com>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org,
 Hauke Mehrtens <hauke@hauke-m.de>, Linus Walleij <linus.walleij@linaro.org>,
 Sean Wang <sean.wang@mediatek.com>, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, linux-mediatek@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>, netdev@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Oleksij Rempel <linux@rempel-privat.de>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Mao Wenan <maowenan@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 06, 2020 at 01:59:10PM +0300, Alexander Lobakin wrote:
> gro_cells lib is used by different encapsulating netdevices, such as
> geneve, macsec, vxlan etc. to speed up decapsulated traffic processing.
> CPU tag is a sort of "encapsulation", and we can use the same mechs to
> greatly improve overall DSA performance.
> skbs are passed to the GRO layer after removing CPU tags, so we don't
> need any new packet offload types as it was firstly proposed by me in
> the first GRO-over-DSA variant [1].
> 
> The size of struct gro_cells is sizeof(void *), so hot struct
> dsa_slave_priv becomes only 4/8 bytes bigger, and all critical fields
> remain in one 32-byte cacheline.
> The other positive side effect is that drivers for network devices
> that can be shipped as CPU ports of DSA-driven switches can now use
> napi_gro_frags() to pass skbs to kernel. Packets built that way are
> completely non-linear and are likely being dropped without GRO.
> 
> This was tested on to-be-mainlined-soon Ethernet driver that uses
> napi_gro_frags(), and the overall performance was on par with the
> variant from [1], sometimes even better due to minimal overhead.
> net.core.gro_normal_batch tuning may help to push it to the limit
> on particular setups and platforms.
> 
> [1] https://lore.kernel.org/netdev/20191230143028.27313-1-alobakin@dlink.ru/

Hi Alexander

net-next is closed at the moment. So you should of posted this with an
RFC prefix.

The implementation looks nice and simple. But it would be nice to have
some performance figures.

     Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
