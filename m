Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAABA187D1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 11:33:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1NIlSE74VZMgS0RcxMotFu1ZnZ6/P6+fPvmXDF+mkjE=; b=kTZQqGIJhzoovl
	wqeQBJMPg8bHRQ7P4nV0QQkJir/yCqybAj3NR+avHhWc1VYpWgOuZA4nMCgiGaHkt6slxr6rx01/2
	xtBv6x3kBvo51Ge7J8qjs1QyjfFgjrVhYaadds56fTxqnn2okIe5TFezsJjCQjAkxkKhqARmk2t+u
	Np1UVbkfddTBfE5d4HzxdyleBs/Dfnim8+3z1Sv8Qqdl3nyvtkzjOiFQWWjVitu2QQ0iXUPFYo/9Q
	ZB7XSQNj9HZX4nroHM1/W+ngnTT2ajU0PnEOiEcDyFSoP5zdH+Xbba3YSUvdC7BEGnBJFKU6Mq6vF
	7eGJ9rsnBSoy3Fm6wMEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOfQq-0006rd-Bs; Thu, 09 May 2019 09:33:40 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOfQb-0006qw-4M
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 09:33:26 +0000
Received: by mail-vk1-xa42.google.com with SMTP id d74so429515vka.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 02:33:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BjNhpWRs8f71yrAy3RgUQYa6ESreaTDpHDF1kJYFLi4=;
 b=KqSPRhDS3nRo6SLQ0wCjG0lGUyZOeVoZJ2tjzg1y89vGU86T/aglOfWjN70bV/PozK
 SAQdDSt46ucXZgJcYI6xYNd4nFSG3cVQgB9iMZzfJNa6xQHrZU54uFOofmTVvvGkCslG
 EuCVUYEKIrKT8zWq2ATAwg+uYKnBlO9FvOxNEbeiNlJPDQGtHBnNNkae9Yb7U4mf8+A0
 nUFznRgVCbXsfBW0qnQORreJPuSBrxVMUYohEHe/gMaq0Plod8r+j1aRgNCbAuzIJKpJ
 isFey/3STdqpSu7IJb0l+4UQADxf2l5/vKY43R4EPnXXLbuWjsvVfRs5YVzFw/GSo1NB
 2oag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BjNhpWRs8f71yrAy3RgUQYa6ESreaTDpHDF1kJYFLi4=;
 b=P6VU2DLg/4uixGJA5njBPnZ+XQnbZg85FDZ+ZPdjsbsblQFB9H+GKVlEeBOqLskDQw
 cPaldP01QHs7oZx03+vpJ9GFuubsAqZjV+q9nQgmJ1ZvNT8cFlYtnIqyBM5+NPkCmr5N
 fNCSJXXqOODE9UFVouiteoAXaRUWrCp3LWvO8Y7roAJjvNfqnhrj3K5kd+wwouvR/Bxx
 1ajp+qFmg4wMSjz9NEgsGlYSh5GaY1K6J0XsLrjEYzSscOQI/Rsugo6x3ptWH1Cj/2h3
 TmgruY8Vg1Jr+13hLzrueEO67ef97i7luiAsAc12HSWNIeYzhsOa8fWj7zCjTUSk9Mrx
 7Vcw==
X-Gm-Message-State: APjAAAXpde1nOowqU37+Dy/ETGb9egpMYPO7/QmxcFzSuli6NVBfWBH0
 576/aOrw51wppBbaG8wPiw4UPkO9PedHJYXlVR5ptg==
X-Google-Smtp-Source: APXvYqw6L3/4Ch+tH/DhayP44e50T5LigFBZhZJZQfM8xmm5TYt/0B4S7cFMoCH6vW3b0Xni4ybNxsJKxGoH6NVT8pU=
X-Received: by 2002:a1f:2d90:: with SMTP id t138mr1110666vkt.14.1557394402774; 
 Thu, 09 May 2019 02:33:22 -0700 (PDT)
MIME-Version: 1.0
References: <1557310449-30450-1-git-send-email-sumit.garg@linaro.org>
In-Reply-To: <1557310449-30450-1-git-send-email-sumit.garg@linaro.org>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Thu, 9 May 2019 15:03:11 +0530
Message-ID: <CAFA6WYMPKxwxzbU=CFYLw83kpXP9LwMQ3-N-hp2NyExhs_HjSQ@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: Add mailing list for the TEE subsystem
To: Jens Wiklander <jens.wiklander@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_023325_173572_66F50355 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: tee-dev@lists.linaro.org, Daniel Thompson <daniel.thompson@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 8 May 2019 at 15:44, Sumit Garg <sumit.garg@linaro.org> wrote:
>
> Add a mailing list for patch reviews and discussions related to TEE
> subsystem.
>
> Signed-off-by: Sumit Garg <sumit.garg@linaro.org>

I forgot to include following tag as this change was suggested by Daniel. So:

Suggested-by: Daniel Thompson <daniel.thompson@linaro.org>

-Sumit

> ---
>  MAINTAINERS | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 920a0a1..c05dff7 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -11556,11 +11556,13 @@ F:    drivers/scsi/st.h
>
>  OP-TEE DRIVER
>  M:     Jens Wiklander <jens.wiklander@linaro.org>
> +L:     tee-dev@lists.linaro.org
>  S:     Maintained
>  F:     drivers/tee/optee/
>
>  OP-TEE RANDOM NUMBER GENERATOR (RNG) DRIVER
>  M:     Sumit Garg <sumit.garg@linaro.org>
> +L:     tee-dev@lists.linaro.org
>  S:     Maintained
>  F:     drivers/char/hw_random/optee-rng.c
>
> @@ -15312,6 +15314,7 @@ F:      include/media/i2c/tw9910.h
>
>  TEE SUBSYSTEM
>  M:     Jens Wiklander <jens.wiklander@linaro.org>
> +L:     tee-dev@lists.linaro.org
>  S:     Maintained
>  F:     include/linux/tee_drv.h
>  F:     include/uapi/linux/tee.h
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
