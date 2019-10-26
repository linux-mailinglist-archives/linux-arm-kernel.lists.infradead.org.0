Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 880F9E5817
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 04:31:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q0x6Texvnjz1oT+I6BIdJkwNE/nAynCqpKiYyI01lcI=; b=B58G7Jte1iFleL
	DqWjr3+LC2526IAkkJXY/LehNiWHiiacGbSEgN1lXuGvXtNFPQAZr9z8cBgYRqtVGlQDwbeLqQYzf
	y/0JxMkV4SPJdardwBWWFUpzZCvLI3SqQGoUGCgjrRdAW69suZqEU/WPtUAuK6DEpJrIZtkGhobSB
	cAxKTh9JeK8+eibazfp0RsN6t5xFX4sl3Fdc8kgDNA3DSgAxal/1b994ydrP6HDYw/OUgnnIeHckB
	Kry1QMgMqCYX1Mn7+oV2AXLXk72/x6mmafijz6/XALiosU71CXKBee4oTwXlH6w89D+22noyhA90C
	lCeSedY6vtAULxt361ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOBr0-000586-0d; Sat, 26 Oct 2019 02:30:58 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOBqt-00057W-Ev
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 02:30:52 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 2123614B7A0B1;
 Fri, 25 Oct 2019 19:30:44 -0700 (PDT)
Date: Fri, 25 Oct 2019 19:30:42 -0700 (PDT)
Message-Id: <20191025.193042.2056491201491217086.davem@davemloft.net>
To: nishadkamdar@gmail.com
Subject: Re: [PATCH] net: ethernet: Use the correct style for SPDX License
 Identifier
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191023152634.GA3749@nishad>
References: <20191023152634.GA3749@nishad>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 25 Oct 2019 19:30:44 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_193051_500465_9B536ADD 
X-CRM114-Status: UNSURE (   7.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: gregkh@linuxfoundation.org, ulli.kroll@googlemail.com,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 u.kleine-koenig@pengutronix.de, joe@perches.com, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Nishad Kamdar <nishadkamdar@gmail.com>
Date: Wed, 23 Oct 2019 20:56:38 +0530

> This patch corrects the SPDX License Identifier style in
> header file related to ethernet driver for Cortina Gemini
> devices. For C header files Documentation/process/license-rules.rst
> mandates C-like comments (opposed to C source files where
> C++ style should be used)
> 
> Changes made by using a script provided by Joe Perches here:
> https://lkml.org/lkml/2019/2/7/46.
> 
> Suggested-by: Joe Perches <joe@perches.com>
> Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
