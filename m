Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEED4331CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 16:12:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KVNhwWDnSqShnX4TpJXC8BbxdGkVlw32UoMNomRhRYA=; b=lv/GZmv4vi2KR1
	0Kix5KP4v7S/DRXZchPT/VMcmlbY4q7V8IXGwGHj7EnEQrICOe/qaz8FRIUKKx76fHmx7qsu6KMEu
	OrLDDIzNYl/lpV40hSCnu3EQq61XX/3BcgTnFmHAM+X21AFdfdo3Q6YPiBvs+9IzY0PVxMKxKz6Q7
	e0s8jxrcxWtRhAVAcIllt87cz03reVst5svCTNtQRDb8KxfBAWCAqSn11KgU6Sj/hiKU66QpAU9Mt
	iHpRMrJUMTf7q71R5wsTrC9iIlAZRCJhKL77iTdRWTN7d5+E2duNpS3sK8Qu9z7W8QQ8X0kJnCb/S
	nbaybt4WbamvonGbeyZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXnhC-0006rJ-6M; Mon, 03 Jun 2019 14:12:18 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXnh3-0006qQ-9W
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 14:12:11 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 0F1D1E0004;
 Mon,  3 Jun 2019 14:11:52 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 ARM <linux-arm-kernel@lists.infradead.org>
Subject: Re: linux-next: unable to fetch the mvebu tree
In-Reply-To: <20190603082346.7bd1d7a4@canb.auug.org.au>
References: <20190603082346.7bd1d7a4@canb.auug.org.au>
Date: Mon, 03 Jun 2019 16:11:51 +0200
Message-ID: <87y32ikbbs.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_071210_491810_96DBCAA7 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen,

> Hi all,
>
> Tyring to fetch the mvebu tree
> (git://git.infradead.org/linux-mvebu.git#for-next) for the past several
> days produces this error message:
>
> fatal: Couldn't find remote ref refs/heads/for-next

Sorry for this, the main reason was that I didn't create a for-next
branch for this new cycle.

I was waiting for 5.2-rc1 and then didn't take time to merge our current
branches in the for-next branch.

But now it should be available.

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
