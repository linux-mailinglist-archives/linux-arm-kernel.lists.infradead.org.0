Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B5D1A8DFD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 23:48:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WHXr0OILKLj7nGuNamNSXWVrTRaYJl1C2AjgCbbgxNQ=; b=ruwxD36w2nlBMn
	4Vh6BfAmvHnXtrGCauLVmHrrgcQbUpweK+urSBU0U8PKODCZYUzSTf0LbSh5tufCSFf1xFt8wvrT4
	ubRgYcaF0qkgTnbw8jKFlpyP5zSuhHEWGaF+Uznr0slpnye4OMz8l/b9thQAyuBKKYuR+AU/L5zus
	rDqL1Y+ELh6cUhNd927QywE0adn2q7fjdtvbAHEEHT+02dEj1QQaiYnY2xv/m7gGaC1VZ4mlKHpzY
	1gU4nMwyW8gP67ZjkT67CFlYGVzlnD5tukoDCfosq9PzXZRLQpeU7jL/Wuep9rLu/vQ1CrO9GwxZV
	6FYawLLPtlD9p4RBDNwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOTPy-0006EX-3u; Tue, 14 Apr 2020 21:48:30 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOTPp-00069r-Tm
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 21:48:24 +0000
Received: by mail-lf1-x144.google.com with SMTP id j14so980315lfg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 14:48:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=hpWgqKZEMKAYtEzy1pWxF1ovmxOedCdsPJgCqZeJZZc=;
 b=SiskKmQUlzQlfIRqLeroGTc4op1A8Z924aUFvfgea000jB0f3mQM+qDWREzkH/xY0w
 sk7P14GIDz/2LZe9sLw8Sfd8G180xjeA6GVXLP8vDNh/dl6himkKLCMt+RSULuuJHHKk
 HOE0q+vvqkbEpfh0HOVPMH2Ss3EBiO3Wkq5mvzsjLlaYWoi1YGkEjnNNS2TpKkwDbMKt
 S0oE97q2gpb3631NmuHwWYMWzyHD2pK7rpKgzhqIvpRgnQTtU07Ub0BXivBDcJuSQ0rV
 xaKWNX+PZZm81FT8toPB1+Eg3l6F3c8lyw8y6j3LUYPHBsyKfueLahC0hwMivu6Se+WZ
 hyvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hpWgqKZEMKAYtEzy1pWxF1ovmxOedCdsPJgCqZeJZZc=;
 b=cKKGxpG6DdRViaHsAt9T2nuu8l6eiA+ksx73G0fwpHAapu/l46P4FOl4nOC4pwovO4
 Qy2DRg4i5duDyPeTyrhOXA1prgW2nqtt/bUdz36tOsnQGvNuSEDK8oMXvZNmOMCc2YPN
 TzwxDXdhB61w/4ExOzODh/BU4T25c4BIMt2WXx8A9AtvIISyWBmvVQxQ3mblDTjm5xh2
 exUyaB6JIAuJi3JqkRwXeFPeTQBzNFgUsV5G9ddJ9njjWYj47cw1vIbK4piprg3um1w9
 RT5K6vE0EXAcHtTNVzG64N4yMceV06oSBSZn+BN/km4pzUHrNGpX9fk1sfoO8BgpBy3j
 abhA==
X-Gm-Message-State: AGi0PuZGJ7KHIGuUepkQnytKvHDPKZtGj5fU9v6rb8SCUOGlojPcEqsw
 HsV2oGjZaHco2F0T7KPdq0gPW5VP3o8=
X-Google-Smtp-Source: APiQypLntGnJZtL0ubJlkyaw3rmTwB5lz961XDjd4JNK0NeYLpAByBVxvrsiVK57RJfIkqdu8ssbaA==
X-Received: by 2002:ac2:4a9d:: with SMTP id l29mr1023681lfp.4.1586900900104;
 Tue, 14 Apr 2020 14:48:20 -0700 (PDT)
Received: from curiosity (ip-195-182-157-78.clients.cmk.ru. [195.182.157.78])
 by smtp.gmail.com with ESMTPSA id
 b2sm6554193lfi.14.2020.04.14.14.48.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 14:48:19 -0700 (PDT)
Date: Wed, 15 Apr 2020 00:52:39 +0300
From: Sergey Matyukevich <geomatsi@gmail.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [bug report] armada-8040-mcbin: 5.6-rc5 boot failure
Message-ID: <20200414215239.GA471879@curiosity>
References: <20200413220520.GA25917@curiosity>
 <20200413222645.GT25745@shell.armlinux.org.uk>
 <20200414160354.GA463339@curiosity> <20200414160838.GA21435@1wt.eu>
 <20200414165533.GX25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414165533.GX25745@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_144822_009464_6185105C 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geomatsi[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Baruch Siach <baruch@tkos.co.il>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Willy Tarreau <w@1wt.eu>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > > I have not changed configuration since 5.3, so all the marvell phy
> > > drivers are in place. Is there anything in configuration that could
> > > be missed after moving from 5.3 to 5.6 kernel ?
> > 
> > FWIW mine works perfectly fine with 5.4 at 1G/2.5G/10G. From what I can
> > quickly check here are the relevant parts in my config for ethernet (not
> > sure all are needed though):
> > 
> > CONFIG_NET_VENDOR_MARVELL=y
> > CONFIG_MVMDIO=y
> > CONFIG_MVPP2=y
> > CONFIG_MDIO_DEVICE=y
> > CONFIG_MDIO_BUS=y
> > CONFIG_MDIO_BITBANG=y
> 
> Macchiatobin doesn't bitbang the MDIO bus.
> 
> > CONFIG_MDIO_BUS_MUX=y
> > CONFIG_MDIO_BUS_MUX_MMIOREG=y
> > CONFIG_MDIO_BUS_MUX_MULTIPLEXER=y
> 
> There's no MDIO bus muxing on Macchiatobin.
> 
> > CONFIG_MDIO_I2C=y
> > CONFIG_PHYLINK=y
> > CONFIG_PHYLIB=y
> > CONFIG_SWPHY=y
> > CONFIG_SFP=y
> > CONFIG_FIXED_PHY=y
> 
> CONFIG_FIXED_PHY should no longer be required.
> 
> > CONFIG_MARVELL_PHY=y
> > CONFIG_MARVELL_10G_PHY=y
> > 
> > Not tested 5.6 yet.

Thanks ! I tested mainline kernels 5.6-rc5, 5.6, 5.7-rc1: all of them
worked just fine on MacchiatoBin. After that I finally figured out what
was wrong with my setup even after updating ATF to 18.12.

Initally I used wireless-drivers-next kernel tree v5.6-rc1. It turned
out that this tree at that point included commit e1f550dc44a ("net:
mvmdio: avoid error message for optional IRQ") but did not included its
subsequent revert...

Regards,
Sergey

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
