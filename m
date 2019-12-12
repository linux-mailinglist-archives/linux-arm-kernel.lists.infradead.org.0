Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77DE611CA64
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 11:17:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z3M2Uaip3TaUnXxiivh2V++2F9RPuxu8p67KBNvXWKM=; b=uxHjwpEROAd3q8
	JYA5K+XBsOpxXugorT6fnWVKwXLr3RZm8GDULsnOYQ2WNMpOakxn5RIY0b93VExISgrdAge33BTCe
	vA5UyqCzcKpSPTw1qIt3zL0ng+FjqoW7T5MXYZFV6xLhIUAJt36+u7juA4ax73a2P0N7JoIwEprfj
	SaRvjpjUvwSHoXxLlF8U5LJti/oXAZkSBuf217WZ2Zggf3H7wFCHhs7Nl8XEOeTjN1/QnrI9ecmpe
	bkkzFxOGlmqOd+4ThFd/vrcmxp4lucE8Iax0be3e69cwYEjTeF5QZvR3pLyxe1r7B9VxmmLvwM5hj
	wbc0oJjUHU8jEiqQ8jxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifLX6-0000hO-4t; Thu, 12 Dec 2019 10:17:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifLWm-0000fz-9P
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 10:17:03 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 44D532173E;
 Thu, 12 Dec 2019 10:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576145819;
 bh=JoDcYEvG7zpceyqUHXgQlnP+hg+AM0QPa/7Dc2/+Iq8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WX8TNnVhicst0bwMRBSe6lp41HNZulLKkhFuRsNRP/8vQY682MbMjZIdACs/lyTEE
 q61Wz/BPE1Q7BomxD6lCOfy8k9JlVbpQURxdODWnj+mxFTIvcKuZHd1/jyDBJCYUEz
 rjM8zTPNfyf+YLyN5iBTym3kMCQtj32wDuFaHzWc=
Date: Thu, 12 Dec 2019 10:16:55 +0000
From: Will Deacon <will@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 01/24] compat: ARM64: always include asm-generic/compat.h
Message-ID: <20191212101654.GA12950@willie-the-truck>
References: <20191211204306.1207817-1-arnd@arndb.de>
 <20191211204306.1207817-2-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211204306.1207817-2-arnd@arndb.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_021700_385505_B79E39EE 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>, y2038@lists.linaro.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>, linux-kernel@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 09:42:35PM +0100, Arnd Bergmann wrote:
> In order to use compat_* type defininitions in device drivers
> outside of CONFIG_COMPAT, move the inclusion of asm-generic/compat.h
> ahead of the #ifdef.
> 
> All other architectures already do this.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm64/include/asm/compat.h | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

Acked-by: Will Deacon <will@kernel.org>

(Please let me know if you'd prefer this patch to be routed via the arm64
tree).

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
