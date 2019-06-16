Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7ECD473B6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Jun 2019 10:01:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=viGJmWQFdRmjmVxFY7kvMHUtpvjH1Ad9+PKY1w59A1c=; b=SD1WPMFbGxOJME
	02kHRCz1b+hN8N3s1Neyy1B1ZXvO7xCdAuaUEaxduyn69AHcp+ASiqgILqI4OSsnxS8IO/hmll9Bl
	QKSPBBx7YgfdV5bJC1XPraKaH7ou9Ldo9VYlcNjqT4py1YNH8He/i0LoJklshRROjkq5+Ny0gjt0t
	MzQ4YjVq8S7pRCB5OCnaxJid4yTC7sZ/h6LjkXJpJoxs1vLbjCcPTTj2QmmAblOqTkbvUNQyczk0n
	rcaq0jzSplRsTASWgo9d5q2h8JrvVy9a6DDzcMcbSdWN5UOE9l6qnTJxdMBeAVw9phW50JTmLbcwB
	PElZKPLLypyUn4q6R1XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcQ6B-0002pw-Hq; Sun, 16 Jun 2019 08:01:11 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcQ5Z-0002oy-KK
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Jun 2019 08:00:35 +0000
X-Originating-IP: 213.174.99.131
Received: from windsurf (smb-adpcdg1-03.hotspot.hub-one.net [213.174.99.131])
 (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 783771C0006;
 Sun, 16 Jun 2019 08:00:19 +0000 (UTC)
Date: Sun, 16 Jun 2019 10:00:17 +0200
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH] PCI: armada8k: Add PHYs support
Message-ID: <20190616100017.607e4848@windsurf>
In-Reply-To: <20190401131239.17008-1-miquel.raynal@bootlin.com>
References: <20190401131239.17008-1-miquel.raynal@bootlin.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_010033_833278_D2C072B7 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Mon,  1 Apr 2019 15:12:39 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Bring PHY support for the Armada8k driver.
> 
> The Armada8k IP only supports x1, x2 or x4 link widths. Iterate over
> the DT 'phys' entries and configure them one by one. Use
> phy_set_mode_ext() to make use of the submode parameter (initially
> introduced for Ethernet modes). For PCI configuration, let the submode
> be the width (1, 2, 4, etc) so that the PHY driver knows how many
> lanes are bundled. Do not error out in case of error for compatibility
> reasons.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Reviewed-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>

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
