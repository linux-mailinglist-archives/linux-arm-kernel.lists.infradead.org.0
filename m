Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA0C883D6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 22:27:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fC8k1CO7axtTXntzHpamNNC/FYhRISnpkGVbutKkPVs=; b=gujVI6UluPmtJ2
	3euZd5VfloEoD9lvUewlO+aXTccrYszpy58Y0fjZJJUV0nBre54fGhHDlMiev/604fk+FuWz9Xj39
	MM6IMCl9Ch0a0IKRZ+lE9zPdeZbvU5jbQN7DU8PbdMUTv5ASeUmtPOlb9aAct7wkza7HqcNsAEHzo
	ipAteHxctlULMsENc9ZeL+L250R12sDsx2oInf53EdgPxiYK7NVy5x4bbzmOpXJEGHKFdgWKcJ7Kb
	tzNDK+oTTUy8/hk/XAc5HtLuVu5InhTqUEC5cVQKLk2puQytVPrn68/vRqNpRt3Ew7WJ/eFCkuNbh
	qO5iEmZUJ+/40ZPKB4QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwBTp-0000j6-Ob; Fri, 09 Aug 2019 20:27:17 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hwBTh-0000iP-2B
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 20:27:10 +0000
Received: from penelope.horms.nl (unknown [66.60.152.14])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 6E73A25B81B;
 Sat, 10 Aug 2019 06:27:05 +1000 (AEST)
Received: by penelope.horms.nl (Postfix, from userid 7100)
 id DBF96E21D63; Fri,  9 Aug 2019 22:27:02 +0200 (CEST)
Date: Fri, 9 Aug 2019 13:27:02 -0700
From: Simon Horman <horms@verge.net.au>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] arm64: dts: renesas: r8a77995: draak: Fix backlight
 regulator name
Message-ID: <20190809202658.dtb33eza575z7ste@verge.net.au>
References: <20190731073744.13963-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731073744.13963-1-geert+renesas@glider.be>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_132709_254783_0CF726AF 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 09:37:44AM +0200, Geert Uytterhoeven wrote:
> Currently there are two nodes named "regulator1" in the Draak DTS: a
> 3.3V regulator for the eMMC and the LVDS decoder, and a 12V regulator
> for the backlight.  This causes the former to be overwritten by the
> latter.
> 
> Fix this by renaming all regulators with numerical suffixes to use named
> suffixes, which are less likely to conflict.
> 
> Fixes: 4fbd4158fe8967e9 ("arm64: dts: renesas: r8a77995: draak: Add backlight")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> I guess this is a fix for v5.3?

Thanks, applied as a fix for v5.3.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
