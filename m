Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 462B810A3C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 19:01:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y6Y16YBGpFfnaeN+lea2/ZJUvSC+Tr58DpxH9F7ZFNk=; b=G2MSsdwZpbb/rY
	4Xam+XH+cseRJV2l+S02uOtEf3zeFolI7J31/qthls5ZTN2podLrAVq9KvDyCQ2b70cvsXA9K+9UI
	T4iHM+qAuq4L+FpsBcLyoTRg7qebAIVAv2WlubSS4ipWMqUr7+vJMQRRjdFAJnSCFtnanGPUrtkHi
	zHBX7cb59DjdYmEodTu8Og2B7UzDHh9bK/FvgWyMTV/JUj72i8mBhckOA5WG7qGFYb6sOU3H8gAQR
	Hoyg5iGQ9UnPdUKbHrxNXf8YLgqWrJP/HsrWCAAST4elb6jbC+Ez6cw875RmVI69Dl7upembiZUS6
	RQQV94xOZRLru/vJhg7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZf9S-0007dE-Q8; Tue, 26 Nov 2019 18:01:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZf9L-0007cq-Nm
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 18:01:20 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C76792071A;
 Tue, 26 Nov 2019 18:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574791278;
 bh=omsnWS1CdzFSYWPwB5Bc/IkaXklFcCy9SMZZUTRYQzs=;
 h=In-Reply-To:References:Subject:Cc:From:To:Date:From;
 b=HaNfuNJCXCkhjrwWON6HDO91gUx5c4vNMR1sAm696rb63zkQZGtqM9XDdnHUzfvDM
 poIJW3DSg7GABxuFVkdWdUSOzGHr2qgxLOpo+OnNLsFXYxwWIe5EEvWGuqaIUhfbJu
 9owrAiqtUMfRkBfEhno9SjyQg7ED2+XEezweAKJk=
MIME-Version: 1.0
In-Reply-To: <CACPK8XchwGdgE95jkdhwWbp0r+NHge7W3q6yQp-wzfxV3Kpajg@mail.gmail.com>
References: <20191010020655.3776-1-andrew@aj.id.au>
 <20191010020655.3776-3-andrew@aj.id.au>
 <CACPK8Xcrc_2itUcGw6caa8Fp3sJE8oHBO5LJgBtqScwmVAuHJw@mail.gmail.com>
 <CACPK8XchwGdgE95jkdhwWbp0r+NHge7W3q6yQp-wzfxV3Kpajg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] clk: aspeed: Add RMII RCLK gates for both AST2500
 MACs
From: Stephen Boyd <sboyd@kernel.org>
To: Andrew Jeffery <andrew@aj.id.au>, Joel Stanley <joel@jms.id.au>
User-Agent: alot/0.8.1
Date: Tue, 26 Nov 2019 10:01:17 -0800
Message-Id: <20191126180118.C76792071A@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_100119_795251_94912A66 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Joel Stanley (2019-11-25 16:59:19)
> Hi Stephen,
> 
> On Thu, 10 Oct 2019 at 23:41, Joel Stanley <joel@jms.id.au> wrote:
> >
> > On Thu, 10 Oct 2019 at 02:06, Andrew Jeffery <andrew@aj.id.au> wrote:
> > >
> > > RCLK is a fixed 50MHz clock derived from HPLL that is described by a
> > > single gate for each MAC.
> > >
> > > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> >
> > Reviewed-by: Joel Stanley <joel@jms.id.au>
> 
> I noticed this one hasn't been applied to clk-next.
> 

It's marked awaiting upstream in my UI. I think it was some patch that
might have come through your PR?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
