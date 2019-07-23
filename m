Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6742B7224C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 00:22:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zR/X7TKNewbhuhgX3KBozNzgqA9QnVVPp6a33497JtM=; b=Lk/dMdh6riEDbL
	6QpFdj8nvJS2PeXK3M6atWCiGM1zqWmyc550ywWOCO/H6kxcF+dXpmTlPGkVzZQmDoAdaiAwZlQZ+
	3PYAN8LeP2tRTauFW369pxUif1aoKmX7opbGAMxccfudH1n7hGYUeY9riDw+QQ5dQeHIQmuk0I/1g
	UrlPEBUIaXwQOMKwBL0YiHYIJWtQPTgLySKG44lsgu8Lfe9WxJic/Xua1h8NvfhXq/pqyb36a9Mkl
	U3hjASdlP6lYl8DGpGUb9Zl0Qj5KbeYmTeCliBr8NVSgQ4lMj0eIfI0gUN4Dl5PpT+lLazQ4YxGm6
	1MISyGsnKLGPhMEWd9LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq3B5-0001VL-F2; Tue, 23 Jul 2019 22:22:35 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq38s-0008Au-F3
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 22:20:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HIvnfxBbZcM6S+9ovlZrUChMpebaPTCr8fSmrAQQ6xI=; b=pHIeIVzUDs3FGqTis7gR0Dgy9T
 irxna0+VpVvVhTuQiYTlsBy6j4N0LGWyZDOs9z97UmI4a/38xNaK5PxWQ4EhlD58PHrhl0AWewY7u
 pvbaaKEBqoUP6EQ0DD76W7XUWUEKzAaL90BZXCiqIdEHWnTCs4QxzD/kNzbYjw/loJsQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hq38n-0003pp-EH; Wed, 24 Jul 2019 00:20:13 +0200
Date: Wed, 24 Jul 2019 00:20:13 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Subject: Re: [PATCH] ARM: kirkwood: ts219: disable the SoC's RTC
Message-ID: <20190723222013.GD13517@lunn.ch>
References: <20190723194505.28060-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190723194505.28060-1-uwe@kleine-koenig.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_152018_789240_1CE76729 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Oliver Hartkopp <socketcan@hartkopp.net>,
 Gregory Clement <gregory.clement@bootlin.com>, tbm@cyrius.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 09:45:05PM +0200, Uwe Kleine-K=F6nig wrote:
> The internal RTC doesn't work, loading the driver only yields
> =

> 	rtc-mv f1010300.rtc: internal RTC not ticking
> =

> . So disable it.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>

Hi Uwe

This should probably go via the mvebu maintainers, who look after the
DT files.

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
