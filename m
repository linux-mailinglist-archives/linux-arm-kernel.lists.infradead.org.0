Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80FF5C49E6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 10:47:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OcTMZcWQcnNKwy7BWTAS26TnVoxnjS9MZgcQh6oBjMs=; b=SSX9HMYxNyufWp
	degic/Lr4WXs7jRic0yEinZ62rc6hdM0qtI6tBdcfX0kJTdcY/jQGPsIJfOSpAIndMjR7qVy5GiqD
	WdQOK3te8bDAJuy2DfQ2kUlOglKfHkiIbmWD12/Fhwe1QyMR9I2LckG9ZRZ5SHHK0McrS8CDihr4x
	dkiLRmFB9Jl01wRUiz566kM74uLhlW0JY/TxH89/HacXc6eHlvk6QPx0QKmhmR6TektzoN+3/whDE
	H6YyrZM+JuWWtEGLLJk/Ro2ER1A0O+OCV9byZfQPlEiKrX257ChDjcUj/10n8zMgXFl+e+X/RgfqN
	McNtrx7p/sc68E+u1xJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFaHh-0001jz-6q; Wed, 02 Oct 2019 08:46:57 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFaFL-0001Co-GA
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 08:44:36 +0000
Received: by mail-wr1-x442.google.com with SMTP id n14so18591790wrw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 01:44:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8K7h7HUyw90enLd8fQVTYuZsXONTGa9SFgE/KcYk7vs=;
 b=H4ga2iLEryrxqvflHTtca2vKkCgGeokG+ejsoRMU0WVStBKbBr8fcIcjoXakIR69eT
 Qpwddh8aBaHsjRgog6AA7cFmSDh+ctXZlDsQ8V2j84lvjACGjeZtU1gQZKMlia8aO5/t
 7OvtGl+BWcY16ginjj4LY7nyIwNKioxsUwvg2aCCepCJk44+KJF9QVG1wwlUzE65Q0OE
 d1jB+RKlRDnhBz5CWqBUXNhV66xm5hwyjgqvWqTg/LTCyJWvmIvu+Lb7fRX5F6wiU4zb
 B83/tC1MXvsEz/JYD+jLfZFd0THvnIwQcJO0XWpVcngBpZ3GDNd25eqbeZBtRnKdZsiP
 mSWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8K7h7HUyw90enLd8fQVTYuZsXONTGa9SFgE/KcYk7vs=;
 b=NuhAOIz+3VyjkGBAmbWYJ46q3UZM8TNnhMD6Kq0izfRsAYuq7KkT7eJP16OAhlPIR4
 vyB8Ybhkcrtuo70/jpgIKoUsOl2pWsd22/uXOd8F6Mq6BAkqPxisKjvN+UrvD0nwmVJo
 iI3Qp3mlJTAgYMdwYvddEmTB4Mk7X+6KxwyOiWVuL/CqANNo5N3pc4Ct+CwU0YygAOzv
 O+ClQm9Ej3ngj6pcOCqM6x3sYMYAPeKt4gSsmE2ni+q8anRudKi+jwue0z96G9JUkg5D
 PfrsYFsL6nk9BpfgVZemh0+cfgOMKiCFZM537huVzu5IxJ9jTSsxEQEQKPNqHGgGHkrL
 fL4w==
X-Gm-Message-State: APjAAAUqbxs7ceu0jrKyGiW65oQ9ijqiYS/Wl+lRmjkBg0zEDRgowPYf
 fKiZESQLEi7NgA+7DxuFEJA=
X-Google-Smtp-Source: APXvYqwU9NBbWZxUMWnf59AxkO4xub+qdOeGyBh+vhJmkqA5LxZqkHxzsR61IjlUIUupcBWIrJEqrQ==
X-Received: by 2002:adf:e701:: with SMTP id c1mr1759802wrm.296.1570005868747; 
 Wed, 02 Oct 2019 01:44:28 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id h10sm4269419wrq.95.2019.10.02.01.44.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 02 Oct 2019 01:44:28 -0700 (PDT)
Date: Wed, 2 Oct 2019 10:44:26 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Priit Laes <plaes@plaes.org>
Subject: Re: [linux-sunxi] [PATCH v2 04/11] ARM: dts: sun8i: R40: add crypto
 engine node
Message-ID: <20191002084426.GB3101@Red>
References: <20191001184141.27956-1-clabbe.montjoie@gmail.com>
 <20191001184141.27956-5-clabbe.montjoie@gmail.com>
 <20191002080827.GB6347@plaes.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002080827.GB6347@plaes.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_014431_537650_F1666828 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, catalin.marinas@arm.com,
 linux-sunxi@googlegroups.com, linux@armlinux.org.uk, mripard@kernel.org,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, will@kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 02, 2019 at 08:08:27AM +0000, Priit Laes wrote:
> On Tue, Oct 01, 2019 at 08:41:34PM +0200, Corentin Labbe wrote:
> > The Crypto Engine is a hardware cryptographic offloader that supports
> > many algorithms.
> > It could be found on most Allwinner SoCs.
> > 
> > This patch enables the Crypto Engine on the Allwinner R40 SoC Device-tree.
> > 
> > Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> > ---
> >  arch/arm/boot/dts/sun8i-r40.dtsi | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> > 
> > diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
> > index bde068111b85..1fc3297a55ec 100644
> > --- a/arch/arm/boot/dts/sun8i-r40.dtsi
> > +++ b/arch/arm/boot/dts/sun8i-r40.dtsi
> > @@ -266,6 +266,16 @@
> >  			#phy-cells = <1>;
> >  		};
> >  
> > +		crypto: crypto-engine@1c15000 {
> 
> All the other .dtsi files have `crypto: crypto@...` instead of crypto-engine.
> 

Hello

I will fix that.

Thanks
Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
