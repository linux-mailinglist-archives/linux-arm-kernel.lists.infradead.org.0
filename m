Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A39658596A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 06:44:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PMvnBa9bQZaESROzcm42oKoeYh3rI7rc8t/g3wXtNHw=; b=uumM+ioue0rSN9
	kW46p2jsKAj1ZC3f50v4xbjjfaYa0uidE63aotCVvIc0SPDJUqzt525RnrAq1Y5usJylM1OuuUblE
	eytNLbmOThm4tDSpNcoRTJg4AibE7k3lpWUq46IJmZiBZ5cIkEpUUOVnat65DtU1SMc9Cz7zbxZJK
	7jYjz2GM6ycSecHya2ySS3QX5mSlOm5ZeTOfsuE9wPpJTHRLK1nGfnu2F9GoNZmUmteyk3Ip1GJZf
	l/oHg6BB42buTIG4TTB8hyfNioGBb3acYk1uuEVYsMHkbr6cAMakj2VlHKiTtoepJ/6GkjPztfCTD
	fKxOU98BwtBBm8pfJNow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvaHL-0004HB-9G; Thu, 08 Aug 2019 04:43:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvaGo-0004FV-Qp; Thu, 08 Aug 2019 04:43:24 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 30FC0217D7;
 Thu,  8 Aug 2019 04:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565239402;
 bh=epeHa/FiHLUJX+Won1KcmqufCoWzRRNhnCbnjs+xtOE=;
 h=In-Reply-To:References:From:Cc:To:Subject:Date:From;
 b=Kc4ZDf1JK1gy2Li/0XaN/PMxsQBAC2yqwdZULhUg9zLN0rTqC7NgtlhrIJMBkquFc
 iK9xz36G2sSfMlUOCD935ehbb+Qn7/5j+eZGn5LG9vtuPOa1/KhSmBlDP+HFZae1BC
 orQ+lrzDQ69ksPmQpDlQAzkk325NAKjV5BniViIU=
MIME-Version: 1.0
In-Reply-To: <CAFBinCAnKeGYkyCmEMugWuQaSxgBp4DqtHN3b0rLJY6jwOF0QA@mail.gmail.com>
References: <20190701091258.3870-1-narmstrong@baylibre.com>
 <20190701091258.3870-8-narmstrong@baylibre.com>
 <CAFBinCAnKeGYkyCmEMugWuQaSxgBp4DqtHN3b0rLJY6jwOF0QA@mail.gmail.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>, dbasehore@chromium.org
Subject: Re: [RFC/RFT v3 07/14] clk: meson: g12a: add notifiers to handle cpu
 clock change
User-Agent: alot/0.8.1
Date: Wed, 07 Aug 2019 21:43:21 -0700
Message-Id: <20190808044322.30FC0217D7@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_214322_931404_66178BCD 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Martin Blumenstingl (2019-07-02 16:28:55)
> Hi Stephen, Hi Neil,
> 
> On Mon, Jul 1, 2019 at 11:13 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
> >
> > In order to implement clock switching for the CLKID_CPU_CLK and
> > CLKID_CPUB_CLK, notifiers are added on specific points of the
> > clock tree :
> >
> > cpu_clk / cpub_clk
> > |   \- cpu_clk_dyn
> > |      |  \- cpu_clk_premux0
> > |      |        |- cpu_clk_postmux0
> > |      |        |    |- cpu_clk_dyn0_div
> > |      |        |    \- xtal/fclk_div2/fclk_div3
> > |      |        \- xtal/fclk_div2/fclk_div3
> > |      \- cpu_clk_premux1
> > |            |- cpu_clk_postmux1
> > |            |    |- cpu_clk_dyn1_div
> > |            |    \- xtal/fclk_div2/fclk_div3
> > |            \- xtal/fclk_div2/fclk_div3
> > \ sys_pll / sys1_pll
> >
> > This for each cluster, a single one for G12A, two for G12B.
> >
> > Each cpu_clk_premux1 tree is marked as read-only and CLK_SET_RATE_NO_REPARENT,
> > to be used as "parking" clock in a safe clock frequency.
> it seems that this is one case where the "coordinated clocks" feature
> would come handy: [0]
> Stephen, do you know if those patches stopped in March or if there's
> still some ongoing effort to get them ready?
> 

Derek told me yesterday he wants to work on it again, but I don't know
his timeline. If Derek doesn't reply here then maybe it can be picked up
by someone else.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
