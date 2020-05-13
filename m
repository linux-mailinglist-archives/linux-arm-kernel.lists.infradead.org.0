Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 372031D0721
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 08:23:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RoJZFmn/yADiNOziLry75MsqGseb0dNHy/Aw1Faixws=; b=YjaXsnszxqr+MT
	079TQQi4q+w4PVURWcQc4t84XXoGPioiwuSAFLXtZ3LgRSXrOc2pQOm5yoDUtcxPKO5GQl75z/rjn
	TrCJCmfoDPAyhoP5NHH7Vb3ffZIbZhec06NJPTil+szliEl7R5ldsL8fmdmHN9qeC4vkAI7U4js4f
	e9x7dtkUPEKdSBQ86Ij44RVviidCFVSx5b8gn/Wq3PgAKcV2KFZfB8C2By5U2lzuzfJHO2L3IAlb7
	Edqy8kYugvw9saCirTB5t/qIfrjrQ14acrEy6ZQr0EF3er/fIuSLQ1IPpvcCEcnxJJr9dvVJUcDgp
	fJpAMNz7fGdNm2oah8Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYknn-0000vK-6y; Wed, 13 May 2020 06:23:35 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYknc-0000uZ-KZ; Wed, 13 May 2020 06:23:26 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id E27C468C65; Wed, 13 May 2020 08:23:18 +0200 (CEST)
Date: Wed, 13 May 2020 08:23:18 +0200
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH 19/31] riscv: use asm-generic/cacheflush.h
Message-ID: <20200513062318.GA24133@lst.de>
References: <20200510075510.987823-20-hch@lst.de>
 <mhng-8adbedbc-0f91-4291-9471-2df5eb7b802b@palmerdabbelt-glaptop1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mhng-8adbedbc-0f91-4291-9471-2df5eb7b802b@palmerdabbelt-glaptop1>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_232324_823538_CA84B4B0 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org, zippel@linux-m68k.org,
 linux-mips@vger.kernel.org, linux-mm@kvack.org, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 linux-arch@vger.kernel.org, linux-c6x-dev@linux-c6x.org,
 linux-hexagon@vger.kernel.org, x86@kernel.org, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, jeyu@kernel.org, linux-um@lists.infradead.org,
 linux-m68k@lists.linux-m68k.org, openrisc@lists.librecores.org,
 linux-arm-kernel@lists.infradead.org, monstr@monstr.eu,
 linux-kernel@vger.kernel.org, linux-alpha@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 04:00:26PM -0700, Palmer Dabbelt wrote:
> Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
> Acked-by: Palmer Dabbelt <palmerdabbelt@google.com>
>
> Were you trying to get these all in at once, or do you want me to take it into
> my tree?

Except for the small fixups at the beginning of the series this needs
to go in together.  I'll have to do at least another resend, and after
that I hope Andrew is going to pick it up.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
