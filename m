Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 557B433AE6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 00:13:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qgDSfnyKk+BLiZouxDSF9E26InqOh7XdcSWQvHtedNU=; b=mIho/J2ie8ya66
	gqgXxWkLoVgB3mfsa1o8c5yaWeF3ijd0+poWPg7f/i+hIdca5S56/zg08XnWpJuRKS+qysqrsg58R
	MtDs0ydlcM5GrymqsIWyaVczjUrlGmQUrm9Cdb2O2393WrnSXk87/xEB6F9hgtR1HK+T1Ft7xiolR
	Cwthm69OwQji39BcF9nQz1Jz26GT/iZhXhDWZOlbBXz6P83xDhzYZN34849luHi34bxbc0+a/Qyp9
	SQ35PVV+UcUpzIWxv1TsR994nXw8gmzw+mRgn8KxYeaoKlxny1vXwknAFPZi1+uEd3dctIy4sr939
	O+23DmCbshxo5IBfRAmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXvCz-0005lJ-RK; Mon, 03 Jun 2019 22:13:37 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXvCs-0005l0-Ls
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 22:13:31 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id D358F136E16B0;
 Mon,  3 Jun 2019 15:13:29 -0700 (PDT)
Date: Mon, 03 Jun 2019 15:13:29 -0700 (PDT)
Message-Id: <20190603.151329.1880364693299986138.davem@davemloft.net>
To: grygorii.strashko@ti.com
Subject: Re: [PATCH net-next 04/10] net: ethernet: ti: cpts: add support
 for rftclk selection
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190601104534.25790-5-grygorii.strashko@ti.com>
References: <20190601104534.25790-1-grygorii.strashko@ti.com>
 <20190601104534.25790-5-grygorii.strashko@ti.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 03 Jun 2019 15:13:30 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_151330_712724_14DE0A8E 
X-CRM114-Status: UNSURE (   5.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, w-kwok2@ti.com, netdev@vger.kernel.org,
 richardcochran@gmail.com, nsekhar@ti.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, m-karicheri2@ti.com, ssantosh@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Grygorii Strashko <grygorii.strashko@ti.com>
Date: Sat, 1 Jun 2019 13:45:28 +0300

> +static int cpts_of_mux_clk_setup(struct cpts *cpts, struct device_node *node)
> +{
> +	unsigned int num_parents;
> +	const char **parent_names;
> +	struct device_node *refclk_np;
> +	struct clk_hw *clk_hw;
> +	u32 *mux_table;
> +	int ret = -EINVAL;

Reverse christmas tree please.

Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
