Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D9B1E403E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 13:38:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qfBiS5zZE78z7yy7m7wvMubSoL1dI6/PU2TmCKxrM0E=; b=fDspvhSi0kZ9FX
	a5qsTRgIZR2SyYU0y8mU0V0KU34Plr97fkceNwYVDMZYlze2Ogo7GVFc4JSa2mScE0Q1MaOaFWYy6
	savRwLOF1CkPM+dQWqSfGgtg9qG3vpZ3pbB42UOFiyWQkGk8Pdi0SZOybgoDxjgvjL7RkAalpcGdh
	zafuZl4WsL1lvMC2aPum6u+fu5t9IuKCf2dy7bV1Ni1gp18DJ+q2TsmTRAdlQiLQR2vgCnM3QaZDN
	qkRPH9ncf/CuZwwx7Z455ZUForpaRFBCb5oLPSSEw97Zoquu8iqY8g0jdlBAhS6l4MrCUu2BU/N/6
	vHvj6kxK1NPLCNNVr1Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jduOQ-0002ug-Bg; Wed, 27 May 2020 11:38:42 +0000
Received: from elvis.franken.de ([193.175.24.41])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jduOG-0002tH-Oa
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 11:38:34 +0000
Received: from uucp (helo=alpha)
 by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
 id 1jduO3-00011U-01; Wed, 27 May 2020 13:38:19 +0200
Received: by alpha.franken.de (Postfix, from userid 1000)
 id 29C33C0594; Wed, 27 May 2020 13:33:21 +0200 (CEST)
Date: Wed, 27 May 2020 13:33:21 +0200
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: =?iso-8859-1?Q?=C1lvaro_Fern=E1ndez?= Rojas <noltari@gmail.com>
Subject: Re: [PATCH] MIPS: BCM63xx: fix 6328 boot selection bit
Message-ID: <20200527113321.GB13537@alpha.franken.de>
References: <20200526110324.1324754-1-noltari@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200526110324.1324754-1-noltari@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_043832_953787_69997F59 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [193.175.24.41 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: f.fainelli@gmail.com, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 jonas.gorski@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 01:03:24PM +0200, =C1lvaro Fern=E1ndez Rojas wrote:
> MISC_STRAP_BUS_BOOT_SEL_SHIFT is 18 according to Broadcom's GPL source co=
de.
> =

> Signed-off-by: =C1lvaro Fern=E1ndez Rojas <noltari@gmail.com>
> ---
>  arch/mips/include/asm/mach-bcm63xx/bcm63xx_regs.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

applied to mips-next.

Thomas.

-- =

Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
