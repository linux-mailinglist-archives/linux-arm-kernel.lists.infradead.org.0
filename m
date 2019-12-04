Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBC8112EC8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 16:42:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fu0GAsyWi1/DPuMmyHj4KFDNWOXLsPf76E7FbSJdsPg=; b=BDOFmSSNRmSj8o
	G7+9r+vMVjn3fcGKie4rDlKdg9xG3PrPxveqEM3jIzwyX3mCuRtA6i9HsVL2NC60t9pV5o0yLFjf4
	t5ycFoZ9eDtryTFqAPwXTtSbxAhG49Rcw/27Yj1bDMM56jMNcgrEJzHe96lbSseYJ/zBijgFF4jty
	a8+TDQR/yslCs+DcDDPNX/npOzmNeBVzvOJCrI/qg6bBJtNmtEWR19JC0DfzUnJ4MpPJnswnyg7PA
	bXzkXOzfgbCg5nsfxvtG8RBvfcsfwtCybrtujlLW6v7qdlS4GWtmyafufBCvulmMtGm7XpxY7QduH
	5KeqnRATc19yJdXNofKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icWnb-00083J-Lw; Wed, 04 Dec 2019 15:42:43 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icWnU-00082A-94
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 15:42:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pYIRrNUJ71hfV0xdZn8g7ojj1OdsBo6oYX8md6hF2ik=; b=tB1V65KqhCCg+UG1LGXf5pKlzt
 cMl6UfKGw6sAtii9rXHET8caV1yEB4AXeQxed9a44OoBT8iAznBAkpbDikgxcRuU4jHFcNiA/ScOZ
 F7237hANCh2e14sdTceiNj43tqKvm29rDPt3UNGN/G5h5UHHo/N820XMxvMvNkqmoSsA=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1icWnI-0002fC-KH; Wed, 04 Dec 2019 16:42:24 +0100
Date: Wed, 4 Dec 2019 16:42:24 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Mian Yousaf Kaukab <ykaukab@suse.de>
Subject: Re: [PATCH] net: thunderx: start phy before starting autonegotiation
Message-ID: <20191204154224.GE21904@lunn.ch>
References: <20191204152651.13418-1-ykaukab@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191204152651.13418-1-ykaukab@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_074236_319214_24AEC341 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
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
Cc: rric@kernel.org, netdev@vger.kernel.org, tharvey@gateworks.com,
 linux-kernel@vger.kernel.org, sgoutham@cavium.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 04, 2019 at 04:26:51PM +0100, Mian Yousaf Kaukab wrote:
> Since "2b3e88ea6528 net: phy: improve phy state checking"
> phy_start_aneg() expects phy state to be >= PHY_UP. Call phy_start()
> before calling phy_start_aneg() during probe so that autonegotiation
> is initiated.
> 
> Network fails without this patch on Octeon TX.
> 
> Signed-off-by: Mian Yousaf Kaukab <ykaukab@suse.de>
> ---
>  drivers/net/ethernet/cavium/thunder/thunder_bgx.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/cavium/thunder/thunder_bgx.c b/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
> index 1e09fdb63c4f..504644257aff 100644
> --- a/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
> +++ b/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
> @@ -1115,6 +1115,7 @@ static int bgx_lmac_enable(struct bgx *bgx, u8 lmacid)
>  				       phy_interface_mode(lmac->lmac_type)))
>  			return -ENODEV;
>  
> +		phy_start(lmac->phydev);
>  		phy_start_aneg(lmac->phydev);
>  		return 0;

phy_start() will start aneg, if aneg is configured. So you should be
able to remove the call to phy_start_aneg().

     Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
