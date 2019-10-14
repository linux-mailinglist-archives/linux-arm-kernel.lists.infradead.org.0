Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5D3D5E0D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 11:00:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lqQNrdE9ue+/Fw3QBHZ4dV1Ju4MKopO9xXUu4Z4Xfbw=; b=NVjjeLi4Ov2AAO
	LQGOrPOxuozj6/MscreH6ZYa54YObeRT+bj8zLUScK3Dm5sCkae+E1lJMVmYHyKIFjcXJJpJS7ftz
	p5yO8NRpdPx5XeZFsvChJRpCc1fiZ/9rZ416HMt/NjwzZocsiiVX/6XmY6b7A2yvIehXrVVkFNqRZ
	QOAwrkzKryFduLZpmaUe+GZtZin59jgUhqVKzu3Pz+R1mhYEwFMnKGa1ZlgHB0YArtlVrH4jGhV58
	G5qYJegVkIN7ukFlDt6e1lpHO6rR5gESI+e6nRXfmMqBzxJo4U8uP5drOvWRWm5b8zYpACpWQ44T8
	NfjWQGtE76mnpn9Hzzmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJwDa-000132-N8; Mon, 14 Oct 2019 09:00:42 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJwDS-00012F-NJ
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 09:00:36 +0000
Received: by mail-qt1-f193.google.com with SMTP id m61so24395262qte.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 02:00:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mvbtG5z1dl1r9yvNurN3pUa34WevfFu4F3FIQf1Nshw=;
 b=cXRNcxMAbrjaOYLg0dNt4Rma/y7TSXvi1rHuoMZypOsQBe7sHBxPDgNiunL7bia+lt
 9P0yg9uQh70NeuN2l+9qtBW3/COmqA1vcza+WwX3AeKHcF4Wyh+JJdqvXB/BeSXKr2g2
 Jp262KIJw5KQFGMZWdKzrfSMplrrhZIUjFs+xBm8rVVgRy+sDmLLvoL4TJES+wCwjGbR
 EOfNZVNGIPlQ0tj7gtvSiak3kjCysErzUQrqKwNV+kmh5cLVeUQdJ+V1BbmTtqaisD+t
 6ocEwXsEl3J4MF3b3CFBb1SymkMDrluKej1Wz+ba6tR5B7HJnfFNYi0kD67DTKqhKE7K
 xzAA==
X-Gm-Message-State: APjAAAXXq9FAnphU37G2o3OgQj+cTr+qiJpsNnmzDBRQRv82wTxC1OOj
 qRGD5v86cZuFfnznePP/nSnv+UCHFD2TianJcFoWwg==
X-Google-Smtp-Source: APXvYqy8+8BBI6DNXDwKfCH+1w/2xH0+EE9PMaAbl80s+BM2xELFwnnG6hFBOWyL/geb5dj52kiemzfHp6srlG77ODs=
X-Received: by 2002:aed:3c67:: with SMTP id u36mr31039533qte.142.1571043631870; 
 Mon, 14 Oct 2019 02:00:31 -0700 (PDT)
MIME-Version: 1.0
References: <20191013221310.30748-1-sebastian@breakpoint.cc>
In-Reply-To: <20191013221310.30748-1-sebastian@breakpoint.cc>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 14 Oct 2019 11:00:15 +0200
Message-ID: <CAK8P3a3kxOSzD7pbEi2w8-ZiWnzxqRE4j5xNQxgSmKOErPLKgQ@mail.gmail.com>
Subject: Re: [RFC PATCH 0/6 v2] Queued spinlocks/RW-locks for ARM
To: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_020034_757581_D64CFB43 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Peter Zijlstra <peterz@infradead.org>, Russell King <linux@armlinux.org.uk>,
 Ingo Molnar <mingo@redhat.com>, Waiman Long <longman@redhat.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 12:13 AM Sebastian Andrzej Siewior
<sebastian@breakpoint.cc> wrote:
>
> I added support for queued-RW and -spinlocks for ARM. I followed Arnd's
> suggestion and added support for xchg() on 8bit and 16bit variables (V6
> CPUs) via the SH implementation. This makes it possible to remove the
> current ticket based locking implementation.
>
> The numbers should be the same as in v1 posted here:
>    http://lkml.kernel.org/r/20191007214439.27891-1-sebastian@breakpoint.cc
>
> The only thing changed is that patch #1-#3 wire up the missing xchg and
> the patches #4 and #5 additionally remove the old implementation while
> adding the missing bits for the queued implementation.

I like this, just had two very minor comments.

I'm adding it to my randconfig build bot for more testing and will let you know
in case I find any problems.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
