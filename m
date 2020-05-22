Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6FAB1DF10C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 23:25:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J6Ek//B+Y4/cfx6LjhpTq+eAgql882xVUZAcxJn/aEE=; b=etF4g/GMl2XdnP
	k1u5Ny8lpTqwXuGFwNTS38tQpnP8y5InC5ANUEIuyaFO74eAQyJhkDPWRPCsKyaKqm8UxlnOj9WrG
	MuhId3w4SL5DOHlIZC+XK6fQOw/wdwK17PmWuMkxou/duDoiIX5cDIWmMOItNAJhFsWkNTn0ofReH
	N5SfIXBSWo5cpqJ6GkOFSzCxIDsnSOja4tt/ckIV3okpU+Lrwrar2eNTptG0W5goNJfEQgv3B4TJY
	KgXIOJRZ7ftSPk/0iss6jCAxmQUwnjX0kyIB9TWF+AstyrbhGoNWrrIhOEo/qRxmT/H6YrTwt7iLG
	tGxena+Z8UHJu4pTBjwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcFAc-0007qP-0S; Fri, 22 May 2020 21:25:34 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcFA7-0005K8-Ri
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 21:25:05 +0000
Received: by mail-io1-f66.google.com with SMTP id h10so12904711iob.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 14:25:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CTkSYFeyEICq4BQf/4yKxmOZ5ACYCOJzi1wgxve1pBQ=;
 b=QtyK0yHvXKWaNJvXS7Nc4alawqAa/U4t+Xs3LrwvEQ5gEVnQpYYsAUH7NyTTjTXjPL
 rVhAq//HmLGr9jW6cq2FGxWmEr9O60k3b6UTlJ/E6AlxOXimSOC9Iqu4l+lrq5LNDNCF
 ZJ7AvkpWEZl6qT8+8hnFfNY2j7nFMn2EfvUENQaYCs/KbdXEMC3+JXsww4Q2UZqEU+wC
 GHjeWOhtWMLDdBzcv2zLGuYSTax28JpSGHpmIsqSyIHGwKb35ixzRzyrumB9EegHLTwp
 Gz4I5CNqERdG3YksvYOmHN/jVeQ6m/4MDr04uFSFRLPIVlcYUr+Cvl1Hfr4IPYQAAz5Z
 S88Q==
X-Gm-Message-State: AOAM533x+PjnaP0ZF7yensVni1T8pmOtYUPLLkBbnTRhFBaf6ztgnzkK
 +0zBXeuH/+bkIHWWyb3bT83oTKIb
X-Google-Smtp-Source: ABdhPJyeR3I/42+JLqvVuYp2spY1xaW9fTzb1dtoe6imMcO3Y0HLFHNPs7jE5eiu+7tTqI4V0bqo7Q==
X-Received: by 2002:a6b:6414:: with SMTP id t20mr4795854iog.32.1590182701114; 
 Fri, 22 May 2020 14:25:01 -0700 (PDT)
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com.
 [209.85.166.178])
 by smtp.gmail.com with ESMTPSA id u203sm4039645iod.54.2020.05.22.14.25.00
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 May 2020 14:25:00 -0700 (PDT)
Received: by mail-il1-f178.google.com with SMTP id 17so12149177ilj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 14:25:00 -0700 (PDT)
X-Received: by 2002:a05:6e02:54b:: with SMTP id
 i11mr7075081ils.50.1590182700558; 
 Fri, 22 May 2020 14:25:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200507185301.GA14333@embeddedor>
In-Reply-To: <20200507185301.GA14333@embeddedor>
From: Li Yang <leoyang.li@nxp.com>
Date: Fri, 22 May 2020 16:24:37 -0500
X-Gmail-Original-Message-ID: <CADRPPNQy5PE8vDLCu+XeZpXDab=OnrLcUjWG5F0=uy00QXOQnw@mail.gmail.com>
Message-ID: <CADRPPNQy5PE8vDLCu+XeZpXDab=OnrLcUjWG5F0=uy00QXOQnw@mail.gmail.com>
Subject: Re: [PATCH] treewide: Replace zero-length array with flexible-array
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_142504_006771_01A6C522 
X-CRM114-Status: GOOD (  19.35  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pku.leo[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 lkml <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 7, 2020 at 1:49 PM Gustavo A. R. Silva
<gustavoars@kernel.org> wrote:
>
> The current codebase makes use of the zero-length array language
> extension to the C90 standard, but the preferred mechanism to declare
> variable-length types such as these ones is a flexible array member[1][2],
> introduced in C99:
>
> struct foo {
>         int stuff;
>         struct boo array[];
> };
>
> By making use of the mechanism above, we will get a compiler warning
> in case the flexible array does not occur last in the structure, which
> will help us prevent some kind of undefined behavior bugs from being
> inadvertently introduced[3] to the codebase from now on.
>
> Also, notice that, dynamic memory allocations won't be affected by
> this change:
>
> "Flexible array members have incomplete type, and so the sizeof operator
> may not be applied. As a quirk of the original implementation of
> zero-length arrays, sizeof evaluates to zero."[1]
>
> sizeof(flexible-array-member) triggers a warning because flexible array
> members have incomplete type[1]. There are some instances of code in
> which the sizeof operator is being incorrectly/erroneously applied to
> zero-length arrays and the result is zero. Such instances may be hiding
> some bugs. So, this work (flexible-array member conversions) will also
> help to get completely rid of those sorts of issues.
>
> This issue was found with the help of Coccinelle.
>
> [1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
> [2] https://github.com/KSPP/linux/issues/21
> [3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")
>
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> ---
>  include/linux/fsl/bestcomm/bestcomm.h |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied for next.  Thanks.

Regards,
Leo

>
> diff --git a/include/linux/fsl/bestcomm/bestcomm.h b/include/linux/fsl/bestcomm/bestcomm.h
> index a0e2e6b19b57..154e541ce57e 100644
> --- a/include/linux/fsl/bestcomm/bestcomm.h
> +++ b/include/linux/fsl/bestcomm/bestcomm.h
> @@ -27,7 +27,7 @@
>   */
>  struct bcom_bd {
>         u32     status;
> -       u32     data[0];        /* variable payload size */
> +       u32     data[]; /* variable payload size */
>  };
>
>  /* ======================================================================== */
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
