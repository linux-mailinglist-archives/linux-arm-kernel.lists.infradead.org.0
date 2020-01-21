Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4823A143951
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 10:18:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qHC5oZkAvnu1H0KjK6qOtHdEJIWfKS+PBu7+qr28ZlM=; b=X48CFG+y4QNhvq
	vhl54Sz1WkQap6qRFihrqiQFr5TLTjf//ra+7dHxXMPsjXaU4O3x3yhrjob5+QdNdBVRsEZh1LJ7s
	N3PW2G+7wwfuHvE+MhQ3VjM/Jb/B0YdmwOFQKlVP+emLBbTjoxY+HQbd6uHSowDIExMl1l9mnYbEh
	R92wzXYHWQvrdmwpdRKpojFNWbpzs83YUyKK4ZNQRZjAvPrK7gg2Zk9D0XMZJE92pknadBC/yZNQr
	Y05QTHrIakBMZkTEguL7Suqm1zQCcT07RemEmYqGHNoQjuWXHVu4S65kLz1P+ZUBfabEX/kbLeCqy
	3fd5nl3gksUbvDLZqU6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itpgB-0001t3-1a; Tue, 21 Jan 2020 09:18:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itpfy-0001qs-Ol
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 09:18:27 +0000
Received: from localhost (unknown [171.76.119.14])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8E00B20882;
 Tue, 21 Jan 2020 09:18:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579598302;
 bh=Av5gdOfl5MZxDWJWCUwS+Ht2tJcEg7680G4U01+PMlE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pkrxOBJoua6D/Xb7I1ADXosDl7CioTk52LJmXCSik9wStplRlsxgFB2IK9yheHtcS
 QFCcLRKt9F3P2skQUvm9W7eJT0ORMbxBcrpj4choPIN3N1lDJINbBQZfHZPgFJe6a4
 uYNMU/UYRs1oZAdCRCoya/RWyKakjZaH6hLa01fE=
Date: Tue, 21 Jan 2020 14:48:18 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Matthias Fend <matthias.fend@wolfvision.net>
Subject: Re: [PATCH] dmaengine: zynqmp_dma: fix burst length configuration
Message-ID: <20200121091818.GG2841@vkoul-mobl>
References: <20200110082607.25353-1-matthias.fend@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110082607.25353-1-matthias.fend@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_011822_825152_9BF2F053 
X-CRM114-Status: UNSURE (   6.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dmaengine@vger.kernel.org, michal.simek@xilinx.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10-01-20, 09:26, Matthias Fend wrote:
> Since the dma engine expects the burst length register content as
> power of 2 value, the burst length needs to be converted first.
> Additionally add a burst length range check to avoid corrupting unrelated
> register bits.

Applied, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
