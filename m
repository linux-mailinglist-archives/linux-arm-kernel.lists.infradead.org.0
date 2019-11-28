Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A74E010C604
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 10:29:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IVjvLRhHvc22pqufw+sSPCyNpDWlK4IVaH3XU/o0I8E=; b=O8wCe8zge/kDn3
	z4b8z54NHcZwz3kOdbuc2j4eQRSSSfiW6GvkbUALMI4ak9PgFYT/0L9tGzQ5PxOKKDonvT/b232Xm
	vMq1rpYBB6wrvbs2tNSezLMNz0clK0MriBMmdjaWN8uIXju1F+p1HsPyTWG3BBXh+LMcNbtgGkjvZ
	3+N8nj+OocDV6dXYKByjd9WXIjNtCWClimx/3IqatlHb0v0ayyzh9NhjRwACmf2zFeGBWSVO0WtQ2
	twXkbAwlrxj0iz9VbveKWBlAO/a5dZqF6YR/Pg0mBdlKWmOA79SHzf7bH1bxBsDERD/f/SX/PCAnK
	vLEyrUemhPgtK5sHx7ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaG6w-0001qC-Ae; Thu, 28 Nov 2019 09:29:18 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaG6n-0001pi-1F
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 09:29:10 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id ADBD02056B;
 Thu, 28 Nov 2019 10:29:07 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 99B2820234;
 Thu, 28 Nov 2019 10:29:07 +0100 (CET)
Subject: Re: [RFC PATCH 1/1] arm64: dts: added basic DTS for qmx8 congatec
 board
To: Oliver Graute <oliver.graute@kococonnector.com>
References: <20191029122026.14208-1-oliver.graute@kococonnector.com>
 <20191029122026.14208-2-oliver.graute@kococonnector.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <9b865fc1-3c7a-f1bd-8ef2-65088d64b314@free.fr>
Date: Thu, 28 Nov 2019 10:29:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191029122026.14208-2-oliver.graute@kococonnector.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Nov 28 10:29:07 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_012909_222503_95D7A9D3 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: DT <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29/10/2019 13:23, Oliver Graute wrote:

> +&fec1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_fec1>;
> +	phy-mode = "rgmii";
> +	phy-handle = <&ethphy0>;
> +	fsl,magic-packet;
> +	fsl,rgmii_txc_dly;
> +	fsl,rgmii_rxc_dly;
> +	status = "okay";

The two fsl,rgmii* properties do not exist in mainline.
I suppose there were copied from downstream?

> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy0: ethernet-phy@0 {
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			reg = <6>;
> +			at803x,eee-disabled;
> +			at803x,vddio-1p8v;
> +		};
> +	};
> +};

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
