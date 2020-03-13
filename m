Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BE1184FDF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 21:04:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mqIuCEEsrkZwkvQD/yPG0409LMB6tN0rIcoHK1nTdSk=; b=FjwoU56bRZAsAv
	u2gCu5bwEB7qrcYNC3zL11834+7RDC0ucKSh9j8hedbV3B0f7Dq4Osts1dFdjqS31f1GU7PpFt3aV
	5dgUpAvlU1bWJXiLdKZpG9LXnY71cydsdtCroScJeLHwJ0K0hTZXU/oaXKUuID5sV32zHWNoI2sKf
	obK/EC3q+9xDCGPQh2G10w0VefQAOcRQxo5AZUN8FGO2St1L204+tohj7GDXuGMm58Hk/e4FBOfeq
	V92WxbgvFSb7zBYaUjbKx8PF0K+Mb3BXGLUnHkglNXCQix6yaaWi048D7qvi+PS8qYbBUJvXsdgda
	evnuREj2iIGyWZm3iw0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqY6-0003Eh-5I; Fri, 13 Mar 2020 20:04:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqXy-0003EJ-5u
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 20:04:44 +0000
Received: from kicinski-fedora-PC1C0HJN (unknown [163.114.132.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 43E55206E9;
 Fri, 13 Mar 2020 20:04:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584129880;
 bh=gRupmyo00Wss0GIjIjppM9vlDUc8QcO3JGaB5bZDcw0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=wySOpkgqxbQJD5g6KiD7Zg9QaqgMlV9nM//LIsKidQZPlSi35BhoWmnPJoYTDf+w2
 tQfgbmd7Vtz0ji8O10i8+9uumn1r44l5hDq8yHiPBYyPJozrmY+Wo9KkTlD+ZzOH2r
 6zG3luklOjIkQ3hsJwDIgKN+uluqbVvNazS5Mjog=
Date: Fri, 13 Mar 2020 13:04:38 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Grygorii Strashko <grygorii.strashko@ti.com>
Subject: Re: [PATCH net-next v3 05/10] net: ethernet: ti: introduce
 am65x/j721e gigabit eth subsystem driver
Message-ID: <20200313130438.73d9a56c@kicinski-fedora-PC1C0HJN>
In-Reply-To: <20200313175511.2155-6-grygorii.strashko@ti.com>
References: <20200313175511.2155-1-grygorii.strashko@ti.com>
 <20200313175511.2155-6-grygorii.strashko@ti.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_130442_242617_B5CF4900 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 netdev <netdev@vger.kernel.org>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Murali Karicheri <m-karicheri2@ti.com>, "David
 S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 13 Mar 2020 19:55:06 +0200 Grygorii Strashko wrote:
> +static void am65_cpsw_nuss_free_tx_chns(void *data)
> +{
> +	struct am65_cpsw_common *common = data;
> +	int i;
> +
> +	for (i = 0; i < common->tx_ch_num; i++) {
> +		struct am65_cpsw_tx_chn	*tx_chn = &common->tx_chns[i];

nit: stray tab?

> +
> +		if (!IS_ERR_OR_NULL(tx_chn->tx_chn))
> +			k3_udma_glue_release_tx_chn(tx_chn->tx_chn);
> +
> +		if (!IS_ERR_OR_NULL(tx_chn->desc_pool))
> +			k3_udma_desc_pool_destroy(tx_chn->desc_pool);
> +
> +		memset(tx_chn, 0, sizeof(*tx_chn));
> +	};

nit: you also got some stray semicolons in a few places

Thanks for the changes, looks better. Hopefully someone who knows 
the HW better can have a look as well.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
