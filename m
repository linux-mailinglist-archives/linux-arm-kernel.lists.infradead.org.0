Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75FC1D7690
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 14:31:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rRWfKcdxbBbU1oExUl/kK++NcAFvAQlweu7K4OE5044=; b=MkiVVMosN//ws8
	v81a/i2fmg1cRXgMirGuPplw73UYoBv8vCcgrggY/ShiVRXCzHwQFs5Z8SJmGPAmznlCt8PsxeS6e
	WnXMj/5QjSOTdqBGTpx4pWb0KWGzMZpPXtPsIGxebV+AYIhiyNSikOt5wsX0ufUuqhp3VhjBhIxxX
	C4mLIVEN2QRl74YkiL7kNIavAqJ8ojOSmAMz28R5WlQFRffwS6GTFU0HFmjrw5D5iS3KNUKA66A4K
	4AbOnYpPQ1AdqNATP31JgXxAK0+qGqGrISWlYx/mjWlIUIfz/YK7lHXBQmp0aHkCOeB3MIq/TostS
	JQq9g9VmF5yfUVo1VzTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKLyt-0003Rl-Bc; Tue, 15 Oct 2019 12:31:15 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKLyg-0003Q7-4P; Tue, 15 Oct 2019 12:31:03 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 27D5E2DF; Tue, 15 Oct 2019 14:30:58 +0200 (CEST)
Date: Tue, 15 Oct 2019 14:30:53 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Yong Wu <yong.wu@mediatek.com>
Subject: Re: [PATCH] memory: mtk-smi: Add PM suspend and resume ops
Message-ID: <20191015123053.GA17570@8bytes.org>
References: <1570622373-16413-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570622373-16413-1-git-send-email-yong.wu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_053102_328220_C35D4268 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: youlin.pei@mediatek.com, anan.sun@mediatek.com,
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, ming-fan.chen@mediatek.com,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 09, 2019 at 07:59:33PM +0800, Yong Wu wrote:
> In the commit 4f0a1a1ae351 ("memory: mtk-smi: Invoke pm runtime_callback
> to enable clocks"), we use pm_runtime callback to enable/disable the smi
> larb clocks. It will cause the larb's clock may not be disabled when
> suspend. That is because device_prepare will call pm_runtime_get_noresume
> which will keep the larb's PM runtime status still is active when suspend,
> then it won't enter our pm_runtime suspend callback to disable the
> corresponding clocks.
> 
> This patch adds suspend pm_ops to force disable the clocks, Use "LATE" to
> make sure it disable the larb's clocks after the multimedia devices.
> 
> Fixes: 4f0a1a1ae351 ("memory: mtk-smi: Invoke pm runtime_callback to enable clocks")
> Signed-off-by: Anan Sun <anan.sun@mediatek.com>
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
> base on v5.4-rc1.
> ---
>  drivers/memory/mtk-smi.c | 4 ++++
>  1 file changed, 4 insertions(+)

Applied, thanks.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
