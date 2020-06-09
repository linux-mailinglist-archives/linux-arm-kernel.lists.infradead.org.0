Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81ED51F4004
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 17:59:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t6/2Qi8snHP6Z5YKVh/oJY/k9NpDaA15cMCIXCt7D+A=; b=Eko9VzBrHHIOC1
	26HShwuvv2S7Z5Yqm1w7IkVQqHaWq6fPD/UmBDWXz4fWM/Bf1dFP8xgSZoQiVh5YJm2ogegqtXmuk
	pG7lUdpb04HHzbaV0P+u0y3QKyTORY5Q1uiLsUnU8iBDqhiI3PMlKbjzBid2lmywqOVnGYV8q31qC
	/ch7mYMXWKkzRn9qdX4lNFWHdUo0pVlf7ZVD8WVTVwjFKwKYo715UcWu8UouKn3AJHQMBcEAqiqwb
	JdoqUiWdihLjqXYbLh1G18aSHuginVCFraXB6e/qQJfD9DSaM2r0PXABFBGEEzYHbx2tCykm851U4
	LRgzuoDFTcK/7490c0VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jigem-0006mT-Va; Tue, 09 Jun 2020 15:59:21 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jigeb-0006m7-5K
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 15:59:10 +0000
Received: by mail-il1-x143.google.com with SMTP id g3so20764432ilq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 08:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=y7SNiI5A6RVtZsHvA5zBiQnX39Ic6ndLkU+dDGZxkkE=;
 b=BYvYUZgKPOiFqhDqHbdFaVtVeJjo2pF7jf1ADysyareZY2mE4JGcQkzWaTDD40WYr9
 rFsr99M5cb58XA+NucQrVrbraWMQKkQOnByLp3ArV3tE+p6LIQpWDb5q8GXyVna1RXsH
 8XvEZItxotESA+kA9wSCI+i1eisarnUJ/tKVc/XVlldBXDeoMjuvSp6QoPHDktjB6I26
 As3IEs6xOqwP4bavd8E4NI8w0pAsUTvIZ/oewpgNE0SkevnlK7NrW75K1gn1CSOrCmei
 N4zXN0vWMHe5hLTpfmrSvAM3KYJjns0Vxnc4yE1ECaYPUXayuSn38H2DsKjFYrp4nkAD
 Nm9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y7SNiI5A6RVtZsHvA5zBiQnX39Ic6ndLkU+dDGZxkkE=;
 b=CO6CTUnxHFo4DkrxSpiPJN7xcu+8//03ZiR6YEmwIgk0jK+FhKTH0YBwXpIdwJIbC6
 oKXE5cCVXjlWrM85jgMA16svzIviEYrAr1nINyFN7nhQk7xlSZ6u6PxAr+LGFXmnJJnC
 o3CvN+j5oFEQDJRPXdv4RAwcm3HKMRRNtg5G93xGbuG+9sMgnFlvVIASKSusdWWaOvZa
 ymyEtxR/eHtp3juaj/RYxiAp4IbYQ3ieXAq20ila8gYi8dvjB/rfYmnI4IEO8qbrmmp2
 6/tq+NSr7vHZakwDn94M7b+LG328rG69AeuWTxoIh4wk9F+yLhBu4bGO+6MUglbNK/r6
 LKzg==
X-Gm-Message-State: AOAM532iUiSRujgnMCQWis1+PbkWk76UFSvLH1iMO1p6hAfaDMpRhilE
 pUhghxwq/DOunqI4FlkPJldd1O1tABx6Jprk46I=
X-Google-Smtp-Source: ABdhPJwrxzXrTqDvIYEv7sGYGoTfNgdI9+AwSKTngZ8wOe8qpPn+MALOTP1Ir5yJrOFe2XEpcp7yexnICas3NiVZxPk=
X-Received: by 2002:a92:914a:: with SMTP id t71mr27627735ild.200.1591718348616; 
 Tue, 09 Jun 2020 08:59:08 -0700 (PDT)
MIME-Version: 1.0
References: <1591605038-8682-1-git-send-email-dillon.minfei@gmail.com>
 <1591605038-8682-2-git-send-email-dillon.minfei@gmail.com>
In-Reply-To: <1591605038-8682-2-git-send-email-dillon.minfei@gmail.com>
From: dillon min <dillon.minfei@gmail.com>
Date: Tue, 9 Jun 2020 23:58:32 +0800
Message-ID: <CAL9mu0KWq-ANkLBRv_49kGzWf_kDPjMvMeA7S4E6f5MpVtjKaw@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: stm32: Setup 4M bytes reserved memory for
 mmap
To: Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@st.com>, linux@armlinux.org.uk, 
 Vladimir Murzin <vladimir.murzin@arm.com>,
 Kate Stewart <kstewart@linuxfoundation.org>, 
 allison@lohutok.net, info@metux.net, tglx@linutronix.de, hch@lst.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_085909_198388_CDC3B91C 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christoph Hellwig,

This is the patchset. for your reference.

thanks,

On Mon, Jun 8, 2020 at 4:30 PM <dillon.minfei@gmail.com> wrote:
>
> From: dillon min <dillon.minfei@gmail.com>
>
> To mmap a framebuffer or v4l2 buffer from kernel to userspace on
> no-mmu platform, we need rely on 'arm_nommu_dma_ops' from
> arch/arm/mm/dma-mapping-nommu.c , so setup 4M bytes memory
> reserved for this purpose.
>
> Signed-off-by: dillon min <dillon.minfei@gmail.com>
> ---
>  arch/arm/boot/dts/stm32f469-disco.dts | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>
> diff --git a/arch/arm/boot/dts/stm32f469-disco.dts b/arch/arm/boot/dts/stm32f469-disco.dts
> index 9397db0c43de..082b24ee81f7 100644
> --- a/arch/arm/boot/dts/stm32f469-disco.dts
> +++ b/arch/arm/boot/dts/stm32f469-disco.dts
> @@ -65,6 +65,20 @@
>                 reg = <0x00000000 0x1000000>;
>         };
>
> +       reserved-memory {
> +               #address-cells = <1>;
> +               #size-cells = <1>;
> +               ranges;
> +
> +               linux,dma {
> +                       compatible = "shared-dma-pool";
> +                       size = <0x400000>;
> +                       no-map;
> +                       linux,dma-default;
> +               };
> +
> +       };
> +
>         aliases {
>                 serial0 = &usart3;
>         };
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
