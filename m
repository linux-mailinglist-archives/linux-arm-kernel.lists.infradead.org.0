Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75CE312C77
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 13:34:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k344qgyPeKBO8vZ/VoOHl7qKtc+EdrzyZ4iq+Fd4YJY=; b=SCedEorlru1xtz
	5rREeSdo98Xnz/nucNK403A6cJ7xZ+BHcaTfC2OLB9MgPjxlCy/5GxQjn3004jlR46UAZ0FEFNfj3
	3m+j8tR5H8n8XWUKINXCrqu+gqlVDSbPLfQ4oGJ3ID9EdlWCpRAqbTXahIGmZSzvUWB0BxkMuzlFM
	NWcsxtpy1ewxBVIOuzU5GYPUUjqMS+8jBt3/C5hlF6x8LgZPZ4jiPBsd0CEu0GylpXyHVrwuPw62l
	FsY79bSArWTcWI5Jmo7r2KrUtq8QUUzjMbxKUo6jzwqI8/ANHIDwJApHweh+nLCGkO5luh7IGUMoK
	yq8js+i8PqwNCdtj0Nhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMWS5-0003pI-RO; Fri, 03 May 2019 11:34:05 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMWRy-0003oR-Co
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 11:33:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5B750374;
 Fri,  3 May 2019 04:33:57 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 C3E1B3F220; Fri,  3 May 2019 04:33:55 -0700 (PDT)
Date: Fri, 3 May 2019 12:33:53 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 01/25] arm64/iommu: handle non-remapped addresses in
 ->mmap and ->get_sgtable
Message-ID: <20190503113352.GA55449@arrakis.emea.arm.com>
References: <20190430105214.24628-1-hch@lst.de>
 <20190430105214.24628-2-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430105214.24628-2-hch@lst.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_043358_439436_769310F0 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Tom Lendacky <thomas.lendacky@amd.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 06:51:50AM -0400, Christoph Hellwig wrote:
> DMA allocations that can't sleep may return non-remapped addresses, but
> we do not properly handle them in the mmap and get_sgtable methods.
> Resolve non-vmalloc addresses using virt_to_page to handle this corner
> case.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Robin Murphy <robin.murphy@arm.com>

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
