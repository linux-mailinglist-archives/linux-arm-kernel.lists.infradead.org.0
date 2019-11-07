Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3C3F3C47
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 00:40:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SNftxZmti5mmojI4/oOlWiBcuIl3m0p6uD1z+3XQjbU=; b=tdbV3h3HBPu9kc
	Bjvr53uEgP+D3VlJYe6D+idGAqbYSFy5lYapRVQjWYHI/e6GvXn7iAbxyN2qalZ+hqs5bWaYESq7I
	teLdTUUjSmJJODPp3JJd5xd6OJjTrGRYWUM8+Sc8pIl+GxEMaowakKvpeaZauoNJPRwY0pw/lBGh3
	nzWMZUkQRv3RfbxY0zuYNZmukY7D/O0OrUDT+IpPEYVUUVo/0oXGzQU6Xvc8dY2jA25284yu5P0UY
	fBcXd+jXpg4cl2kpFNGajaIHyJpeQvg/DwhZaVKhyen6vKGm5dxRZjFIsVwBliCtDkVEtfjSzWr6k
	osTVr3TUdnqTYFt4FiCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSrNh-0006HD-JZ; Thu, 07 Nov 2019 23:40:01 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSrNa-0006G6-D9
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 23:39:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1qs3twHrOv8/gUtMmC9w6XFHjj/oevpNdMaw8wOsiFs=; b=HmhgVhLYU5zOEYAsJyAWNV36y
 qtTI1yT+j4t0goRi19K2HC9r/j7qFLN5Yd9Z06xCTd7nYkf9QuD+f3mDY5Zo6o3kLFr/440S5v+YX
 VpDoyLub0gM0XtTv1Ta4bGPWIJqrFYhGqnYe/qFPnk/6ViWCPh9mNOFR9JFl78fXF9slInV08y2aW
 SvVj3uGMwsgyoXuFwshkdXHwXQ8QgEpWwYyfTkZCTKBXHNGmn8HyQgWvcdrWaaqn41sWrOu2aiN9/
 YUKIZMoyoU2ER4/xYUqckW3JnuEtT/YRKkVwTil2PoMKPKCP5vdZkmqMJQN29lImcz3IP1dJDo/OM
 dXYUkrTfw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:36606)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iSrN4-0006Zz-HV; Thu, 07 Nov 2019 23:39:22 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iSrMw-0005P4-BS; Thu, 07 Nov 2019 23:39:14 +0000
Date: Thu, 7 Nov 2019 23:39:14 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Rikard Falkeborn <rikard.falkeborn@gmail.com>
Subject: Re: [PATCH] phy: allwinner: Fix GENMASK misuse
Message-ID: <20191107233914.GW25745@shell.armlinux.org.uk>
References: <20191020134229.1216351-3-megous@megous.com>
 <20191107204645.13739-1-rikard.falkeborn@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107204645.13739-1-rikard.falkeborn@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_153954_443892_BBBB0B65 
X-CRM114-Status: UNSURE (   9.01  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: megous@megous.com, mark.rutland@arm.com, arnd@arndb.de,
 devicetree@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, mripard@kernel.org, kishon@ti.com,
 paul.kocialkowski@bootlin.com, linux-sunxi@googlegroups.com,
 robh+dt@kernel.org, tglx@linutronix.de, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, icenowy@aosc.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 09:46:45PM +0100, Rikard Falkeborn wrote:
> Arguments are supposed to be ordered high then low.
> 
> Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>
> ---
> Spotted while trying to add compile time checks of GENMASK arguments.
> Patch has only been compile tested.

My feeling, personally, is that GENMASK() really isn't worth the pain
it causes.  Can we instead get rid of this thing and just use easier
to understand and less error-prone hex masks please?

I don't care what anyone else says, personally I'm going to stick with
using hex masks as I find them way easier to get right first time than
a problematical opaque macro - and I really don't want the effort of
finding out that I've got the arguments wrong when I build it.  It's
just _way_ easier and less error prone to use a hex mask straight off.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
