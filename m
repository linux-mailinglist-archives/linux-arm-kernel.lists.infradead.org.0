Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 434A22AED9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 08:40:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kJgLkmqfHGRccqWw7B9mLfV70pqNtvR1ITTXt+8XI50=; b=SCpx8grqJFETpi
	GrO0/yPtuWbkURYrL+kcSHOGL0PYaoEafp58mPfO4TQygPaN/EEvNOcvaZ19ly3RlJ3xTX3tc0mzW
	XPdBpDBPCTmVh4ViRMy1/zjAZQu5xUYBVa3xuXrTT1prSHdQu+j9yIow4HH6hYj3jTO/uLCPm6kGc
	WQ/IwozdzwnO56GwF3z9akorhM6pXclMR5zmbCJ3RNN5+baWKXuo589mEBPvv4q81mHVhldvTE1gK
	MvuQJKNww6Nxgg6joWPkIH058k1wqWe1j+wN6fSrsKvkYKkfDdWlWzZJ6B68VnE6/T38BXfjvDPaR
	pk2Od/1pS1Q3o0FotZYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV9JG-0003mz-QF; Mon, 27 May 2019 06:40:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV9JA-0003mb-9Z; Mon, 27 May 2019 06:40:33 +0000
Received: from localhost (unknown [171.61.91.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1584E2054F;
 Mon, 27 May 2019 06:40:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558939232;
 bh=BHfKzP74YWA7kcBQ/qwfq+fqK1Y003G+3r317SLetK8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FSaudunkYFzawMqo1bzztysqx2NNsUUvjh1TBGur6O9QjaRii8o8ti25T/Q2JX1Is
 mXG+tG1y/ASmhHkD4rE37rzWOfrT9wpOWmNIa2fFc5+x7cij7S+r7CUwJsR/CcQnXq
 jKUNd0SzyCA9X6F5yfStF6RmE+Q/ri5MzjQR+fsI=
Date: Mon, 27 May 2019 12:10:28 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Long Cheng <long.cheng@mediatek.com>
Subject: Re: [PATCH 2/2] serial: 8250-mtk: modify uart DMA rx
Message-ID: <20190527064028.GF15118@vkoul-mobl>
References: <1558596909-14084-1-git-send-email-long.cheng@mediatek.com>
 <1558596909-14084-3-git-send-email-long.cheng@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558596909-14084-3-git-send-email-long.cheng@mediatek.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_234032_352270_90CC2813 
X-CRM114-Status: UNSURE (   6.98  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>,
 Zhenbao Liu <zhenbao.liu@mediatek.com>, linux-serial@vger.kernel.org,
 srv_heupstream@mediatek.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Sean Wang <sean.wang@kernel.org>,
 YT Shen <yt.shen@mediatek.com>, dmaengine@vger.kernel.org,
 Ryder Lee <ryder.lee@mediatek.com>, linux-mediatek@lists.infradead.org,
 Sean Wang <sean.wang@mediatek.com>, Jiri Slaby <jslaby@suse.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23-05-19, 15:35, Long Cheng wrote:
> Modify uart rx and complete for DMA

Reviewed-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
