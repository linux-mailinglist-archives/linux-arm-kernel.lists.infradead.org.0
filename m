Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD44F16089C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 04:20:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7k+kg89Eq4gXV84qMwLO5HLovpQpKoOXfDM+CK7f0zU=; b=Ajmczs4lOrcg0S
	LTonOVlW5bjlaBTBOU8f+8JRvZ77XVD6+Q10N3pn9LRosX/y0PSCgmIN2479b4busHNdZhmbapvXZ
	8wgnBlDOQUg6+O9Qzp4flIVkOjm5nhSrl2zK8J9EGKYhKGNPgbp/w6TS/rz8nKLo5ZqppXYxDomBX
	nsOO7HS5l8TlEkQ/dPoF/w7TnW8dOepW9AHxe8tMl8bzK8iPxSq9nuL44JW5RrKu73zXZTcjb4DV7
	KJUHQglvhtuNgiY73F3HkHrRyH+y2g0hnCemF8WDSzqTF3BwA/qMDNtogsa6d84jj4GiuN4+pXhhJ
	Y6eg2lAymgVRZZD8hDKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Wx2-00040I-KS; Mon, 17 Feb 2020 03:20:04 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Wwt-0003zc-N0
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 03:19:56 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id EE5D9155A048B;
 Sun, 16 Feb 2020 19:19:47 -0800 (PST)
Date: Sun, 16 Feb 2020 19:19:47 -0800 (PST)
Message-Id: <20200216.191947.1749689417990170918.davem@davemloft.net>
To: scott.branden@broadcom.com
Subject: Re: [PATCH v2] net: phy: restore mdio regs in the iproc mdio driver
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200214214746.10153-1-scott.branden@broadcom.com>
References: <20200214214746.10153-1-scott.branden@broadcom.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 16 Feb 2020 19:19:48 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_191955_753824_0F6C326D 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, rjui@broadcom.com,
 arun.parameswaran@broadcom.com, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Scott Branden <scott.branden@broadcom.com>
Date: Fri, 14 Feb 2020 13:47:46 -0800

> From: Arun Parameswaran <arun.parameswaran@broadcom.com>
> 
> The mii management register in iproc mdio block
> does not have a retention register so it is lost on suspend.
> Save and restore value of register while resuming from suspend.
> 
> Fixes: bb1a619735b4 ("net: phy: Initialize mdio clock at probe function")
> 
> Signed-off-by: Arun Parameswaran <arun.parameswaran@broadcom.com>
> Signed-off-by: Scott Branden <scott.branden@broadcom.com>

Applied and queued up for -stable.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
