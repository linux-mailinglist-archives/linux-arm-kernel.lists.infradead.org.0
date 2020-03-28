Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 738DA196727
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 16:46:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8bB9g8rmYgRwURYu71x/NOLkMVdqvINfkopqnuVggKE=; b=MxNokP3HcU31ds
	hO3GnexWu8bwBlwKhV+CcKN4dIOAeeD7fYPEwmI51QfXju+Q3PWKa11Raw78kjXp43lmjujz9u+68
	uS0AaPyUwzJRTPn6vdQxa0vjaiGzgyONgxl2Vnk8qgFhAtu9hqDSbW2m59YybIRD8X4LqOXwTCYEI
	Z7jh8SURto0+DeWjU06SLg+y64mwKQTkE/MPD5Ntt4mGD3SSxESvPKLgJjpaG5nKoov2r2AaeKhNs
	ECdoNWyHKKqyvel/SBvih64B+NvaJ9jAAF9OPX1lLyJoWTklSr70v/TJ1EPAqpQVb3epJvDbm2UlQ
	+mB3Qjm2uYo/6Q/X8PEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIDfS-0003xA-Gc; Sat, 28 Mar 2020 15:46:38 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIDfK-0003we-IF
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 15:46:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wlJqkxRRXoHkvfGNC7ThSX8ifdNIpM+JFBZbKfXI4dc=; b=sfXpORxAfmX78jNpi5qBk5S0Jz
 xc+gnQyt0s1wSjsLKR06suBxTLvyFJI2ANEwdfB52etPYA4I6ccydXukQcQvBosKCDvkXDsec0s9a
 HdkC98I28duE+pXTu5tN3jtUTrBYfTWHDZYyLCVS0+KaRPJUuLZ1vZ7YGGkA8Yt1A7V8=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jIDf7-0003ty-Lk; Sat, 28 Mar 2020 16:46:17 +0100
Date: Sat, 28 Mar 2020 16:46:17 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: Re: [PATCH] MAINTAINERS: clarify maintenance of ARM Dove drivers
Message-ID: <20200328154617.GX3819@lunn.ch>
References: <20200328134304.7317-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200328134304.7317-1-lukas.bulwahn@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_084630_602865_9DC2DC88 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jason Cooper <jason@lakedaemon.net>,
 Gregory Clement <gregory.clement@bootlin.com>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Joe Perches <joe@perches.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Mar 28, 2020 at 02:43:04PM +0100, Lukas Bulwahn wrote:
> Commit 44e259ac909f ("ARM: dove: create a proper PMU driver for power
> domains, PMU IRQs and resets") introduced new drivers for the ARM Dove SOC,
> but did not add those drivers to the existing entry ARM/Marvell
> Dove/MV78xx0/Orion SOC support in MAINTAINERS. Hence, these drivers were
> considered to be part of "THE REST".
> 
> Clarify now that these drivers are maintained by the ARM/Marvell
> Dove/MV78xx0/Orion SOC support maintainers. Also order the T: entry to the
> place it belongs to, while at it.
> 
> This was identified with a small script that finds all files only belonging
> to "THE REST" according to the current MAINTAINERS file, and I acted upon
> its output.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
