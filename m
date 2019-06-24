Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 315FD51B4C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 21:18:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ohHTLNY+24gqXToBui1eWwLbXvji4UrKxt6fVxSTlIM=; b=U1gOlxGIViKLw+
	Qu7K8qHRbMu5EcsfYT6D6QrP+KMcxv4MQPVjM/3RGOz2S8t298Hz2A1XPj8B4JpkDt/IqpLKn45Lu
	wGNrHhqII62+dMJMH2Kcu+4yGplxgUCqTpYo7kekPovVTOA1gjKnUedyRlNPEpctskK7/thmlh0ga
	StLmgRjSyq5ToehXOjTJIMuLINWzGIyPYcIynkwUjtdquK3XQyUWO/OHudec8IMWtXyaNpo7FKT+g
	OpyELS7ETN21VbcVHKEokAk1jMzTLwkT0c7kHcc51wNhLswCgtPldv8mVX+MYBp66p13qh2P7D3AQ
	HldTt6zWJVHrJJ8pjDVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfUTn-0003HD-1g; Mon, 24 Jun 2019 19:18:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfUTa-0003Gd-WF
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 19:18:04 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hfUTT-0007xQ-4l; Mon, 24 Jun 2019 21:17:55 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hfUTR-0005BR-Rp; Mon, 24 Jun 2019 21:17:53 +0200
Date: Mon, 24 Jun 2019 21:17:53 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: claudio@databyte.ch
Subject: Re: [Patch] support for new board
Message-ID: <20190624191753.q6sk7dzfs4gb7kmg@pengutronix.de>
References: <004601d52a7d$8ee52c40$acaf84c0$@databyte.ch>
 <20190624171210.GA31306@lunn.ch>
 <00b401d52abd$cbb17d50$631477f0$@databyte.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00b401d52abd$cbb17d50$631477f0$@databyte.ch>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_121803_095430_736B1E89 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: 'Andrew Lunn' <andrew@lunn.ch>, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Claudio,

On Mon, Jun 24, 2019 at 08:51:09PM +0200, claudio@databyte.ch wrote:
> Thank you very much for your suggestions and your answer. =

> I'm very sorry for the missing signed-off line. =

> I will add they as soon as I have made corrections to the patch as propos=
ed
> by you. =

> =

> One questions about defconfig. =

> You wrote, that defconfigs have not been added since years. =

> So what would be the right way today?

Just enable all the stuff you need in imx_v6_v7_defconfig and/or
multi_v7_defconfig.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
