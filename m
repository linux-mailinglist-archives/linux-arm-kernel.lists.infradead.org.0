Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EDB6B4E0E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 14:41:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y4OAPSnDhov4zxheICpuKPxqx6YhHLgPeJsMd3OQoRc=; b=EfISeSr1HhgAjL
	SyZw1Z7eGACmVF1HKCCu9B7ebA/BQrJc8tEI0AxnBwB/E6vrXsWlm3Gypbd9dn3Rh3gZe8lLAACru
	kerbXD8PJiGImttzweA5HPWn3HRqCfe4R5KfVCuSGwnMZm02z5O/jXMvOL9QF7MeJ18O6TOIICSsr
	zLCqunRzl6+HRFfXPkvxqLtGVZ/fBkJIFXtGWe6+HeVjR6IUsM7UO18pKyqx53QoCeQDgVt6ect5s
	av4KWOmZtrU+L2N9ycSVDGz7sCeu282PsvHUaPRgsTfVNfmIATJRfIIQPCI5nyAmots1vBFchwxqO
	gS4F30PNBwt3Vp6TcgYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iACnY-0004xb-KW; Tue, 17 Sep 2019 12:41:36 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iACn6-0004wm-So
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 12:41:10 +0000
Received: by mail-wm1-x343.google.com with SMTP id i16so1071905wmd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 05:41:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hizZUkt1pzmfDFqDUimEMS3PJpFvJvmdnN9QD85tRVM=;
 b=X9e9dUfyzDIoV4U69QseZamZAgKxMmLIaoLCWyNx0hTzBrMyyTjMkMKurBqovIeNTS
 WX/oEaHYwaP8gfR9vIYmNYzwEjXsqPtlnycJGjwEYtYrTYtZlSw2SCR5hczHezThxAh9
 +u1L1QBvKxdiN2N1j/YZ6KkKeYij6iImID0xsU9pCL5FC5797qFOafPzymy3hq3t98eO
 658Gq1/kg2JeImRN8m4axwOpiz+hzqLbIkaPfh8bj+yrlzeL3jdy5RNbSnk4UAJYym7f
 U7wR81GHO4mmeyYr4VQdle/WpnrfI9hS0wfUUEmaz2ITlS2NpKttj6742dNnPwQu/xQC
 fTKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hizZUkt1pzmfDFqDUimEMS3PJpFvJvmdnN9QD85tRVM=;
 b=Tz0yNNNs2XJM/HURWlDOlw6cxTwjDAsp2uc1C0c9IkyMifpJvaMhCxVhT3FE97OVtj
 aZLy1dkjb5dlVypKRzqAwsw+t3S5brucGU4VPs2Es4nn2wNWvMp6dH2bGOUUTvWcI5br
 zLxXgH1751wShSj2MwfQWW3FI3Lnlwhd9BTiBC6Jopsl1FPDPll/JwOxqYuWQAp/GXiQ
 kQwL1nJPhJyOKSFrW6Il/3q1vqOxPa+Kz31xbWvPppraQUYpNE0LCaqKlQvPZ6t8LDix
 Rq/k15SslbWZ4PBk1Vm6j57AaIxcBmIqhFns4iB47c+V/V9glItT7+apxfF7w5rTKJT8
 TwYw==
X-Gm-Message-State: APjAAAUcP5dl5l8KZY+u34ds0nZA2KUKbhc7lAK4waeKPkWoNhxhphbb
 SfAhAepk4m6OfJr4KP1IzrU=
X-Google-Smtp-Source: APXvYqy/b7DVG3Z9S8Z/BN1kZJ9gToybyr+XK7b/m/1rgoyXfsEG2M/d2AwWBfbbiwWDWG8H/T4Fqg==
X-Received: by 2002:a1c:e916:: with SMTP id q22mr3480658wmc.15.1568724067177; 
 Tue, 17 Sep 2019 05:41:07 -0700 (PDT)
Received: from arch-dsk-01 ([77.126.41.65])
 by smtp.gmail.com with ESMTPSA id u10sm4513324wrg.55.2019.09.17.05.41.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 05:41:06 -0700 (PDT)
Date: Tue, 17 Sep 2019 15:41:01 +0300
From: tinywrkb <tinywrkb@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH] ARM: dts: imx6dl: SolidRun: add phy node with 100Mb/s
 max-speed
Message-ID: <20190917124101.GA1200564@arch-dsk-01>
References: <20190910155507.491230-1-tinywrkb@gmail.com>
 <20190910185033.GD9761@lunn.ch> <87muf6oyvr.fsf@tarshish>
 <20190915135652.GC3427@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190915135652.GC3427@lunn.ch>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_054108_953288_68C34479 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tinywrkb[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Baruch Siach <baruch@tkos.co.il>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Russell King <linux@armlinux.org.uk>, open list <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 15, 2019 at 03:56:52PM +0200, Andrew Lunn wrote:
> > Tinywrkb confirmed to me in private communication that revert of
> > 5502b218e001 fixes Ethernet for him on effected system.
> > 
> > He also referred me to an old Cubox-i spec that lists 10/100 Ethernet
> > only for i.MX6 Solo/DualLite variants of Cubox-i. It turns out that
> > there was a plan to use a different 10/100 PHY for Solo/DualLite
> > SOMs. This plan never materialized. All SolidRun i.MX6 SOMs use the same
> > AR8035 PHY that supports 1Gb.
> > 
> > Commit 5502b218e001 might be triggering a hardware issue on the affected
> > Cubox-i. I could not reproduce the issue here with Cubox-i and a Dual
> > SOM variant running v5.3-rc8. I have no Solo/DualLite variant handy at
> > the moment.
> 
> Could somebody with an affected device show us the output of ethtool
> with and without 5502b218e001. Does one show 1G has been negotiated,
> and the other 100Mbps? If this is true, how does it get 100Mbps
> without that patch? We are missing a piece of the puzzle.
> 
> 	Andrew

linux-test-5.1rc1-a2703de70942-without_bad_commit

Settings for eth0:
	Supported ports: [ TP MII ]
	Supported link modes:   10baseT/Half 10baseT/Full
	                        100baseT/Half 100baseT/Full
	                        1000baseT/Full
	Supported pause frame use: Symmetric
	Supports auto-negotiation: Yes
	Supported FEC modes: Not reported
	Advertised link modes:  10baseT/Half 10baseT/Full
	                        100baseT/Half 100baseT/Full
	                        1000baseT/Full
	Advertised pause frame use: Symmetric
	Advertised auto-negotiation: Yes
	Advertised FEC modes: Not reported
	Link partner advertised link modes:  10baseT/Half 10baseT/Full
	                                     100baseT/Half 100baseT/Full
	                                     1000baseT/Full
	Link partner advertised pause frame use: Symmetric
	Link partner advertised auto-negotiation: Yes
	Link partner advertised FEC modes: Not reported
	Speed: 100Mb/s
	Duplex: Full
	Port: MII
	PHYAD: 0
	Transceiver: internal
	Auto-negotiation: on
	Supports Wake-on: d
	Wake-on: d
	Link detected: yes

journalctl -b | egrep -i 'phy|eth|fec'|grep -v usb
kernel: Booting Linux on physical CPU 0x0
kernel: libphy: Fixed MDIO Bus: probed
kernel: libphy: fec_enet_mii_bus: probed
kernel: fec 2188000.ethernet eth0: registered PHC device 0
kernel: dwhdmi-imx 120000.hdmi: Detected HDMI TX controller v1.31a with HDCP (DWC HDMI 3D TX PHY)
kernel: Generic PHY 2188000.ethernet-1:00: attached PHY driver [Generic PHY] (mii_bus:phy_addr=2188000.ethernet-1:00, irq=POLL)
kernel: fec 2188000.ethernet eth0: Link is Up - 100Mbps/Full - flow control rx/tx
kernel: IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
systemd-networkd[243]: eth0: Gained carrier
systemd-networkd[243]: eth0: DHCPv4 address 192.168.15.101/24 via 192.168.15.1
systemd-networkd[243]: eth0: Gained IPv6LL
systemd-networkd[243]: eth0: Configured

######################################################################

linux-test-5.1rc1-5502b218e001-with_bad_commit

Settings for eth0:
        Supported ports: [ TP MII ]
        Supported link modes:   10baseT/Half 10baseT/Full
                                100baseT/Half 100baseT/Full
                                1000baseT/Full
        Supported pause frame use: Symmetric
        Supports auto-negotiation: Yes
        Supported FEC modes: Not reported
        Advertised link modes:  10baseT/Half 10baseT/Full
                                100baseT/Half 100baseT/Full
                                1000baseT/Full
        Advertised pause frame use: Symmetric
        Advertised auto-negotiation: Yes
        Advertised FEC modes: Not reported
        Link partner advertised link modes:  10baseT/Half 10baseT/Full
                                             100baseT/Half 100baseT/Full
                                             1000baseT/Full
        Link partner advertised pause frame use: Symmetric
        Link partner advertised auto-negotiation: Yes
        Link partner advertised FEC modes: Not reported
        Speed: 1000Mb/s
        Duplex: Full
        Port: MII
        PHYAD: 0
        Transceiver: internal
        Auto-negotiation: on
        Supports Wake-on: d
        Wake-on: d
        Link detected: yes

journalctl -b | egrep -i 'phy|eth|fec'|grep -v usb
kernel: Booting Linux on physical CPU 0x0
kernel: libphy: Fixed MDIO Bus: probed
kernel: libphy: fec_enet_mii_bus: probed
kernel: fec 2188000.ethernet eth0: registered PHC device 0
kernel: dwhdmi-imx 120000.hdmi: Detected HDMI TX controller v1.31a with HDCP (DWC HDMI 3D TX PHY)
kernel: Generic PHY 2188000.ethernet-1:00: attached PHY driver [Generic PHY] (mii_bus:phy_addr=2188000.ethernet-1:00, irq=POLL)
kernel: fec 2188000.ethernet eth0: Link is Up - 1Gbps/Full - flow control rx/tx
kernel: IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
systemd-networkd[239]: eth0: Gained carrier
systemd-networkd[239]: eth0: Gained IPv6LL


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
