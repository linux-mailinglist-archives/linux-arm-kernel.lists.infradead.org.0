Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A46D3B770
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 16:32:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5RleffLhK37dPYNiPMIXPSMtdsGPgWmzPlf4hKK+Hyk=; b=G2A5w5sAEB9Z8f
	F4RWkJGoxe99GsnAaYFHcTWSzN8ZGU3G8CEpkQqLPW10nFl/Htwmp+oWvT2BVeXKMDKPs6vvlrEg5
	/L1XkHcIbo5uWh/zj603yxUxiOfMN93YLFz8gTt2sBJiBT9akjwxvTn8fL1+1Ozej+Gpr4VA8PcbG
	2FHDui1iUBYETakp3ZBoLpPYhqyrD1l1rHAs4FwgswEZ6rzOD8cXBohuxaEVk57VWeGlW4DL7KmVl
	oPxnpYoECusk/GGjfYNSpbzWDf1RqjWKIS7u6FFGn5hHgKvOQxq6jCL3O85JXNp2/8nsFbLj3ZioV
	K0RNqbg6Rgith9WSgJrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haLL8-0003uC-KS; Mon, 10 Jun 2019 14:32:02 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haLKs-0003tK-NV
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 14:31:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JRYueMLRQECogmZaB6ntHx4NwLFSr0m7XU9IdQBzel4=; b=m06qR7H0rnzOHJEwWUJ9aqNCao
 yHKplEn/FE3sVKF8/vKlMlQq8dwQiN+HnzaDdA17NCQ6HIftnvxJAonp8myb6r9qOI0EY0bhzEx8S
 cBOeIg3pl/zsC8/rW8TJMUcf1A7TMYAWVagSWhyTJUV1ElJpgOzXe+VGBh2nXURittk8=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1haLKl-0007g3-EW; Mon, 10 Jun 2019 16:31:39 +0200
Date: Mon, 10 Jun 2019 16:31:39 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH v2 05/11] dt-bindings: net: sun4i-emac: Convert the
 binding to a schemas
Message-ID: <20190610143139.GG28724@lunn.ch>
References: <91618c7e9a5497462afa74c6d8a947f709f54331.1560158667.git-series.maxime.ripard@bootlin.com>
 <d198d29119b37b2fdb700d8992b31963e98b6693.1560158667.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d198d29119b37b2fdb700d8992b31963e98b6693.1560158667.git-series.maxime.ripard@bootlin.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_073146_921872_33E74AD5 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Antoine =?iso-8859-1?Q?T=E9nart?= <antoine.tenart@bootlin.com>,
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - phy
> +  - allwinner,sram

Quoting ethernet.txt:

- phy: the same as "phy-handle" property, not recommended for new bindings.

- phy-handle: phandle, specifies a reference to a node representing a PHY
  device; this property is described in the Devicetree Specification and so
  preferred;

Can this be expressed in Yaml? Accept phy, but give a warning. Accept
phy-handle without a warning? Enforce that one or the other is
present?

Thanks
	Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
