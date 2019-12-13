Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB9011E4DD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 14:47:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jTv/PS3zb/VTmtljtoUc2lkHDVo6k4TuphzUueIlAGg=; b=bdCE+x92naF6vs
	Cvs5WoTgQ+o4YRKBP1hnaz4MGzVe3S2VOTxThqQoSjSoyQKh7kF4MitT1M3SoJvRf6+U7xJh5+R4q
	dcIdMEu+lxErs6+43yMtOdbsb51dx2HpVVCiSJKHBlKIXFwJDVBX+k/KZK1D4G5tYK3qXWHbjqQNw
	gVwvJhMuYJZgf+B8v/b9LJ3sGkDRkEK+pdw9I2ddtirl3DjnWRYNEob/4HklcpCEPk/SdvAgHgvja
	6FHopygYen/XvuH+9LfhQqtR67qlOofwQdVIOEZLuUtL0Qyco3k1Wzu0lCBgJ8IURhc/oScPOfHAX
	chu971jpoCv0naJSxp1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iflIH-0006D8-4E; Fri, 13 Dec 2019 13:47:45 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iflI6-0006Br-P6; Fri, 13 Dec 2019 13:47:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=awCXz0GwD1LDcWzOjDMp0h+d0sdlS80mO4Nbpi4KuV0=; b=B022IG0f4HXZeMBlMNrforMruq
 dFK7znmRa1CpiTRnP5y5JakiioHQ+FdeEMCHwk2Gj0/OgbKerI8jebCoeNmN1LuX1Yu+7UNmUTTXy
 MGKwep3ErD6V9+pLSXg9iuy7P0DRSQDYOfxGJpzrOZ0+YYKV7JvJNzXUQvMMLC7dJSiw=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1iflHg-00019i-1C; Fri, 13 Dec 2019 14:47:08 +0100
Date: Fri, 13 Dec 2019 14:47:08 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: biao huang <biao.huang@mediatek.com>
Subject: Re: [PATCH 1/2] net-next: stmmac: mediatek: add more suuport for RMII
Message-ID: <20191213134708.GA4286@lunn.ch>
References: <20191212024145.21752-1-biao.huang@mediatek.com>
 <20191212024145.21752-2-biao.huang@mediatek.com>
 <20191212132520.GB9959@lunn.ch>
 <1576200981.29387.13.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576200981.29387.13.camel@mhfsdcap03>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_054734_815056_381D1C6B 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jose Abreu <joabreu@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, yt.shen@mediatek.com,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> The clock labeled as "rmii_internal" is needed only in RMII(when MAC provides
> reference clock), and useless for RGMII/MII/RMII(when phy provides reference
> clock).
> 
> So, add a boolean flag to indicate where the RMII reference clock is from, MAC
> or PHY, if MAC, enable the "rmii_internal", or disable it.
> and this clock already documented in dt-binding in PATCH 2/2.
> 
> For power saving, it should not be enabled in default, so can't add it to the
> existing list of clocks directly.
> 
> Any advice for this special case?

O.K. Add the boolean, but also add the clock to the list of clocks in
DT. Don't hard code the clock name in the driver.

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
