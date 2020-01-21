Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 528F8143B09
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:31:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i66XClvrIhYO2fzFPi2uy4MFlHy3oVgBY3zzZDDQSRA=; b=AgHkgwzCrkFU8P
	J3wafrscRaYb9o5MDCmnoICY2in7TbeCbZfA35fcCF6xAx5Y0DVSpo3aJ/NKiJJStx/f1Q1sO+fZe
	OyJPF2THBV0OSOvkBb7WV/21sfqkXnINRVTVRZ2jMgGgIBZqD3EgyKd7iMbjhDOdeqSD+pPdF10sW
	d5s4I54HzQ26B2eibSkhNOKC/dDNYrZmpXJbFteCtLkMj7yzLqp6ov5L80JEyOQQnqjn+yY52g1ZS
	mTYfFQTr7JxKKuYy19pK7SllEikR5uAy7S5u5q570lx/ttJ+T7DtWGFE0gJ+WzPeR9GZ65eJM7vW9
	zq4gqeU2MVSl6Yg/0wnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqoU-0007dx-EN; Tue, 21 Jan 2020 10:31:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqnn-0007NZ-2L
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:30:35 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4292420678;
 Tue, 21 Jan 2020 10:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579602630;
 bh=8MDhT70qIH9QnWSCOyu+SP78oh5aOhTOcOpaFXWOWG4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=c/9fVY5xN684neRDQ7FZ+p4tH0kThqrEj/PaWTjbZG4GmC3o1pGs4xAcogJVdomaD
 YU5DimpEWF9jRbLaj2PixmgGLJG++r3b9XTd4cAKz61LMsC9xAgOE2+jPkI5/Fkfco
 Vq8PMwBUlyfsEuwhXzccq3+FhQ9zHJ9Q5r1mlKyU=
Date: Tue, 21 Jan 2020 10:30:26 +0000
From: Will Deacon <will@kernel.org>
To: Julien Thierry <jthierry@redhat.com>
Subject: Re: [RFC v5 00/57] objtool: Add support for arm64
Message-ID: <20200121103025.GC11154@willie-the-truck>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_023031_135333_9CBB5641 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: peterz@infradead.org, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 raphael.gault@arm.com, jpoimboe@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 04:02:03PM +0000, Julien Thierry wrote:
> This patch series is the continuation of Raphael's work [1]. All the
> patches can be retrieved from:
> git clone -b arm64-objtool-v5 https://github.com/julien-thierry/linux.git

[...]

>   objtool: arm64: Decode unknown instructions
>   objtool: arm64: Decode simple data processing instructions
>   objtool: arm64: Decode add/sub immediate instructions
>   objtool: arm64: Decode logical data processing instructions
>   objtool: arm64: Decode system instructions not affecting the flow
>   objtool: arm64: Decode calls to higher EL
>   objtool: arm64: Decode brk instruction
>   objtool: arm64: Decode instruction triggering context switch
>   objtool: arm64: Decode branch instructions with PC relative immediates
>   objtool: arm64: Decode branch to register instruction
>   objtool: arm64: Decode basic load/stores
>   objtool: arm64: Decode load/store with register offset
>   objtool: arm64: Decode load/store register pair instructions
>   objtool: arm64: Decode FP/SIMD load/store instructions
>   objtool: arm64: Decode load/store exclusive
>   objtool: arm64: Decode atomic load/store
>   objtool: arm64: Decode pointer auth load instructions
>   objtool: arm64: Decode load acquire/store release
>   objtool: arm64: Decode load/store with memory tag
>   objtool: arm64: Decode load literal
>   objtool: arm64: Decode register data processing instructions
>   objtool: arm64: Decode FP/SIMD data processing instructions
>   objtool: arm64: Decode SVE instructions

That's a lot of decoding logic which we already have in
arch/arm64/{kernel/insn.c,include/asm/insn.h}. I'd prefer to see this stuff
reused or generated from a single source, since it's really easy to get it
wrong, has a tendency to bitrot and is nasty to debug.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
