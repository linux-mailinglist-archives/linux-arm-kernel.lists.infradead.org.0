Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C269248CD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 09:14:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cFVIVPtuJKsmdLNCEWbZLsAYwwNZqqmXE4tpVzkhUqU=; b=fvKBhXf+yPF7ue
	bZzhwDlNDKWwLmQ12IUFJ21OGAKhXbfdw8wVgRPVKPe7Yl0TIWinOQyzj2EHS0rseoyaRPlcaHmX6
	wnm2Ff8HzAKTR0vU3o1qC4HGLf2j5Q8jrm4PVUjNxB0x+zMyGz66+20jledV0S+8HRVPGyLtivPBB
	g8Kk8y95AV3k0DUTjERizH5oo9QWScQrhtx9eIhsTrrC9HRvSHIBlJXfpxEWpqqsZKj3Q9wCyZDbv
	5OBCZQvPv82i1iwjyMf7KjjpnuIQ4SKUHjXh8VXyjDSswEBnQlQ9b7xzLTfRL3igIFTN9kKnUDGDa
	taQjQFxrnodgkFmI/gcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSyya-00007A-Qo; Tue, 21 May 2019 07:14:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSyyT-00006b-1s
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 07:14:14 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1hSyyR-0007uH-Jr; Tue, 21 May 2019 09:14:11 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1hSyyQ-0004nW-Se; Tue, 21 May 2019 09:14:10 +0200
Date: Tue, 21 May 2019 09:14:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] ARM: delete netx machine
Message-ID: <20190521071410.c62ekna7muj3hias@pengutronix.de>
References: <20190521012801.15355-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521012801.15355-1-linus.walleij@linaro.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:13:35 up 3 days, 13:31, 50 users, load average: 0.07, 0.12, 0.10
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_001413_247881_96094073 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Michael Trensch <MTrensch@hilscher.com>,
 Robert Schwebel <r.schwebel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 03:28:01AM +0200, Linus Walleij wrote:
> After discussing with the subarch maintainers and Hilscher,
> we concluded that the netx subarchitecture (Netx 100/500)
> is no longer maintained or tested, and noone will miss it
> if we delete it. So delete it.
> 
> There is a newer Netx 4000 architecture which we may see
> included at some point, but this will be supported using
> the standard multiplatform and devicetree mechanisms and is
> easier to develop from scratch.
> 
> Cc: Michael Trensch <MTrensch@hilscher.com>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Robert Schwebel <r.schwebel@pengutronix.de>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Acked-by: Sascha Hauer <s.hauer@pengutronix.de>

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
