Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE2F27352
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 02:30:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q1DhOqOTV1i1xvS/nZy3EITEW9CS0oXbq0Rof8o9u7I=; b=RTf/81NwNCEaC2
	OgKCQ8I/znSAWWvOSJmHqBdaLp+ljc+QIEQm6ICc1tnR922HSKg5Nl/z2SAT771vEOdd+FlNcGqNX
	QyX1oq+shrG2U/p0rNcTU59rbXcDVk6VTjoL1wQq7ueRnCnswLLHmaAqirISel2fZ3thnVKZvLY6N
	Buf+y4IlS3zy9THpsX+lxTCeWhSN1InGlADcNUKD516ydlcTO0OBfcbj57lPpI8A4lc2zqizjpaAM
	Yj4t2dsLsbVwDq8CSQTzFZaYcpOZPUUqGl/odM8IeF7FJcinYvMYrEEKwyjdRaSYkla6j8RHfgkmn
	hEVE0JeBDc/tHm5BAYkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTbcz-0000uF-38; Thu, 23 May 2019 00:30:37 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTbce-0000c5-0C
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 00:30:21 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d8])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 328F615042888;
 Wed, 22 May 2019 17:30:15 -0700 (PDT)
Date: Wed, 22 May 2019 17:30:14 -0700 (PDT)
Message-Id: <20190522.173014.1665076296422323734.davem@davemloft.net>
To: Jisheng.Zhang@synaptics.com
Subject: Re: [PATCH] net: stmmac: move reset gpio parse & request to
 stmmac_mdio_register
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190522175752.0cdfe19d@xhacker.debian>
References: <20190522175752.0cdfe19d@xhacker.debian>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 22 May 2019 17:30:15 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_173016_421732_A769F0EF 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, peppe.cavallaro@st.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Date: Wed, 22 May 2019 10:06:56 +0000

> Move the reset gpio dt parse and request to stmmac_mdio_register(),
> thus makes the mdio code straightforward.
> 
> This patch also replace stack var mdio_bus_data with data to simplify
> the code.
> 
> Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>

Please rebase this on net-next when I next merge net into net-next as
this is a cleanup and therefore not appropriate for net.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
