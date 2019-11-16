Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC12FF5A6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 Nov 2019 21:55:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1HUwAzybiIl08206AtuUDMpIl17rDuTcu7wt0W0O8U0=; b=l1FGO/Puzn++Xb
	oT7qzVz6qYnqfvotWZs7TAkdrkkBfP7fmM3PCuoCtT5/BM5nP+aXvtGZ6vP/1kRtuuttsXlaWoPLK
	D0yoI51ONHI2Qvtjs5ei4td6+6KledfhZHRguppb37PlTwwlrb93dAp+ZAeFRflB1m+82A4KwO09X
	60TTT85BWHrT+yXqqiX1rcCVE94xjj2q8T0JczRK3pTbn9IcliWXDGJQggpUuu5OlXkRNSKJPe8w0
	br4p+84QHrr+HJjbP/3N6wcvrWm+t9YGdaf9kBqHmfFz0kdlIkHk8Y20fGvHXqsFSOuuaLZv7j9mK
	y8xSKZuLl3kqte4+GxlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW561-0008A9-QV; Sat, 16 Nov 2019 20:55:05 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW55q-00089V-JD
 for linux-arm-kernel@lists.infradead.org; Sat, 16 Nov 2019 20:54:55 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 47CE61518AA79;
 Sat, 16 Nov 2019 12:54:53 -0800 (PST)
Date: Sat, 16 Nov 2019 12:54:52 -0800 (PST)
Message-Id: <20191116.125452.1162177656820757922.davem@davemloft.net>
To: hslester96@gmail.com
Subject: Re: [PATCH] net: gemini: add missed free_netdev
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191115062454.7025-1-hslester96@gmail.com>
References: <20191115062454.7025-1-hslester96@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sat, 16 Nov 2019 12:54:53 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_125454_631543_55A0BBA7 
X-CRM114-Status: UNSURE (   5.23  )
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
Cc: netdev@vger.kernel.org, ulli.kroll@googlemail.com, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chuhong Yuan <hslester96@gmail.com>
Date: Fri, 15 Nov 2019 14:24:54 +0800

> This driver forgets to free allocated netdev in remove like
> what is done in probe failure.
> Add the free to fix it.
> 
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>

Applied and queued up for -stable, thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
