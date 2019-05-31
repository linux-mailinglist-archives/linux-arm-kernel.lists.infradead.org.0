Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 796DC30D2A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 13:14:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bwubQfWelKxD+lJeDHw6h0AIimIuAWBVJvFnxdR5R0I=; b=glK+0VCO/Nak3q
	gusMyE1xQ2Lft/WOh90vN2IfeFenyKhaPjFqBha7v6dl07qL58l/KExg1p/7i0U35iIPRdgJDmzX8
	tj+DjmkomF4GiD4nUHTGoHIW2XyVIKnpEa/OnAe4Alk43sXK0d+9Lj6oEILrdsEHEyeH/ooeqwJG0
	E5Y6c0ZuVXDRacJpCFHl3WIIfG4exOqtu579bL30d2viblsSiv3P7B5ZqQxFA0r1NuiE5uDhZVcfz
	Omi2JHY0yWi5Ux/o+Tz9zgmkfm9eHBWmxSabsHfLYrK9dDnxDOzEvHtit/1fP8natokKCAyhAZPH6
	OWCrk+7Q3cbiNDX4f8/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWfUs-0002ho-VB; Fri, 31 May 2019 11:14:54 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWfUK-000288-J8
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 11:14:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=F1CTo5X/x6JHGFM5zjAcKnm0WMnPjxHWthCYjvGa6gA=; b=dNLrrtOs1sngQVTKxp1xudNJRH
 tEGYix0zRZwGCZXoX16GnijgPNER1epkCZL3mhzwYtdR0kPFZifEBa4iSJPcYNVMjBN0Y6D72JhoA
 DodOGPnItiPrWmGy2Oro0qxrCwtDko2hKVJZSY0zvbvI6hwWJ53CNkwPfvhioy6rbClyVHnV6GiZp
 SpVSdVlofGiDwxiYWAjJttbNGdN8uPKyNsa2RXqgxSOWsUo7eiLPWsUYq0r8Kvurt6/+SOBgCF0du
 fWBVCmimcj3qLcey8ozUjA0bO3J8ygK+tbzjrurn/EvRS884sXdxF8NVTRimUSi5Nw5O9La78QveO
 1k7T2tjQ==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:49574 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hWfU5-0000P9-1b; Fri, 31 May 2019 12:14:05 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hWfU3-0003fk-9R; Fri, 31 May 2019 12:14:03 +0100
In-Reply-To: <20190531111257.27hor6xgb3nsdghg@shell.armlinux.org.uk>
References: <20190531111257.27hor6xgb3nsdghg@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: linux-arm-kernel@lists.infradead.org,linux-serial@vger.kernel.org
Subject: [PATCH 4/6] ARM: sa1100/badge4: remove commented out modem control
 initialisers
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hWfU3-0003fk-9R@rmk-PC.armlinux.org.uk>
Date: Fri, 31 May 2019 12:14:03 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_041421_076855_2A0E7FE8 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove the commented out modem control initialisers.  These are doing
nothing useful.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm/mach-sa1100/badge4.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/mach-sa1100/badge4.c b/arch/arm/mach-sa1100/badge4.c
index 63361b6d04e9..17d28b4dab5e 100644
--- a/arch/arm/mach-sa1100/badge4.c
+++ b/arch/arm/mach-sa1100/badge4.c
@@ -315,8 +315,6 @@ badge4_uart_pm(struct uart_port *port, u_int state, u_int oldstate)
 }
 
 static struct sa1100_port_fns badge4_port_fns __initdata = {
-	//.get_mctrl	= badge4_get_mctrl,
-	//.set_mctrl	= badge4_set_mctrl,
 	.pm		= badge4_uart_pm,
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
