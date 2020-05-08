Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D131C9FD5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 02:51:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tgGebv/9oviiwpZ/i+GixKze5I9XvWVJpAekU8g8hXM=; b=n1i9lh2VDi7z6z
	DzR1ZpKn/SblbqS4GegO9vHNmkN+6XWwc4kvCsCaLK57uwXQNA0JTEZHmLFw5j14sl2WKajGIOVZM
	UtPmO9JdGp0w1h6hJXaoduoqqhH/s5Mcs6h0VCxp/xkpwMZxwtIGWng9++bjG+JHIrWF2VrSpTiIu
	rypn7Y/VtXczfpqCSXC9H5bUT8l+Bnwo6YgfHGasYGtdtzfA6pVEs268YVJTZ81VGn3DyuNwyrKyi
	PdPYwiLrlKQQZoiEnFY+4YOQ3HoJu2qRcX4PBuu2/1CUvjwaRDI2GKxgHgFJllJVAeVkBUia53ozZ
	GSxWeymZ0GADk61MFsuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWrEo-0008VD-Qf; Fri, 08 May 2020 00:51:38 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWrEi-0008Im-0O
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 00:51:33 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id DE2761193777F;
 Thu,  7 May 2020 17:51:24 -0700 (PDT)
Date: Thu, 07 May 2020 17:51:24 -0700 (PDT)
Message-Id: <20200507.175124.699169292892309991.davem@davemloft.net>
To: grygorii.strashko@ti.com
Subject: Re: [PATCH net-next 0/3] net: ethernet: ti: am65x-cpts: follow up
 dt bindings update
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200506181401.28699-1-grygorii.strashko@ti.com>
References: <20200506181401.28699-1-grygorii.strashko@ti.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 07 May 2020 17:51:25 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_175132_054716_BB51BCB1 
X-CRM114-Status: UNSURE (   7.71  )
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org, nsekhar@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Grygorii Strashko <grygorii.strashko@ti.com>
Date: Wed, 6 May 2020 21:13:58 +0300

> This series is follow update for  TI A65x/J721E Common platform time sync (CPTS)
> driver [1] to implement  DT bindings review comments from
> Rob Herring <robh@kernel.org> [2].
>  - "reg" and "compatible" properties are made required for CPTS DT nodes which
>    also required to change K3 CPSW driver to use of_platform_device_create()
>    instead of of_platform_populate() for proper CPTS and MDIO initialization
>  - minor DT bindings format changes
>  - K3 CPTS example added to K3 MCU CPSW bindings
> 
> [1] https://lwn.net/Articles/819313/
> [2] https://lwn.net/ml/linux-kernel/20200505040419.GA8509@bogus/

Series applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
