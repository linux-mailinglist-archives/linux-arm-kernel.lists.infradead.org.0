Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A052BB6CDD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 21:41:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7d9oApkQsXMBL66pRRYKCzQvS2pX681wl68d/9dBnTg=; b=mp7KICEJFKkkXo
	7HjTYOD8irpb2/VRvI4MiYP+6YXxgDrrRgzHphWAL+xFyRKxqlsNSShOunIMNC0PkEt+sI3TiZqkz
	2vKAixLVg3i0Dhdmu8Y0gIBJklICofdtiW5Rbd2FH1LhRj+70LQhp01vPQfX+uFn4hiUtgYo7b1tT
	pZoNMkvqCmQUwl2fctKFGfp81VV7xijSnL1RZog2FH7xitsfU5TQKnS2tvaYbdIfzd3xTvkpabxTX
	XvorqpBNRky2xCk0/G6HLbpBH2tRnOxCjRrad8doa+sxrdw7IZW8jWH2djCwLcUYoU1dC5zittpd1
	1kuDHnsBWnJQACmOdGuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAfpe-0005qk-Sl; Wed, 18 Sep 2019 19:41:42 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAfpU-0005qP-C7
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 19:41:33 +0000
Received: by mail-lj1-x241.google.com with SMTP id a22so1178278ljd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 12:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DUtNy6zmsY/nY12iTbVrTLFA5neR54fGcg9sdDNwfEY=;
 b=fVyFu7iCUvOtyuHv+Xj2YthhNrZOr4I5cNqzFjMxLMOPNrE71+G8H1jVo9wOMKgtTc
 TNIIlFcXqPJtyGWq7EIhgQ/QTvke2Pgso2evo8wAVJRrFT99b162lg4tZoUwvjLXnxF5
 bBF15QD8KKnIOevl3afUFS9klNlHkQ2aatRIk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DUtNy6zmsY/nY12iTbVrTLFA5neR54fGcg9sdDNwfEY=;
 b=UHRZLjg9aOyYsRqPaU4/YbYe7PdBYxwFNR+qpyfcCisCEryN1Xevpr6F90gOY0mvdK
 CtdXWkYVSIXXkwYdGyVS+LsfrjLZSmWwjhOb1OEV4hkwHMT0/mskBRNI5iDNbCexZ9OI
 AoofBw1kOCAEvxUZk9IC17BF8j5Ntn3XVUseYViwbJBWigLU51W721PMR3EwcuM51H3f
 tapYob/mcDc6EtFsTh5B4S5fMAwcN6st6TNfa7Whev5Ztkap/ctcHA/3bssz3PdfMC4Z
 cQ6587wYr4gbSY4BiRp2lFBNUSRlWoC2yDn108Tl4FLlD3WADz6qC305R+5JkXU8TQeV
 cqkA==
X-Gm-Message-State: APjAAAXCpA1edEDjbFY3e+WQi7S6eq+3XDrOX4fmfXc7aifY5WZb/+im
 dPmvacmyyCGGGeCnvhLtWQW6KuBBFWQ=
X-Google-Smtp-Source: APXvYqyYm3qrE3hwbjyu1sLKKOLsHQYpIzueJxX4ZlNK7IqzJcmC+Vrblrk4Hr6ve7Pi5sL7Wmx1Jw==
X-Received: by 2002:a2e:94cd:: with SMTP id r13mr3185242ljh.24.1568835689961; 
 Wed, 18 Sep 2019 12:41:29 -0700 (PDT)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com.
 [209.85.208.177])
 by smtp.gmail.com with ESMTPSA id v26sm1302652lfg.27.2019.09.18.12.41.28
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Sep 2019 12:41:29 -0700 (PDT)
Received: by mail-lj1-f177.google.com with SMTP id e17so1079539ljf.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 12:41:28 -0700 (PDT)
X-Received: by 2002:a2e:9881:: with SMTP id b1mr3145788ljj.134.1568835688462; 
 Wed, 18 Sep 2019 12:41:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190910160903.65694-1-swboyd@chromium.org>
 <20190910160903.65694-6-swboyd@chromium.org>
In-Reply-To: <20190910160903.65694-6-swboyd@chromium.org>
From: Evan Green <evgreen@chromium.org>
Date: Wed, 18 Sep 2019 12:40:52 -0700
X-Gmail-Original-Message-ID: <CAE=gft6=4m79QX8Bca9izRUUkumio_YKBNY8aY=XPjj=WE_BYA@mail.gmail.com>
Message-ID: <CAE=gft6=4m79QX8Bca9izRUUkumio_YKBNY8aY=XPjj=WE_BYA@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] soc: qcom: cmd-db: Map with read-only mappings
To: Stephen Boyd <swboyd@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_124132_416689_B6B86612 
X-CRM114-Status: GOOD (  18.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Will Deacon <will.deacon@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Andy Gross <agross@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Dan Williams <dan.j.williams@intel.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 9:09 AM Stephen Boyd <swboyd@chromium.org> wrote:
>
> The command DB is read-only already to the kernel because everything is
> const marked once we map it. Let's go one step further and try to map
> the memory as read-only in the page tables. This should make it harder
> for random code to corrupt the database and change the contents.
>
> Cc: Evan Green <evgreen@chromium.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Andy Gross <agross@kernel.org>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Dan Williams <dan.j.williams@intel.com>
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> ---
>  drivers/soc/qcom/cmd-db.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/soc/qcom/cmd-db.c b/drivers/soc/qcom/cmd-db.c
> index 10a34d26b753..6365e8260282 100644
> --- a/drivers/soc/qcom/cmd-db.c
> +++ b/drivers/soc/qcom/cmd-db.c
> @@ -240,7 +240,8 @@ static int cmd_db_dev_probe(struct platform_device *pdev)
>  {
>         int ret = 0;
>
> -       cmd_db_header = devm_memremap_reserved_mem(&pdev->dev, MEMREMAP_WB);
> +       cmd_db_header = devm_memremap_reserved_mem(&pdev->dev,
> +                                                  MEMREMAP_RO | MEMREMAP_WB);

It seems weird to have both flags, like: "It's read-only, but if it
ever did get written to somehow, make it writeback".

>         if (IS_ERR(cmd_db_header)) {
>                 ret = PTR_ERR(cmd_db_header);
>                 cmd_db_header = NULL;
> --
> Sent by a computer through tubes
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
