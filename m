Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D64F3BC8F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 21:15:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OECaL/I93xOl0yI8SMsvHx8nNL2913jUMfdshIkcjvU=; b=V1zdpmKbz2hBcq
	4L9avS+8XKezTOJiQGux7wVsFTw0OtadCqe/TOsQWHeu9TbBEkdbt/aiNhvSgI4CwC6+S9PRhNFbI
	QjylCYXNUv+LEKF+TCe5V1gw1Uv0fAnbHNJiKUseZajgl0AncFHk4WttVLRR1Rw+vo/5J55wvcys+
	J/H8e1ZkR5TNEMYRo1WgwkaHumls2xzumdU+/8GyKWvnxoFd499IWpaLQTt3JzBAyzgYVVBkvn7Bn
	0VIU2hnWW5rxDhWOdrMCP+CjZjLmRZQR3OECvtlEBASrbH18CpFQMxPAGfT1C28M3ya9SH9kxYTN7
	IXSJ4hnky58P/Ghh1b0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haPl0-0005H1-GL; Mon, 10 Jun 2019 19:15:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haPkk-0004zX-Vh
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 19:14:48 +0000
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
 [209.85.160.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 916E82086A
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 19:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560194086;
 bh=zvtM6TRxQjb/B1By4vuMsY7iObTb+Li2j3Tm+EvMLdo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=TGlvZMcs/FJpXPZCkptFWpPvdL4s72PHG+viHtIY82RSCS/V5RCocn4wfZwXIgujI
 sowVcaU00ECHorIr5JdcGq26ydS5zvsdRkRDlUn+XLT3JHClr90NpofFLySUwdr6aI
 OxKGI1ESby/+f2ZqpwP0N024U/F3j4pqKEkd678Q=
Received: by mail-qt1-f178.google.com with SMTP id n11so9593338qtl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 12:14:46 -0700 (PDT)
X-Gm-Message-State: APjAAAWKRjO4usgUQIauzwCjLOzsdtZhG1bsGcD50yavCav9ysXkyJV0
 etidvlxm3+EdErJDst7oxWvbnQ/F9BvQZeV9Aw==
X-Google-Smtp-Source: APXvYqzIM+MxrgW6H75JwOV7MZ+VIoxyIthyHEe9OmuqLCsypZeNSEVjW4Npk9sHZUa367vpismVBunOWLVPPaSnDrU=
X-Received: by 2002:aed:3fb0:: with SMTP id s45mr7686909qth.136.1560194085879; 
 Mon, 10 Jun 2019 12:14:45 -0700 (PDT)
MIME-Version: 1.0
References: <91618c7e9a5497462afa74c6d8a947f709f54331.1560158667.git-series.maxime.ripard@bootlin.com>
 <9fbf4e8507b7acf4840db82d9c9d910483784b2e.1560158667.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <9fbf4e8507b7acf4840db82d9c9d910483784b2e.1560158667.git-series.maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 10 Jun 2019 13:14:34 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+1KWBH7vJ9sBD4CztCxx9jZBzzBPGCYKpWDthjVJ6-pg@mail.gmail.com>
Message-ID: <CAL_Jsq+1KWBH7vJ9sBD4CztCxx9jZBzzBPGCYKpWDthjVJ6-pg@mail.gmail.com>
Subject: Re: [PATCH v2 08/11] dt-bindings: net: sun7i-gmac: Convert the
 binding to a schemas
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_121447_072672_FE4A747A 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 Alexandre Torgue <alexandre.torgue@st.com>, Andrew Lunn <andrew@lunn.ch>,
 =?UTF-8?Q?Antoine_T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 netdev <netdev@vger.kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 3:26 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Switch our Allwinner A20 GMAC controller binding to a YAML schema to enable
> the DT validation. Since that controller is based on a Synopsys IP, let's
> add the validation to that schemas with a bunch of conditionals.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v1:
>   - Add a file of its own
> ---
>  Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.txt  | 27 ---------------------------
>  Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml | 66 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  Documentation/devicetree/bindings/net/snps,dwmac.yaml               |  3 +++
>  3 files changed, 69 insertions(+), 27 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.txt
>  create mode 100644 Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
