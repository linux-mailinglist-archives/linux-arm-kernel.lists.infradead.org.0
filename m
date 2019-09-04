Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8FAA7A1F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 06:42:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C9ue4AREeRJN3BFgtkfD1zYGr3VtybwahtnPdmY9IF4=; b=StOM/7QgGvH+gQ
	IO2zHqczme9chgVwuuyro9cAQQqs/GQBuEN2luBPNDzLTDemX+XAKzA7/YW/418WAYHbjFAduUf4w
	GQEyKf9oIyHbu4TweQ4I9eG3E75y5FwSNHbTpMnCRG0a4YZWc4wigq1+dBuaHxNJdf92Qd4PRdjgA
	7E0tl/YWXKoUBf/BWtwcOK8YmMGP7ERvFn0CHZe589nM/tUXAXSqNVtlASH5/VqrHWPKRNmSFkSEF
	qSzoqyhJ0/KSAppRi4fHhjjLkZlAbPhWcKLL681cv+sHpc6BgnFXpR68uL33ctjgiPM1CE6XFD2xZ
	DgRX7l4EitajVtgYHXJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5N81-0002k1-Fc; Wed, 04 Sep 2019 04:42:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5N7o-0002jj-Oj
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 04:42:33 +0000
Received: from localhost (unknown [122.182.201.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A5B8322CED;
 Wed,  4 Sep 2019 04:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567572152;
 bh=m4F5Q8UfN0GHnykOXwLzKXVq4D8Xmr2BgfunVwAekLA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p9N+ebYnuInXthVBf8+7lSgEarA1XZzh3V5v07ou3zmIu2gSHGfzwfR5q8iyaQ90t
 HWtL/vfegjydUewdmaYFzLv8Sa2lxMKKadKoipkNbt1sEdg8o62krINQlB8QMroGOh
 /TbNsE3tj9o2cXlUGA3sqEs0eRapN+C2uVvTqPKI=
Date: Wed, 4 Sep 2019 10:11:24 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH] dmaengine: ti: omap-dma: Remove variable override in
 omap_dma_tx_status()
Message-ID: <20190904044124.GU2672@vkoul-mobl>
References: <20190730132029.2971-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730132029.2971-1-peter.ujfalusi@ti.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_214232_820158_0EBE9C13 
X-CRM114-Status: UNSURE (   7.50  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30-07-19, 16:20, Peter Ujfalusi wrote:
> There is no need to fetch local omap_desc since the desc we have is the
> correct one already when we need to check the channel status.

Applied, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
