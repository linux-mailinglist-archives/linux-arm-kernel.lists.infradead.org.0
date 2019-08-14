Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 459508D23E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 13:34:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YA+JBzIFfHE0m8Q+oSYwZsBliHn6VCB0liLSbEHeQ30=; b=N+mfcTnZb2D+pv
	L2PeKZ/JVCLFCGslTUjXAPEb9jkCizJJggZDjynzw2jR6rML60Tphp+D4fTn/qCBUe46cfu/c15y8
	ITFWTmxU+EduQor4NmKQQv4CccfDyFVGv0dZ6vkbNV8lm4SKncx1tpVMgXRx2QvrfDrGR+6GCYvpH
	tH0vanAGbn24tMxavjHxR4lOSCCZBAJXoC1o6ptCoODV+1s08kaOOWXV/oPgANuvSzaz18Tcv7alC
	JElrJFN8hTa67LqxQGQrJpoS5jkgYrHej8KZr4wTKwFt46MbygMD3AJ82p1eT7Nc92ZguEeE44UfD
	sBYB7gYe8hRcdNMa+4/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxrXm-0002C3-Iy; Wed, 14 Aug 2019 11:34:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxrXP-0002BH-40
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 11:33:57 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hxrXF-00013H-3s; Wed, 14 Aug 2019 13:33:45 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hxrXE-0001HE-D6; Wed, 14 Aug 2019 13:33:44 +0200
Date: Wed, 14 Aug 2019 13:33:44 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Wolfram Sang <wsa@the-dreams.de>
Subject: Re: [PATCH v1] MAINTAINERS: i2c-imx: take over maintainership
Message-ID: <20190814113344.5j7zh37nm36rlagr@pengutronix.de>
References: <20190812050817.23279-1-o.rempel@pengutronix.de>
 <20190812064811.427cy7ahim54odkk@pengutronix.de>
 <20190814100224.GE1511@ninjato>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190814100224.GE1511@ninjato>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_043355_157269_9B229BF3 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, linux-arm-kernel@lists.infradead.org,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Oleksij Rempel <o.rempel@pengutronix.de>, linux-i2c@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Chris Healy <cphealy@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 12:02:25PM +0200, Wolfram Sang wrote:
> =

> > Even without this patch the generic "ARM/FREESCALE IMX / MXC ARM
> > ARCHITECTURE" entry matches the i2c-imx driver.
> =

> It matches, but it didn't work well, I am afraid.

I didn't intend to imply it worked well. Just thought it was sensible to
point out that even with the newly added entry in MAINTAINERS the old
entry still matches.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
