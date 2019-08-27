Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2449E6A6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 13:19:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oFwX02yB8JR2MK+MAB0NRNAzK0ggVymUMHWHS/rnDgk=; b=o1Qe+DFp2VQUgw
	6+Y0FIxyVCVLebFmTGb7hQCNblk9alswc9OVH96iefr/1t57bYFdf15omSyhazbqa1rlZMnSpqeSx
	hd/j2+XYTj7EdmR7+J61xk5vxSp68MCJ1Yfya4tYMq3YFDs+rFVKsBMJ9ka7myJ/y+rZ1a+aJkRN5
	Ksy/wBmH0s+T94Ed9gCgnOLYDMpFrES6jsV5++kp/dqOjqjZWPEfQJGQgtWT6XmvxBG5uaLahMj7P
	PcYmIbLDhGMGvHxXYBUdpoOdUt6ddGkcXaSzQwXhuGNLv5WNIbqq2CyJnKYcGHvwr2QQYWnhXrn+l
	iDVvU4P1vfArcQefgIUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ZVr-0000QY-FX; Tue, 27 Aug 2019 11:19:47 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2ZVd-0000QE-UD
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 11:19:35 +0000
Received: by mail-ot1-f67.google.com with SMTP id c7so18317239otp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 04:19:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sYk+37wOJSzhcGzIFSoywjHkngRMXRbj8qcdqOxje6g=;
 b=cqYXLnzz+fR5JfSGEG7lFBftKv15KQFI+pC+grl63QFMBInkktGtqAUV7CMjNv1wOk
 +BUCuFxx6Po5pBlNyLFQtSjzmoKBkVgB3eE/p3USyLMKxtYZxrlvvBjSz14Z3oLwjR+e
 Op4fKUIYgi9PCEDFekh9qkpe3lnM51LBKj1Nd2nihmMXIR8djmKVx+ETNg6MxUoZ7i8o
 mJ2WMk066pcQWgKjrqXDvjSLbGfegFl/isEbRE9/zFW7JHqNXknfIbfPO/ZSyIuGuGaM
 DjqmMqGXwKixMiAWuEx+aYRVUcZIQIJfwnKNDgLtbQ4nZmQkCDGUNdXlOwvHZFj4EmCh
 4LSQ==
X-Gm-Message-State: APjAAAXk6mMTRnhQKpgsMJHSqZLWjvxmdReg0sITdJaJTYE9RZLTsY+u
 +j0zQA2fQqBFce271cq4tBb5jDbEVVzom/KUIdI=
X-Google-Smtp-Source: APXvYqx4gN3JxQp/tGt4kloCeYK2ROb0PoRByzCaitZFDl0je6UeXKF8A38oGaQqfVnT/kLpU2DliUgvouJ0FD7oHBc=
X-Received: by 2002:a9d:7a90:: with SMTP id l16mr19600631otn.297.1566904772856; 
 Tue, 27 Aug 2019 04:19:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190827103353.109218-1-hsinyi@chromium.org>
In-Reply-To: <20190827103353.109218-1-hsinyi@chromium.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 27 Aug 2019 13:19:21 +0200
Message-ID: <CAMuHMdX4bDQcT1CSucH0+AWQ6Cv4ji6YNSWCtc2Pc3oF9=5oAw@mail.gmail.com>
Subject: Re: [PATCH] fdt: Update CRC check for rng-seed
To: Hsin-Yi Wang <hsinyi@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_041933_978968_8EE8B47D 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hsin-Yi,

Thanks for the prompt fix!

On Tue, Aug 27, 2019 at 12:34 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> Commit 428826f5358c ("fdt: add support for rng-seed") moves of_fdt_crc32
> from early_init_dt_verify() to early_init_dt_scan() since
> early_init_dt_scan_chosen() may modify fdt to erase rng-seed.
>
> However, arm and some other arch won't call early_init_dt_scan(), they
> call early_init_dt_verify() then early_init_dt_scan_nodes().
>
> Restore of_fdt_crc32 to early_init_dt_verify() then update it in
> early_init_dt_scan_chosen() if fdt if updated.
>
> Fixes: 428826f5358c ("fdt: add support for rng-seed")

Reported-by: Geert Uytterhoeven <geert+renesas@glider.be>

> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>

Tested-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
