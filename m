Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82AE61A25B5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 17:41:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sJoZ2UPf92ETCdJHFgZf2kUj3QIWI0bzn0nzHgEJ7g4=; b=Y/KeEAOOqGa7uh
	WAmoWNYzTPml7fTyc28HL/zc71hCdRB1a4oqt9v5qYjcRYlrnM/bdV8joaZyDWsIh+PXd7MPFnEy1
	WvRFHIhruIU6LTuKTwSdIxCG+UYPTbBe3Mz8qh7s3V9KrS2wKymKUjITCt6Z/8BHyyNa/mdXzPpkE
	LXdXCj7NW7RWwcmgXVpNLccFFMssQPSCnBieiZ3pJlc5Fa+0BT/IU8oF7+Ijh6DV2eEVk6CkIswiR
	3JFBMjY6FV6r/nxlw3C5BqRROtmRGf1E0JA4PZHgzvD7OkjvSMPm0QkhDIqHQVnnXBcCfZQIkJuzy
	OkmIZE0NoHIIr/TSp03Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMCpm-0003dB-Rr; Wed, 08 Apr 2020 15:41:46 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMCog-0002mc-0a
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 15:40:39 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 0BEE968C65; Wed,  8 Apr 2020 17:40:34 +0200 (CEST)
Date: Wed, 8 Apr 2020 17:40:33 +0200
From: Christoph Hellwig <hch@lst.de>
To: Hillf Danton <hdanton@sina.com>
Subject: Re: [PATCH 02/28] staging: android: ion: use vmap instead of
 vm_map_ram
Message-ID: <20200408154033.GA28499@lst.de>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408124833.13032-1-hdanton@sina.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408124833.13032-1-hdanton@sina.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_084038_205210_788979AE 
X-CRM114-Status: UNSURE (   6.69  )
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, linux-arch@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-s390@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, syzkaller-bugs@googlegroups.com,
 bpf@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 linux-mm@kvack.org, iommu@lists.linux-foundation.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 08, 2020 at 08:48:33PM +0800, Hillf Danton wrote:
> > -	void *addr = vm_map_ram(pages, num, -1, pgprot);
> > +	void *addr = vmap(pages, num, VM_MAP);
> 
> A merge glitch?
> 
> void *vmap(struct page **pages, unsigned int count,
> 	   unsigned long flags, pgprot_t prot)

Yes, thanks for the headsup, you were as fast as the build bot :)

Fixed now.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
