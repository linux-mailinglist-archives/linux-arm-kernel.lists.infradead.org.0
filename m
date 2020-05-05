Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E87DD1C61EF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 22:25:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xpVoXJLDMO9Tie5s7KInUy5WuwCXn/RiCr7KMg66Mlg=; b=Hc2YFKdF72h2qx
	yCiKz0BKr5JDZSbJ/IXyKIHtYQJhMKOWW/XJUlGsdWrZS3aj4xaiVqDT7XxXKiyF4NdHRiETQGf3n
	f1GIG3LEuGqAk5+7dL7K7jWpESnoRfiStXGTL1BU4QiDL220zhdNiM3rAckIGfES+ubmEQQ8KhZvp
	lLGsfsz9eJJYu37Z/4SsxSatKDHNyLMJGipRPBsvyXf/fVubrgfoqtt1SE/Q1SxYSJBK8+I6fGcuj
	OlYCOQBj3iPL76RnfJiQxoXzyRryjs2pMcIJTqQTZBeg68oNjFT9fzItToUs0Aot+Tmhu/sZX+nMc
	jg42ReSCoR6Vu3TZV6Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW47x-0002x9-8R; Tue, 05 May 2020 20:25:17 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW47h-0002Ov-9l
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 20:25:02 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id C90331280C7D8;
 Tue,  5 May 2020 13:24:59 -0700 (PDT)
Date: Tue, 05 May 2020 13:24:59 -0700 (PDT)
Message-Id: <20200505.132459.1059623707678036566.davem@davemloft.net>
To: grygorii.strashko@ti.com
Subject: Re: [PATCH net-next] net: ethernet: ti: am65-cpts: fix build
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200505162123.13366-1-grygorii.strashko@ti.com>
References: <20200505162123.13366-1-grygorii.strashko@ti.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 05 May 2020 13:25:00 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_132501_340425_D10D4D9A 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 anders.roxell@linaro.org, linux-kernel@vger.kernel.org, nsekhar@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Grygorii Strashko <grygorii.strashko@ti.com>
Date: Tue, 5 May 2020 19:21:23 +0300

> It's possible to have build configuration which will force PTP_1588_CLOCK=m
> and so TI_K3_AM65_CPTS=m while still have TI_K3_AM65_CPSW_NUSS=y. This will
> cause build failures:
> 
> aarch64-linux-gnu-ld: ../drivers/net/ethernet/ti/am65-cpsw-nuss.o: in function `am65_cpsw_init_cpts':
> ../drivers/net/ethernet/ti/am65-cpsw-nuss.c:1685: undefined reference to `am65_cpts_create'
> aarch64-linux-gnu-ld: ../drivers/net/ethernet/ti/am65-cpsw-nuss.c:1685:(.text+0x2e20):
> relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `am65_cpts_create'
> 
> Fix it by adding dependencies from CPTS in TI_K3_AM65_CPSW_NUSS as below:
>    config TI_K3_AM65_CPSW_NUSS
>    ...
>      depends on TI_K3_AM65_CPTS || !TI_K3_AM65_CPTS
> 
> Note. This will create below dependencies and for NFS boot + CPTS all of them
> have to be built-in.
>   PTP_1588_CLOCK -> TI_K3_AM65_CPTS -> TI_K3_AM65_CPSW_NUSS
> 
> While here, clean up TI_K3_AM65_CPTS definition.
> 
> Fixes: b1f66a5bee07 ("net: ethernet: ti: am65-cpsw-nuss: enable packet timestamping support")
> Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
> Reported-by: Anders Roxell <anders.roxell@linaro.org>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
