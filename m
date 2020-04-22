Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 434C41B4888
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 17:25:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lxcQsbjI987scGegrNPaHhPqp0m0ORJV9H9SbtR7iLM=; b=nTlh787S0YFkb3
	MY9sI/okAx6FLi0MGJUXTSIYa1AztSz8GJjYNVe2oOPNSwB6vXfJvE6R3wGRlP+WOKRTO/ksU7dLV
	ab3l5JmYZMaW9eYMTfRnVLXcwXF96V9n2xJQyory03Wu6s32vB5nlh8R0KQk1NVGyPtrzGzs2FNYg
	tuk7OySp012+ryaIca0eqsQ7ZGIdQ8ODU0aBleNW0nfDfkeP+CXkmAf//Mt3QqZ/Xl2xrrXIxkSCp
	Tr3D6CghkwDmEabZxidcyXWwo00GFTkeFnOYOlqQCpi5vpw84A3oVCn96TkDZhKfB94/Sca2ru04j
	08//YiijPNfm6Ldj3Wcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRHF9-0003EP-NQ; Wed, 22 Apr 2020 15:24:55 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRHF0-0003DB-QU
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 15:24:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KkECSdeYB459bXX9pGUO7tmk+Q++s7iL1Wfe6Yw90kw=; b=3EG7drKNNTaBxZHOLlaWDrW8NI
 A2Vk2jp6H/qR02RnJLXHW0iIoLVYvQxNRHfrX+VcBvMajq7mWZZPVES29neuMekU9ZfoqVYtOGpb8
 NojtfGCGOJVvAGFJHKRe1XIRbVsEuEqy8LtfeNbizkmTH1iG/9yXhy9f0Y47u3qeCjVQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jRHEt-004DqR-FC; Wed, 22 Apr 2020 17:24:39 +0200
Date: Wed, 22 Apr 2020 17:24:39 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Jakov Petrina <jakov.petrina@sartura.hr>
Subject: Re: [PATCH] arm: dts: uDPU: switch PHY operation mode to 2500base-x
Message-ID: <20200422152439.GG974925@lunn.ch>
References: <20200422150915.3355073-1-jakov.petrina@sartura.hr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422150915.3355073-1-jakov.petrina@sartura.hr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_082446_864923_7701B58D 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, jason@lakedaemon.net,
 gregory.clement@bootlin.com, linux-kernel@vger.kernel.org,
 vladimir.vid@sartura.hr, Russell King <rmk+kernel@armlinux.org.uk>,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 sebastian.hesselbarth@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 22, 2020 at 05:09:15PM +0200, Jakov Petrina wrote:
> This resolves issues with certain SPF modules.

Hi Jakov

Please could you explain this some more. PHYLINK should be setting the
mode appropriately, based on the capabilities of the SFP module. Is
the real problem that the SFP module is indicating the wrong baud
rate?

	Andrew

> 
> Signed-off-by: Jakov Petrina <jakov.petrina@sartura.hr>
> Signed-off-by: Vladimir Vid <vladimir.vid@sartura.hr>
> ---
>  arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
> index 7eb6c1796cef..b6e2a9c68b2a 100644
> --- a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
> +++ b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
> @@ -144,7 +144,7 @@ lm75@49 {
>  };
>  
>  &eth0 {
> -	phy-mode = "sgmii";
> +	phy-mode = "2500base-x";
>  	status = "okay";
>  	managed = "in-band-status";
>  	phys = <&comphy1 0>;
> @@ -152,7 +152,7 @@ &eth0 {
>  };
>  
>  &eth1 {
> -	phy-mode = "sgmii";
> +	phy-mode = "2500base-x";
>  	status = "okay";
>  	managed = "in-band-status";
>  	phys = <&comphy0 1>;
> -- 
> 2.24.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
