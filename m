Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DBF3ABA20
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 16:01:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UGdzLvweZnGVe64AROq32NTuUl71l3FaWbCkM8v7C60=; b=c2lhlYPk0TUndM
	JwCx/FKKTuxzQNqT29uAuHZXCfarymItN/a298ZipyPNhq7/Xn/QhybFLbSchiwU+oCWMrH+bo8p7
	qPZWYAZoq7rxvBAse77p7Ri5Embs8OcltgMKg2ea5BM7KbKKeCXx0nfDVrXSAHgkPBIlBjB/8spmV
	s7z7fqrePjBDV9KEBpQfbttE+PfLpxe2DxhRqOfoa3avim5GIGlZQV8OGr3vqhbfzT/DckwkyF7xX
	cLgJrc85shHnx1WUazePVSbAIobUWRrOse9R3RCzELT10B5RDeHe3/ydQr8g0+LHh28TcnKI+J5hB
	/3yDARw/ra0ja6WdatrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Ent-0002XE-SN; Fri, 06 Sep 2019 14:01:33 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Enn-0002Wr-Ng
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 14:01:28 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id C476768B05; Fri,  6 Sep 2019 16:01:23 +0200 (CEST)
Date: Fri, 6 Sep 2019 16:01:23 +0200
From: Christoph Hellwig <hch@lst.de>
To: Boris Ostrovsky <boris.ostrovsky@oracle.com>
Subject: Re: [PATCH 09/11] swiotlb-xen: simplify cache maintainance
Message-ID: <20190906140123.GA9894@lst.de>
References: <20190905113408.3104-1-hch@lst.de>
 <20190905113408.3104-10-hch@lst.de>
 <e4f9b393-2631-57cd-f42f-3581e75ab9a3@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e4f9b393-2631-57cd-f42f-3581e75ab9a3@oracle.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_070127_925729_700B873A 
X-CRM114-Status: UNSURE (   8.97  )
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
Cc: Stefano Stabellini <sstabellini@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org, gross@suse.com,
 xen-devel@lists.xenproject.org, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 06, 2019 at 09:52:12AM -0400, Boris Ostrovsky wrote:
> We need nop definitions of these two for x86.
> 
> Everything builds now but that's probably because the calls are under
> 'if (!dev_is_dma_coherent(dev))' which is always false so compiler
> optimized is out. I don't think we should rely on that.

That is how a lot of the kernel works.  Provide protypes only for code
that is semantically compiled, but can't ever be called due to
IS_ENABLED() checks.  It took me a while to get used to it, but it
actually is pretty nice as the linker does the work for you to check
that it really is never called.  Much better than say a BUILD_BUG_ON().

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
