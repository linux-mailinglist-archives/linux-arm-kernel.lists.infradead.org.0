Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A671128A41
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 17:01:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A5zHY8cio7ttntt8rbYdYb5fwEVAaI4a3dXZg9rKu8k=; b=F+2u4swnRbT2l6
	4JBXw3sDLhDa3crXKe0HoQ8ZIztx3XrvBTDk9SZ80qZdx4oL4DQalaF6VDm4Wq9gO3+L69sUvd8ec
	MGi9dezp3j28voun/+tyi70CLJw2azJOguZr+MDhvnNm/ycQ+w6qd/u0JY748EwZPZVtkVwHsDQ7A
	q1bXNxgmkghp3r0sX4CxGK9H4ONqwm+BoXIgyhOKwU1meYI8wnXpCHyTc8kvxy2SopGSdkCdbt4OP
	hDVUNJOjtZL8Bq49Jp31RvQcFnPpwiN845Y427GEAw7r7xn0Ms+p2RD0w/3Hg8qpUoABAYXda4UiL
	WgsYlDuQS7a6uKzYtAOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iihBb-0006Jh-T7; Sat, 21 Dec 2019 16:00:59 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iihBR-0006Is-Ua
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Dec 2019 16:00:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oRLhH9kC0sya9e8IKklR7peJ86JQp8SljrTCyvo5Hi8=; b=gY33WQb2xAtMVs4TwwJn/wCCoI
 ZbBBrtGqihFc3iHJ1Jd5JgCTo60CFoclHXuUU/4H5WoD3TXeYEwi/Fh0GhOa50afOhix+sgaP8DCR
 cJFPdBulXhBvH36uQ1aMQcmlyA3MWoMIlqnaykJD6iB78Abiba4Xw4QP2Bsf4vs7NuQo=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1iihBI-0003xM-MQ; Sat, 21 Dec 2019 17:00:40 +0100
Date: Sat, 21 Dec 2019 17:00:40 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Baruch Siach <baruch@tkos.co.il>
Subject: Re: [PATCH] arm64: dts: marvell: clearfog-gt-8k: fix switch cpu port
 node
Message-ID: <20191221160040.GK30801@lunn.ch>
References: <18a7fd3e75a172a7bca9feecfb8a77ecb802d8af.1576751325.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <18a7fd3e75a172a7bca9feecfb8a77ecb802d8af.1576751325.git.baruch@tkos.co.il>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_080049_985999_07117DEC 
X-CRM114-Status: UNSURE (   6.28  )
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
Cc: Jason Cooper <jason@lakedaemon.net>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Marek =?iso-8859-1?Q?Beh=FAn?= <marek.behun@nic.cz>,
 Hubert Feurstein <h.feurstein@gmail.com>,
 Denis Odintsov <d.odintsov@traviangames.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 12:28:45PM +0200, Baruch Siach wrote:
> Explicitly set the switch cpu (upstream) port phy-mode and managed
> properties. This fixes the Marvell 88E6141 switch serdes configuration
> with the recently enabled phylink layer.
> 
> Fixes: a612083327 ("arm64: dts: add support for SolidRun Clearfog GT 8K")
> Reported-by: Denis Odintsov <d.odintsov@traviangames.com>
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
