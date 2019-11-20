Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4597D10371A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 10:57:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FD6v4wnwh+Uosd7lFObSzxxlDMv1mbTNC/+7kcZyp1I=; b=auNZrjTXjN5k2j
	aHqHPI5qAxH6oEuggQm1miiD8MjNODebsyYWhaK/x7nFQBzwna+VpWyBXNTa8FJ3qTRTYpkGztn5o
	hhIZh7gOlma/nI2CqsL0Ib6JK3TTyr9EjHHjFOnTrYkTHJb2eR6HNP8WGG5ja/ZyZ1YNYJgv5oF3J
	AJD3s4IHDdhMQgY/NhdBQy4ObTA6w9Jb3C8Bx4nW/rdmRxcITzP8SPlsdeYAvqctP+7WRPQ/K5OV/
	588UGcZRRpNeTDvv0caU9pxueDJXwoAqEOdEZcx3ZQfrLsDPqiZFiAUBGYXkIT1vO5dX+KC/NGh4y
	vxcfBB3QUOkUSOH8CslA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXMkB-0004P3-LT; Wed, 20 Nov 2019 09:57:51 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXMk1-0004Nf-FR
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 09:57:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=el6438nih4sfwVUUpa3K7cGTYMkZUt0pCE/MflmMSiA=; b=bcV3glNLOjIUujMfUEw4s7kT6
 Z6OGWKZbmD0U635MtVAIlSU1ixudFfoksF22a7LTl1W20n/1fJdNsXuujM3+C1ZTKUoUumNB9aNOs
 RYd13CFvhF4cDxk/34GB9IhDX+rdOqDeoiGBGD0nrEfxwip7rS0pNaRknuUJkcgFvqxExxT41yxpW
 8PEtujQ51/SZdZW8JriCE6ikn3f7nsbUxydGpzA2n35/RP5oFpUtcrXMbFBO6AibcBqU+4KuUgB3a
 35iKgzeq3jZ6/tOsoixKQz1oeB1QCsv6pvCEo3bwd+4bSE4EBX/WpAuLpJTlt+0kXqiV8Vxb8mAU5
 yKENSjU9w==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:58700)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iXMju-0007YX-7j; Wed, 20 Nov 2019 09:57:34 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iXMjp-0001cr-EL; Wed, 20 Nov 2019 09:57:29 +0000
Date: Wed, 20 Nov 2019 09:57:29 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: "Z.q. Hou" <zhiqiang.hou@nxp.com>
Subject: Re: [PATCHv9 00/12] PCI: Recode Mobiveil driver and add PCIe Gen4
 driver for NXP Layerscape SoCs
Message-ID: <20191120095729.GJ25745@shell.armlinux.org.uk>
References: <20191120034451.30102-1-Zhiqiang.Hou@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191120034451.30102-1-Zhiqiang.Hou@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_015741_518238_DDC02E2F 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "m.karthikeyan@mobiveil.co.in" <m.karthikeyan@mobiveil.co.in>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Xiaowei Bao <xiaowei.bao@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "andrew.murray@arm.com" <andrew.murray@arm.com>,
 Mingkai Hu <mingkai.hu@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 20, 2019 at 03:45:17AM +0000, Z.q. Hou wrote:
> From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> 
> This patch set is to recode the Mobiveil driver and add
> PCIe support for NXP Layerscape series SoCs integrated
> Mobiveil's PCIe Gen4 controller.

How many PCIe cards have been tested to work/don't work with this?

I need:

PCI: mobiveil: ls_pcie_g4: fix SError when accessing config space
PCI: mobiveil: ls_pcie_g4: add Workaround for A-011451
PCI: mobiveil: ls_pcie_g4: add Workaround for A-011577

to successfully boot with a Mellanox card plugged in with a previous
revision of these patches.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
