Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A096BFBC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 18:38:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ole8A67AU1vssQGxrcdZNVi7THmggDmB2nRUKJOCVe8=; b=dFHuKAXpD5s2Mz
	cKZUlt8fXHYvsvFAw3n/QXv/2naZgGfNFGb9/yi6C67b/1bhBTDXKzW1hsl/heixCPHl0efQ37JRM
	xkbQwIIw0EHOzp+8vEbY7JWMHUY8imw+DK4GOr8+dst78/90/se+HzNI+c4wooXrSQtZG0+TTZ65M
	VkND0lQ99m+OcNlTnJGcpnJAKyEKP96p20PIeNaxcMQlnjdyZUVEdF8ezEnLEmJYYsbjDk7eSAoZN
	yHpEvMY9y2btaKwJPgJFFgeGX1fpKoEs1xWk1e1HWaj9gy2+DZInZF6gW2mhqnPi/JkJ64o763IKF
	QwAQraT0qlvtLxemWhLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnmwl-0002h8-Um; Wed, 17 Jul 2019 16:38:28 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnmwS-0002gO-97
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 16:38:10 +0000
X-Originating-IP: 91.163.65.175
Received: from localhost (91-163-65-175.subs.proxad.net [91.163.65.175])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id C8C6C60005;
 Wed, 17 Jul 2019 16:37:53 +0000 (UTC)
Date: Wed, 17 Jul 2019 18:37:53 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: "Zengtao (B)" <prime.zeng@hisilicon.com>
Subject: Re: [PATCH] phy: Change the configuration interface param to void*
 to make it more general
Message-ID: <20190717163753.ti6swjfhm7fczcn4@flea>
References: <1562868255-31467-1-git-send-email-prime.zeng@hisilicon.com>
 <20190711112039.leuvelpm7opeoaxq@flea>
 <678F3D1BB717D949B966B68EAEB446ED2FF5B22D@DGGEMM506-MBX.china.huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <678F3D1BB717D949B966B68EAEB446ED2FF5B22D@DGGEMM506-MBX.china.huawei.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_093808_479645_F63C20E8 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kishon@ti.com" <kishon@ti.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, Jul 17, 2019 at 06:36:09AM +0000, Zengtao (B) wrote:
> Hi Maxime:
>
> Thanks for your reply.
>
> >-----Original Message-----
> >From: Maxime Ripard [mailto:maxime.ripard@bootlin.com]
> >Sent: Thursday, July 11, 2019 7:21 PM
> >To: Zengtao (B) <prime.zeng@hisilicon.com>
> >Cc: kishon@ti.com; Chen-Yu Tsai <wens@csie.org>; Paul Kocialkowski
> ><paul.kocialkowski@bootlin.com>; Sakari Ailus <sakari.ailus@linux.intel.com>;
> >linux-kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org
> >Subject: Re: [PATCH] phy: Change the configuration interface param to void*
> >to make it more general
> >
> >* PGP Signed by an unknown key
> >
> >On Fri, Jul 12, 2019 at 02:04:08AM +0800, Zeng Tao wrote:
> >> The phy framework now allows runtime configurations, but only limited
> >> to mipi now, and it's not reasonable to introduce user specified
> >> configurations into the union phy_configure_opts structure. An simple
> >> way is to replace with a void *.
> >
> >I'm not sure why it's unreasonable?
> >
>
> The phy.h will need to include vendor specific phy headers

I'm not sure this is an issue.

> and the union phy_configure_opts will become more complex.

And this was the plan all along.

> I don't think this is a good solution to include all vendor specific
> phy configs into a single union structure.

The thing is, as Sakari have stated, this interface was meant as a
generic way to negotiate a configuration between a PHY consumer and a
PHY provider (ie, whatever sends data to the phy and the phy itself).

If you remove the explicit type check, then you need to have prior
knowledge (and agreement) on both sides, which breaks the initial
intent.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
