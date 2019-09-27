Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC25C02A0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 11:46:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xyAnNOgArF/ebIDVKKi4lYQp4m1CnPpFtmdI2ouDQG4=; b=kM8Lzg/ZirBb7W
	aTCbQkJVrvTM1XanPjVHQ8OvOvMEbV3MhzzZudYHySeqSsLF7RkHNSnk9+b+Lk5UBh7TYEJCGHkkZ
	RNlHMCBxlohBzbugFv+Zt/SIqEWCWTv5gCPiy5YQP10zbiFUtLqrpChk5+bot9xrL7IaUeiVOo5/c
	WebgyMQN67bAWTEt8ftIFlFJoiVA5g+uap+4V6ek1a5LK+YzpqEJgYdJP22hweKWttm8yvzUAzSuU
	i20ohzCnCvfg8VYevOSBqFVZrAENvb3e+vTX22WSWcDRHB4OPrZ9pbdliaccBVfvJZkolod9Pn7zb
	W1DxAvqwMxzz8JgK3OlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDmpu-0000sZ-CE; Fri, 27 Sep 2019 09:46:50 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDmpm-0000sT-Ti
 for linux-arm-kernel@bombadil.infradead.org; Fri, 27 Sep 2019 09:46:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XiYSAtcPx5fGqbm0ITh1APYnTU1YBYfAVVdvhAkRtYs=; b=Vf4lnWSXtbmTFP4CtgH3SV1LwD
 c2/Aeo2ImBQ6Hnk7Jmb1KdeKnxS4Wo0oZ3Thb2Dgb5z5oL2n/3sPvcnmygZfj/pcDGre5zKj73g2e
 Q3YICiDvjWXbquEaumnoxd9iz4SaHqHQ9udA88p28ovPh9QyRC0fmY/LE7RdTOHV2hUN4wlcg4zYs
 ZS5jcLZY42Ia7kxdVFQoBq3sYlaYD8MM0bruJ758Jo70ikVlh+Is4kvMjoHQWvhjhRyZUyfbM1FkD
 dG7hFrbwhvQDW7KCgFgR6K5r/eVs+++tfQERI7H6En9E3hKvo333Omt0pw0YOFgw4uhjDfAJ5CyMQ
 Xmge+3rg==;
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by merlin.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDmpj-0007cg-GO
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 09:46:40 +0000
X-Originating-IP: 86.250.200.211
Received: from windsurf (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id DACC9E000D;
 Fri, 27 Sep 2019 09:45:55 +0000 (UTC)
Date: Fri, 27 Sep 2019 11:45:55 +0200
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: Remi Pommarel <repk@triplefau.lt>
Subject: Re: [PATCH v3] PCI: aardvark: Don't rely on jiffies while holding
 spinlock
Message-ID: <20190927114555.193a9d68@windsurf>
In-Reply-To: <20190927085502.1758-1-repk@triplefau.lt>
References: <20190927085502.1758-1-repk@triplefau.lt>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 27 Sep 2019 10:55:02 +0200
Remi Pommarel <repk@triplefau.lt> wrote:

> advk_pcie_wait_pio() can be called while holding a spinlock (from
> pci_bus_read_config_dword()), then depends on jiffies in order to
> timeout while polling on PIO state registers. In the case the PIO
> transaction failed, the timeout will never happen and will also cause
> the cpu to stall.
> 
> This decrements a variable and wait instead of using jiffies.
> 
> Signed-off-by: Remi Pommarel <repk@triplefau.lt>

Acked-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>

Thanks!

Thomas
-- 
Thomas Petazzoni, CTO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
