Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DB5B4F55
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 15:33:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H1XRnrdxf7sz5emiKbLcmxrk4RUkgLpD7Jqmw4H610k=; b=G+MHgws7SaVqh/
	rJgpeHSIMDvxPh3bTtR6/F8nnEiIY4EYZQ4NaToS9eEpPXDpmA1fX/gMJflrm2YhWCGxKay+3PTnT
	s1MujgpzDKnbXcHKyz79kUGILPRweFSzmW0Wnc7X1rTvmhyYMvaRCQ+UtsgkkXChQ2wBGVYBOJS9v
	9lPYaxRHIIr4iKlYurgJVXnP/JQzPjzhb+V8OUV2U+RbGAU4G8z4vT1tGk5hu0FFuA+KLSFMXGsXL
	LGTalFVX6VF5Dq7GjEOC2f9AfF+B8O7zhfGXTxyfa40oBqUKyOyF89u5DVMms/o+j8uL2rbQpywOo
	6pBVrmj/qVwvpF0AspMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iADbe-0003Ng-Kv; Tue, 17 Sep 2019 13:33:23 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iADbJ-0003NC-Hb
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 13:33:04 +0000
Received: by mail-wm1-x341.google.com with SMTP id g207so3444013wmg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 06:33:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZVgKnBHXrCapFMh+Z2Qyzmz08ZgElhJ/PjWus/3se+Q=;
 b=cx7wIAPPbkZwjitPfhwfpYd32Nm6ooxcoW8VNle3eGxiFuPCSZnNuod2vCvra6267S
 9o76RnwMcjgP7mSptOk2MZF84XYOwQ/IGYFPsmKyaXmdy0WRO8EL1VzhdvmZc2X5bqjR
 80zV2BHKgL9Y52+Yo/Peo1aQegn36yezGozJ87Af+/TDgB9lfV3Z0IPitzGJUvpcyzQA
 9qB77hcfnovKQKcAVnf6TTyph3wZ3rjwKZvEVARrGE3koGesEDGCQOFCqKmLoPmPGGOW
 dANYI/Ywt3AetD//HUWPe2x0qndAfvoM1/8gtWpPRPzARQmgbnlw2N/u3C623Rz4X3pV
 MohA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZVgKnBHXrCapFMh+Z2Qyzmz08ZgElhJ/PjWus/3se+Q=;
 b=o5CKcu3DM9l1M6hP+XuVq3nCgOmgqX2Lxq/AtXUgCBNvgtSzEJ2ueTru4eBc/UK+3x
 mO5GkBySTmZsLFh7NjobM7hQ/y2nc5IuAYtlbxIvG+sz6GBeTEbrKpqHSrv6CC8mkhNs
 xpbLFEzyMXkGmLh942XJhHBOmNTDe8wmRFoWQOaLwCeXm5O0RrESBVwRwPxT076odfJ9
 k3T1RQZaX//aV6xbQB+Vl9BkTy0hja9GdJnyF+Pl+g/WH2K9al4Z173M77KVED0UA0FA
 +KPykTmrXMpd6ESjjnWynn4deG6QXVACWjiOM2Q0OEXcm5Nm3PRXhPTaMbGcn8yBB9GO
 Tehw==
X-Gm-Message-State: APjAAAVrqrdGckr2qntl2Y0fbuoJP765Os1TgPWCgQgOW/ylmqlgMmY8
 FLlXTeJXU5j8Y9UO+/V5zYQ=
X-Google-Smtp-Source: APXvYqyEgxKzW2vpA5Wj3noahECRn2sB6UkfO12EaBTE+oNhBh9T0Y5DZ1LHA4+4ATlFTZBcW2NdVg==
X-Received: by 2002:a1c:99cd:: with SMTP id b196mr3529756wme.83.1568727180060; 
 Tue, 17 Sep 2019 06:33:00 -0700 (PDT)
Received: from arch-dsk-01 ([77.126.41.65])
 by smtp.gmail.com with ESMTPSA id q124sm4222816wma.5.2019.09.17.06.32.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 06:32:59 -0700 (PDT)
Date: Tue, 17 Sep 2019 16:32:53 +0300
From: tinywrkb <tinywrkb@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH] ARM: dts: imx6dl: SolidRun: add phy node with 100Mb/s
 max-speed
Message-ID: <20190917133253.GA1210141@arch-dsk-01>
References: <20190910155507.491230-1-tinywrkb@gmail.com>
 <20190910185033.GD9761@lunn.ch> <87muf6oyvr.fsf@tarshish>
 <20190915135652.GC3427@lunn.ch>
 <20190917124101.GA1200564@arch-dsk-01>
 <20190917125434.GH20778@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917125434.GH20778@lunn.ch>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_063301_578972_FA29759D 
X-CRM114-Status: GOOD (  24.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

On Tue, Sep 17, 2019 at 02:54:34PM +0200, Andrew Lunn wrote:
> On Tue, Sep 17, 2019 at 03:41:01PM +0300, tinywrkb wrote:
> > On Sun, Sep 15, 2019 at 03:56:52PM +0200, Andrew Lunn wrote:
> > > > Tinywrkb confirmed to me in private communication that revert of
> > > > 5502b218e001 fixes Ethernet for him on effected system.
> > > > 
> > > > He also referred me to an old Cubox-i spec that lists 10/100 Ethernet
> > > > only for i.MX6 Solo/DualLite variants of Cubox-i. It turns out that
> > > > there was a plan to use a different 10/100 PHY for Solo/DualLite
> > > > SOMs. This plan never materialized. All SolidRun i.MX6 SOMs use the same
> > > > AR8035 PHY that supports 1Gb.
> > > > 
> > > > Commit 5502b218e001 might be triggering a hardware issue on the affected
> > > > Cubox-i. I could not reproduce the issue here with Cubox-i and a Dual
> > > > SOM variant running v5.3-rc8. I have no Solo/DualLite variant handy at
> > > > the moment.
> > > 
> > > Could somebody with an affected device show us the output of ethtool
> > > with and without 5502b218e001. Does one show 1G has been negotiated,
> > > and the other 100Mbps? If this is true, how does it get 100Mbps
> > > without that patch? We are missing a piece of the puzzle.
> > > 
> > > 	Andrew
> > 
> > linux-test-5.1rc1-a2703de70942-without_bad_commit
> > 
> > Settings for eth0:
> > 	Supported ports: [ TP MII ]
> > 	Supported link modes:   10baseT/Half 10baseT/Full
> > 	                        100baseT/Half 100baseT/Full
> > 	                        1000baseT/Full
> 
> So this means the local device says it can do 1000Mbps.
> 
> 
> > 	Supported pause frame use: Symmetric
> > 	Supports auto-negotiation: Yes
> > 	Supported FEC modes: Not reported
> > 	Advertised link modes:  10baseT/Half 10baseT/Full
> > 	                        100baseT/Half 100baseT/Full
> > 	                        1000baseT/Full
> 
> The link peer can also do 1000Mbps.
> 
> 
> > 	Advertised pause frame use: Symmetric
> > 	Advertised auto-negotiation: Yes
> > 	Advertised FEC modes: Not reported
> > 	Link partner advertised link modes:  10baseT/Half 10baseT/Full
> > 	                                     100baseT/Half 100baseT/Full
> > 	                                     1000baseT/Full
> > 	Link partner advertised pause frame use: Symmetric
> > 	Link partner advertised auto-negotiation: Yes
> > 	Link partner advertised FEC modes: Not reported
> > 	Speed: 100Mb/s
> 
> Yet they have decided to do 100Mbps. 
> 
> We need to understand Why? The generic PHY driver would not do this on
> its own. So i'm thinking something has poked a PHY register with some
> value, and this patch is causing it to be over written.
> 
> Please can you use mii-tool -v -v to dump the PHY registers in each
> case.
> 
> Thanks
> 	Andrew

Here's the output of # mii-tool -v -v eth0 

* linux-test-5.1rc1-a2703de70942-without_bad_commit

Using SIOCGMIIPHY=0x8947
eth0: negotiated 100baseTx-FD flow-control, link ok
  registers for MII PHY 0:
    3100 796d 004d d072 15e1 c5e1 000f 0000
    0000 0000 0800 0000 0000 0000 0000 a000
    0000 0000 0000 f420 082c 0000 04e8 0000
    3200 3000 0000 063d 0000 0000 0000 0000
  product info: vendor 00:13:74, model 7 rev 2
  basic mode:   autonegotiation enabled
  basic status: autonegotiation complete, link ok
  capabilities: 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
  advertising:  100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control
  link partner: 1000baseT-FD 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control


* linux-test-5.1rc1-5502b218e001-with_bad_commit

Using SIOCGMIIPHY=0x8947
eth0: negotiated 100baseTx-FD flow-control, link ok
  registers for MII PHY 0:
    3100 796d 004d d072 15e1 c5e1 000d 0000
    0000 0000 0800 0000 0000 0000 0000 a000
    0000 0000 0000 0000 082c 0000 04e8 0000
    3200 3000 0000 063d 0000 0000 0000 0000
  product info: vendor 00:13:74, model 7 rev 2
  basic mode:   autonegotiation enabled
  basic status: autonegotiation complete, link ok
  capabilities: 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
  advertising:  100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control
  link partner: 1000baseT-FD 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control

Thanks for helping Andrew.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
