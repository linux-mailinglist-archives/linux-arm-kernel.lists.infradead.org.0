Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17CAA28FAB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 05:42:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MBp7F9sfNfaDD5UDxKFYdfiLStUyobzkzc3a0G2WYLo=; b=Wvmx6nTQWzlhkz
	etVdH4dfoj3ypuLhEpAzAChJA45bFuyyWs16RDLJbNBbDyN3UaUnhWS1L4naOTHLQyELNYbFt5D1l
	1GHOx5Cs5Ku+ejOQJnXVMz79J4p7yQY69cDkOTkuB9deE5bSCNP0vhLsEAT+19rvmT3cZQY4jaxv1
	qwLrfELiy33UA+WHVsrodYXSaTdCEEcOvMBbwHUikK9v6vb/twejAjY46ZNXOOuJnAF+9NqxSfV5k
	84WSLnYeKR3LpojhLDRp7M2SWakNxjwCbmEW4XimPb9srIOU3XlsBaN0IkKpodu7lp767JS1ZDy6a
	f26ZhcHcOgR7EbT84TCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU15h-0001Dq-PO; Fri, 24 May 2019 03:41:57 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU15Z-0001DO-GT
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 03:41:51 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 8977820A0E;
 Thu, 23 May 2019 23:41:43 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Thu, 23 May 2019 23:41:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=+hIiWPGPYSLcmO5Et3wtgKtghbuz25z
 cwRDucrkH8XA=; b=h/rvqKD+rK5HmObyFF9jq+wcc33iHC4bgkxh0Q7FaoDDytG
 BdbgeoBLndzj6Qc+HPy1HIe+H+C3b4ZUu9IdIynmFwNZgKurjfIW7Put9K3vcErq
 jAYeuDdugDT+7ihcJoLaUggSpk8GwljHn1bugzcnGJnfNsCPZMH4o4zg1pUz0O/v
 POCGLcj1T5F4QhteeTyOmPx1JZwMdnOtXQkVzqj6v1U7n6sgHGhIAZEYzUanXz4B
 C8vsRmmVdSb/+42D2WIdw7IZecOZkybvcksvOhhHCKRil9Q1TCwZdCf/L13mJg+l
 QT+DsfnO6ADeCTFfGSYT78ycvbLnyf5F9tsx4tg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=+hIiWP
 GPYSLcmO5Et3wtgKtghbuz25zcwRDucrkH8XA=; b=M7vAUbrc50pd/65gQQOex8
 zAWOTgSuk2aByBLPKCrOQddcmo0I3du8tPdY9RsyXkb8Zc8XpKcnR+g1/gOPMABz
 +sAANDslLeS+gVYoypm2J1t29+qypskO1ujlMntkiC8Hjd3vU0spLjfqvb6CYHR6
 8DeD1WZ17guIGyt0B3R42UCddhGrLAUnjQRoI5WsCTghx0o216JqgpaAbB42IJdl
 MMPeO38Qhk3xcMvebKkYzOAbfCooGYbhzAmKsRNYL4YzPR+lfKfPkq/0is0g9mXp
 X5EOm662VtoLFansPWw9F9hl6ZfPUfoxWqtNLo8ZKOATbpmNYtJtJyl5y1m2rHtw
 ==
X-ME-Sender: <xms:82fnXMCx_BNJDjn4rR-ThAVb3Ijn9_I1118ge0tyhX2wJB7xWKOS6g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddrudduhedgjeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuffhomh
 grihhnpehinhhfrhgruggvrggurdhorhhgnecurfgrrhgrmhepmhgrihhlfhhrohhmpegr
 nhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:82fnXD_E4regQxgQxDhNIq4gusLT74rvJAnoqpJGEIpuTUS-Mlzltg>
 <xmx:82fnXEVI-WbXijp-dCvKWD6cYYtZxmxRjh4TZYWiVobuqsVgptJ5CQ>
 <xmx:82fnXDssIYltoRH-ZONXSYdLlBrQk5x6jSrs2jPENRYpLqUajei3Hg>
 <xmx:92fnXCnNaBCwDgleoUVXOkM14f4bDHSboZFquByAKCzWzYKwPZXoIQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id B2197E00A2; Thu, 23 May 2019 23:41:39 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-550-g29afa21-fmstable-20190520v1
Mime-Version: 1.0
Message-Id: <c3bd01ed-a2f8-4194-9986-c98efbe47f29@www.fastmail.com>
In-Reply-To: <20190404044344.4592-1-joel@jms.id.au>
References: <20190404044344.4592-1-joel@jms.id.au>
Date: Fri, 24 May 2019 13:11:38 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Joel Stanley" <joel@jms.id.au>, "Olof Johansson" <olof@lixom.net>,
 linux-arm-kernel@lists.infradead.org
Subject: =?UTF-8?Q?Re:_[PATCH_v2]_ARM:_dts:_aspeed:_Add_Power9_and_Power9_CFAM_de?=
 =?UTF-8?Q?scription?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_204149_836987_231FBE03 
X-CRM114-Status: GOOD (  15.57  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linux-aspeed@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Thu, 4 Apr 2019, at 15:14, Joel Stanley wrote:
> From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> 
> To be used by the OpenPower BMC machines.
> 
> This provides proper chip IDs but also adds the various sub-devices
> necessary for the future OCC driver among other. All the added nodes
> comply with the existing upstream FSI bindings.
> 
> Signed-off-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> Signed-off-by: Joel Stanley <joel@jms.id.au>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

> ---
> v2: The first version of this used a bit more magic and was nak'd by
> Olof. I've reworked it to not use macros. It still needs to be included
> in the parent device tree after the fsi node is created.
> 
>  arch/arm/boot/dts/aspeed-bmc-opp-lanyang.dts  |   2 +
>  arch/arm/boot/dts/aspeed-bmc-opp-palmetto.dts |  22 ++
>  arch/arm/boot/dts/aspeed-bmc-opp-romulus.dts  |   8 +
>  .../boot/dts/aspeed-bmc-opp-witherspoon.dts   |   2 +
>  arch/arm/boot/dts/aspeed-bmc-opp-zaius.dts    |   2 +
>  arch/arm/boot/dts/ibm-power9-dual.dtsi        | 248 ++++++++++++++++++
>  6 files changed, 284 insertions(+)
>  create mode 100644 arch/arm/boot/dts/ibm-power9-dual.dtsi
> 
> diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-lanyang.dts 
> b/arch/arm/boot/dts/aspeed-bmc-opp-lanyang.dts
> index 024e52a6cd0f..de95112e2a04 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-opp-lanyang.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-opp-lanyang.dts
> @@ -322,3 +322,5 @@
>  &adc {
>  	status = "okay";
>  };
> +
> +#include "ibm-power9-dual.dtsi"
> diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-palmetto.dts 
> b/arch/arm/boot/dts/aspeed-bmc-opp-palmetto.dts
> index b249da80fb83..b0cb34ccb135 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-opp-palmetto.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-opp-palmetto.dts
> @@ -347,3 +347,25 @@
>  		line-name = "BMC_TPM_INT_N";
>  	};
>  };
> +
> +&fsi {
> +	cfam@0,0 {
> +		reg = <0 0>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		chip-id = <0>;
> +
> +		scom@1000 {
> +			compatible = "ibm,fsi2pib";
> +			reg = <0x1000 0x400>;
> +		};
> +
> +		fsi_hub0: hub@3400 {
> +			compatible = "ibm,fsi-master-hub";
> +			reg = <0x3400 0x400>;
> +			#address-cells = <2>;
> +			#size-cells = <0>;
> +			no-scan-on-init;
> +		};
> +	};
> +};
> diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-romulus.dts 
> b/arch/arm/boot/dts/aspeed-bmc-opp-romulus.dts
> index 76fe994f2ba4..5a6bbb3b6640 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-opp-romulus.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-opp-romulus.dts
> @@ -296,3 +296,11 @@
>  &adc {
>  	status = "okay";
>  };
> +
> +&gfx {
> +     status = "okay";
> +     memory-region = <&gfx_memory>;
> +};
> +
> +#include "ibm-power9-dual.dtsi"
> +
> diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts 
> b/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts
> index ad54117c075e..a0a4a0c6bc2a 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts
> @@ -592,3 +592,5 @@
>  &adc {
>  	status = "okay";
>  };
> +
> +#include "ibm-power9-dual.dtsi"
> diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-zaius.dts 
> b/arch/arm/boot/dts/aspeed-bmc-opp-zaius.dts
> index 2c5aa90a546d..05df11cacb21 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-opp-zaius.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-opp-zaius.dts
> @@ -435,3 +435,5 @@
>  &ibt {
>  	status = "okay";
>  };
> +
> +#include "ibm-power9-dual.dtsi"
> diff --git a/arch/arm/boot/dts/ibm-power9-dual.dtsi 
> b/arch/arm/boot/dts/ibm-power9-dual.dtsi
> new file mode 100644
> index 000000000000..2abc42eda7b0
> --- /dev/null
> +++ b/arch/arm/boot/dts/ibm-power9-dual.dtsi
> @@ -0,0 +1,248 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +// Copyright 2018 IBM Corp
> +
> +&fsi {
> +	cfam@0,0 {
> +		reg = <0 0>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		chip-id = <0>;
> +
> +		scom@1000 {
> +			compatible = "ibm,fsi2pib";
> +			reg = <0x1000 0x400>;
> +		};
> +
> +		i2c@1800 {
> +			compatible = "ibm,fsi-i2c-master";
> +			reg = <0x1800 0x400>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			cfam0_i2c0: i2c-bus@0 {
> +				reg = <0>;
> +			};
> +
> +			cfam0_i2c1: i2c-bus@1 {
> +				reg = <1>;
> +			};
> +
> +			cfam0_i2c2: i2c-bus@2 {
> +				reg = <2>;
> +			};
> +
> +			cfam0_i2c3: i2c-bus@3 {
> +				reg = <3>;
> +			};
> +
> +			cfam0_i2c4: i2c-bus@4 {
> +				reg = <4>;
> +			};
> +
> +			cfam0_i2c5: i2c-bus@5 {
> +				reg = <5>;
> +			};
> +
> +			cfam0_i2c6: i2c-bus@6 {
> +				reg = <6>;
> +			};
> +
> +			cfam0_i2c7: i2c-bus@7 {
> +				reg = <7>;
> +			};
> +
> +			cfam0_i2c8: i2c-bus@8 {
> +				reg = <8>;
> +			};
> +
> +			cfam0_i2c9: i2c-bus@9 {
> +				reg = <9>;
> +			};
> +
> +			cfam0_i2c10: i2c-bus@a {
> +				reg = <10>;
> +			};
> +
> +			cfam0_i2c11: i2c-bus@b {
> +				reg = <11>;
> +			};
> +
> +			cfam0_i2c12: i2c-bus@c {
> +				reg = <12>;
> +			};
> +
> +			cfam0_i2c13: i2c-bus@d {
> +				reg = <13>;
> +			};
> +
> +			cfam0_i2c14: i2c-bus@e {
> +				reg = <14>;
> +			};
> +		};
> +
> +		sbefifo@2400 {
> +			compatible = "ibm,p9-sbefifo";
> +			reg = <0x2400 0x400>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			fsi_occ0: occ {
> +				compatible = "ibm,p9-occ";
> +			};
> +		};
> +
> +		fsi_hub0: hub@3400 {
> +			compatible = "fsi-master-hub";
> +			reg = <0x3400 0x400>;
> +			#address-cells = <2>;
> +			#size-cells = <0>;
> +
> +			no-scan-on-init;
> +		};
> +	};
> +};
> +
> +&fsi_hub0 {
> +	cfam@1,0 {
> +		reg = <1 0>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		chip-id = <1>;
> +
> +		scom@1000 {
> +			compatible = "ibm,fsi2pib";
> +			reg = <0x1000 0x400>;
> +		};
> +
> +		i2c@1800 {
> +			compatible = "ibm,fsi-i2c-master";
> +			reg = <0x1800 0x400>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			cfam1_i2c0: i2c-bus@0 {
> +				reg = <0>;
> +			};
> +
> +			cfam1_i2c1: i2c-bus@1 {
> +				reg = <1>;
> +			};
> +
> +			cfam1_i2c2: i2c-bus@2 {
> +				reg = <2>;
> +			};
> +
> +			cfam1_i2c3: i2c-bus@3 {
> +				reg = <3>;
> +			};
> +
> +			cfam1_i2c4: i2c-bus@4 {
> +				reg = <4>;
> +			};
> +
> +			cfam1_i2c5: i2c-bus@5 {
> +				reg = <5>;
> +			};
> +
> +			cfam1_i2c6: i2c-bus@6 {
> +				reg = <6>;
> +			};
> +
> +			cfam1_i2c7: i2c-bus@7 {
> +				reg = <7>;
> +			};
> +
> +			cfam1_i2c8: i2c-bus@8 {
> +				reg = <8>;
> +			};
> +
> +			cfam1_i2c9: i2c-bus@9 {
> +				reg = <9>;
> +			};
> +
> +			cfam1_i2c10: i2c-bus@a {
> +				reg = <10>;
> +			};
> +
> +			cfam1_i2c11: i2c-bus@b {
> +				reg = <11>;
> +			};
> +
> +			cfam1_i2c12: i2c-bus@c {
> +				reg = <12>;
> +			};
> +
> +			cfam1_i2c13: i2c-bus@d {
> +				reg = <13>;
> +			};
> +
> +			cfam1_i2c14: i2c-bus@e {
> +				reg = <14>;
> +			};
> +		};
> +
> +		sbefifo@2400 {
> +			compatible = "ibm,p9-sbefifo";
> +			reg = <0x2400 0x400>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			fsi_occ1: occ {
> +				compatible = "ibm,p9-occ";
> +			};
> +		};
> +
> +		fsi_hub1: hub@3400 {
> +			compatible = "fsi-master-hub";
> +			reg = <0x3400 0x400>;
> +			#address-cells = <2>;
> +			#size-cells = <0>;
> +
> +			no-scan-on-init;
> +		};
> +	};
> +};
> +
> +/* Legacy OCC numbering (to get rid of when userspace is fixed) */
> +&fsi_occ0 {
> +	reg = <1>;
> +};
> +
> +&fsi_occ1 {
> +	reg = <2>;
> +};
> +
> +/ {
> +	aliases {
> +		i2c100 = &cfam0_i2c0;
> +		i2c101 = &cfam0_i2c1;
> +		i2c102 = &cfam0_i2c2;
> +		i2c103 = &cfam0_i2c3;
> +		i2c104 = &cfam0_i2c4;
> +		i2c105 = &cfam0_i2c5;
> +		i2c106 = &cfam0_i2c6;
> +		i2c107 = &cfam0_i2c7;
> +		i2c108 = &cfam0_i2c8;
> +		i2c109 = &cfam0_i2c9;
> +		i2c110 = &cfam0_i2c10;
> +		i2c111 = &cfam0_i2c11;
> +		i2c112 = &cfam0_i2c12;
> +		i2c113 = &cfam0_i2c13;
> +		i2c114 = &cfam0_i2c14;
> +		i2c200 = &cfam1_i2c0;
> +		i2c201 = &cfam1_i2c1;
> +		i2c202 = &cfam1_i2c2;
> +		i2c203 = &cfam1_i2c3;
> +		i2c204 = &cfam1_i2c4;
> +		i2c205 = &cfam1_i2c5;
> +		i2c206 = &cfam1_i2c6;
> +		i2c207 = &cfam1_i2c7;
> +		i2c208 = &cfam1_i2c8;
> +		i2c209 = &cfam1_i2c9;
> +		i2c210 = &cfam1_i2c10;
> +		i2c211 = &cfam1_i2c11;
> +		i2c212 = &cfam1_i2c12;
> +		i2c213 = &cfam1_i2c13;
> +		i2c214 = &cfam1_i2c14;
> +	};
> +};
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
