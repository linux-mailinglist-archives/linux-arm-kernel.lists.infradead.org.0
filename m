Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91FE419599E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 16:17:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x2QAc0FNVeN6wm2cwpB/8bmg0vuTS6qWz+vIYVa+3ZM=; b=a6PAo6y5lxSQf6
	EG1reVMKemsWGbYjC3z8VVjneWNjJkzvaYL11+DXpyyiY+Uf4f5qOyefw8JPTS2xZW89sVdTZorts
	1dJiuajaO/J1x8WjkxIxhinKm0kJ371a2unE4hiavwMKSBWqwgGj2/YQbRS0+ImU5H++vk4YS37TF
	7zVvkJc71n128p3eAaA8ws3aOEF9birHokNwBf0LmzywgEMqbgk8CZ0+z5MvHF7X6+77l5IROOmu0
	5naQjuw+cdg5eBruo0Vx/Haq9VyyZA/nKX8jHpfVfhvAnOIczZcEbFOjj/dsYwPVDaZriKhIdxnjU
	+PFlVJGVQpIsDIgpFiMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHqjr-0007OR-JR; Fri, 27 Mar 2020 15:17:39 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHqji-0007Nt-Su
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 15:17:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i49b05giKAvuJdsFix/RQTI/KizwQbObzGwBctGXmQk=; b=VQGz0166n3sa4P4ziV7OV9IA/
 SuBxjVAQP79YeJkm6/8nwjnOBLBfRbUCMxBfkssnWPUIN32B3Ea7Y61Wa2NnY54O+gXIlvh7HkqaT
 8WP9O1dQcrj3L6ctDxQbLr/+gM64zTpxrSFMFBMBLYqnKvcSxWYzbDIYHwWyLPIcrx7kB13y0RdtN
 eEmnQU7bdTwW127Tysj6BJH7GgvWlOb9l0yjp6BlgRDXj1j9IHjip+unGAGhW8ER5k1dO571SL0uo
 Py1ecgiyVI26z7ZiwsavuroSBzm55LNQPm0GZT+CBdFSFcQJXBo5JmubEBldoP0qr0yhytAWr1TNk
 sIne2wZKA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:42100)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jHqjR-0001nO-2g; Fri, 27 Mar 2020 15:17:13 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jHqjO-0004KV-0x; Fri, 27 Mar 2020 15:17:10 +0000
Date: Fri, 27 Mar 2020 15:17:09 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH] arm64: dts: update SolidRun Armada 8040 phy interface
 types
Message-ID: <20200327151709.GO25745@shell.armlinux.org.uk>
References: <E1jHoHy-0002Ep-IY@rmk-PC.armlinux.org.uk>
 <20200327134319.GD11004@lunn.ch>
 <20200327134651.GM25745@shell.armlinux.org.uk>
 <20200327135046.GN25745@shell.armlinux.org.uk>
 <20200327141538.GE11004@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200327141538.GE11004@lunn.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_081731_106445_F71652CE 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Jason Cooper <jason@lakedaemon.net>,
 "Madalin Bucur \(OSS\)" <madalin.bucur@oss.nxp.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 03:15:38PM +0100, Andrew Lunn wrote:
> > ... and actually there is no point.
> 
> O.K. lets merge these as normal, not as fixes.  It is probably too
> late for ARM SoC, so i guess they will get merged next cycle.

Yep, which means that the backplane patches from NXP will have to be
delayed about 20 weeks (about 10 weeks in the arm64 tree before being
merged into 5.8-rc1, and then another 10 weeks before 5.8 is released.)
That's probably not a bad thing, as it'll let us hash out the conflicts
between my PCS patch set and their backplane patches.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
