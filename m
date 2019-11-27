Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C12010AC2A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 09:48:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uCSmzhD+Oc9Uu3gappKUa7w3pip3dYIn3ImyTawV5C4=; b=T1GTBNrql1UraJ
	yTPe0JNMevTuk7RvQGisdZlIB6WWKz7SAWsGy2I1KMXlTT9R74fC3LRaU9cARBbncsrUBTtvUOQMq
	GDDEu3+KmCPrG8Ov0zUpjsXDbzfMQiiO3ZAclYa7ezOwloNy60Qr/zcs3e/ecXfUpzojCtUklm+KR
	8W6FIb5ryo36kaU8EAZaHJBaQ7w8BYDoVqRygCQy7kHF3DLbELZE0eE+k0Vg/adrRYzpe4j8NMa8h
	3eiOXlNz3WVCh5ul09xNH/5zJujrZnD8XrgxamDCfgZtl/vy4yX9lWzy9MV3OlvOqIwk73ZKLKD8O
	ZbsV72z7l8trOD7OdyYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZszM-0003zR-7E; Wed, 27 Nov 2019 08:47:56 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZszC-0003yQ-8R
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 08:47:47 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id D0DA9211BE;
 Wed, 27 Nov 2019 09:47:37 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id B85982119A;
 Wed, 27 Nov 2019 09:47:37 +0100 (CET)
Subject: Re: [PATCH] arm64: defconfig: Change CONFIG_AT803X_PHY from m to y
To: Oliver Graute <oliver.graute@gmail.com>
References: <1572848275-30941-1-git-send-email-peng.fan@nxp.com>
 <20191126145450.GB5108@optiplex>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <e39c043d-d098-283d-97b0-2a44aefec2f1@free.fr>
Date: Wed, 27 Nov 2019 09:47:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191126145450.GB5108@optiplex>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Wed Nov 27 09:47:37 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_004746_446608_CDAAECE3 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Peng Fan <peng.fan@nxp.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Anson Huang <anson.huang@nxp.com>,
 =?UTF-8?Q?Andr=c3=a9_Draszik?= <git@andred.net>,
 LKML <linux-kernel@vger.kernel.org>, Russell King <rmk+kernel@armlinux.org.uk>,
 dl-linux-imx <linux-imx@nxp.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 26/11/2019 15:54, Oliver Graute wrote:

> this patch broke my imx8qm nfs setup. With the generic phy driver my
> board is booting fine. But with the AT803X_PHY=y enabled  I'm running
> into the following phy issue. So on my side it looks inverse as on
> yours. What is the best proposal to fix this?
> 
> [    5.550442] fec 5b040000.ethernet eth0: Link is Up - 1Gbps/Full - flow control off
> [    5.573206] Sending DHCP requests ...... timed out!
> [   95.339702] IP-Config: Retrying forever (NFS root)...
> [   95.348873] Atheros 8035 ethernet 5b040000.ethernet-1:06: attached PHY driver [Atheros 8035 ethernet] (mii_bus:phy_addr=5b040000.ethernet-1:06, irq=POLL)
> [   99.438443] fec 5b040000.ethernet eth0: Link is Up - 1Gbps/Full - flow control off
> [   99.461206] Sending DHCP requests ...... timed out!

Which DTS are you using?

I bet one dollar that 6d4cd041f0af triggered a latent bug in the DTS.

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
