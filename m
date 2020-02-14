Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD16C15F7C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 21:33:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xKxp46gw2lC2WI3F8WBgJWkKXFuNgOPsl+zHnkPmT9o=; b=ltNZ1CiMbHWFjL
	Qi+QsS80bk7lyiLaDvkvQ7OI3fp5HVZlsJF8oE8hQwmj2Ql6YWsuOuiow8L2cH5cvQJXG86BgxOfO
	bGbQ92x9uhY8tx3jLG2CoPmbyjMBxcWUpN02VtW35w52D0lITHktXfEbR26pi3g8DwOVdrfKFpImi
	vIsKdrkOFwRcn/mDLXyBub6kI+xrwSnJFB67j7DQm9EnrCOwTlz/Vs0FqTZLriXePvgsTlkkna52b
	3xNZbP8NKUu77N/iXEcRhVpWkHhtBRXXpoe5my3PUnO0bsy1QhCRihSMTNwwcr3Ze+m+2tTPeJMWd
	imA0NwSKC96irNt4U/IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2heU-0001uK-Gn; Fri, 14 Feb 2020 20:33:30 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2heO-0001tM-74
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 20:33:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vlat72TK2KwmfqvC4gryMeGdbsVvpdlox6r1LgVzu5I=; b=tzyCMYkbpEpnzfYM/OsJauRje3
 VJhyF5y+5PNkNlrc7UdwojZna3Crbh/EVjts2QTYBD+e+tAcJ7jR+PC4CcB4g3zn3vqr9jOD/EYQD
 VjfSSEwpFeVol5+zTH3uPW8QcqWrZF+r9whQAp7bX0tPpid0JHeTuHjxnQMcpRCrHWhQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1j2heA-0001vc-Bq; Fri, 14 Feb 2020 21:33:10 +0100
Date: Fri, 14 Feb 2020 21:33:10 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Scott Branden <scott.branden@broadcom.com>
Subject: Re: [PATCH] net: phy: restore mdio regs in the iproc mdio driver
Message-ID: <20200214203310.GQ31084@lunn.ch>
References: <20200214194858.8528-1-scott.branden@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200214194858.8528-1-scott.branden@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_123324_258895_C7FB551A 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Arun Parameswaran <arun.parameswaran@broadcom.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, netdev@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 14, 2020 at 11:48:58AM -0800, Scott Branden wrote:
> From: Arun Parameswaran <arun.parameswaran@broadcom.com>
> 
> The mii management register in iproc mdio block
> does not have a reention register so it is lost on suspend.

reention?

	Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
