Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2ED01918C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 19:20:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t1jfGcv6B0tHy2IZZ70hnor4uMyRhyTb/UCYtTaxFV8=; b=g8rSSE7+I7vvU9
	R+sV2qGX8mu25IIKjMXLr4NXgjgS8zD5wJ/zDTDz9Dlr/g/O6gjRnPX3Y/EEmGIPB7edUC2sW028o
	Svvo+F+Sg3t1BdLcBwBJn47LrVLpEkbGzrQwPT6L899wDvqkhLd7O3sB9iDOkGn0PlaL5ZUYnUF6S
	kJCTXpxipBGnMPRUGYsWl3btl+pMj8D4hQAWD75NZR9qgETiFdUseCuKnq1SbLoEjwrr9EuOnggxs
	CfqiNTxM1a4PGUTH6QbuG5AdCcmDPGgrkbRFN9iYjKsW57iXmgKQklLfFY94XTk8ptjrg0B5DKCya
	h/qt09idNrNxJHTq+47Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGoA5-0007T8-FT; Tue, 24 Mar 2020 18:20:25 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGo9p-00075f-1w
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 18:20:10 +0000
Received: by mail-wr1-x444.google.com with SMTP id h15so10547924wrx.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 11:20:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5boZkE9mtLWRumoMDmqMli0NJFmU93xeIvLvpM87gfw=;
 b=whSkNHx1BBanN1liBCudFnc3kKywdcLMEX3Yh8RvDunkpOwDRyHXHgVLCZiojrHxOO
 lJaHPL1QosC0CHSPZOgpuja0l2QCLCYVqG399lIAOyzTVzJElFJKNsHMLg+RA62MiZQf
 dC+8aUTRZhH9w0IaWysWCOa61H2ZwZ4jcshmuSEUmK53Pq7AbImpVbPu241Kj1fDCYT9
 o0nyTdR1cv9e9ECyY4n28iqeSy9P5cU8hx2Xhclh/O3KsZ3YcZ/PGN0JidtVkMY4uUyf
 ImwVHVUXtE2xS7e8SNqM8lnK25gZjsqpFGk9NbxNSQpY17xeOcUu4tABntarjvQMNxUb
 9/LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5boZkE9mtLWRumoMDmqMli0NJFmU93xeIvLvpM87gfw=;
 b=iyT4PCKCly6FNy4XP7hbyIhXNVi0YW/plCv2oFdozw4UzH1XNNlzRme/bbjFjOY7G0
 0Jf5XhA0zskqYZ+zGZIpwILmhT2IKojYLS4CUtyHRLInuxbfn9M57S0jp1K8/0piKsiK
 hDLYX7cFwyKMLpOLuRqXCaBTzYPewQ2PN4r6xRYcDwMYcBdnrvgTo+0yhAKa6HT0Ggzk
 lPH6zWhRX6vTvCJtRgj1mGn7QIl9sm0hx0DxouJmdEt1Z88w7UgcUVDq0kN9FlhNecNO
 o/7VqFusOJcRRf25FMPl7Awr0a+xt9Af3DnyBLpvzEvQtbPth4qyp4I59dD40Ibar/Ii
 hzSA==
X-Gm-Message-State: ANhLgQ3wCnF092jvwUXMS4H0RIgJaQfOrbxqNhoXBSNTj4wVuRLVundl
 kJcz0CPAdm8wC+qCtL6vhZc/KYRPsxFMRgykeqY+h0nsBmI=
X-Google-Smtp-Source: ADFU+vvN1KLTkh9eSLVKuN6sGl10YDoBmiB+6ZS2yHqRuQGCVOv6AiUkLGyp3CR/XLDnu+ehtNIUOehmm8jdzHaDLAw=
X-Received: by 2002:adf:afdb:: with SMTP id y27mr38870133wrd.208.1585074007381; 
 Tue, 24 Mar 2020 11:20:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200323123336.8728-1-broonie@kernel.org>
In-Reply-To: <20200323123336.8728-1-broonie@kernel.org>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 24 Mar 2020 19:19:56 +0100
Message-ID: <CAKv+Gu-wX+gN+2YiK+PmpLe=+wKBE08yXGDNpwrgcS+eS6hX4A@mail.gmail.com>
Subject: Re: [PATCH] arm64: head: Convert install_el2_stub to SYM_INNER_LABEL
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_112009_198183_D37F0DF0 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 23 Mar 2020 at 13:33, Mark Brown <broonie@kernel.org> wrote:
>
> New assembly annotations have recently been introduced which aim to
> make the way we describe symbols in assembly more consistent. Recently the
> arm64 assembler was converted to use these but install_el2_stub was missed.
>
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  arch/arm64/kernel/head.S | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
> index a06727354fad..22c6a04f6b82 100644
> --- a/arch/arm64/kernel/head.S
> +++ b/arch/arm64/kernel/head.S
> @@ -600,7 +600,7 @@ set_hcr:
>         isb
>         ret
>
> -install_el2_stub:
> +SYM_INNER_LABEL(install_el2_stub, SYM_L_GLOBAL)

Shouldn't this be SYM_L_LOCAL?

>         /*
>          * When VHE is not in use, early init of EL2 and EL1 needs to be
>          * done here.
> --
> 2.20.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
