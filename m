Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D37C7134EC0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 22:20:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D66OdgRWzY2FLlgK5kxCiwp4MruZsRqRs5XzBlDixtQ=; b=o04tUxMyPhc/C3
	u137716Vn2np44871kvWZcAzJTk8oNdsldFoN2jwB2iQ12HPb0qqwB6+yjOvIv2aVc9Az8JgOwyMP
	+2eOS1PfFit6llvV0yR9u6IFwik1ke9MZEZCsPse7vRqC+CR64So6kfHK1X67btJgYz4BAPyUuo//
	Jo7wVPKNYxGVuOqLRQsEPegGarQnwB0r6XLSDoqIbw0iTtv+VKUsyWtUYOodsC6UCedsWWP1xtTLh
	WuHgc5wfUl6CFtzdtQcOu3v2T8uPfxcbVatMtBTlgj+AGC8ogijumj3gD4v+zP9RZ2K73jYorLYwy
	RKJ3trvWoWR+F+7gjf5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipIl0-0002Fo-3M; Wed, 08 Jan 2020 21:20:50 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipIkn-0002EG-Sh
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 21:20:39 +0000
X-Originating-IP: 87.231.134.186
Received: from localhost (87-231-134-186.rev.numericable.fr [87.231.134.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 65A361C0002;
 Wed,  8 Jan 2020 21:20:28 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 ARM <linux-arm-kernel@lists.infradead.org>
Subject: Re: linux-next: Fixes tag needs some work in the mvebu tree
In-Reply-To: <20200109072840.0a8d1ef6@canb.auug.org.au>
References: <20200109072840.0a8d1ef6@canb.auug.org.au>
Date: Wed, 08 Jan 2020 22:20:28 +0100
Message-ID: <87r209abmr.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_132038_078305_7810DFED 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
Cc: Baruch Siach <baruch@tkos.co.il>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen,

> Hi all,
>
> In commit
>
>   66f5ff1bf632 ("arm64: dts: marvell: clearfog-gt-8k: fix switch cpu port node")
>
> Fixes tag
>
>   Fixes: a612083327 ("arm64: dts: add support for SolidRun Clearfog GT 8K")
>
> has these problem(s):
>
>   - SHA1 should be at least 12 digits long
>     Can be fixed by setting core.abbrev to 12 (or more) or (for git v2.11
>     or later) just making sure it is not set (or set to "auto").

This is fixed now,

Thanks,

Gregory
>
> -- 
> Cheers,
> Stephen Rothwell

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
