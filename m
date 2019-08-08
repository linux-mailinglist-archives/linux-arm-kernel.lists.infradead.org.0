Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC2E86315
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 15:26:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NpPMJbgZHMrNdZZI43X23SIghDC1GLb8Cv5TwfPorZg=; b=Tlyxk5zP7jf4l+
	wkcQJl+Ui0c+cT0M0+WRYVkokqjYiRQfwyifvP9oYQsXjiKpLlsxur8dp5hYkMwHKUkZzjqY3Ban4
	JYbFi9YMR2b645T365CWf7nrXdHu7PLiiE4p6gkoRnFc/YJwH+Wpdpr9p00ghsRUMh4R3UJVFIr0f
	7QURejcIUKbRWchCdVdWEQTqLO0n1Qa9RPp84hCBMGxiB+VTdRdzqLizt1zk4nN9vK3Zqff94VW5j
	qla6RxSp7pyjW14HcVXaui4nhKwd3CsmsPmS7DOjctJD7edhy1h1tWAMdsSDlESXTFyOnK2orRSe9
	lExY8TyIbzOc3L2g2zoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hviQv-0008Qb-KO; Thu, 08 Aug 2019 13:26:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hviQl-0008QJ-7d
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 13:26:12 +0000
Received: from localhost (unknown [122.178.245.201])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B37412171F;
 Thu,  8 Aug 2019 13:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565270770;
 bh=xOthRltc9QPDcvSfY6/4aGUZsvl14aXcUqTn5d6Zb0c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wdhiSMgEUzklpKCVFzekiTPw8B+at3lhPkMlMq4SDMz7bagefPWO/3Q+YcDzoHCPg
 vY90keJnw2raAF5MHo3hox17C8WLQGi9gvALi+W9RX1r1qYdChpA4QJ93ZTn9d6Kam
 koHNlTvuUSrcY+0LQUue/knLXIFACQjNVu0A19FU=
Date: Thu, 8 Aug 2019 18:54:56 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Jia-Ju Bai <baijiaju1990@gmail.com>
Subject: Re: [PATCH] dma: stm32-mdma: Fix a possible null-pointer dereference
 in stm32_mdma_irq_handler()
Message-ID: <20190808132456.GA12733@vkoul-mobl.Dlink>
References: <20190729020849.17971-1-baijiaju1990@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729020849.17971-1-baijiaju1990@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_062611_296339_199DF88E 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29-07-19, 10:08, Jia-Ju Bai wrote:
> In stm32_mdma_irq_handler(), chan is checked on line 1368.
> When chan is NULL, it is still used on line 1369:
>     dev_err(chan2dev(chan), "MDMA channel not initialized\n");
> 
> Thus, a possible null-pointer dereference may occur.
> 
> To fix this bug, "dev_dbg(mdma2dev(dmadev), ...)" is used instead.

Applied after changing subsystem name in patch title to dmaengine: ...,
Also while fixing it helps to add Fixes tag, have added

Thanks
-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
