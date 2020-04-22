Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C79771B3835
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 08:55:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R9iDGk17P+GIl2ZRTbfNVxudXzBeNt72bMD/npMIhRs=; b=LTsUax+f6mdqaM
	3BtR3N5C89Z3mk4t2mHY9kgXLXuVmRzvT1HVaWHGBeLD+a4szajJRltU3rh1lm6qCbxaZ3PFZs5zN
	byzSvWWWykke2B15jDqlhinORfpdkBZy8w/GFF9XQwBz40viKXlVCrkmbasom2bQhSCFrXm/+6xa2
	OwNsm/5uLMkGuWHjR5B/4UgrwoqEONeL1q53fyjlDSLMSEpa5j4tjW3PdqWFB449INdfmcO6y8w9i
	mrOnfUGPlCNgxeW/VGpym0J1y7/QXVje32sza/NtaPXco5gbCWzM0V9X2CcmggokY1xxjRSbO3xqf
	cjhqNuYSRhyFaW3eBd/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR9IT-0007dr-3H; Wed, 22 Apr 2020 06:55:49 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jR9IL-0007dV-6c; Wed, 22 Apr 2020 06:55:41 +0000
Date: Tue, 21 Apr 2020 23:55:41 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Alim Akhtar <alim.akhtar@samsung.com>
Subject: Re: [PATCH v6 05/10] scsi: ufs: add quirk to fix abnormal ocs fatal
 error
Message-ID: <20200422065541.GL20318@infradead.org>
References: <20200417175944.47189-1-alim.akhtar@samsung.com>
 <CGME20200417181016epcas5p2ee7ac86d743ceee9076690dc5b1e2f08@epcas5p2.samsung.com>
 <20200417175944.47189-6-alim.akhtar@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200417175944.47189-6-alim.akhtar@samsung.com>
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
Cc: robh@kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, krzk@kernel.org,
 kwmad.kim@samsung.com, avri.altman@wdc.com, cang@codeaurora.org,
 stanley.chu@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 17, 2020 at 11:29:39PM +0530, Alim Akhtar wrote:
> From: Kiwoong Kim <kwmad.kim@samsung.com>
> 
> Some architectures determines if fatal error for OCS
> occurrs to check status in response upiu. This patch
> is to prevent from reporting command results with that.

What does "Some architectures" mean?  All this seems to be about
error propagation to the SCSI midlyaer, so this sounds rather
strange.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
