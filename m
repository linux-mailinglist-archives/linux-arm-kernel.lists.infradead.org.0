Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73370D65E2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 17:07:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KXw1Lxz6M02oruvPw1EGW3NqeRPTudNuhvhUOiluKaE=; b=Ddkk1wNigZ1QTr
	s1TC5dKUB0T4iFRh/Cr9R7btcMyMaTMFM8LE8JxzZSI6e8KpZcRmIECJwf6Qq93cdhff30QLXo88D
	4KpmiWNjGI/UCgorMLoqMfV3f6xnj7Dn2IrlYmDvuN0sJhEkM0pcg9gWrsje8zZ7EbPnh3BO69nX0
	GtA6t544tgC+ybrdXCvWnFyogiZRqw3X1gSH90XTC9Fz9swIBjHDhEw/rOKcAwXHp3776D/HeS7NZ
	CQV5DIm7afQfibl6cHTOy6s94gScfDg6zgld8h1Aldlxebt+cZ0uTrrXHmw2BvQQpQ604JIh0rhyk
	9oaU3IQIy8Ydw7hSJWjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK1wL-0000NY-89; Mon, 14 Oct 2019 15:07:17 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iK1wE-0000ND-79; Mon, 14 Oct 2019 15:07:10 +0000
Date: Mon, 14 Oct 2019 08:07:10 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Walter Wu <walter-zh.wu@mediatek.com>
Subject: Re: [PATCH 2/2] kasan: add test for invalid size in memmove
Message-ID: <20191014150710.GY32665@bombadil.infradead.org>
References: <20191014103654.17982-1-walter-zh.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014103654.17982-1-walter-zh.wu@mediatek.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: wsd_upstream@mediatek.com, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 06:36:54PM +0800, Walter Wu wrote:
> Test size is negative numbers in memmove in order to verify
> whether it correctly get KASAN report.

You're not testing negative numbers, though.  memmove() takes an unsigned
type, so you're testing a very large number.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
