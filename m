Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E9EEA316
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 19:12:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VlUiAP85fPA/nh1D8ZcwSP9ZcXVEgPS0c1kRSErQDeg=; b=LAz2cYoJJ1Jl2s
	pE12q4ALg0Ce5Ba1jMj/3IEMsHIy2+GNpigFhjjwg5Aq4t6lo+VH4KhXhvHoMJQmGk+phYLpoGDJM
	QzmR+0iwq3REcwATLjzG/ns38yPrKwAJL3uukq1yq0LSvD2ZL56/4geX/wGM42hzDkjSQgaZla+ki
	GQ7LDkc5CU8TSCizDRFyyZYMLOSj8ppdnRNd081LmOW6q874wPnQVIm13MzZ5OM8n7as2gutAvdDe
	oQEU6OxhDAfyL+cL03c05eoZquYJnwltFFNaRTARh9zrywxWF6LKC2plTvq3NTjyb0CuDqRkQHdEc
	ooK9F8wmXTfMkpmHwmQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPsSd-0000ai-GM; Wed, 30 Oct 2019 18:12:47 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPsST-0000aB-G8
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 18:12:39 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 09A6168B05; Wed, 30 Oct 2019 19:12:35 +0100 (CET)
Date: Wed, 30 Oct 2019 19:12:34 +0100
From: Christoph Hellwig <hch@lst.de>
To: Vladimir Murzin <vladimir.murzin@arm.com>
Subject: Re: [PATCH] dma-mapping: fix handling of dma-ranges for reserved
 memory (again)
Message-ID: <20191030181234.GC19513@lst.de>
References: <1572430393-40203-1-git-send-email-vladimir.murzin@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572430393-40203-1-git-send-email-vladimir.murzin@arm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_111237_687147_6FE8515F 
X-CRM114-Status: UNSURE (   5.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: alexandre.torgue@st.com, iommu@lists.linux-foundation.org,
 daniele.alessandrelli@gmail.com, robin.murphy@arm.com, hch@lst.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks,

applied to the dma-mapping for-next tree.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
