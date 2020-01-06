Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F911316EA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 18:40:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hn3aVXBK1oGi87AgN1x50i+/2Brqd7I5OM/dgx8Zj90=; b=tOVqpsfVwRyxw0
	lXwRl91a2blU5xs1uro5+j3OLvDOkgpVWzNjxFiGls/qTjDVSFFMRg+h5VO+pghTgmwF5xVzvBGqR
	07ZrEfXUg9jewmMkP7O3sNZ33Mj757V6ddy6FopCzv+GhTzVlPNVszydEyAt/AIsofpzCi1OxjegJ
	OpXfuz2LrZA/dKCBkDTMyYTWDEQaH9zfemj456U4Su3EDZfAWvyCV8XcxTrnl82w68hgiXqMy0FZA
	7/nX4mwfO4CmHBmFRwX+Bl1t3xAJhXyA/nsZjFAPnsRjEnU6sRGWyBYxHKD7F5LbiYTH/7TtwwtcT
	Hkt33/XFMlTh+/REaiIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioWMQ-0001Fe-Cv; Mon, 06 Jan 2020 17:40:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioWMB-0001CY-0d
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 17:40:00 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 068D02072A;
 Mon,  6 Jan 2020 17:39:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578332398;
 bh=mp3njqqWaDnYVqjwsBT3p6zCZ56gkals5HKkvF6a1ew=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=T5aT7lm7/MMoXmgtSNrDVAYvbnTlbzOYE6saqA0AgNlMeuNCeTzGj5whxAdMe1qdN
 +RatoW1NGYV+jvMO4EFxd2Y9JH6qwTO0F9UHmiEe7DBQXlV9dfJSMtHgi8DjjtJ3RT
 5Oe5KfeWEkkG9GYhvpBfYnKCb9xE+4loWw800cFA=
Date: Mon, 6 Jan 2020 17:39:53 +0000
From: Will Deacon <will@kernel.org>
To: Christian Brauner <christian.brauner@ubuntu.com>
Subject: Re: [PATCH 2/7] arm64: Implement copy_thread_tls
Message-ID: <20200106173953.GB9676@willie-the-truck>
References: <20200102172413.654385-1-amanieu@gmail.com>
 <20200102172413.654385-3-amanieu@gmail.com>
 <20200102180130.hmpipoiiu3zsl2d6@wittgenstein>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200102180130.hmpipoiiu3zsl2d6@wittgenstein>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_093959_079301_1D1BA7C5 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Amanieu d'Antras <amanieu@gmail.com>, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Christian Brauner <christian@brauner.io>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 02, 2020 at 07:01:33PM +0100, Christian Brauner wrote:
> On Thu, Jan 02, 2020 at 06:24:08PM +0100, Amanieu d'Antras wrote:
> > This is required for clone3 which passes the TLS value through a
> > struct rather than a register.
> > 
> > Signed-off-by: Amanieu d'Antras <amanieu@gmail.com>
> > Cc: linux-arm-kernel@lists.infradead.org
> > Cc: <stable@vger.kernel.org> # 5.3.x
> 
> This looks sane to me but I'd like an ack from someone who knows his arm
> from his arse before taking this. :)

That's *ME*! Code looks fine:

Acked-by: Will Deacon <will@kernel.org>

I also ran the native and compat selftests but, unfortunately, they all
pass even without this patch. Do you reckon it would be possible to update
them to check the tls pointer?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
