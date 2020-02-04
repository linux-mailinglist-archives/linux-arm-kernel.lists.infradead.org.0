Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9703151B03
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 14:14:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Mime-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WmjzPI1JYs/aFcNgYxNcaf0fKjHPaO8wN8VohPs0LTs=; b=SogGOIFp8vrD80
	n+geDn8pgUgZpCVhtVKtqH1Htk/L6Y+ywGq2k23hRRqYzufqrE64k8hoJOE9tFmdWMchgIF/mlw8e
	gA4uRwzbUv0FcDMzej1AK6Gr6xe2aYLVnroP7jN8Fd5VL7qv61g2abnv/AgvU9VTljnEXpUpDNaQh
	cWt0r1/8cHck/ONoz/JjIa53pBV20KmIXkYnfFrs90Z1Hs8RsWjFbYbUjxDjON0hvNYN623J4MSm4
	xULGEy8ii54WYKEBzZ0IG1ol0+U2uq7a2SMEUD7Ua/mVLxvav+InbVbo4rkbfbgQqS+o6L758bQOB
	fsFZhfbNf65Wr7elpWMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyy25-0001ln-3C; Tue, 04 Feb 2020 13:14:25 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyy1w-0001l7-7W
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 13:14:17 +0000
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 014DDuF4027799;
 Tue, 4 Feb 2020 07:13:56 -0600
Received: (from segher@localhost)
 by gate.crashing.org (8.14.1/8.14.1/Submit) id 014DDrtu027796;
 Tue, 4 Feb 2020 07:13:53 -0600
X-Authentication-Warning: gate.crashing.org: segher set sender to
 segher@kernel.crashing.org using -f
Date: Tue, 4 Feb 2020 07:13:53 -0600
From: Segher Boessenkool <segher@kernel.crashing.org>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v6 10/10] mm/memory_hotplug: Cleanup __remove_pages()
Message-ID: <20200204131353.GJ22482@gate.crashing.org>
References: <20191006085646.5768-1-david@redhat.com>
 <20191006085646.5768-11-david@redhat.com> <20200204094652.GE6494@linux>
 <5d698f94-af18-0714-bc97-14b6c520572c@redhat.com>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5d698f94-af18-0714-bc97-14b6c520572c@redhat.com>
User-Agent: Mutt/1.4.2.3i
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_051416_417558_3FB1435B 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: linux-s390@vger.kernel.org, Michal Hocko <mhocko@suse.com>,
 linux-ia64@vger.kernel.org, Pavel Tatashin <pasha.tatashin@soleen.com>,
 linux-sh@vger.kernel.org, x86@kernel.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Wei Yang <richardw.yang@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 04, 2020 at 01:41:06PM +0100, David Hildenbrand wrote:
> On 04.02.20 10:46, Oscar Salvador wrote:
> > I have to confess that it took me while to wrap around my head
> > with the new min() change, but looks ok:
> 
> It's a pattern commonly used in compilers and emulators to calculate the
> number of bytes to the next block/alignment. (we're missing a macro
> (like we have ALIGN_UP/IS_ALIGNED) for that - but it's hard to come up
> with a good name (e.g., SIZE_TO_NEXT_ALIGN) .

You can just write the easy to understand

  ...  ALIGN_UP(x) - x  ...

which is better *without* having a separate name.  Does that not
generate good machine code for you?


Segher

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
