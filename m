Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8291AE314
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 19:04:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kAqcN7jdFWjMikgmc6DyBP4vEylxhB3P2am4r4tQd90=; b=jpN1OCeI9EjdM9
	3AItdqSF4RqzM9yTiqdPX6m2Z7pzd8XAEPWGoK81P7/xK9UjcYXcl+mWwnNFOjmntM2V1cJOuv1bY
	psJlXPLNZ9s8Zii5Znght4rVZ6tfUXOyRzJzQpbpfVkEX++2PepSMYKHoRRVCgrSgBMwuSIB1bysd
	ZnWSs5hzpgUfBwnJb2eCm3ITow+Jiu7XUSSNyejX97mWTwlMAZYv2vvO2e2IhM25PkqJIVnXs3GeH
	6KUmDrRH9ao4j1wREkhTIsKE/AufUnj/fD2Ka3hy1N/ZCDjK15kQJyjEQgQMpbM232RNR2tYTk7vZ
	8l+Z4GqMJtgXPv7MOTDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPUPy-0003k0-Lo; Fri, 17 Apr 2020 17:04:42 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPUPk-0003eP-TO
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 17:04:30 +0000
Received: by mail-io1-xd41.google.com with SMTP id 19so3032737ioz.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 10:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4lySji5eZr7vFRyXo+ccYCUZufUMHPBXSg6yDFBfT+0=;
 b=cPLUpW8n3CrcKqGSdBWo2qZR4aSmpF9ftFZ+jW/FhLcZDtbjVnLrWPHldUq6G4q18R
 uHnAt/ExkFHgTiWZyPw1571yLyTaII6dejTxO1K9JCbxeM4rqv4SazKR8NuHJLjOYdzh
 RBLshabzlDr9UEeKGsxqNJ+P0RRLpuiotqQqqGi8h7H7dvW8PaQj2VemkHAu3ax8G3kp
 L9iXqGPAwJ5s9wU4GsuRXfY/gnyEfkdQp5ipYFfRhsZhjpTRF1o3ygmDfSQ37Vffaw9h
 2UCGbC0JZ+b0HoMmCC3/JnFdPYERkS63qAGXwqBwizdwz+W/+GaTp/M/QAJ7RHJuYv7G
 9XdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4lySji5eZr7vFRyXo+ccYCUZufUMHPBXSg6yDFBfT+0=;
 b=VYij0xfEzhissCt6ltD3PuejFkHosYOJNPhq1YQZZEn/2bnXywIf84C9gd3fTV3zyz
 h4EUrfwY16iaWBaoQNlErYoC3GJWwBOikmf030bIl81MWRZeFldDvmCmT5g/0Zf8ePxv
 +4f6Q/3H/X6ErZZu4e/fyhx7KtVwSseYiGpwh2NFti5rlod3kNTf/JQ3cF+Vb6sPaXwu
 AkRVJa/tfHpddf3wOx3MsP9GeV7qJWAgEuGR4nKhuI6k+kJnU8uVFIp96GKDLD42udRg
 jpW/Vh3cnjNKVkhCk780q1Jiu6C4+K4IUTp+BtfnR+rrrFx+ku7P78xHET3ttasq44ph
 PScA==
X-Gm-Message-State: AGi0PubZX6KewKe6NmlHFvr3m97UC2rpfn+2y57fj1IBx79GpdfylO1a
 OVPqzCcwI6goaNiwHF2AO2CeXm/LoPWIz6DmBsLtSw==
X-Google-Smtp-Source: APiQypI9r6/CwVn7ZGYRSPvTc4tAXquIPq+CygktIDWtI503IFDTNxMoO6h/tMkgcO8GaCXcGtosrwZ0ZCzspSiKM5c=
X-Received: by 2002:a02:4445:: with SMTP id o66mr4093213jaa.36.1587143065543; 
 Fri, 17 Apr 2020 10:04:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200417002036.24359-1-s-anna@ti.com>
 <20200417002036.24359-3-s-anna@ti.com>
In-Reply-To: <20200417002036.24359-3-s-anna@ti.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Fri, 17 Apr 2020 11:04:14 -0600
Message-ID: <CANLsYkz1LF=stn1E1uBQzBrLvMxio6=UQxQ7=jN1cVNT7P3Dkg@mail.gmail.com>
Subject: Re: [PATCH 2/2] remoteproc: Use a local copy for the name field
To: Suman Anna <s-anna@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_100428_986525_37CF1067 
X-CRM114-Status: GOOD (  19.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-remoteproc <linux-remoteproc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 16 Apr 2020 at 18:20, Suman Anna <s-anna@ti.com> wrote:
>
> The current name field used in the remoteproc structure is simply
> a pointer to a name field supplied during the rproc_alloc() call.
> The pointer passed in by remoteproc drivers during registration is
> typically a dev_name pointer, but it is possible that the pointer
> will no longer remain valid if the devices themselves were created
> at runtime like in the case of of_platform_populate(), and were
> deleted upon any failures within the respective remoteproc driver
> probe function.
>
> So, allocate and maintain a local copy for this name field to
> keep it agnostic of the logic used in the remoteproc drivers.
>
> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
> v1:
>  - Patch baselined on top of Mathieu's rproc_alloc() refactor
>    series, and so addresses Bjorn's simplified cleanup comments
>  - Switch to {kstrdup/kfree}_const variants
> v0: https://patchwork.kernel.org/patch/11456385/
>
>  drivers/remoteproc/remoteproc_core.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> index e38f627059ac..3cebface3f26 100644
> --- a/drivers/remoteproc/remoteproc_core.c
> +++ b/drivers/remoteproc/remoteproc_core.c
> @@ -1984,6 +1984,7 @@ static void rproc_type_release(struct device *dev)
>
>         kfree(rproc->firmware);
>         kfree(rproc->ops);
> +       kfree_const(rproc->name);
>         kfree(rproc);
>  }
>
> @@ -2069,7 +2070,6 @@ struct rproc *rproc_alloc(struct device *dev, const char *name,
>         if (!rproc)
>                 return NULL;
>
> -       rproc->name = name;
>         rproc->priv = &rproc[1];
>         rproc->auto_boot = true;
>         rproc->elf_class = ELFCLASS32;
> @@ -2081,6 +2081,10 @@ struct rproc *rproc_alloc(struct device *dev, const char *name,
>         rproc->dev.driver_data = rproc;
>         idr_init(&rproc->notifyids);
>
> +       rproc->name = kstrdup_const(name, GFP_KERNEL);
> +       if (!rproc->name)
> +               goto put_device;
> +

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

>         if (rproc_alloc_firmware(rproc, name, firmware))
>                 goto put_device;
>
> --
> 2.26.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
