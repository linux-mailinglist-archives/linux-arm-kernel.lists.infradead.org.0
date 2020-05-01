Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DC41C0FD0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 10:39:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5dswKqrJD3a5eoIIOKzUQ3A6+n//wSsKtRpTpvyBra0=; b=ZkE1WPEJCdWWyA
	Ys5v14qr2CwXtyz6pBNRYDzpgjDtnJlXquX4Tu69NTHLbXBpVjvu1hm/cxVHddm8XwoAFFUnoKRGF
	Dl27f5aaB1bvlGXnvmaEoZWiKWyAhquA1Suz17mXtfjxr3An3YkuLltrYgKpgy5Hb3WLr79froxsB
	5lkAXLEfSwGqundYzyuDB0ZfT0QJgdNBxFWcJwUTkF15otiMxrBf1Z/mVi6Eth++MzMSxtBpG368/
	JuBCOPHIAkSYVaMwEhu+Wu7q3Bi3pyEiVJ9xfLSlwWhNonRiU0sTmfIlB2VKr/bXKq19qFgblOCLq
	7i9fDXzarcHo6s6BEPZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jURD6-0005P6-5L; Fri, 01 May 2020 08:39:52 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jURCz-0005OZ-MM; Fri, 01 May 2020 08:39:45 +0000
Date: Fri, 1 May 2020 01:39:45 -0700
From: Christoph Hellwig <hch@infradead.org>
To: ira.weiny@intel.com
Subject: Re: [PATCH V1 06/10] arch/kunmap_atomic: Consolidate duplicate code
Message-ID: <20200501083945.GF27858@infradead.org>
References: <20200430203845.582900-1-ira.weiny@intel.com>
 <20200430203845.582900-7-ira.weiny@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430203845.582900-7-ira.weiny@intel.com>
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Huang Rui <ray.huang@amd.com>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 Helge Deller <deller@gmx.de>, x86@kernel.org, linux-csky@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, linux-snps-arc@lists.infradead.org,
 linux-xtensa@linux-xtensa.org, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Chris Zankel <chris@zankel.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Christian Koenig <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 01:38:41PM -0700, ira.weiny@intel.com wrote:
> From: Ira Weiny <ira.weiny@intel.com>
> 
> Every single architecture (including !CONFIG_HIGHMEM) calls...
> 
> 	pagefault_enable();
> 	preempt_enable();
> 
> ... before returning from __kunmap_atomic().  Lift this code into the
> kunmap_atomic() macro.
> 
> While we are at it rename __kunmap_atomic() to kunmap_atomic_high() to
> be consistent.
> 
> Signed-off-by: Ira Weiny <ira.weiny@intel.com>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
