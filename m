Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1CD8115589
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 17:36:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7bwZaonOw7hoO7mN/kRoZSfWHj50JtZ0+tzyegO2PEk=; b=AgY9P9avJCKL+a
	w37B0TPLlwSdvTVtq8u20E8LDeTz3lOEUTUnkGVL4KcvkRvuixEIhcs/fWXEGZeIaWYyoDXQ8+Uya
	y69/bVw08deTSxls4LEj8QcJxrNBaAzYuZuAH6f9iAGM6l7fpIrTwjN9K8/ip/zwCH4MegKagyaJK
	md0B8sV+E9a9bLUGjaUjM40atJzCV892wHQMtz8JIJFbkASm0gUdCx6FEb60SlwP9N+HwLkNs+R60
	l6wt5thwZhffAxCOwq8ewAN/O/3aNyB2zWQ4NdbMjUdtyRX5MgZJMwicwrgfjejAMMurDAPxKEToh
	M2B4fYpNGmu75UkPML9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idGah-00017X-Ot; Fri, 06 Dec 2019 16:36:27 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idGaY-000179-3a
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 16:36:19 +0000
Received: by mail-vk1-xa42.google.com with SMTP id u189so2436689vkf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Dec 2019 08:36:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2rIGCZiFxrK+WtNHrkpDDxdkU8Xan2KVJr4DGoFMSA8=;
 b=KVlXLZjTo9M7gm1jYppQwF+6J31CRnFsGDnKSzKqGVlfBjNDpJFNQJKjImsdVptxJE
 lv1hu6ydMcvw75iBB95lco2lAQD2/c0qh7V3wPBlNBSDQ6e8Vnu+iCR3fwlCKmS8Jhey
 s+RR8O3qepPzKuqTf9ZpAwo576Bbq4oIiNiaQ7yBtQsHTB/GBCd2xFYzf33EP+9t/EXu
 lwB7dvjxuaRyUKwGwyBCuu/3lImlqGecqHZ7n3VX1al6Nn9DY/p4c12a1Rmb7FvEmkNz
 Qb06pXEgWo25WURBIQZAgfl7bnvFLG6ZAkvgGsLvHoQIyCt86NgL4CjFsXuEmz8dfAVC
 HDxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2rIGCZiFxrK+WtNHrkpDDxdkU8Xan2KVJr4DGoFMSA8=;
 b=eAvfQnTrgBpyIWEHHNMOssWJMC4mphZdUea/kfu9ErNPBQfeyDp8fwua2woNVbEoWT
 +LiHyS+7tbOujfQ0dKXxKffCrKYsngJt5VbwfdOAj5CwFQ5W9OCgznY1ebRQr+GGMFA6
 Me8os9y0rXTvH2xu9jcJvoQIuxWR0w0D+/RJOv1oiZd13ggJPGlf8YyTreBToUsPaS4i
 hzZxmhkLPLweWBAW1ORbqZ5LFFqjyrPSGe2o+F6uUfpUofJtxTl+MkmzZ9E6WXYgqjGQ
 sPCF/F6BaIqx/6SYJUReIVRtQrRPdiFSzkriAzk14Ke9hclmdiqfN4MwKRL8X1z3uKc3
 iHRg==
X-Gm-Message-State: APjAAAUCwIFpwoL4rw2fV5FXe3tgka8l1lrhI2s6Zb/pdWrje70CnpBC
 XVqp7ZoQwiz+unBwtpY3rouJR0sqcroCrUcIhA8d7w==
X-Google-Smtp-Source: APXvYqz5RLn7Dg5mikGzOGnCvPKBHRXDmmdr7kaJYH6HhT/kq5rpL/nbSwDkdx+TzDtjAFmMl2qnzpchw/R3dxa7THM=
X-Received: by 2002:a1f:250b:: with SMTP id l11mr12181787vkl.10.1575650176275; 
 Fri, 06 Dec 2019 08:36:16 -0800 (PST)
MIME-Version: 1.0
References: <20191205181258.27334-1-catalin.marinas@arm.com>
In-Reply-To: <20191205181258.27334-1-catalin.marinas@arm.com>
From: Evgenii Stepanov <eugenis@google.com>
Date: Fri, 6 Dec 2019 08:36:05 -0800
Message-ID: <CAFKCwrjZe4hmhrrohv=hqZ1P6tYM3DQhxwOaP3pdPuBOJgNP5w@mail.gmail.com>
Subject: Re: [PATCH] arm64: Validate tagged addresses in access_ok() called
 from kernel threads
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_083618_175548_9E2D8649 
X-CRM114-Status: GOOD (  18.73  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I can confirm that this patch fixes the issue. Thank you!

Tested-by: Evgenii Stepanov <eugenis@google.com>


On Thu, Dec 5, 2019 at 10:13 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> __range_ok(), invoked from access_ok(), clears the tag of the user
> address only if CONFIG_ARM64_TAGGED_ADDR_ABI is enabled and the thread
> opted in to the relaxed ABI. The latter sets the TIF_TAGGED_ADDR thread
> flag. In the case of asynchronous I/O (e.g. io_submit()), the
> access_ok() may be called from a kernel thread. Since kernel threads
> don't have TIF_TAGGED_ADDR set, access_ok() will fail for valid tagged
> user addresses. Example from the ffs_user_copy_worker() thread:
>
>         use_mm(io_data->mm);
>         ret = ffs_copy_to_iter(io_data->buf, ret, &io_data->data);
>         unuse_mm(io_data->mm);
>
> Relax the __range_ok() check to always untag the user address if called
> in the context of a kernel thread. The user pointers would have already
> been checked via aio_setup_rw() -> import_{single_range,iovec}() at the
> time of the asynchronous I/O request.
>
> Fixes: 63f0c6037965 ("arm64: Introduce prctl() options to control the tagged user addresses ABI")
> Cc: <stable@vger.kernel.org> # 5.4.x-
> Cc: Will Deacon <will@kernel.org>
> Reported-by: Evgenii Stepanov <eugenis@google.com>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> ---
>  arch/arm64/include/asm/uaccess.h | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
> index 097d6bfac0b7..cccb03e1ab1f 100644
> --- a/arch/arm64/include/asm/uaccess.h
> +++ b/arch/arm64/include/asm/uaccess.h
> @@ -62,8 +62,13 @@ static inline unsigned long __range_ok(const void __user *addr, unsigned long si
>  {
>         unsigned long ret, limit = current_thread_info()->addr_limit;
>
> +       /*
> +        * Asynchronous I/O running in a kernel thread does not have the
> +        * TIF_TAGGED_ADDR flag of the process owning the mm, so always untag
> +        * the user address before checking.
> +        */
>         if (IS_ENABLED(CONFIG_ARM64_TAGGED_ADDR_ABI) &&
> -           test_thread_flag(TIF_TAGGED_ADDR))
> +           (current->flags & PF_KTHREAD || test_thread_flag(TIF_TAGGED_ADDR)))
>                 addr = untagged_addr(addr);
>
>         __chk_user_ptr(addr);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
