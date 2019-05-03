Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC2F12D8A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 14:29:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vyiGWY+/jiQZcrIS3rrwXYO7RJLZxj5sEtcdPZWXbvs=; b=N83+L38DCxVIUA
	oYCOE6vDGDh3gP0BB0Xu0XXjkZ5eU9b2tXJAju4uvkS/yVbQMGs23+hdz9q1HkIxmfu6lSPv76A5d
	37+zD0YH9p7Mxh7kXACFJbk9LxCcWD12CLXgPnJB57QcgRSm/hX7ThQo6A4RuDP+nVnwssatRlW6L
	tntg7WPR924ttw3Hh+BpPo2BPm/EnRnbxoRltWcFr8p/Islqf9xTIREcOuIk/sFwlq2UnWPdXg3lh
	b9j4OdQsSHt/5puy8juc71oxNj7UJMz21jjgfdRTPEprFKFYp/XqD28CixaefPwF3lpDOwRduYhUb
	3J+Q6KEQo+/UrDq5BKIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXJe-0003nK-GK; Fri, 03 May 2019 12:29:26 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXJX-0003lL-B9
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:29:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=R6e6QMt4Ry7Ciu1Kvg2pPK4dklAxRHwK6AKu5GkzKCU=; b=ojHPNQP/rDkJLkCCTKgFGjvMMp
 r6BF6jbtmMUYw+qiHA0GQKTDkj7yRabYDhGOxREUrQvokSpX5Fr9BZuLGdhV9PdpZu6+2NsWx4g4e
 WTiMK3Oj/AdU5d72l0unGGETlh4mur5J7qreOrsikuz7n9WilhtXjLOarDv5jd1mb2Uc=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hMXJO-0001AD-GE; Fri, 03 May 2019 14:29:10 +0200
Date: Fri, 3 May 2019 14:29:10 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Nicolas Ferre <nicolas.ferre@microchip.com>
Subject: Re: [PATCH] net: macb: remove redundant struct phy_device declaration
Message-ID: <20190503122910.GB1941@lunn.ch>
References: <20190503103628.17160-1-nicolas.ferre@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503103628.17160-1-nicolas.ferre@microchip.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_052919_535690_38F40E06 
X-CRM114-Status: UNSURE (   7.81  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, michal.simek@xilinx.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, harini.katakam@xilinx.com,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 03, 2019 at 12:36:28PM +0200, Nicolas Ferre wrote:
> While moving the chunk of code during 739de9a1563a
> ("net: macb: Reorganize macb_mii bringup"), the declaration of
> struct phy_device declaration was kept. It's not useful in this
> function as we alrady have a phydev pointer.
> 
> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
