Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B48CA70EA0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 03:24:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7xXWl/Tdb1s/Oko0FBnnqwQG/5mlOgWWw48KF1PimKA=; b=faVh60tU6U+Vey
	uVU/dYCbgDrBAnOL5sV9z8rMBw56/b1O/F8wkh3IF/XFuDOkhn4L93Y0SAqXOvdQwcgbZrQrXnBEC
	hFG0K7v9QVSoYRmJjH8FzP7aU0v4xLosZiSUuj6Q7hOMT35B41YRA1Njby4zdYuUBoQR40ILwQqfV
	oLTc+WlIZGtEvz2EaEwV6rr6sxZRwj8GM/12J3Z332/X/rjuVDkgjIwYxBiWkK8X3Mu5Jo9UkP7L/
	Q4q442FJ271ynQhEmv7GRMe36SrvDttxqlE6XvEFGtgM7fs22gySrzCY45lA1xpUeDiZZAv/j/jJe
	yqz90tPCBXwDi9zcixlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpjXQ-0005ER-CW; Tue, 23 Jul 2019 01:24:20 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpjWu-0005Dd-I5
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 01:23:49 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 332D315305A2A;
 Mon, 22 Jul 2019 18:23:46 -0700 (PDT)
Date: Mon, 22 Jul 2019 18:23:45 -0700 (PDT)
Message-Id: <20190722.182345.1929981445585560230.davem@davemloft.net>
To: Jose.Abreu@synopsys.com
Subject: Re: [PATCH net 0/2] net: stmmac: Two fixes
From: David Miller <davem@davemloft.net>
In-Reply-To: <cover.1563784666.git.joabreu@synopsys.com>
References: <cover.1563784666.git.joabreu@synopsys.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 22 Jul 2019 18:23:46 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_182348_599346_677389AC 
X-CRM114-Status: UNSURE (   5.09  )
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
Cc: Joao.Pinto@synopsys.com, alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jose Abreu <Jose.Abreu@synopsys.com>
Date: Mon, 22 Jul 2019 10:39:29 +0200

> Two fixes targeting -net.

Series applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
