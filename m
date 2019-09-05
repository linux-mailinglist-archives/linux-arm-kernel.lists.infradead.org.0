Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A65DAA9E2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 19:21:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G2WMOPmIq8XwV7fxMeGJlQS39s6UH7pE9JqQPdqpFQU=; b=VogypbRcSM4/2l
	0hZSPmtiaEfk/smNVuI1YaJnsXIYeZ6305/BqRg9zamOI3eIZfnwPu32d2OL8R5/NickUjZiIgfWN
	TUQCVt6fXHvkoPJfvRLryfQxQEb3R8xmTC5a5KU7QS4Sga6ExSidFRFaPZQI0gQ6ULI5cddxIP45f
	fxmePr/67NEgbWM/q742Ii15cYcztZyrgVl/grdyjLmW3ka7AxI7Ma3dmSclXQ8MLxrE6s8U6BPy4
	y/Z4o/PwDanLyXgZSJjaua890Q+nB3hxXwU2ePMxotHTdwshvIFWYCC3jaNgcLbCyrCxHvYKeygtY
	XxpF3oIfWA/vuK0zO1pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5vS3-0002yx-QS; Thu, 05 Sep 2019 17:21:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5vRs-0002yB-Qi; Thu, 05 Sep 2019 17:21:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7537A337;
 Thu,  5 Sep 2019 10:21:32 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 1EFA83F718; Thu,  5 Sep 2019 10:21:30 -0700 (PDT)
Date: Thu, 5 Sep 2019 18:21:28 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v3 4/4] mm: refresh ZONE_DMA and ZONE_DMA32 comments in
 'enum zone_type'
Message-ID: <20190905172126.GG31268@arrakis.emea.arm.com>
References: <20190902141043.27210-1-nsaenzjulienne@suse.de>
 <20190902141043.27210-5-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902141043.27210-5-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_102132_914761_3C1773EC 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, mbrugger@suse.com, marc.zyngier@arm.com,
 robin.murphy@arm.com, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, robh+dt@kernel.org,
 wahrenst@gmx.net, Paul Walmsley <paul.walmsley@sifive.com>,
 m.szyprowski@samsung.com, f.fainelli@gmail.com,
 linux-riscv@lists.infradead.org, phill@raspberrypi.org, will@kernel.org,
 hch@lst.de, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 02, 2019 at 04:10:42PM +0200, Nicolas Saenz Julienne wrote:
> These zones usage has evolved with time and the comments were outdated.
> This joins both ZONE_DMA and ZONE_DMA32 explanation and gives up to date
> examples on how they are used on different architectures.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Reviewed-by: Christoph Hellwig <hch@lst.de>

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
