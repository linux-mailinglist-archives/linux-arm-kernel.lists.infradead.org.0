Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 437C71368B3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 09:02:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iReek/tXuVplTGyo9ChE3BEMSKMRCler2ZqGybwCGFI=; b=Tnu6+iTeXk8s4U
	9HM3GUAq94nGhbfN5hurTPEzhZOFHwe6mdZU/nubkIhQ39zmNOkKkrzooqq61Rbffn8Rg1F6T8pUZ
	8kz+DiCP5z8aJsFiuoUViQI14YqfMRNSKPx/pMqZG2F5j90TLE+yFev/DEc+lPp7pg/t1zW6A02w6
	2sEwSUht7c3JK5ggWqLKvo4iixA0Gs7XRTSZwR6azrU7Cuajwh5czgNs+xwtHMKnywdDLRC/okwAF
	rPwuZYFfM72IPiLWm1Raa8H4ghy0s+MNR9KGQlx6X4lWOyws+gfVmdgFkJnUo4rrkgdksPkHjcOU4
	qV8S+CS/FUpnMdHJZ3tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ippFM-0001HO-FF; Fri, 10 Jan 2020 08:02:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ippFE-0001H1-Ra
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 08:02:14 +0000
Received: from localhost (unknown [223.226.110.118])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 21B1320678;
 Fri, 10 Jan 2020 08:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578643332;
 bh=EGGrFg82AwWBngiHY+ftg7F0R1HyNOaQp8gvY2ISO+Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=u0L3uzcmQqZZM6x9wv0Y7nfmO3uZwSBsIuGcuVnBO/opMAojueHHAOkK03CZ7Faaj
 Iov7lqHgklf9rtbq3N+HLmG94IvqUgy/rF/MQH6WWFiPKoWfD+I6nEKKtrfEl2Rqo1
 iEmuf/kkc7kUlQpjJOMY7r1rkSL3mBwBxpEGxywA=
Date: Fri, 10 Jan 2020 13:31:56 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH 2/2] dmaengine: uniphier-xdmac: Add UniPhier external DMA
 controller driver
Message-ID: <20200110080156.GG2818@vkoul-mobl>
References: <1576630620-1977-3-git-send-email-hayashi.kunihiko@socionext.com>
 <20191227063411.GG3006@vkoul-mobl>
 <20200109211219.57FC.4A936039@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109211219.57FC.4A936039@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_000212_930064_783A1923 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09-01-20, 21:12, Kunihiko Hayashi wrote:
> Hi Vinod,
> 
> Thank you for your comment.
> 
> On Fri, 27 Dec 2019 12:04:11 +0530 <vkoul@kernel.org> wrote:
> 
> > On 18-12-19, 09:57, Kunihiko Hayashi wrote:
> > > This adds external DMA controller driver implemented in Socionext
> > > UniPhier SoCs. This driver supports DMA_MEMCPY and DMA_SLAVE modes.
> > > 
> > > Since this driver does not support the the way to transfer size
> > > unaligned to burst width, 'src_maxburst' or 'dst_maxburst' of
> > 
> > You mean driver does not support any unaligned bursts?
> 
> Yes. If transfer size is unaligned to burst size, the final transfer
> will be overrun.

That is fine, you shoudl return error for bursts which are not aligned
when preparing the descriptors

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
