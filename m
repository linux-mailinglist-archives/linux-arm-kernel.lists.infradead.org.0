Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 145C5D65D4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 17:05:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9v6WpXyLvIWcwM9/J4PrHc/M752HXlqK9CMVpZe41DE=; b=FEsMYJwoEStR4h
	Upi+RPXcT45YZaZoP8ESokYiOvDiXhYeNeHYgzIR+5M+xdNsu2m3wbDxmHWJRGk3E6Okp1eJhr0H0
	VDhbVG2gcOoapIUETxDr7lUMe+EKu39eZSw9JpN5/zF3xMtnc8FTP0rCQTOPPyfPWcTNFIq6MjXBq
	4D3u6u3xi4pPQBrJ0DvYvuUjdtbdq/LDYntQUrecIB4LnBF/WcGQpHe/KynoxO/KN0us9SmSVB4XS
	aP1YNg0NsM/409RLhNAgnS7NTp/BBNpmo6wvBI5nrp2zVd+At6rovjQaffkoursQOA8ov+VoU3bQv
	78PD2wnrMhXZPgCQKJCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK1uM-0007wW-Qu; Mon, 14 Oct 2019 15:05:14 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iK1uE-0007fP-VL; Mon, 14 Oct 2019 15:05:06 +0000
Date: Mon, 14 Oct 2019 08:05:06 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Walter Wu <walter-zh.wu@mediatek.com>
Subject: Re: [PATCH 1/2] kasan: detect negative size in memory operation
 function
Message-ID: <20191014150506.GX32665@bombadil.infradead.org>
References: <20191014103632.17930-1-walter-zh.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014103632.17930-1-walter-zh.wu@mediatek.com>
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

On Mon, Oct 14, 2019 at 06:36:32PM +0800, Walter Wu wrote:
> @@ -110,8 +111,9 @@ void *memset(void *addr, int c, size_t len)
>  #undef memmove
>  void *memmove(void *dest, const void *src, size_t len)
>  {
> -	check_memory_region((unsigned long)src, len, false, _RET_IP_);
> -	check_memory_region((unsigned long)dest, len, true, _RET_IP_);
> +	if (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
> +	!check_memory_region((unsigned long)dest, len, true, _RET_IP_))

This indentation is wrong.  Should be:
+	if (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
+	    !check_memory_region((unsigned long)dest, len, true, _RET_IP_))

(also in one subsequent function)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
