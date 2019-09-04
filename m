Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 760F0A9536
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 23:34:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=av15sPbqlwCpO+CL3HBy7qyns2vNPSuM5cJBYAGZodU=; b=I7gtd3pexFqe9l
	MXxrhY79pug9+YXHbiZb9YQYHO2jHPkImfRN5burECuEdyiDmNBBOs5g0OFY+usAPNz6L38Nur0GM
	Sa59mezHAEOeovJRUceyv+bFZR/EIUeqNYe9WYSQtcX98fIf9yK35yRZxEpgoYf64trBQHxXbwDc0
	k+9W35M803fj07ChqfPtEKJWE9lxS+VdhtsvpXGOptuoB0bQt60zVnvt2EFJRpQTAo99iKkZ0IT7j
	snz+SVxsIJ2AxDWPCe6V1dZC04vc6oait1jaiAspdoZZb5SjsKx4qJ0OU07i7JqGEJj4TCwk/xzx2
	vgS4XOE+WI68d6NNV06Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5cvJ-0005lZ-Uu; Wed, 04 Sep 2019 21:34:41 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5cvB-0005kt-Jg
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 21:34:34 +0000
Received: by mail-qt1-f193.google.com with SMTP id v11so187032qto.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 14:34:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0WY8Z7uuOkp45B0a2fjL2sapn2BwsYXAe9J2wXt4+wc=;
 b=Qe8R3Et0suS93KjBUrC4m56R5R68OxBVCIldifoGCJ4KKgpfjIihWP5owcQ8LiJ9Sg
 T17YQrMBUPqdygku5MNBE1jatTtV8UjK04olTnOpMYNJLKkjjLkATbWZI2XrUIPEoCig
 452+GE1ECeFOGMStgkhGQ1XbaajWMUqN337nM6ISzRMsR4plexB2AoX40TF2uPo7xGGi
 F6NzKF33HW/UycqavtjYIxj2zGF64Hfiwfbwdz14e+onSf/jeby7nZXRCowMOBoxdXo/
 YFJIkahVR4oV7uRfOd49c26+lifwZ6ZL75XuahiLTr++BFzZSYEnooHF4LouR8tVWDBM
 h3hQ==
X-Gm-Message-State: APjAAAXcxD1oH7Wq/gvSWefQJXC+4BPEJPs6A+5SVUGprSLHGsBBw8ze
 WT3l/c8hAk9X8OLlkMVSGMGneEFBsatjkZhnqXs=
X-Google-Smtp-Source: APXvYqyBgE2BrQfpBEN90032uCmlKJX7a6NLdsfC6RJ7xoQxmmxWloFIzA7IYr+hVhQLxc7wq5bsrlYRVweKvZHkviQ=
X-Received: by 2002:ac8:32ec:: with SMTP id a41mr249797qtb.18.1567632872584;
 Wed, 04 Sep 2019 14:34:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190904204427.1e1a064f@canb.auug.org.au>
In-Reply-To: <20190904204427.1e1a064f@canb.auug.org.au>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 4 Sep 2019 23:34:16 +0200
Message-ID: <CAK8P3a306wrT5A7BEnL9BM47Si+0ooVxKy47qiMCjNAiuAN2xA@mail.gmail.com>
Subject: Re: linux-next: manual merge of the slave-dma tree with the arm-soc
 tree
To: Stephen Rothwell <sfr@canb.auug.org.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_143433_647746_7AE5DDB7 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Olof Johansson <olof@lixom.net>, ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 4, 2019 at 12:44 PM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>
> diff --cc drivers/dma/iop-adma.c
> index 03f4a588cf7f,003b753e4604..000000000000
> --- a/drivers/dma/iop-adma.c
> +++ b/drivers/dma/iop-adma.c
> @@@ -116,9 -116,9 +116,9 @@@ static void __iop_adma_slot_cleanup(str
>         list_for_each_entry_safe(iter, _iter, &iop_chan->chain,
>                                         chain_node) {
>                 pr_debug("\tcookie: %d slot: %d busy: %d "
> -                       "this_desc: %#x next_desc: %#llx ack: %d\n",
>  -                      "this_desc: %pad next_desc: %#x ack: %d\n",
> ++                      "this_desc: %pad next_desc: %#llx ack: %d\n",
>                         iter->async_tx.cookie, iter->idx, busy,
> -                       iter->async_tx.phys, (u64)iop_desc_get_next_desc(iter),
>  -                      &iter->async_tx.phys, iop_desc_get_next_desc(iter),
> ++                      &iter->async_tx.phys, (u64)iop_desc_get_next_desc(iter),
>                         async_tx_test_ack(&iter->async_tx));
>                 prefetch(_iter);
>                 prefetch(&_iter->async_tx);

The resolution looks correct to me. I had to research how I missed this,
and it turns out that the problem is me testing with clang-9 rather than gcc
at the moment. While clang is perfectly capable of warning about this
issue, the kernel turns off -Wno-format when building with clang.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
