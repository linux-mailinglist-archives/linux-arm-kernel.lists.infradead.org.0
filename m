Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84CD21322FF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 10:53:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+UTC1tHO6UXW2ewKjLiHp12mY2PN2f7Fc3unnyEqomM=; b=EuCepVfxxbPQMe
	+C1jJGgjp+CoW7kXNFLVtDUijPKeffL1N9fIGf32OcbywChuUmbcC82NmNcnW9eiLMCQBS0pUOQ/p
	kni1SPoOxFkLK+RBXSXjkOeTGCAkABz2mGJPBWA84objRjAGKL7WikdTJh2/6YRhbYqvnAk85s5MO
	b3N6xLEVUD9W/bR51RK5iTAZGtI0Q1JMWtkRF7/1ehwFZcwTJGIl1Qnyu75kXf4rVHZ2yJX/EmyIS
	52otOzyhRQtg1EbpgQbwl/NZhB0juV06QhqgV82fzafMGSMDI237viC+7IZIKwQTxwX4oxLZd++/u
	Ov1pYM6SVlxg13VsvN0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iolY5-0002S6-Mr; Tue, 07 Jan 2020 09:53:17 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iolXy-0002R4-Az; Tue, 07 Jan 2020 09:53:11 +0000
Received: by mail-ot1-f66.google.com with SMTP id w21so67952051otj.7;
 Tue, 07 Jan 2020 01:53:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rcKJiBOHF/a0+MDVGltwkYmA7kAiSShXv3OfBucNo/w=;
 b=pe4RPRfIY9fTPoD8IcMt+0jxr6fSPWQOhoDeI5uGclBPNrUdlSdSCdMYlMK+cGtEkc
 dvdoDnMt4uiEOFF3NXuhCBEiukfx0vyyDjcY72KzEjfYtUczDfRkdBHU/fk/KIQJF0Dm
 nHCnJVhCaeAR9I59Dm9JSZ7VEdk5ZdgZQ7l2OZbhAxmPXFYW6Uy/2SiSHMU3VB5F+AVc
 BM872P4OQMfmhkvtLoGk2UTnSednY/Xs3LpU/5cb8xyUdeveyTiwY8u5zEkeKVMIYTT+
 HxrNWY9PffQPYw3mjALYpK2lb8wJqL/zBcqjcRuxyckDXxMLnTmfIvrgeeZ7DG/b4QFl
 MefQ==
X-Gm-Message-State: APjAAAW0efuIR0cbBk3/UUdLj5CZ3TxjJzncoEM9+T+dEvSh8F39fpAS
 fI3W7JUOjaPB9Xn84Vxgs/MRBsYc3aPMY75isFw=
X-Google-Smtp-Source: APXvYqyijdjeyq4HJ5FCDcI015uTWnvTRQoFeaQRgxTWy1DfLN1zgBL6llgNmNnOtPrGgkpTZXmDGjkn5Is6S8EHkt8=
X-Received: by 2002:a9d:62c7:: with SMTP id z7mr111166052otk.189.1578390788841; 
 Tue, 07 Jan 2020 01:53:08 -0800 (PST)
MIME-Version: 1.0
References: <20200106045833.1725-1-masahiroy@kernel.org>
In-Reply-To: <20200106045833.1725-1-masahiroy@kernel.org>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 7 Jan 2020 10:52:57 +0100
Message-ID: <CAJZ5v0jBEq+GiTP8V4ZzQvR9qbSBdEz_P8EZNX7yNZMzTjB86Q@mail.gmail.com>
Subject: Re: [PATCH] treewide: remove redundent IS_ERR() before error code
 check
To: Masahiro Yamada <masahiroy@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_015310_378241_7ACB561E 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..."
 <alsa-devel@alsa-project.org>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 netdev <netdev@vger.kernel.org>, linux-gpio@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Julia Lawall <julia.lawall@lip6.fr>, linux-mtd@lists.infradead.org,
 linux-crypto@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-i2c <linux-i2c@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 6, 2020 at 6:11 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> 'PTR_ERR(p) == -E*' is a stronger condition than IS_ERR(p).
> Hence, IS_ERR(p) is unneeded.
>
> The semantic patch that generates this commit is as follows:
>
> // <smpl>
> @@
> expression ptr;
> constant error_code;
> @@
> -IS_ERR(ptr) && (PTR_ERR(ptr) == - error_code)
> +PTR_ERR(ptr) == - error_code
> // </smpl>
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---

Acked-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

for the acpi/scan.c change, but there seems to be a typo in the subject:

s/redundent/redundant/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
