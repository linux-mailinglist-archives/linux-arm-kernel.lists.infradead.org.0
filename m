Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B631A9D7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 03:08:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HcL4uuOC0IjSsRzJ4vlIRjgKM3URSXsZsFe9QjdppdQ=; b=D0X21gwVVi6ihN
	Q//EPHgWyyjRrxiPC/xjI8X3NO9hj872nkVlqsIgzD7lBDExRKsFdB2aaVr5jCvR9umqQxBgcexm5
	mixAoQDjIx4UxrdXo2bvFmYIXwhHbAvLEcM8UxLYP2ZtN5qso8BxD7jVU6skKxMP/CefaIyr8UxZL
	k6AjIets3x6HAoZYMakIXkPjQy7BvuajtJkGjiZOcx1WP2FqdoJE1RlfqyKa5toBTWlEja8eFwHYc
	tT8jUcI9Nz1pYqZ9xKh8L4TBs21cOnWb4Ei42QDclF7OICPlWxOKd+Cwptd3bau5cX1i0itaGU2Rv
	cR9x1O2ZnFk9LL3T04kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPcyX-0007PQ-HX; Sun, 12 May 2019 01:08:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPcyP-0007Ou-79
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 01:08:19 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 155A02146F;
 Sun, 12 May 2019 01:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557623294;
 bh=Z20a2po9n0851wFxAetxwi00fSX8OGtNnWeHUQ+viUY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aBsu6jau4BSb6ujciX9JSmcnzYaqVmNgIBMag2Z7REg2VJnDuCv4DQOnS3zJsFqB0
 2277gl0TuPc8Ytz6Mc+yv+GopwLA+LjcmLntSAwjXYsmfDoc8jPSDPJxe18Qs4Vt32
 I+jQsjDVTl+wtLuK4YmK0+0ZFgxesyRDUgA5n78s=
Date: Sun, 12 May 2019 09:07:42 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: imx6sll: Fix mispelling uart4_serial as serail
Message-ID: <20190512010741.GI15856@dragon>
References: <8776296d079b3b4d67d4421656238757a8ad373d.1556046082.git.leonard.crestez@nxp.com>
 <20190510032746.GF15856@dragon>
 <155750984356.14659.16650159344577092731@swboyd.mtv.corp.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <155750984356.14659.16650159344577092731@swboyd.mtv.corp.google.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_180817_278121_61EACBD1 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 10, 2019 at 10:37:23AM -0700, Stephen Boyd wrote:
> Quoting Shawn Guo (2019-05-09 20:27:47)
> > On Tue, Apr 23, 2019 at 07:05:08PM +0000, Leonard Crestez wrote:
> > > This looks like a copy-paste error. This string is not referenced
> > > anywhere so it's safe to rename it.
> > > 
> > > Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> > 
> > I see this keep coming, so have to ask you to fix your patch sender.
> > The base64 encoding makes it very difficult to apply patch.  I have done
> > manual applying for your patches a couple of times, and I thought that's
> > just accident.  It seems not.  Please fix and resend. 
> > 
> 
> I already applied this one. Sorry, forgot to send the email.

No problem.  Thanks for notification.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
