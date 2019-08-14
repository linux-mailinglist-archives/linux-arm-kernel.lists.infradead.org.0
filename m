Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BDFA8DCE5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 20:23:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xXq9ayh0Sf0njWlucbX7+GsjSKaRU7ZnvRk11/KBmFw=; b=KViqcY4eLUG/uR
	jR7dt41Y5SEWGYNz7Y8ewz0ux+ywh9Ri/y8W9Q8+lRaeazatENhz2tfakcu1omgz3/sCcSJE5pzyq
	WF8sO9MaVVLqmzQN5MUjrC6JoqA6PJfhpu5aEMxmwkraeWlsXjIn+bNPb3/nEoFOjL9f1yqC0d2bv
	Fshz759A7gKpcmBiCZ8tVE29i6mMCJn1+wkrMGAnHeM8FZjRk/Olm00mAgr+1vX/rUV2Wd7zG7Yau
	OqTy3JaZo2fzBib2DAzSIG6HJY6gb/I9wL2tElZ6swFnudWwcWAIVp3IjCOqgRQaTOD2HzWW7Ly7y
	v9aSoUzt+7QNdrahOUOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxxvH-0005tq-6y; Wed, 14 Aug 2019 18:23:00 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxxuu-0005t8-J5
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 18:22:38 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 314CD68B02; Wed, 14 Aug 2019 20:22:29 +0200 (CEST)
Date: Wed, 14 Aug 2019 20:22:28 +0200
From: Christoph Hellwig <hch@lst.de>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 1/6] arm64: unexport set_memory_x and set_memory_nx
Message-ID: <20190814182228.GA18779@lst.de>
References: <20190813090146.26377-1-hch@lst.de>
 <20190813090146.26377-2-hch@lst.de>
 <20190814165029.yfmpopn34vxpnmte@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190814165029.yfmpopn34vxpnmte@willie-the-truck>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_112236_777458_B8C458B8 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
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
Cc: Dave Hansen <dave.hansen@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, Andy Lutomirski <luto@kernel.org>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 05:50:29PM +0100, Will Deacon wrote:
> arm64 allmodconfig and defconfig are happy with this, so I'll pick it up
> for 5.4 if that's ok with you?

Sounds great.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
