Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A0F383C4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 07:34:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oB+KTX2mixGrT/NMEwKmDE0TYfnYUqGQCRBaNyXSdqU=; b=WTA5dIkwXHw16g
	Xm8vhxWCXuz/vsKS+bkGQQGVWTZtbsQl3Kui14nQbwQ+2uO3Tp+YZtyhMgVaQ29QfEALZSGqK8Q7E
	trjbj3bINxgKKgexN+LvQifwiJwq1sIJWC84T/kNpLJ3dDbulvnQoIjUXDkv1HZH2I2uQ1USo0TG4
	UqcfenswXukn7+oKC672HafjT1qdfR3JdtmrH3HRptC0Azqwu0yb/EyrjOCqaS9LsySJlAz+HlSxD
	/44CrEgPl2qpoua7H6TAiV1Sfp7palcjC8Yb1QoVKc3x8YEHiZzCZYyChn7Hl4Z+6QLwgzB+kH0j2
	dJJkHIbVGrAKe+L1AWOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ7Vs-000131-FB; Fri, 07 Jun 2019 05:34:04 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ7Vf-000127-Am
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 05:33:52 +0000
Received: by mail-it1-x141.google.com with SMTP id m3so969717itl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 22:33:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=I1Ohgac363EioDxzXpyXf7UN1ZgVyShBjggu94kceQ8=;
 b=k/GR7joJNJJ6Ve9R/aFsDJRsptZAid18wqkAKiXzRB6NlE5r0KsuMRDWBQiDjQE71p
 daD8j4DSrVfI6HVAkD5vCpZj39PQaq9fApbZACjRC0RDDKZIBpn7/PLmAhGU1uSNjV36
 ZPpnk1tioX9M+1EYWJoeTvWylBd+vbf5sKkC6jEafyQKFEFkOanMnEF7whEz4Nqwt4hG
 bE4l9bBTG0ogocOQzuioUmmPSF5w+Ho92/o1cceuVe444tHP69yQxu8DSewMXHLCqg4l
 Ja6TZAP9vQDDI+y+jUJx9i8y337VPVjbLYX5aoIkmB6O4W9ByhkvQ0wvmaFU4t1VIu/d
 h8DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=I1Ohgac363EioDxzXpyXf7UN1ZgVyShBjggu94kceQ8=;
 b=dfGMnEEXTGMlU1dkyYfEiw1jq1MDdUQfThY7vXaovEjVttTLNQC97W+R/x2T3gYYee
 V2L7C4rqxp65LevXqrMuWr21BDZZMxdhlMWZ78laI1wgBtKuDqR1u7f3A1XG8Z/c3LgC
 DOnWyBeqluW05zRa4PRRK1pyMjN3fE4124SNCJzT7KG9Ha3pRZq4wBfHjcOPzBjxZz5M
 zory/E5mRITPNHHk9H8fXpq32bjc8xRe0GtzNsTsPl3rUpmKZdrqdxz6BaqAuQLAqSS1
 PsFKXeK8VKxtuA0Yi4xu5qO+boC5SuiexO+IG9NrqIA5f99rmYjvIoFdqdlju5VUqPKB
 a+hg==
X-Gm-Message-State: APjAAAWfUZCFHXMNrNzEoqqgHjZ92ahWp5D8IBMAmiLgW31BudXZQybe
 grIlSPNjdyNR2bU94zcgwEVLcWo5hKxmm7mjh+ktZQ==
X-Google-Smtp-Source: APXvYqzO76FNbL4lc2mT5nAI8664+vPAEC2qxggUSScGxp/b2eT89TkEwyH+hzeEqr8qRCV6LZQ9VkHcX6jY2/9nElY=
X-Received: by 2002:a05:660c:752:: with SMTP id
 a18mr2789419itl.63.1559885629583; 
 Thu, 06 Jun 2019 22:33:49 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1559580831.git.andreyknvl@google.com>
 <dc3f3092abbc0d48e51b2e2a2ca8f4c4f69fa0f4.1559580831.git.andreyknvl@google.com>
In-Reply-To: <dc3f3092abbc0d48e51b2e2a2ca8f4c4f69fa0f4.1559580831.git.andreyknvl@google.com>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Fri, 7 Jun 2019 07:33:38 +0200
Message-ID: <CAHUa44E+g3YTcja+7qgx+iABVd48DbrMMOm0sbyMwf0U6F5NPw@mail.gmail.com>
Subject: Re: [PATCH v16 14/16] tee,
 arm64: untag user pointers in tee_shm_register
To: Andrey Konovalov <andreyknvl@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_223351_405762_532A8415 
X-CRM114-Status: GOOD (  16.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Khalid Aziz <khalid.aziz@oracle.com>, linux-kselftest@vger.kernel.org,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Lee Smith <Lee.Smith@arm.com>, Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 3, 2019 at 6:56 PM Andrey Konovalov <andreyknvl@google.com> wrote:
>
> This patch is a part of a series that extends arm64 kernel ABI to allow to
> pass tagged user pointers (with the top byte set to something else other
> than 0x00) as syscall arguments.
>
> tee_shm_register()->optee_shm_unregister()->check_mem_type() uses provided
> user pointers for vma lookups (via __check_mem_type()), which can only by
> done with untagged pointers.
>
> Untag user pointers in this function.
>
> Signed-off-by: Andrey Konovalov <andreyknvl@google.com>

Acked-by: Jens Wiklander <jens.wiklander@linaro.org>

> ---
>  drivers/tee/tee_shm.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/tee/tee_shm.c b/drivers/tee/tee_shm.c
> index 49fd7312e2aa..96945f4cefb8 100644
> --- a/drivers/tee/tee_shm.c
> +++ b/drivers/tee/tee_shm.c
> @@ -263,6 +263,7 @@ struct tee_shm *tee_shm_register(struct tee_context *ctx, unsigned long addr,
>         shm->teedev = teedev;
>         shm->ctx = ctx;
>         shm->id = -1;
> +       addr = untagged_addr(addr);
>         start = rounddown(addr, PAGE_SIZE);
>         shm->offset = addr - start;
>         shm->size = length;
> --
> 2.22.0.rc1.311.g5d7573a151-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
