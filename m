Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3864657134
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 21:02:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QBGL6jq62dDv2gtppDjsxTkO91PGuwCh5jcWAZ34TjI=; b=Z9WEDWkCGHKrZU
	pxbZ0WdrryOmL87iyO3LkWRWeisQ/c3DAVZ9RcuY6ddFY6ndwGiuuPzyQ053bQSpOKiTvXMcrSYRT
	2eCY9BswsYqckPzqeGxlDiS2Z3kUPlZ0nj5bWrXWNoxeT2b4XZHh17M33kJ2JmLhWZdfk9H1A5gX5
	NtI7U+E7PUpKExKB1/M6UJLRAYmO9GcUPHXNVlpRJWXG0C5CTAA7+QuhzWJM+lB9Hl1O0GlWC5i0x
	EBK9B31mC+hcKGi3yYHTISm+p72lAqoXgY5+qBB4bZIA4wgpb11KFVY9d4e8h7rDPu/eNpTD2sOro
	dsny9da8GymKGVLi3b6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgDBa-0007CB-Or; Wed, 26 Jun 2019 19:02:26 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgDAR-0006aY-Ti
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 19:01:18 +0000
X-Originating-IP: 90.65.161.137
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 8E5E6C0006;
 Wed, 26 Jun 2019 19:00:53 +0000 (UTC)
Date: Wed, 26 Jun 2019 21:00:53 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 0/7] clk: at91: sckc: improve error path
Message-ID: <20190626190053.GA3692@piout.net>
References: <1560440205-4604-1-git-send-email-claudiu.beznea@microchip.com>
 <20190618095521.GE23549@piout.net>
 <929ac20b-db1d-3f7a-b37c-0dfb253156d5@microchip.com>
 <20190621093302.GJ23549@piout.net>
 <20190626185359.D90C120B1F@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626185359.D90C120B1F@mail.kernel.org>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_120116_257050_12226DC6 
X-CRM114-Status: GOOD (  17.21  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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
Cc: mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 Claudiu.Beznea@microchip.com, claudiu.beznea@gmail.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 26/06/2019 11:53:59-0700, Stephen Boyd wrote:
> Quoting Alexandre Belloni (2019-06-21 02:33:02)
> > On 20/06/2019 10:30:42+0000, Claudiu.Beznea@microchip.com wrote:
> > > Hi,
> > > 
> > > On 18.06.2019 12:55, Alexandre Belloni wrote:
> > > > On 13/06/2019 15:37:06+0000, Claudiu.Beznea@microchip.com wrote:
> > > >> From: Claudiu Beznea <claudiu.beznea@microchip.com>
> > > >>
> > > >> Hi,
> > > >>
> > > >> This series tries to improve error path for slow clock registrations
> > > >> by adding functions to free resources and using them on failures.
> > > >>
> > > > 
> > > > Does the platform even boot when the slow clock is not available? 
> > > > 
> > > > The TCB clocksource would fail at:
> > > > 
> > > >         tc.slow_clk = of_clk_get_by_name(node->parent, "slow_clk");
> > > >         if (IS_ERR(tc.slow_clk))
> > > >                 return PTR_ERR(tc.slow_clk);
> > > > 
> > > 
> > > In case of using TC as clocksource, yes, the platform wouldn't boot if slow
> > > clock is not available, because, anyway the TC needs it. PIT may work
> > > without it (if slow clock is not used to drive the PIT).
> > > 
> > > For sure there are other IPs (which may be or are driven by slow clock)
> > > which may not work if slow clock is driven them.
> > > 
> > > Anyway, please let me know if you feel this series has no meaning.
> > > 
> > 
> > Well, I'm not sure it is worth it but at the same time, it is not adding
> > many lines and you already developed it...
> > 
> 
> Is that a Reviewed-by or a Rejected-by tag?
> 

Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
