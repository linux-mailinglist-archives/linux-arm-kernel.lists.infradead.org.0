Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A014A837
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 19:23:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3wqyIEV1tjzHKOw0pBfIStnqWR8nU2Ri7S162foy0xM=; b=LLv1xDobwHIZyN
	CoPcbiSZrqfaozlnEeMjKUmlqTXP5YJ4S/sZNfUuN4gzTHUtjg2JdisWu/AZlo9GbmeSCrlBlxXPa
	TlWcI5OyZAd3KhEFzobDVfTmLJxvTvkNSasVZCHxvazzMSUcOf0ZQsdD4I/HP96aiIgYm3kxlyPZv
	RVoSjzV8gdAjAif9+fxnWxiqqEohIGYd3bGKzOcYNw54bT6emiBVt+lYr1BoOyIKYYwZ9jKxo/BDu
	bv1GfxemTr+VnniqFvq2dqvmJBAULOmKod84zn4Tvah/qgnsn3QsAld2PHuwHkkyzEQsuC+R+bXdH
	pnTAC8zoOwz3lGDe1O9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdHpo-0006ki-My; Tue, 18 Jun 2019 17:23:52 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdHpY-0006eJ-Vk
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 17:23:38 +0000
Received: by mail-io1-xd43.google.com with SMTP id u19so31598964ior.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 10:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=31CQoYWndUD6bpJ1UrOiQPufPpNyp2omY2nX6aWKqPw=;
 b=laceDRsA2Chtz3DchQl/fkgBwdNhhSZ4AzXC0VraHynOCgqrACgIZwr91LzHC8gDUy
 anPyVXyB/uKnPB1eRQPPxYOcJ6+HRHm/w8W6Vbe3OnhPOD1Csw7UR+WncsjXMowwK5LG
 1+Zy3m5b/FTUyIssmgMHJ7vA68zGS63LG7FUoJfS4MK/Sk2siUaYg3msmzIRHooatDEL
 7CFBPghEQOrpU7Oc8uX+k672M6G1Z9QLlVdiGG3//bFrEq0nImZUy9L1mJ15I1rqszeg
 Y3KtjpquEkRSmG5QogOOqqwPkRsnvTuqiNA1PpDLJXZWdFIuF93apXh56xC6h5qzmwGD
 IRxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=31CQoYWndUD6bpJ1UrOiQPufPpNyp2omY2nX6aWKqPw=;
 b=ceDZA9BX55JZFvxeuZOXQgypxKOyCX6ybIvO/bpyA+m+RjtlMv7/qEtEqQ1VoRsHtY
 YJ8HoIe3bUqhxArsNpVLF3CaOWbon3lX+uDHY2q6Xu3fiCOvbXMOB9kE3loC75RILXGz
 qf1G77mLdhR+kGy55ZzR3n6SocI5QoATtlYmmUDartmsYa21gmUNMgUcdwPJZxM1sujD
 3H6mx+FPvhCzjafpvObDOyc66pkst8cr/pZATfRjt2g+B7P3NmOtSH4d4ow90fyb59tx
 1b3nUNFFW+5bx/Z+dmYBUEpuqKrzpTHMy9B975UJ6OdaBN3A+REin4sKODPeELgQrM2K
 zdHQ==
X-Gm-Message-State: APjAAAX1bRF9E2QerOjqRaag8zs9Jt5ixZ/QGSb7K4JUaBJOo6rJCXu5
 Z5fMk9BAHvdaWY9OhtqVnBI09u3H6n5wfUJELL7WcQ==
X-Google-Smtp-Source: APXvYqxwi+vsQDnxQu3lwSAUzbgZkRTa0i5oBdTkE/Atgmdfrssz4ZX0nXpfJQ69fPoRLPp76UZKfwwA8nGklNL/zFY=
X-Received: by 2002:a05:6638:40c:: with SMTP id
 q12mr4391330jap.17.1560878615711; 
 Tue, 18 Jun 2019 10:23:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190618155246.GA17788@kroah.com>
In-Reply-To: <20190618155246.GA17788@kroah.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 18 Jun 2019 11:23:25 -0600
Message-ID: <CANLsYkzTgwY=EAE8E98jpyO6uVQnKN3SAKhRwSUCRhQTO+rV0w@mail.gmail.com>
Subject: Re: [PATCH] coresight: cpu-debug: no need to check return value of
 debugfs_create functions
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_102337_037205_CCE60A27 
X-CRM114-Status: GOOD (  17.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Greg,

On Tue, 18 Jun 2019 at 09:52, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> When calling debugfs functions, there is no need to ever check the
> return value.  The function can work or not, but the code logic should
> never do something different based on this.

Looking around in the kernel there is no shortage of instances where
the return value of debugfs functions are checked and the logic
altered based on these values.  But there are also just as many that
don't...  It also seems counter intuitive to ignore the return value
of any function, something that in most case is guaranteed to raise
admonition.

That being said I am sure there is a good reason to support your
position - would you mind expanding a little so that I can follow?

Thanks,
Mathieu

>
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  drivers/hwtracing/coresight/coresight-cpu-debug.c | 15 ++-------------
>  1 file changed, 2 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-cpu-debug.c b/drivers/hwtracing/coresight/coresight-cpu-debug.c
> index e8819d750938..6446ed69ab2f 100644
> --- a/drivers/hwtracing/coresight/coresight-cpu-debug.c
> +++ b/drivers/hwtracing/coresight/coresight-cpu-debug.c
> @@ -525,23 +525,12 @@ static const struct file_operations debug_func_knob_fops = {
>
>  static int debug_func_init(void)
>  {
> -       struct dentry *file;
>         int ret;
>
>         /* Create debugfs node */
>         debug_debugfs_dir = debugfs_create_dir("coresight_cpu_debug", NULL);
> -       if (!debug_debugfs_dir) {
> -               pr_err("%s: unable to create debugfs directory\n", __func__);
> -               return -ENOMEM;
> -       }
> -
> -       file = debugfs_create_file("enable", 0644, debug_debugfs_dir, NULL,
> -                                  &debug_func_knob_fops);
> -       if (!file) {
> -               pr_err("%s: unable to create enable knob file\n", __func__);
> -               ret = -ENOMEM;
> -               goto err;
> -       }
> +       debugfs_create_file("enable", 0644, debug_debugfs_dir, NULL,
> +                           &debug_func_knob_fops);
>
>         /* Register function to be called for panic */
>         ret = atomic_notifier_chain_register(&panic_notifier_list,
> --
> 2.22.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
