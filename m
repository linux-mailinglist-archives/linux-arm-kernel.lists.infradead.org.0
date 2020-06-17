Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 158951FCC18
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 13:17:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YIfCDKVOtjIigB9+BXsRUwCNPKVHpNpY+QpiB2rcrpU=; b=s8gHUuU1jMK81R
	Xgw0JdFtUAi1otC3JavXrlzqM1HV5ZcSGHCMCXbkpjKym5qSRYruvTeKBrniyCG99M3TPDUcYMOoG
	oFMcpCgGm0V3UksvrHdq8s7Ju+42UI/LL4nVGy/3VOPlPR26XeumluMlV4Ch/R3U5RxSzcDhXtr8v
	GePNU2DA+SAca0wNQHCup6FJ3roN8c/EuU/7GU75Ht52SIvBF76mbke0mDRQnDsTybELZ7DWKpPkB
	yipc2vsF17/vKv6Rdagl1McgV/NY2wcxUxR+VWs1qWJ2pH7lDABpa8zabg5xfG99SvyjMfWBAnKhM
	TeD6RPjgTLCurEe9KByw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlW4j-0005LF-Te; Wed, 17 Jun 2020 11:17:49 +0000
Received: from elvis.franken.de ([193.175.24.41])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlW4S-0005Ih-Tf
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 11:17:37 +0000
Received: from uucp (helo=alpha)
 by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
 id 1jlW4P-0006Ho-04; Wed, 17 Jun 2020 13:17:29 +0200
Received: by alpha.franken.de (Postfix, from userid 1000)
 id 02B47C06C3; Wed, 17 Jun 2020 13:14:55 +0200 (CEST)
Date: Wed, 17 Jun 2020 13:14:55 +0200
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: =?iso-8859-1?Q?=C1lvaro_Fern=E1ndez?= Rojas <noltari@gmail.com>
Subject: Re: [PATCH] MIPS: BCM63xx: add endif comments
Message-ID: <20200617111455.GE9940@alpha.franken.de>
References: <20200608101828.3383942-1-noltari@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200608101828.3383942-1-noltari@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_041733_120958_5CAA280D 
X-CRM114-Status: UNSURE (   9.09  )
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

On Mon, Jun 08, 2020 at 12:18:28PM +0200, =C1lvaro Fern=E1ndez Rojas wrote:
> There are plenty of ifdefs in board_bcm963xx.c without endif comments.
> Let's make the code easier to follow by adding proper comments.
> =

> Signed-off-by: =C1lvaro Fern=E1ndez Rojas <noltari@gmail.com>
> ---
>  arch/mips/bcm63xx/boards/board_bcm963xx.c | 33 +++++++++++------------
>  1 file changed, 15 insertions(+), 18 deletions(-)

applied to mips-next.

Thomas.

-- =

Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
