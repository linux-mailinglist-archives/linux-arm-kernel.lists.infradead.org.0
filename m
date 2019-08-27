Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDC99F22B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 20:15:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nGeO2O49Wqqt2sq+cOj6iqwiIiKDzfIQ37Hcnpc8QRk=; b=FGYCtP3IVF5Kmq
	AC8uvS6YslQCcTHYo2gLF4zmKWx916zaqGhe63jkZgdxm0Or5/YeYuGwhkpyBtJTjnhPeOEYZOSWB
	Hy0oZKzLjEdMzDYedla4qcl9mLQyxv1aoX+HqeSN1GFmkZD2POE72ij9MhlEn6KC3VvgYnW0RaGk/
	+YaPUfS/nukNUkGLqNm7+++vKhvEKCDSiakkED7rcsmC5yr+/wbZBD55HJtafnjpYC40RFi1x7UTb
	e7T/J5EYliSt9To+N0HcYRuBGYFsLBwLQFFYC2DzZXGVc2EIfYr2/acEl38wJ9Lz3SCEjdQf6HlIr
	t6XNXHjLtBBVI4bMyL3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2fzv-00062s-AX; Tue, 27 Aug 2019 18:15:15 +0000
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2fzk-0004sI-OG
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 18:15:07 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23992798AbfH0SPAV-MII (ORCPT
 <rfc822;linux-arm-kernel@lists.infradead.org>);
 Tue, 27 Aug 2019 20:15:00 +0200
Date: Tue, 27 Aug 2019 20:14:57 +0200
From: Ladislav Michl <ladis@linux-mips.org>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [PATCH] ARM: OMAP2+: Delete an unnecessary kfree() call in
 omap_hsmmc_pdata_init()
Message-ID: <20190827181457.GA16333@lenoch>
References: <69025c8c-8d84-6686-138b-cde59467b802@web.de>
 <20190826162050.GX52127@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190826162050.GX52127@atomide.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_111504_795378_DD6D482D 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [148.251.95.138 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Paul Walmsley <paul@pwsan.com>, Balaji T K <balajitk@ti.com>,
 kernel-janitors@vger.kernel.org, Kishore Kadiyala <kishore.kadiyala@ti.com>,
 Russell King <linux@armlinux.org.uk>, LKML <linux-kernel@vger.kernel.org>,
 Markus Elfring <Markus.Elfring@web.de>, Nikolaus Schaller <hns@goldelico.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Benoit Cousson <b-cousson@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 26, 2019 at 09:20:50AM -0700, Tony Lindgren wrote:
> * Markus Elfring <Markus.Elfring@web.de> [190826 06:31]:
> > From: Markus Elfring <elfring@users.sourceforge.net>
> > Date: Mon, 26 Aug 2019 15:05:31 +0200
> > 
> > A null pointer would be passed to a call of the function "kfree" directly
> > after a call of the function "kzalloc" failed at one place.
> > Remove this superfluous function call.
> > 
> > This issue was detected by using the Coccinelle software.
> 
> Applying into omap-for-v5.4/soc thanks.

Is it really wise touching almost dead code? Last user is pandora board, so
+Cc: Nikolaus Schaller <hns@goldelico.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
