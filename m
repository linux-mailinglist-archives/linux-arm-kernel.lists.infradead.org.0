Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D631112144
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 03:09:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pcISEDmIFcFYRRteeGPn8ugxNlPF9pQKzCiWYaKt7hA=; b=VP1DNQY+5i0Gx2
	A04jPFIM5/MdZFOgjxGQbPTu2DlYth7gmrs0pqmld2o1mftLm283/jAkGTNXh2dBDOk5l7M1ivXKU
	QYymAkKwuIMHv90ng0liE6+gmC3ygVm8Zd9ezu3ts9SCse+IvRZjB0zF2Jj8OWMoCHbrXlLLeI2Qs
	QQa5oCsZ4EISwJtzfERaL7KjOips0fdb0gKbj/kX+NloIussA3wU2yyiG79RIAxRnBenLmD+7PO9R
	FDUzzCy9rmhpYcw4AaQpeVK6d8MB03/9wnZW3pmJ1M5DOxBFvWLfImO9mDXgUC2dRibHIhsQ+jB4j
	f6bJunwOGmHvgWKIOAnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icK6U-0001Tl-DU; Wed, 04 Dec 2019 02:09:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icK6M-0001TJ-Jr
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 02:09:17 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A41BA2073F;
 Wed,  4 Dec 2019 02:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575425354;
 bh=MwqYo4RRZ92pnn9/A5na8fKFS1ws/KWULDNPnQH3x+k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=po6u/JHi9zBASwwE+8YDyFIbg/rFwu1WJZL2a1tTYogmpszh0d2ckfXBLNQQhsYrN
 VjMiSVlIKoOl24akSNljaTUoF6r/+WZB5LtgDhE7Jyt/A/p9TZezbqOq5KvTTZwAZu
 dYSGHZzqnKCic4QWpcjO4z8NH2p/Yk5gTGeGA+Po=
Date: Wed, 4 Dec 2019 10:09:07 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Stefan Roese <sr@denx.de>
Subject: Re: [PATCH v2] ARM: dts: imx6ul: imx6ul-14x14-evk.dtsi: Fix SPI NOR
 probing
Message-ID: <20191204020905.GL9767@dragon>
References: <20191105130456.9459-1-sr@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191105130456.9459-1-sr@denx.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_180914_668498_CE221B09 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Fabio Estevam <festevam@gmail.com>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 02:04:56PM +0100, Stefan Roese wrote:
> Without this "jedec,spi-nor" compatible property, probing of the SPI NOR
> does not work on the NXP i.MX6ULL EVK. Fix this by adding this
> compatible property to the DT.
> 
> Fixes: 7d77b8505aa9 ("ARM: dts: imx6ull: fix the imx6ull-14x14-evk configuration")
> Signed-off-by: Stefan Roese <sr@denx.de>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>
> Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> Cc: Shawn Guo <shawnguo@kernel.org>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
