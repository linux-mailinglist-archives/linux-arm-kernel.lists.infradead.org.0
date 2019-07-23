Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3577225D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 00:25:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3BxnWTgx38pRNi2BY8LLAXatFBo/QEZVpnDegWHKsdU=; b=VDFQLuTC0+l8PN
	RGfBh1T/0RYND0B0h/I16BLHSAYbIs17xDmuRkBmeshkvrWwWhYUyQkG78BaqZf9iNADstgHee1rk
	/BL3TyAMBY0S5npd9RmAWkk3vzABcwHoVpHH8y/i3N+vvjS6IV1BEQ2ggozYdIS6fFHz+C7bvzxyi
	knqpkkLWx5JGA/r/2pN557cvkm7L5w4nHAfy2gOO6ejykF8G73we3MqVAjFBHDgvrIIZlYyevUS0n
	Zv/+AcslEBJ5sBjPyLll569+L3F7wN4iGy2tCRsZNe9Ss40bapY8OlideYnTgCOEvvpS+SYMXQb1F
	tU9JWikEZ1pVKii/yEqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq3E3-00045r-QQ; Tue, 23 Jul 2019 22:25:39 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq3DR-0002Zj-K8
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 22:25:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JBjWPZFWOr2ZDHDrYZ3UsWyBFtkPoXj28/OnBpUt3GQ=; b=jf5frP/e/9v9AkZbCfEO1L6WHG
 stJcK+9H+bc3VfDJ5aFprTTmZFD7CoLUusKuhuF6EPbqfVtpw152T6zfk5purm9QXR0LU46OaYxzu
 VLIWYChioB4lOP9a2ZTjH6ma77mxIHPt7PK5Wx0eAX/A4Mt4/urbLGxvC+8oqHXfEgQY=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hq3DK-0003xn-Oo; Wed, 24 Jul 2019 00:24:54 +0200
Date: Wed, 24 Jul 2019 00:24:54 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Claudiu Manoil <claudiu.manoil@nxp.com>
Subject: Re: [PATCH net-next 1/3] enetc: Add mdio bus driver for the PCIe
 MDIO endpoint
Message-ID: <20190723222454.GE13517@lunn.ch>
References: <1563894955-545-1-git-send-email-claudiu.manoil@nxp.com>
 <1563894955-545-2-git-send-email-claudiu.manoil@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563894955-545-2-git-send-email-claudiu.manoil@nxp.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_152502_242481_6024D2BC 
X-CRM114-Status: UNSURE (   6.61  )
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 alexandru.marginean@nxp.com, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> +	bus = mdiobus_alloc_size(sizeof(u32 *));
> +	if (!bus)
> +		return -ENOMEM;
> +

> +	bus->priv = pci_iomap_range(pdev, 0, ENETC_MDIO_REG_OFFSET, 0);

This got me confused for a while. You allocate space for a u32
pointer. bus->priv will point to this space. However, you are not
using this space, you {ab}use the pointer to directly hold the return
from pci_iomap_range(). This works, but sparse is probably unhappy,
and you are wasting the space the u32 pointer takes.

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
