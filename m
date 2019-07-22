Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 714CB6FBF6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 11:15:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iJjL3XMPFyfnBo2rDO50HEUWBIo2y6suCB/VSyzzKxM=; b=MrmiNJoQKxxZX5
	Kqj/FCZFTpwpCoNVo1ohN9oaQQy5IfZdFkBEafFhOW3fK3hPImTGQrwqKMBhXQzbelJMBmFSiRkJw
	M5aQVpUr+Q9mA+ap62h40cXmiru5Ntfo9S2/IHVk6VLt5wm1ekkgh43+xq8Z5gNitIkvJof40LW1E
	mUQPVZjLvuAA7NkXDO1JZ7GC7WfYzH1LK2jEdJ5wsSVJyjXQsHw/AUw9jlacN7QQ4GoaDxQug5Hq/
	HlOu87KUXoc4cyaghL4TIKxPel1+jtaBOpL0OPYtPSJXO2T+FaDoyLNgNBpL9G4fZY2bl2fyW3MHG
	YIqVzZQuMIaxdIGgndQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpUPH-00046O-9p; Mon, 22 Jul 2019 09:14:56 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpUOZ-00045Q-SP
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 09:14:13 +0000
Received: by mail-qk1-f195.google.com with SMTP id m14so2365632qka.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 02:14:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TAsHQCwByo0xm+Ou+Z8f3siTb0OiXHpS7X8zBNWanlM=;
 b=hlGlrWZVQFr4fZwIm0AMrBshnCZ1epLhUR0TO+EKmkGBpVx8+UIAQr4sHLgbhORf9k
 kOQFY2QoJvwMVaWBnNB/AAKuRbfVIJoKFQoHEWUk0I/mU/FnK/8MyFGFAk+yT5UU2AZM
 IZehp0jxJBTnj4dvb1r9Z4Pu/J5apPslCpaZ0VYx5acZsXSTjECZtCRF7+VmsrFRsaYo
 EMvBVXhKqpieRaUcuyrzVFeNiaxT0e1SvIuCSPQI78ADOhMm1spo/KuWctkvEfEGBfgh
 wksq7C/W6rSsyHZfMF785UDyZGYoyEa22WcwvW1ZSsN4awnka3MtiEcMVDoGCrJgFVWc
 IdTQ==
X-Gm-Message-State: APjAAAUepv5YC/xgqJ3sGQGHBGD5nH4GEpoFvSLijJ9rsfDBzzPEuZQW
 9krbACIF/+kF9PBG4w3eoc3qezkYMmxYffqMUas=
X-Google-Smtp-Source: APXvYqwlY7qaXPeSLQnwZKRSkvohTm0gOv49ddiB/N23W1ch5uaCiEC2qqiDPxrQGAKS7evl9G5YQHXezsrDWYwOS54=
X-Received: by 2002:a37:76c5:: with SMTP id
 r188mr45322695qkc.394.1563786850518; 
 Mon, 22 Jul 2019 02:14:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190703132255.852025-1-arnd@arndb.de>
 <20190709161630.7963-1-f.fainelli@gmail.com>
In-Reply-To: <20190709161630.7963-1-f.fainelli@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 22 Jul 2019 11:13:54 +0200
Message-ID: <CAK8P3a0eosUb0mZ_rDayChXC36w5Xj0gqtcKOcPCP8MEiMm3bQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: bcm47094: add missing #cells for mdio-bus-mux
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_021411_931854_E84EEC35 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Vivek Unune <npcomplete13@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 9, 2019 at 6:16 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
> On Wed,  3 Jul 2019 15:22:45 +0200, Arnd Bergmann <arnd@arndb.de> wrote:
> > The mdio-bus-mux has no #address-cells/#size-cells property,
> > which causes a few dtc warnings:
> >
> > arch/arm/boot/dts/bcm47094-linksys-panamera.dts:129.4-18: Warning (reg_format): /mdio-bus-mux/mdio@200:reg: property has invalid length (4 bytes) (#address-cells == 2, #size-cells == 1)
> > arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
> > arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
> > arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (spi_bus_reg): Failed prerequisite 'reg_format'
> > arch/arm/boot/dts/bcm47094-linksys-panamera.dts:128.22-132.5: Warning (avoid_default_addr_size): /mdio-bus-mux/mdio@200: Relying on default #address-cells value
> > arch/arm/boot/dts/bcm47094-linksys-panamera.dts:128.22-132.5: Warning (avoid_default_addr_size): /mdio-bus-mux/mdio@200: Relying on default #size-cells value
> >
> > Add the normal cell numbers.
> >
> > Fixes: 2bebdfcdcd0f ("ARM: dts: BCM5301X: Add support for Linksys EA9500")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
>
> Applied to devicetree/fixes, thanks!

I just noticed this never made it into linux-next or the merge window.
Did it get dropped by accident?

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
