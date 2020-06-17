Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D981FC6EA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 09:14:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b8I/4zKQ1cVurr1fCX6h0ArXK4+iJLsv+aP/zKRCMZw=; b=YopSvwOhQ9sFbg
	EqBKPBjNN2rCX9+p2WZcNOfCW0DyKIqhCJY4erv9n/bKRb1auubifbxenQipSRtK/cuE4J4fWq6xx
	pxjUUAbY6vPnAsZZiev1xwh+mqQWoxNmGiNuxOVMXDQAPeXBkxeegXKb96OfRx/om6ot7z8hP4+1S
	MS6tbWc3CcHhTwMzTXiQW9ywD1VFBIWwUtn9kA66iqX1rU6a4rrI4B0JPIijWcdoeo3dIMX2E3Yqo
	vPOCW8tA/Y9EKjuofOzoPAINbPzLNRI+9OJzxUFfGSUMAfTJ4u8C8LemypYwYMPsyUhDeYHHAf+bC
	9DBCFdlqPt5ZaAK618aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlSGo-0007zS-8b; Wed, 17 Jun 2020 07:14:02 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlSGf-0007yq-NP
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 07:13:55 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id EA99B68AEF; Wed, 17 Jun 2020 09:13:45 +0200 (CEST)
Date: Wed, 17 Jun 2020 09:13:45 +0200
From: Christoph Hellwig <hch@lst.de>
To: Vladimir Murzin <vladimir.murzin@arm.com>
Subject: Re: [PATCH] dma-direct: enable mmap for !CONFIG_MMU
Message-ID: <20200617071345.GA12912@lst.de>
References: <20200615070542.43761-1-hch@lst.de>
 <0f7dd526-653f-bbb3-f9bd-b6923ce7ba8c@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0f7dd526-653f-bbb3-f9bd-b6923ce7ba8c@arm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_001353_909002_E2684174 
X-CRM114-Status: UNSURE (   5.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: iommu@lists.linux-foundation.org, dillon min <dillon.minfei@gmail.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 01:02:11PM +0100, Vladimir Murzin wrote:
> LGTM. Should it go stable as well?

I think it will be picked up automatically eventually due to the Fixes
tag.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
