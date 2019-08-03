Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C97D2803B9
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 03:30:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KLO+/NlcmyDZG/1JWQ32Wv2+iOPKKAWLDoBU6JK3J1w=; b=lY4Ymd1dHw441a
	SI2pcpf32nfD+7kEJB4D5TxNPJNvSCJ0KhLG70+vxuZwm2GAaCSLMZyVpu+FqXcU7g8tjbIxzdDsN
	fiimp3ylKGsTuQ9PK2kHT+07+EiSPyJ59+0IR8jdT9vI1Zr8JF2qjBs/Z520fU/zeXS48osvM+pBN
	SDsUW15wLfzwLbTUFn3DzgGWNbsrEw11q5OVB0az0dQKisrTuFC5K7MU6z3C5f1WHOJbtp1JU6MPJ
	fvvv75FmBd844YAlfIpBKLYmIJ230lWgXo2geqUVX09yDVxZ6Xa0r6trzB5b4fv3ceWOgwdo+g2of
	QFaYqW/a9hDCLFnv0qbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htisg-0005F4-A3; Sat, 03 Aug 2019 01:30:46 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htisW-0005Eb-9C
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 01:30:37 +0000
Received: by mail-wm1-x344.google.com with SMTP id s15so46577988wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 02 Aug 2019 18:30:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Ogf+QVoHZtK9iZfwgzb4P/UWGbW9VrBZvDIl55S3hPY=;
 b=KGkroKFjol78GrJj8Z3aHbKWLMrcSiwfex8ESVqf5pCyjcNBYG+ZPXlzN5iCRO4k4S
 j+kWSLfRx1gW9uTsbVilRV/mKw5vnJRnyRovCESrqPj485QPsEXeHmM1ohRfevsYjhl+
 bVqgoWYlnrNbPYUfDRYgNeFptq0zUwF8iaVEaW6Y91hTzIKVEhttusPL7xNJjagJgfPx
 Qmm+hhLcyFpZUGNoAb7uaqmLy2yvIu/dqrpx4BAoA8q5ZPCHBLZqpQBELIiFi0jGG2Yl
 HbTxR+5W2mtoj7+ef493cG+HiMMsq/Ot47bUXyCg3DdLbc7lKcrFA4E477Jh3bin1LxM
 lI3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Ogf+QVoHZtK9iZfwgzb4P/UWGbW9VrBZvDIl55S3hPY=;
 b=gUrq2l4mXQuogf41vwNQIgwqriyX9hRRYeB5ErxUmltOJbxHI6aJ8Wj2Jiho3pIS9s
 Z7uUjuPsj/qp/LI160BsUpwv/w8T+ciKifL2JDVyx18uUvfJecJ1CIjrWsnVDY5eNUFS
 3BdcVuxuAHnVaFdRe9FE/2ipl3vQJfxo1c9HaUIneC+5QDYXXx3NJMCGLaRXYjI9nzUd
 mfCH/5r2kB/wdgT0PpL0Q44snlbeVQuErV2V1uZ7Upn2e4RCV/sGOO9XyylfvQ2mI4kn
 lGHuM746o007SEeQq2joxishZlX1GFrXnqH4pymucxfRP0mk67DcnOPyxM58We3f/Nyn
 Y/5g==
X-Gm-Message-State: APjAAAUH2pIepz7M30yO+zfQhC//V+drpo+aBFIJ+fVdgS4oQHgCqEav
 t9O1qkbWIIgh7lODDPdcc9A=
X-Google-Smtp-Source: APXvYqxqjFQJ9s+K2nHgDoEAg28+wlCsmvPhcNE3ueZNH5NsBPgHWuzjZM3lffnaX7s2DnS6f/1HMQ==
X-Received: by 2002:a1c:e108:: with SMTP id y8mr6269283wmg.65.1564795833805;
 Fri, 02 Aug 2019 18:30:33 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id c4sm62233010wrt.86.2019.08.02.18.30.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 02 Aug 2019 18:30:33 -0700 (PDT)
Date: Fri, 2 Aug 2019 18:30:31 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: David Miller <davem@davemloft.net>
Subject: Re: [PATCH] net: mdio-octeon: Fix build error and Kconfig warning
Message-ID: <20190803013031.GA76252@archlinux-threadripper>
References: <20190731.094150.851749535529247096.davem@davemloft.net>
 <20190731185023.20954-1-natechancellor@gmail.com>
 <20190802.181132.1425585873361511856.davem@davemloft.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802.181132.1425585873361511856.davem@davemloft.net>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_183036_350053_422D33A8 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devel@driverdev.osuosl.org, andrew@lunn.ch, f.fainelli@gmail.com,
 lkp@intel.com, kernel-build-reports@lists.linaro.org,
 gregkh@linuxfoundation.org, rdunlap@infradead.org, willy@infradead.org,
 broonie@kernel.org, linux-next@vger.kernel.org, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 02, 2019 at 06:11:32PM -0700, David Miller wrote:
> From: Nathan Chancellor <natechancellor@gmail.com>
> Date: Wed, 31 Jul 2019 11:50:24 -0700
> 
> > arm allyesconfig warns:
> > 
> > WARNING: unmet direct dependencies detected for MDIO_OCTEON
> >   Depends on [n]: NETDEVICES [=y] && MDIO_DEVICE [=y] && MDIO_BUS [=y]
> > && 64BIT && HAS_IOMEM [=y] && OF_MDIO [=y]
> >   Selected by [y]:
> >   - OCTEON_ETHERNET [=y] && STAGING [=y] && (CAVIUM_OCTEON_SOC &&
> > NETDEVICES [=y] || COMPILE_TEST [=y])
> > 
> > and errors:
> > 
> > In file included from ../drivers/net/phy/mdio-octeon.c:14:
> > ../drivers/net/phy/mdio-octeon.c: In function 'octeon_mdiobus_probe':
> > ../drivers/net/phy/mdio-cavium.h:111:36: error: implicit declaration of
> > function 'writeq'; did you mean 'writeb'?
> 
> The proper way to fix this is to include either
> 
> 	linux/io-64-nonatomic-hi-lo.h
> 
> or
> 
> 	linux/io-64-nonatomic-lo-hi.h
> 
> whichever is appropriate.

Hmmmm, is that not what I did?

Although I did not know about io-64-nonatomic-hi-lo.h. What is the
difference and which one is needed here?

There is apparently another failure when OF_MDIO is not set, I guess I
can try to look into that as well and respin into a series if
necessary.

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
