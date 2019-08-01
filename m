Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 188F57D418
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 05:56:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LC++lQHl5SMlnS2WoAk5dSxye5k+XyTsXpJt6dTTTZU=; b=gjx0zRnYa9ZWf6
	L8c2KyoNHWtkXWt7CjWGP6GA7YU2hD4i5QtR+xjOo3AnVcSB/7+Pf8tzJlb8Yp945R5h9vgId/pLs
	4OVKESW4dGqRR32qVHsA7l1XYBrCO31/k39qxKY9eyiH/5aRrXk/LuwnlCYNMaiirRNBRdPVTVY3d
	5tDINdCOrHr+5IIQDp9oQHqnO2IJxb/xgvwG6obNKhElUrw821gQ9+faqbKVIwODChPp461UIJFcA
	7rJHtc03IqkD6kCX/Zb+MdIIJ44RyITekPpNvgi39mXXNIHiqiYsgWACAO97AsAiagrCfh7DeLR6S
	aFqpu8tEuo1pP3OFAyWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht2CB-000424-DI; Thu, 01 Aug 2019 03:56:03 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht2C3-00041j-Vl
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 03:55:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Y1QlX2yE7yvhO9Y6IQdrLu7V2tiqtVgXwBkJSh4jYHg=; b=yNJoXUHia1doAfiLkZ7DnjfnK2
 DlsR52pVLSHbKp0s/pjmV6L1gaWDbQ6nlSfwl47jeGtYrwsMa5QfRALq7DLdZpyzf4zab2Fw/KOPb
 Lo0lyATAVgDSUowhIZ9zC7yAt0IT7zszT23ki4epttXDyxDLlDZQaJAl9ouyLcDfL5BE=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1ht2Bx-0001OG-16; Thu, 01 Aug 2019 05:55:49 +0200
Date: Thu, 1 Aug 2019 05:55:49 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Andrew Jeffery <andrew@aj.id.au>
Subject: Re: [PATCH net-next v2 3/4] net: ftgmac100: Add support for DT
 phy-handle property
Message-ID: <20190801035549.GH2713@lunn.ch>
References: <20190731053959.16293-1-andrew@aj.id.au>
 <20190731053959.16293-4-andrew@aj.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731053959.16293-4-andrew@aj.id.au>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_205556_171786_CEC59529 
X-CRM114-Status: GOOD (  11.19  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, f.fainelli@gmail.com,
 linux-aspeed@lists.ozlabs.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 03:09:58PM +0930, Andrew Jeffery wrote:
> phy-handle is necessary for the AST2600 which separates the MDIO
> controllers from the MAC.
> 
> I've tried to minimise the intrusion of supporting the AST2600 to the
> FTGMAC100 by leaving in place the existing MDIO support for the embedded
> MDIO interface. The AST2400 and AST2500 continue to be supported this
> way, as it avoids breaking/reworking existing devicetrees.
> 
> The AST2600 support by contrast requires the presence of the phy-handle
> property in the MAC devicetree node to specify the appropriate PHY to
> associate with the MAC. In the event that someone wants to specify the
> MDIO bus topology under the MAC node on an AST2400 or AST2500, the
> current auto-probe approach is done conditional on the absence of an
> "mdio" child node of the MAC.
> 
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
