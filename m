Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5B914A2C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 12:16:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ep/xwWvxUH/QdVXCLOGkdYDd7ZbivSctxYx+97cRj/M=; b=Hsawp0UjnkIERe
	fCha76ZDC9+DA2kpNy3/5AWsmm6FM2FYE52lFvgfbxv3drNf8pF8lXRRmVikSXrhLwJwrlFtxqJuy
	cfZKNZhFCzME/wlsqCGdC0Lio11CCcZ4aFkehXJU0Xnef9l6BPq7AFvPFKnFP6xgtbV3Vl2FeanWy
	a+AiAMqju78IHhGiiwyEFZ2aIgp1B3hJd1mR+NxLoliIuv9Vr2WhWhfD//2iUHWLOUlEHemtJLuAK
	WYaVCWSjCP5vxVkTaBzuw4MyYqZpf4bM3RYUrQHCFI+8t/Hlge7WfIQbM9vtW20r7a/gw9aqu4kuB
	6dKqCS12Z0dJNhwcLhjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw2Nm-0003Gj-2D; Mon, 27 Jan 2020 11:16:42 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw2Na-0003Eg-C1
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 11:16:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UCgrtPNzJO46r3b/mUyJxh1OmaEkXSe8oNF3O0byYUc=; b=B5zjVL/wnoqw6vZqWGnCca6Ix
 3Mq/MYyf+fXGYsEl5W1q5lu7Xb3teExMbEiD3mvjH6wKDtYDJhxKHnfLY3y1BeoyeVEVoag+SHWDR
 t2SUAmY7dM1JZ2s1kpCFNN4GOCWaFpxNl80ASB1APiT9LYVt0FOYA19T1i8SzXhUS3kEbmsE448du
 xhzhk5vlCS3J4s5lGJftXgiArNRJgcLyoiC3RK8EmaIxOleCbc98AuZJLZbFbMi8h+jXIMFjW6up6
 twiSvEWfyZWT7i3AsS+z4OKAQzYpp3dAlUakHFCr1Z4efCqVdLSlYPjAQSvFpBIIASWVZX3StzWY1
 0Nd0AlQqw==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:39806)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iw2NC-0000rn-8i; Mon, 27 Jan 2020 11:16:06 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iw2N7-0001Lr-Sg; Mon, 27 Jan 2020 11:16:01 +0000
Date: Mon, 27 Jan 2020 11:16:01 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [RFC net-next 2/8] net: phylink: Add phylink_and and
 phylink_andnot Helpers
Message-ID: <20200127111601.GS25745@shell.armlinux.org.uk>
References: <cover.1580122909.git.Jose.Abreu@synopsys.com>
 <9509e5d75810da4ef49c674f0fd5cacb81d1a536.1580122909.git.Jose.Abreu@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9509e5d75810da4ef49c674f0fd5cacb81d1a536.1580122909.git.Jose.Abreu@synopsys.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_031630_404480_D1185681 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 12:09:07PM +0100, Jose Abreu wrote:
> Add two new helpers for bitmap handling.

Please use linkmode_andnot() and linkmode_and() instead.

> 
> Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>
> 
> ---
> Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Jose Abreu <joabreu@synopsys.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: Andrew Lunn <andrew@lunn.ch>
> Cc: Florian Fainelli <f.fainelli@gmail.com>
> Cc: Heiner Kallweit <hkallweit1@gmail.com>
> Cc: netdev@vger.kernel.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  include/linux/phylink.h | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/include/linux/phylink.h b/include/linux/phylink.h
> index 523209e70947..70a2f7a4450b 100644
> --- a/include/linux/phylink.h
> +++ b/include/linux/phylink.h
> @@ -272,6 +272,10 @@ int phylink_mii_ioctl(struct phylink *, struct ifreq *, int);
>  
>  #define phylink_zero(bm) \
>  	bitmap_zero(bm, __ETHTOOL_LINK_MODE_MASK_NBITS)
> +#define phylink_and(bm, obm) \
> +	bitmap_and(bm, bm, obm, __ETHTOOL_LINK_MODE_MASK_NBITS)
> +#define phylink_andnot(bm, obm) \
> +	bitmap_andnot(bm, bm, obm, __ETHTOOL_LINK_MODE_MASK_NBITS)
>  #define __phylink_do_bit(op, bm, mode) \
>  	op(ETHTOOL_LINK_MODE_ ## mode ## _BIT, bm)
>  
> -- 
> 2.7.4
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
