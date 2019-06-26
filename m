Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B06EF57115
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 20:54:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EzJKk3xU2wx2fWe6FE12VwXPKKoKgex9i+d7Blt6Vzs=; b=MjGV0KrpRoUnHm
	Z0AXQyG4jRI2trM9nlPAaYdvWEU0tSyVfRQDj1vwL5ckUsFsTSt8R7uDaOTLoncrunMsEHIrpYgXQ
	dg4wn1oSd0saKBaXaClupUFGG0H4/DeBljCpLQ0wwxCKvhB5/dvjoNZo7BnwyvtPJITNvOzffb9OJ
	uqQsUeb7lmPwiIF/x6Op6lcDVi/VS/0tsi5fNKuSBpmxj6+QUQbDjm1NP5nXVfJMzWIHltfKqW0RJ
	4+OSEHK2NVYrGlFE7q4uH2kjVXGjH2ABqM1WfTAsRwxZugoLTQ1ce77wTwDzmDo1JlHoiEjE6OJKq
	ttLPc8RWl1028GoTt8aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgD3p-0002jC-AP; Wed, 26 Jun 2019 18:54:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgD3Q-0002ie-JD
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 18:54:01 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D90C120B1F;
 Wed, 26 Jun 2019 18:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561575240;
 bh=f5WpHBtEtFahIw3vdUhL2oQjYqmF7FGf/RrCjS8X2io=;
 h=In-Reply-To:References:Subject:To:Cc:From:Date:From;
 b=2DgVwPGP72rgzQZSWHXMghXrWIppNM0nQ8i48SfoOD1tLrP9zDD7brzNtRI0QJOXc
 Qe+aMbqYbnlToGBRDg97O+pH0iaHjjItDJlEQ5QnLdAvFL8zCBC8FrUnBJnw34Zq/W
 juX/mJDB/4OZrSjpNW/8We1tG3C7qk6zjbQyeYFo=
MIME-Version: 1.0
In-Reply-To: <20190621093302.GJ23549@piout.net>
References: <1560440205-4604-1-git-send-email-claudiu.beznea@microchip.com>
 <20190618095521.GE23549@piout.net>
 <929ac20b-db1d-3f7a-b37c-0dfb253156d5@microchip.com>
 <20190621093302.GJ23549@piout.net>
Subject: Re: [PATCH 0/7] clk: at91: sckc: improve error path
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Claudiu.Beznea@microchip.com
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Wed, 26 Jun 2019 11:53:59 -0700
Message-Id: <20190626185359.D90C120B1F@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_115400_655090_109B42E6 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mturquette@baylibre.com, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, claudiu.beznea@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Alexandre Belloni (2019-06-21 02:33:02)
> On 20/06/2019 10:30:42+0000, Claudiu.Beznea@microchip.com wrote:
> > Hi,
> > 
> > On 18.06.2019 12:55, Alexandre Belloni wrote:
> > > On 13/06/2019 15:37:06+0000, Claudiu.Beznea@microchip.com wrote:
> > >> From: Claudiu Beznea <claudiu.beznea@microchip.com>
> > >>
> > >> Hi,
> > >>
> > >> This series tries to improve error path for slow clock registrations
> > >> by adding functions to free resources and using them on failures.
> > >>
> > > 
> > > Does the platform even boot when the slow clock is not available? 
> > > 
> > > The TCB clocksource would fail at:
> > > 
> > >         tc.slow_clk = of_clk_get_by_name(node->parent, "slow_clk");
> > >         if (IS_ERR(tc.slow_clk))
> > >                 return PTR_ERR(tc.slow_clk);
> > > 
> > 
> > In case of using TC as clocksource, yes, the platform wouldn't boot if slow
> > clock is not available, because, anyway the TC needs it. PIT may work
> > without it (if slow clock is not used to drive the PIT).
> > 
> > For sure there are other IPs (which may be or are driven by slow clock)
> > which may not work if slow clock is driven them.
> > 
> > Anyway, please let me know if you feel this series has no meaning.
> > 
> 
> Well, I'm not sure it is worth it but at the same time, it is not adding
> many lines and you already developed it...
> 

Is that a Reviewed-by or a Rejected-by tag?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
