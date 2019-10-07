Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 784ADCE798
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 17:32:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bim/rE7SIBsC7pMMK32uBchAlDprHBYLMz67TdSrt6A=; b=d+iesSwv1zlbXQ
	QL2fMr2cPrnNTbgwQndxOCzzUpVaDy5UxWanohMpHGDmE0RAkJJP8aq+2UigUhbiBCFo34iuOl756
	rgeX2r9WcU2ZGtizK9WpglSJxJSOswq/L5Epz788un/fqovMhyw2x6igNqdyp/bzs3GmExBz+tIYE
	QpyJT6yungjnIAk+eeeNABV0qMTB/bi/Paj+sYFUhOCdF5Nidn1E1rFhU9IWQbRbXqW4IbEd0ynyP
	Uc+xJLXByXF2suwYJDqMRTYxlaYqtpa99KxqUGvHqB1dvVMCJfQkhps+pHIJTl+ibKC069w1Qh15f
	blOdf5Pu/mHi1oquzExQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHUzX-0000O6-MR; Mon, 07 Oct 2019 15:32:07 +0000
Received: from pb-sasl21.pobox.com ([173.228.157.49] helo=sasl.smtp.pobox.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat
 Linux)) id 1iHUzQ-0000NX-97
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 15:32:01 +0000
Received: from sasl.smtp.pobox.com (unknown [127.0.0.1])
 by pb-sasl21.pobox.com (Postfix) with ESMTP id 050294EB16
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  7 Oct 2019 11:26:26 -0400 (EDT)
 (envelope-from campin@timequake.net)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=date:from:to
 :subject:message-id:mime-version:content-type; s=sasl; bh=ZoUJl/
 5NDxaK64OZp7PA64NyyJw=; b=FfSjcwenk6la5R881TqgavuaouOS9vmtfIv2Fg
 ZXJhPQsV0N4TzKz2HlKnfrsoOGOLIQ+uH7xVu/JBoh8+he8G8S/oz3FcdFiUMap4
 zGl5j5EYU/41Otq8fUe20c3GK5dehFmxdULb0du8RNsc3dt9TcXaS9IGS3MERoER
 VHH/g=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=pobox.com; h=date:from:to
 :subject:message-id:mime-version:content-type; q=dns; s=sasl; b=
 aV++sTQ26eAYfPzGXsxn7N8/EiOf2kiJ6VFRWwaRuZQKc7Ts1Goch5Kz0vgByulX
 CKh7OvYcTe+Jd2GY4+pJkdaceKGVwv7X6mqBi3HgtsvhLXcC42n7CZw45e/ZU9gE
 cJPxiTZAtxKuiPRF5Ie3SNTOwnQ2EvL74f4fT34diAE=
Received: from pb-sasl21.sea.icgroup.com (unknown [127.0.0.1])
 by pb-sasl21.pobox.com (Postfix) with ESMTP id EFF0F4EB15
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  7 Oct 2019 11:26:25 -0400 (EDT)
 (envelope-from campin@timequake.net)
Received: from ootsa.timequake.net (unknown [71.236.183.244])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-sasl21.pobox.com (Postfix) with ESMTPSA id 657D04EB14
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  7 Oct 2019 11:26:23 -0400 (EDT)
 (envelope-from campin@timequake.net)
Received: by ootsa.timequake.net (Postfix, from userid 6663)
 id 237AE809A6; Mon,  7 Oct 2019 08:26:22 -0700 (PDT)
Date: Mon, 7 Oct 2019 08:26:22 -0700
From: Mike Campin <campin@pobox.com>
To: linux-arm-kernel@lists.infradead.org
Subject: Unable to map uncached buffer for PCI DMA to userspace on Cortex-A53
Message-ID: <20191007152622.GA15000@localhost>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Pobox-Relay-ID: D20F6E6A-E916-11E9-85A3-A6C997DF7C83-09884810!pb-sasl21.pobox.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_083200_361085_3C4F342D 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I've been trying for several days to map an uncached buffer for PCI DMA in
userspace without luck. The only way I can get the DMA transfer to work is
to wrap it with __builtin___clear_cache().

Details.
  - 96boards SC2A11 with Cortex-A53 with my device plugged into a PCIe slot.
  - Kernel 5.2.13-200.fc30.aarch64 (Fedora 30).
  - /proc/cmdline 
      BOOT_IMAGE=(hd1,gpt2)/vmlinuz-5.2.13-200.fc30.aarch64 root=/dev/mapper/fedora-root ro rd.lvm.lv=fedora/root rd.lvm.lv=fedora/swap
  - Simplified code:
      init_dma_attrs(&attrs);
      dma_set_attr(DMA_ATTR_FORCE_CONTIGUOUS,  &attrs);
      dma_set_attr(DMA_ATTR_NO_KERNEL_MAPPING, &attrs);
      dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
      vaddr = dma_alloc_attrs(dev, size, &iaddr, GFP_KERNEL | __GFP_ZERO, &attrs);
 
      vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
      dma_mmap_attrs(dev, vma, vaddr, iaddr, size, &attrs);

I've tried several permutations. Here's a few examples:
  - vma->vm_page_prot = pgprot_writecombine(vma->vm_page_prot);
  - vma->vm_flags |= VM_IO;
  - With and without DMA_ATTR_NO_KERNEL_MAPPING.
  - remap_pfn_range(vma, vma->vm_start, iaddr >> PAGE_SHIFT, size, vma->vm_page_prot);
  - dma_set_mask_and_coherent(dev, DMA_BIT_MASK(32));
  - Even tried using get_arch_dma_ops() to get a pointer to arm_dma_ops.

-- 
Mike Campin
arm at timequake dot net

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
