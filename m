Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D46F9C0C7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 00:35:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xUXelAxiVFi9ebLKWd7LAIs33bNylX9PtanBZgrOhY4=; b=DDoZrBSQ9fB0mK
	RubMyxel8DhwcgZYbqlMJr5Scy94mvwgod2IyOQY5ujOIBIdutoVw7vzbxaHFMt3laJuPzPqPeEaS
	RhbQKZBFyOo87bp4ih2fhpeiR2wgHdk9rXh0hZDomm5PmOs7FbYAM6BzR18kCRRxjsY6WihZXSbno
	eRA3Z7ibbgUFyL0YkyX6pDiJesCWAqM5cy7z9aEY+Ff8pG11Zh89mUFloaRcVSphDZiZOEMnWomzO
	jiL2McSz13EcN5h4ylQQIuNTJFJNcdgFogL0zbnmYpbPeJOPle81mzr1CF+DtEbI5aIiw+JJDnCRD
	zrjenjkUdzhTRjHvosTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1ecw-00016f-8I; Sat, 24 Aug 2019 22:35:18 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1eca-00015v-4r
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 22:34:57 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 3E93268AEF; Sun, 25 Aug 2019 00:34:50 +0200 (CEST)
Date: Sun, 25 Aug 2019 00:34:49 +0200
From: Christoph Hellwig <hch@lst.de>
To: Paul Burton <paul.burton@mips.com>
Subject: Re: cleanup the dma_pgprot handling
Message-ID: <20190824223449.GC21729@lst.de>
References: <20190816070754.15653-1-hch@lst.de>
 <20190823215759.zprrwotlbva46y33@pburton-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823215759.zprrwotlbva46y33@pburton-laptop>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_153456_340370_11C04FDE 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Shawn Anastasio <shawn@anastas.io>, Will Deacon <will@kernel.org>,
 "linux-m68k@lists.linux-m68k.org" <linux-m68k@lists.linux-m68k.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, James Hogan <jhogan@kernel.org>,
 Guan Xuetao <gxt@pku.edu.cn>, Christoph Hellwig <hch@lst.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 09:58:04PM +0000, Paul Burton wrote:
> So I believe uncached & uncached accelerated are another case like that
> described above - they're 2 different CCAs but the same "access type",
> namely uncached.
> 
> Section 4.9 then goes on to forbid mixing access types, but not CCAs.
> 
> It would be nice if the precise mapping from CCA to access type was
> provided, but I don't see that anywhere. I can check with the
> architecture team to be sure, but to my knowledge we're fine to mix
> access via kseg1 (ie. uncached) & mappings with CCA=7 (uncached
> accelerated).

Ok.  Looks like we can keep it then and I'll add a comment to the
code with the above reference.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
