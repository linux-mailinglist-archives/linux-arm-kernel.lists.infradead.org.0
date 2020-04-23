Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8ABB1B69D3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 01:30:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BlCaZhUu5lLdfJfQoUPFSfAgg5vf3na5pyKPU1FdPPA=; b=lwVFDNFwiJhRKj
	niHxBzHMDDbT9LV/xgLrhLHZZe51cil9LoWghte/ozVXRWe3rSYcdBhqhgFh5w0CKLQpJyFICoh4p
	DxLbh9Dh84QN7pu3bWrraZvsoRR6OdzT6NupFOZA/TVMPlq9fx7MY4l5KcZy+aKbjNOfMquGP90jE
	EhJ0Xs8qVBK3PAZ54R18H8pxMrextt8AdIT5TeSJ55CKLETpDggEETcI5GCzzrFMpPwTPAdOs3qc4
	ExxFN5SKAp1bAySIdj6kBkK5tvz1Qbry66SEPOdCkgsDiWZiu5j43F/VpcsDjjeeOu5QZIhdoRmDL
	Tk0gZXQ+j/NshVmok6VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRlIe-0001ju-IP; Thu, 23 Apr 2020 23:30:32 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRlIV-0001hu-Sn
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 23:30:25 +0000
Received: by mail-wm1-x343.google.com with SMTP id x4so8493953wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 16:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uchVp5ct5NTLhZVvanE9Yob+7KQS71FZ245ybgqrYpg=;
 b=SZkQDkb9TLduBTk4MzX8jiJVly+DgEtIxsdIlQXIPROjGX6pTCxD8NbYZ8nEa/MKWm
 ZHlAUgYuACLLT0EfB1DHUjKzQ5D1tCwYm4sHo/Q+PMe1Rs05sUjTPylHlqrFTHO4Pt9d
 owaHfCqoYkc0WyQJPFTljrf3muhx0/EvSvN5LKzWbTEaI/QkN5b0bH4K406H9DHvvp1s
 r5zovSz11/We6av/lJSgpT2Vo+NwSi3ad2fdlA49F01ATb45KKbcPi3gStgPDhXQyhUP
 9cM6YvRWFHXldc1XalLZbtWeTI3SxfvJrOkF2BG2RmoczIEbJbigVC/SuDmrVbBcB8kD
 /6sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uchVp5ct5NTLhZVvanE9Yob+7KQS71FZ245ybgqrYpg=;
 b=hiBalWOVnO2MhQo3L0luXpCyzVGWl22TM0W9ZMgX22+KN2Na0OFEz+WQ1CvexpG+AV
 rkPoBhfxmXd3lGntj0YkiPXLtw7B4eeJN+ERylYA2YRtQ6VDeyWxk0UvmXwzi6QUZd7/
 g2ccO4UKKRdZcl8dhg1OAp8QakGpAEFbzp5YRB0i/Zpftf92LF4gEOY7XrzuASdqqQpa
 Hw9/BZRvwfZuugRkfo80N1m+CW2KcNR0qEPyuLi5cAuhCxMYpnnm9afU/Bpw2F48lSIF
 wZVsN9EAxdpmWgN0UD5wF4SHdVrGKXKi9wgUnVOHwMKswjTqCQlc+oySTGr47+iUnubJ
 bT9A==
X-Gm-Message-State: AGi0PuYdhpdF30x1Dxt3qcpXOOoJOWZJOotBcfVVELYrhNQvrW4NHZeq
 0iIz4u/xmPlxQJ2eZpilRz1nH4CWeD8terLzyvYSdw==
X-Google-Smtp-Source: APiQypLrlQu8CnPoDk+mYjNaW8tKjDIYdTyNwKOYvChWP8VvZW9QDwzQ+PDZAawrmwFFO2596U0zQsA160Inu4A40b0=
X-Received: by 2002:a1c:384:: with SMTP id 126mr6779487wmd.58.1587684619053;
 Thu, 23 Apr 2020 16:30:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200421231403.199217-1-pcc@google.com>
In-Reply-To: <20200421231403.199217-1-pcc@google.com>
From: Peter Collingbourne <pcc@google.com>
Date: Thu, 23 Apr 2020 16:30:06 -0700
Message-ID: <CAMn1gO6Ki=3Znco6xr9h3MhxfTGCH-PYk3V+KxKi_tpNYDzVuA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: fast models: Fix FVP video RAM size
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_163023_957639_85C5C7D8 
X-CRM114-Status: GOOD (  17.26  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kevin Brodsky <kevin.brodsky@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 4:14 PM Peter Collingbourne <pcc@google.com> wrote:
>
> According to the Fast Models Reference Manual, FVP has 32MB of video
> RAM starting at physical address 0x18000000, but the DTS only declares
> 8MB. Fix that.

I may have sent this out too soon. After further debugging I
discovered that Android requires more than the designated 32MB of
video RAM.

It turns out that FVP supports DMA between the graphics device and
DRAM. Therefore I propose to change the DTS for FVP to use a dynamic
allocation of 256MB of DRAM for video RAM. I will send a patch to do
this shortly. With that (together with [1]) I can boot Android with
graphical output over DRM.

Peter

[1] https://patchwork.kernel.org/patch/11506759/


Peter
>
> Signed-off-by: Peter Collingbourne <pcc@google.com>
> ---
>  arch/arm64/boot/dts/arm/fvp-base-revc.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
> index 66381d89c1ce..72c018188c40 100644
> --- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
> +++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
> @@ -105,9 +105,9 @@ reserved-memory {
>
>                 /* Chipselect 2,00000000 is physically at 0x18000000 */
>                 vram: vram@18000000 {
> -                       /* 8 MB of designated video RAM */
> +                       /* 32 MB of designated video RAM */
>                         compatible = "shared-dma-pool";
> -                       reg = <0x00000000 0x18000000 0 0x00800000>;
> +                       reg = <0x00000000 0x18000000 0 0x02000000>;
>                         no-map;
>                 };
>         };
> --
> 2.26.1.301.g55bc3eb7cb9-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
