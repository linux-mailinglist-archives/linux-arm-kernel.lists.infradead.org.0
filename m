Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D1CC3C84
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 18:53:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dJsvzsi1ypuLswVR94CK4kw19bLHkNRxBiPEt2BrZ5Q=; b=XKLEttB7nfGEGf
	kspVZF5PouF/h7rW/b/KqcofLzWHNzKzSbWdnWDlUg3VqpXJDbnFxrYOofBNUR4Zqm02VeFH0sAZS
	d4QvYcRzI1qgNki0QqCCfeFj/bv/lXQN3nNMNTPHpt1JN9HTsy4i2yhBEeZTVsOWwxJFF0XuorjO4
	VsVNrSmqzj9fHh75ZVhPIIVPj7c9EMcQ/dShXUeNSfAN/GifBuv953AM2gLhNcsX6yHNme55MdIRG
	avf/Vpw+bDyuG6OgCLF25HxTfEFnDo2pTM2DEGU378FbpB74gb++hHJ1YK8dAhyoYBGJ1dwU7/tt8
	HPtv/xcvYv2zw2vnhqLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFLOZ-000444-QT; Tue, 01 Oct 2019 16:53:03 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFLOU-000439-3T
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 16:52:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FX5jf20eacmB/0gFXEhbZpatqYKCnwg235wY4yTy5I8=; b=ZaDS95R+qKbRGCSKbOtuDkKVkt
 /C/hkhascHZ5lWv9IFuRxtzt2/pOybQ0vbmd7SmvBukkhoPdpz691km29114XSaqO9j/geTyTDrqU
 2RjCogdwSyQJEKXMJsarWOGVkqEDvUu6l3PoKFZzHIaFAzrFPMgAJmAgkQmCeG60SaJg=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1iFLOJ-0001ii-4j; Tue, 01 Oct 2019 18:52:47 +0200
Date: Tue, 1 Oct 2019 18:52:47 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 0/3] Pine64+ specific hacks for RTL8211E Ethernet PHY
Message-ID: <20191001165247.GE2031@lunn.ch>
References: <20191001082912.12905-1-icenowy@aosc.io>
 <3ef60a0c-5cfd-420b-6cad-2c16eb2a6c01@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3ef60a0c-5cfd-420b-6cad-2c16eb2a6c01@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_095258_141477_5C968AE2 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 01, 2019 at 09:47:08AM -0700, Florian Fainelli wrote:
> On 10/1/19 1:29 AM, Icenowy Zheng wrote:
> > There're some Pine64+ boards known to have broken RTL8211E chips, and
> > a hack is given by Pine64+, which is said to be from Realtek.
> > 
> > This patchset adds the hack.
> > 
> > The hack is taken from U-Boot, and it contains magic numbers without
> > any document.
> 
> Such hacks are the very reason why PHY fixups exists, please investigate
> working with Realtek first to understand how to make this hack less of a
> hack so it is understood what it does and you can either add proper
> infrastructure to the realtek PHY driver to perform that hack, or if
> that is not an option, register a board specific fixup.

Hi Icenowy

It would also be nice to know if only Pine64 has these bad PHYs, or if
they were in the general distribution chain and other boards might
have them as well.

     Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
