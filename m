Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B13441A9E1
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 03:22:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Q8hO+/jnw9Ne+Ex5gguouSDDcSN3W5mMHljV/ZUZGM=; b=rRWwNvSHzrGTpf
	Q8Mr35aK73ijCtJnTdvafdecBN4dnyAlYHb52snj9s+PSgV4j8VMrGuI1Edz4cHN8QFyceKxPy6Dg
	FxySLVf9kxyOS2NtmT/3VptF7HDmQlrBvnsS3ajN5dQzO6InAb4fqB9rP+s8GkvApcVpdNkyDG/qh
	hUMGpHPZbTupsW7JtOzRhLHb1J6gd99dOtC7raE3mtuCjy7bV685myqTWCblBhQ20XgPtp2gZbXia
	WT8YW9mcaIN7kCNqxhEnR3q76wbcOmk4lWkeDO7DjkaETFtsozeHAy9XPGqaQDk7jyQ4OEEwUzVeA
	03TVDc2j40dIvwJIm5FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPdBw-0003Zj-3S; Sun, 12 May 2019 01:22:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPdBp-0003ZS-Qq
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 01:22:11 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 92AFC2146F;
 Sun, 12 May 2019 01:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557624129;
 bh=5ZGZfSMt7JWFTmyD6eRpM78FKp9+Qug/MsjKRQtK8hE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=C6nDma1n8GEgfCgkDYhNrFm4VESoKik0IiYhT6nrTkYITtJ/RBk82j1qQoTNGWHX3
 qb28uTaxeDZUxLqhEliMRoa/RWthK3dHxJBI0+0xjLItPO3Jg4dv8p7U+KyRyAQaqy
 9ndIO+XjvD2Dk/bbGVIsk6y3fMqYeeXflapdCPK0=
Date: Sun, 12 May 2019 09:21:36 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Yue Haibing <yuehaibing@huawei.com>
Subject: Re: [PATCH v2] soc: imx: Fix build error without CONFIG_SOC_BUS
Message-ID: <20190512012134.GL15856@dragon>
References: <20190424075946.23124-1-yuehaibing@huawei.com>
 <20190424091517.41428-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190424091517.41428-1-yuehaibing@huawei.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_182209_888917_8F37431E 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: aisheng.dong@nxp.com, abel.vesa@nxp.com, Anson.Huang@nxp.com,
 catalin.marinas@arm.com, s.hauer@pengutronix.de, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 leonard.crestez@nxp.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 24, 2019 at 05:15:17PM +0800, Yue Haibing wrote:
> From: YueHaibing <yuehaibing@huawei.com>
> 
> During randconfig builds, I occasionally run into an invalid configuration
> 
> drivers/soc/imx/soc-imx8.o: In function `imx8_soc_init':
> soc-imx8.c:(.init.text+0x144): undefined reference to `soc_device_register'
> 
> while CONFIG_SOC_BUS is not set, the building failed like this. This patch
> selects SOC_BUS to fix it.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Fixes: a7e26f356ca1 ("soc: imx: Add generic i.MX8 SoC driver")
> Suggested-by: Leonard Crestez <leonard.crestez@nxp.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
> v2: select SOC_BUS from CONFIG_ARCH_MXC directly
> ---

So this becomes a 'arm64: imx: ' change.  I updated the subject prefix
and applied the patch.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
