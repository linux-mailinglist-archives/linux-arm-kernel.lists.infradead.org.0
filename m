Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0B46A770
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 13:26:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g3c3+oWW2A05ui8bBpyRZQuls3QxlIaOaOa9KdqqJGo=; b=OMfoRFAazRJDv3
	crG6VazhEx3jx/NJ8Q5+QXlOjWNnwmmcX4eOggjidl+0X68CeUSVLt2eYXmU3BGI2axJQenMW/0QY
	4O/CKIrVKoE0gmwiZEVYC7ijCVmmA0rW66/N8N/7zHrKK+GZP3DmnECJO9jjLhJBOqMD3crJSEn+o
	gEYAjdQNRiL/jnSphDyrCGpRsrESpFighiQ2LJ/4YFVDKfkZfTKWZsSIm+WNBva+gtCzebxKqEngN
	YGa0+DzdpGBxgTDlmxbfAU5HlyAMb25BvtGF2Y0VHp7WQIE6tPqyrCz+L8UU2tN+9MwhzF6FR7zEL
	lq+c345k7rKXIhxCW0Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnLbT-0007ZY-VE; Tue, 16 Jul 2019 11:26:40 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hnLbG-0007Z6-34
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 11:26:27 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 2AAEE25AD78;
 Tue, 16 Jul 2019 21:26:22 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 2E37D9403C0; Tue, 16 Jul 2019 13:26:20 +0200 (CEST)
Date: Tue, 16 Jul 2019 13:26:20 +0200
From: Simon Horman <horms@verge.net.au>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH] dt-bindings: Rename file of DT bindings for Renesas
 memory controllers
Message-ID: <20190716112619.ielypcsnclg6sa27@verge.net.au>
References: <20190703084106.484-1-horms+renesas@verge.net.au>
 <CAMuHMdXMbLzL7X5uUp0g5Q-_YiXiyTW+tALzS=kHBOS3JNbRUQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdXMbLzL7X5uUp0g5Q-_YiXiyTW+tALzS=kHBOS3JNbRUQ@mail.gmail.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_042626_284522_6FF67C4B 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 03, 2019 at 11:33:36AM +0200, Geert Uytterhoeven wrote:
> On Wed, Jul 3, 2019 at 10:41 AM Simon Horman <horms+renesas@verge.net.au> wrote:
> > For consistency with the naming of (most) other documentation files for DT
> > bindings for Renesas IP blocks rename the Renesas R-Mobile and SH-Mobile
> > memory controllers documentation file from renesas-memory-controllers.txt
> > to renesas,dbsc.txt.
> >
> > Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
> 
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Hi Geert,

are you planing to take this through renesas-devel?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
