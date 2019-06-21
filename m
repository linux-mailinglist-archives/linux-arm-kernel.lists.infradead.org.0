Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6F24E4D3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:54:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pyZF4h8KaqKTxv3eBmwNIXekD0tsaZO9QcX8dZRk07E=; b=fm25XqIzFPDbf/
	rcUyu/M4tbZOayNAnF1BXYCyVM4wNIaxFRIU/rZHCnCjCSVEB5++tNsXjQXUdJNMXLmz/odGYj3bd
	Kqd0whJpS6vQbP6kqEBCXYBPr2yq9P9Tum14iW8gtutwJFMjxAttKhr1HhiuY5ov7jkwZY5zOLpNf
	SC7GPSiOIdqzhEHC1K+v4/SEWeBpHnTumSEFl0gyiC2hPc8w1rgaGJVy7RMbgQp5RvsSfZZ06s6v/
	LU/qVZBCx13UvxGtxz8BpTJMghVgZ2zmVAk46i3QrefRbf23zR+0TTUG6uU0GUaY0Mv1bIPOX99Lo
	lQTK2faItmxv3wuG5fwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGFB-0004Ab-La; Fri, 21 Jun 2019 09:54:05 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heFv3-0001Ly-IP
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:33:25 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id E0B1160007;
 Fri, 21 Jun 2019 09:33:03 +0000 (UTC)
Date: Fri, 21 Jun 2019 11:33:02 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu.Beznea@microchip.com
Subject: Re: [PATCH 0/7] clk: at91: sckc: improve error path
Message-ID: <20190621093302.GJ23549@piout.net>
References: <1560440205-4604-1-git-send-email-claudiu.beznea@microchip.com>
 <20190618095521.GE23549@piout.net>
 <929ac20b-db1d-3f7a-b37c-0dfb253156d5@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <929ac20b-db1d-3f7a-b37c-0dfb253156d5@microchip.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_023317_789409_1FBD8F01 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 claudiu.beznea@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/06/2019 10:30:42+0000, Claudiu.Beznea@microchip.com wrote:
> Hi,
> 
> On 18.06.2019 12:55, Alexandre Belloni wrote:
> > On 13/06/2019 15:37:06+0000, Claudiu.Beznea@microchip.com wrote:
> >> From: Claudiu Beznea <claudiu.beznea@microchip.com>
> >>
> >> Hi,
> >>
> >> This series tries to improve error path for slow clock registrations
> >> by adding functions to free resources and using them on failures.
> >>
> > 
> > Does the platform even boot when the slow clock is not available? 
> > 
> > The TCB clocksource would fail at:
> > 
> >         tc.slow_clk = of_clk_get_by_name(node->parent, "slow_clk");
> >         if (IS_ERR(tc.slow_clk))
> >                 return PTR_ERR(tc.slow_clk);
> > 
> 
> In case of using TC as clocksource, yes, the platform wouldn't boot if slow
> clock is not available, because, anyway the TC needs it. PIT may work
> without it (if slow clock is not used to drive the PIT).
> 
> For sure there are other IPs (which may be or are driven by slow clock)
> which may not work if slow clock is driven them.
> 
> Anyway, please let me know if you feel this series has no meaning.
> 

Well, I'm not sure it is worth it but at the same time, it is not adding
many lines and you already developed it...


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
