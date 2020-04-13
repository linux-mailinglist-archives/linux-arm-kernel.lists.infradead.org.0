Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C281A6334
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 08:51:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kgq3h0i8feVLY1LnW7lgIz4m7waxvl1DUFKPE7dHZ9M=; b=ueif6+AJkq4gNJ
	tpa3rmQ+HWjx4J2K0ULbDYSY8t5hsG4RPTj/e1GPBp2wSW3BJ9e+0eNxvyvVB92Hz6WmGWcvK/k2z
	HbHkO/lr8OeVEIDxl7pQHPho+l25R4MSrF7yzmEv7hsZYMElqIUODj603QDDT3CWA6sbJMhFPy7Jz
	I+uvYvyGkeu7fPwm+wokORW6M9n3Lu56BenMgLiewAKWlpEU7MgiY6qW/ECqulwvR40uaFBqg9Zr9
	x9G0oRapOXbX2rCoCPLDCD96DqZ2u00EdSvHFlNs6vRnlzAYKzA2YpywqP78DawViOYkyaUHOr+4F
	+rhntb05qNbEaBrL7KCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNsw1-0002cQ-E9; Mon, 13 Apr 2020 06:51:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNsvs-0002bl-Kv
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 06:51:02 +0000
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
 [209.85.128.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 778F420776
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 06:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586760659;
 bh=itKlPWSDIUfhI/V0PdIrWdvWF2mjKklAzi7kXAkEZiI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=lW3fo4YIURoALAvNoGs50jvKKZweTovFobX14fD0uBwlVuO4RyTv0pyyCDG7MpSE5
 dnwQO0jwz1kaTBAwdAL3oEbM/3LoOGVflmF3Otd1Du4AeCZasNdsRzrTFIsifP197H
 FXYfFraBDh2np0cyUdjy2ZyLMzx3XOI1ZexOvtYk=
Received: by mail-wm1-f52.google.com with SMTP id a81so8975659wmf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Apr 2020 23:50:59 -0700 (PDT)
X-Gm-Message-State: AGi0Pubu8sFuC9j8KYpjMQxPP4u/pRPs81KjmWxWyGZ5fT/8nYtSWNF0
 yhjVESDQ+KVEtWwc0Uh7VnxSvn2Ud7RtYrRMvU0=
X-Google-Smtp-Source: APiQypKIXDrIWUMhun56k6+tJYD42DUVxbckoIRpXheJTy2siWfYFqEyrdTvndxnQqeH0hqwHeJDnfIGKI9HD42tuII=
X-Received: by 2002:a05:600c:2214:: with SMTP id
 z20mr18682592wml.189.1586760657834; 
 Sun, 12 Apr 2020 23:50:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200412034931.9558-1-f.fainelli@gmail.com>
 <20200412112756.687ff227@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <ae06b4c6-6818-c053-6f33-55c96f88a4ae@gmail.com>
 <BN8PR12MB3266A47DE93CEAEBDB4F288AD3DD0@BN8PR12MB3266.namprd12.prod.outlook.com>
In-Reply-To: <BN8PR12MB3266A47DE93CEAEBDB4F288AD3DD0@BN8PR12MB3266.namprd12.prod.outlook.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 13 Apr 2020 14:50:47 +0800
X-Gmail-Original-Message-ID: <CAGb2v65wjtphcN4DEM4mfv+=U5KUmsTujVoPb9L0idwy=ysDZw@mail.gmail.com>
Message-ID: <CAGb2v65wjtphcN4DEM4mfv+=U5KUmsTujVoPb9L0idwy=ysDZw@mail.gmail.com>
Subject: Re: [PATCH net] net: stmmac: Guard against txfifosz=0
To: Jose Abreu <Jose.Abreu@synopsys.com>,
 Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_235100_728036_6DE3C928 
X-CRM114-Status: GOOD (  25.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jakub Kicinski <kuba@kernel.org>,
 "olteanv@gmail.com" <olteanv@gmail.com>,
 "moderated list:ARM/STM32 ARCHITECTURE"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "moderated list:ARM/STM32 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 13, 2020 at 2:42 PM Jose Abreu <Jose.Abreu@synopsys.com> wrote:
>
> From: Florian Fainelli <f.fainelli@gmail.com>
> Date: Apr/12/2020, 19:31:55 (UTC+00:00)
>
> >
> >
> > On 4/12/2020 11:27 AM, Jakub Kicinski wrote:
> > > On Sat, 11 Apr 2020 20:49:31 -0700 Florian Fainelli wrote:
> > >> After commit bfcb813203e619a8960a819bf533ad2a108d8105 ("net: dsa:
> > >> configure the MTU for switch ports") my Lamobo R1 platform which uses
> > >> an allwinner,sun7i-a20-gmac compatible Ethernet MAC started to fail
> > >> by rejecting a MTU of 1536. The reason for that is that the DMA
> > >> capabilities are not readable on this version of the IP, and there is
> > >> also no 'tx-fifo-depth' property being provided in Device Tree. The
> > >> property is documented as optional, and is not provided.
> > >>
> > >> The minimum MTU that the network device accepts is ETH_ZLEN - ETH_HLEN,
> > >> so rejecting the new MTU based on the txfifosz value unchecked seems a
> > >> bit too heavy handed here.
> > >
> > > OTOH is it safe to assume MTUs up to 16k are valid if device tree lacks
> > > the optional property? Is this change purely to preserve backward
> > > (bug-ward?) compatibility, even if it's not entirely correct to allow
> > > high MTU values? (I think that'd be worth stating in the commit message
> > > more explicitly.) Is there no "reasonable default" we could select for
> > > txfifosz if property is missing?
> >
> > Those are good questions, and I do not know how to answer them as I am
> > not familiar with the stmmac HW design, but I am hoping Jose can respond
> > on this patch. It does sound like providing a default TX FIFO size would
> > solve that MTU problem, too, but without a 'tx-fifo-depth' property
> > specified in Device Tree, and with the "dma_cap" being empty for this
> > chip, I have no idea what to set it to.
>
> Unfortunately, allwinner uses GMAC which does not have any mean to detect
> TX FIFO Size. Default value in HW is 2k but this can not be the case in
> these platforms if HW team decided to change it.

I looked at all the publicly available datasheets and Allwinner uses
4K TX FIFO and 16K RX FIFO in all SoCs. Not sure if this would help.

ChenYu

> Anyway, your patch looks sane to me. But if you start seeing TX Queue
> Timeout for higher MTU values then you'll need to add tx-fifo-depth
> property.
>
> ---
> Thanks,
> Jose Miguel Abreu
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
