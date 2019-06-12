Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0A843152
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 23:09:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H5RbDR0SCP03WuKdkKpGMZ4NGAVZwAVrgwTNVcKMpT0=; b=WFAM0mc4dY+tnc
	itN/jPC2vpr7CX+VNEg8v12WrL7M9yggV5Vmu5Wg/XdQfklHx26aVKojKyPIqP8s34cXg4BZSj3WF
	R83uo43Fh3QzI2Isguq+dVrkKeSdlqIITwV1Nhxf7rVNRWqfre7xbLRPOXuQzO4X0Q6dyQjL0HqQZ
	Y+tE7B/S2F8gHSNB1kLKJm5ORx6ddmH66I+36nTgFlPfyrhKEP/KeVg2lzKZk9MA23fp0Pcx0O4cj
	T4q/bpH7gWxQig24BDXhoPjehs0jJvE3W/VMrBJ472HPzcdRXS7jHlG1Wckao9KNAdHjliQLWlWU4
	gtRcsODC3S4zNLGj2diA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbAV3-0002Ku-IA; Wed, 12 Jun 2019 21:09:41 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbAUt-0002KX-Ch
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 21:09:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9YmJ2DBObebHfwNsdI+eNLnRZLXeK+64ASDuQcSMRtg=; b=u3rQ+SDV981ti15WXtn9kdrGnT
 6ptdchdeZzpJtoDfcjLTIVBFHnyM0nf3CvQm1RSiwYD9zAWziw4+qWoCBR8AYTLy6/ZWvDzg/TJov
 ONqQCZLF24NJrV0PVAd0g/2d3QPYsuCDXOSpJ8EK0WQ0aIdq7dIybHv8OORScY/3NwwQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hbAUj-000822-UU; Wed, 12 Jun 2019 23:09:21 +0200
Date: Wed, 12 Jun 2019 23:09:21 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH net-next v2 1/1] net: stmmac: use GPIO descriptors in
 stmmac_mdio_reset
Message-ID: <20190612210921.GE23695@lunn.ch>
References: <20190612193115.6751-1-martin.blumenstingl@googlemail.com>
 <20190612193115.6751-2-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190612193115.6751-2-martin.blumenstingl@googlemail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_140931_586848_0B6F00ED 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alexandre.torgue@st.com, maxime.ripard@bootlin.com, netdev@vger.kernel.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, joabreu@synopsys.com, peppe.cavallaro@st.com,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 09:31:15PM +0200, Martin Blumenstingl wrote:
> Switch stmmac_mdio_reset to use GPIO descriptors. GPIO core handles the
> "snps,reset-gpio" for GPIO descriptors so we don't need to take care of
> it inside the driver anymore.
> 
> The advantage of this is that we now preserve the GPIO flags which are
> passed via devicetree. This is required on some newer Amlogic boards
> which use an Open Drain pin for the reset GPIO. This pin can only output
> a LOW signal or switch to input mode but it cannot output a HIGH signal.
> There are already devicetree bindings for these special cases and GPIO
> core already takes care of them but only if we use GPIO descriptors
> instead of GPIO numbers.
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
