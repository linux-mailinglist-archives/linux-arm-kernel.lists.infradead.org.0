Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E34471FA2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 20:51:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lph7hMfFbWIx05vGQtWt8cguwdNhK4G118murGQ81IQ=; b=sRkkUGobdwWU7I
	dqcfGpMnkYDEWhdjrYXTOZjDg0xoEUubJGXVYT1JFDSYw16TP6UTiCug7InoaiznTZTeefAo3XYDR
	B0qbngv3K3+VbVFXlEYg5kBS2Em0btwiGWFz1p33WVQBXsG/vwKBcDxzrJRSedOFe/+DYRjQxpLsL
	XvOZtBdgcQNHJGmJztQGDuNo/ax++Y3DvMn2m5non7cyWuffrl8KhtV3aDAEdsZGxpDukFd+48hIK
	yZpx34NkBWvmduWOwbZwA7oUo/ai320aZZAeQU1g38VcgiiqietSW5AaPlIDn1wEwwHdAKNuA0wNQ
	DbSuEvmdcaa6sOiXfEDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpzsr-0002hr-A0; Tue, 23 Jul 2019 18:51:33 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpzsX-0002hY-P3
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 18:51:14 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 8B47C153B91FF;
 Tue, 23 Jul 2019 11:51:12 -0700 (PDT)
Date: Tue, 23 Jul 2019 11:51:12 -0700 (PDT)
Message-Id: <20190723.115112.1824255524103179323.davem@davemloft.net>
To: jonathanh@nvidia.com
Subject: Re: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
From: David Miller <davem@davemloft.net>
In-Reply-To: <8756d681-e167-fe4a-c6f0-47ae2dcbb100@nvidia.com>
References: <BYAPR12MB32692AF2BA127C5DA5B74804D3C70@BYAPR12MB3269.namprd12.prod.outlook.com>
 <6c769226-bdd9-6fe0-b96b-5a0d800fed24@arm.com>
 <8756d681-e167-fe4a-c6f0-47ae2dcbb100@nvidia.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 23 Jul 2019 11:51:13 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_115113_814968_2A00D800 
X-CRM114-Status: UNSURE (   5.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jose.Abreu@synopsys.com, Joao.Pinto@synopsys.com, alexandre.torgue@st.com,
 maxime.ripard@bootlin.com, netdev@vger.kernel.org, ilias.apalodimas@linaro.org,
 linux-kernel@vger.kernel.org, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, mcoquelin.stm32@gmail.com,
 linux-tegra@vger.kernel.org, peppe.cavallaro@st.com, robin.murphy@arm.com,
 linux-stm32@st-md-mailman.stormreply.com, lists@bofh.nu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jon Hunter <jonathanh@nvidia.com>
Date: Tue, 23 Jul 2019 13:09:00 +0100

> Setting "iommu.passthrough=1" works for me. However, I am not sure where
> to go from here, so any ideas you have would be great.

Then definitely we are accessing outside of a valid IOMMU mapping due
to the page pool support changes.

Such a problem should be spotted with swiommu enabled with debugging.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
