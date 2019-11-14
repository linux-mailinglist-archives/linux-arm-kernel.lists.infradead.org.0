Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E9FFBEA1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 05:35:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BNMHHIl5r4GbcZSZo9hijDfqnvWJ3XbHYV6TS0Gcc+k=; b=cDjGbpuP5+eBvr
	X5tQl6tcdZ2Uf3UFl3dZY4ix0Md662jG3qGgbSZzm+tpX/+T5hicYlpfhNv+nv5Y1AnecUAzS7ddC
	8G85KcaEj6aFS5a3sirVXLCtXjRuteGfyY+fGP748smkziJPux0uRa5TU4OrVkPGxd2Sobqr0+FNo
	8+Vzz1U859aLSRNHOJT63uxCPtRImG5QRQeSiEXHbZAis/s9hzgqdosg874QEJa7N7ZlCWuyLUqVc
	3LjicxfmFgpTTBM7oMQVvU+HPwGcFz8YwQtCE9jnV6IDxrk7ljV74uv1seaTDH67B+R0CBoah7qJv
	CYYCxhx1avIabjBaiWhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV6rI-0001pX-G4; Thu, 14 Nov 2019 04:35:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV6rA-0001p5-Ub
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 04:35:46 +0000
Received: from localhost (unknown [223.226.110.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E3830206D7;
 Thu, 14 Nov 2019 04:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573706144;
 bh=XXtgTZ4OEPc1u9sOqHO1E+/XMQxUS++8/6bKljEvio4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UHYQbgIfWGnmtFOTLHka3zN9n1yqzgXJqyG60zxfjYCWHLmapzA9f9sbRg+Zry4p5
 3fPQ6cn28wHKXeH5QX0pG9Kd+JQhhmCgZUVYfLAVx9jmV9fzpIf/kZN1vT6E4LEa/A
 flvoaPShl0QTLwlJnVsBHYzwhYWrcvQ4gGN0yKy8=
Date: Thu, 14 Nov 2019 10:05:40 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH 0/9] spi: Use dma_request_chan() directly for channel
 request
Message-ID: <20191114043540.GH952516@vkoul-mobl>
References: <20191113094256.1108-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191113094256.1108-1-peter.ujfalusi@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_203545_004754_5FD118A4 
X-CRM114-Status: UNSURE (   7.42  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linus.walleij@linaro.org, kgene@kernel.org, alexandre.belloni@bootlin.com,
 linux-arm-msm@vger.kernel.org, radu_nicolae.pirea@upb.ro,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org, krzk@kernel.org,
 bjorn.andersson@linaro.org, agross@kernel.org, ldewangan@nvidia.com,
 broonie@kernel.org, andi@etezian.org, linux-tegra@vger.kernel.org,
 thierry.reding@gmail.com, jonathanh@nvidia.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13-11-19, 11:42, Peter Ujfalusi wrote:
> Hi,
> 
> I'm going through the tree to remove dma_request_slave_channel_reason() as it
> is just:
> #define dma_request_slave_channel_reason(dev, name) \
> 	dma_request_chan(dev, name)

Reviewed-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
