Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E23E202521
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 18:14:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GGNLp+wulvlxwCzO0gNxVCcnj6Dhcpg0TNY+OfvHsLM=; b=F5FfhQOj3Mk/UR
	XeEhkR+a5gpjY/E9yUVEHcp7UMTAHNg+5FRUUYNwj+0yg35eSYukY87deJ9rm9+ScM/ydkGN4y1KR
	ahakoQQDRplDTt74JVoKUcx8ARE5hJ6EoN81VpXVX9On5yyQPC166+5JqBzAcqRq44P/rUcK56/jH
	hHApTifIDF6pJqnhUBQeZ0u8W8pQY5xpXp87TYdlMOImAEZ2GSlkQYiT0t8RIq3EwjyNotw8VwqM+
	Rz1JgEpAcudOK1wRbl/+oX/rJvpDtEv1EalMGlz9L+rA37X/07rcXLoi159N2KqnP73pWSdzUWwYQ
	G0bFtIc7tV3eFfPMdH7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmg8i-0000xs-0m; Sat, 20 Jun 2020 16:14:44 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmg8V-0000vz-89; Sat, 20 Jun 2020 16:14:32 +0000
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
 (envelope-from <andrew@lunn.ch>)
 id 1jmg8Q-001Peb-2X; Sat, 20 Jun 2020 18:14:26 +0200
Date: Sat, 20 Jun 2020 18:14:26 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH] arm64: dts: amlogic: Add the Ethernet
 "timing-adjustment" clock
Message-ID: <20200620161426.GR304147@lunn.ch>
References: <20200620160136.21584-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200620160136.21584-1-martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_091431_287175_4E740553 
X-CRM114-Status: UNSURE (   5.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 20, 2020 at 06:01:36PM +0200, Martin Blumenstingl wrote:
> Add the "timing-adjusment" clock now that we now that this is connected
> to the PRG_ETHERNET registers. It is used internally to generate the
> RGMII RX delay no the MAC side (if needed).

s/no/on

Sort of typ0 i make :-)

     Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
