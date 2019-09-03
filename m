Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 044C8A6772
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 13:34:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A2/bXjBAyEEWVis5NSvx8EhzuwYcOC2wng6bfvyn924=; b=NG3nZoX8auyPkp
	MFEPNRkMmMMhmQ3QnGDwvqHHk11Hs4LIJeam9mWpNlKxFUnacOpq8a1zEWSrdlpj4wpeyKXtHDEhv
	IPcI/0uCcKQ1scmkJQi65U85tKhCpAqC3zK15fUIaGsriUXSr7Hhl6qefb8Dt/M1xzBCaAs5yieHN
	HkgmESc16fZs/LHlqXPMl+z74vgyg6L/RHo0SYySVmh19uvwzzYuQiyOIHJtlU+YoumJAdkaKS251
	0f6GIto9+QwWpnKFV2U15GYa7U5vjeLWrmf4gk+XCCum7vnpGznVWo8wLvv8saIojb2qCmKmhvtjP
	m2irNY1gC+bqf3VTKC9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i574g-0003py-1T; Tue, 03 Sep 2019 11:34:14 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i574S-0003pN-S8
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 11:34:02 +0000
Received: by mail-ot1-x344.google.com with SMTP id g16so4485014otp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 04:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XtxHXKLfW5QJwBGA+RR9lcAadfuUNqWWH2+7dJcY6l8=;
 b=wDvVk5e0nozBCiHVpIJ1ag0McMj21a4LnQhk0VwHhzsl21zYG3/FYXtHN/gUQR/qwI
 DQ4nXwRjv+5mKj4QwJcpR0ZAN3IhvqFizCBzmL1ZNU0hnKclsxK56/VuG73N2ZAtpxSA
 0Qj1vwhiPppNFvUDzZ7vZbEa7IYHFa0HjqZktvpweEF6+6yOecujjcAGJ30EBIat4pIQ
 y64j6SBsRT3rCskUD0jU9xXYh6EcT1sftyeldRF4iEeAibREHceCb3sJKew1Hc0qEPWh
 I+FPgFDTiENXz/Xu+DWTL5cinxcSaGb7hgdzGTRAJwjPSGaskJrTfLTWUWrBW4DO8yZs
 xS/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XtxHXKLfW5QJwBGA+RR9lcAadfuUNqWWH2+7dJcY6l8=;
 b=TMkf5jQBHCbSN1cqylyGKa4C4luqpQ2o7XaYmlOFxRyu9pJurxkaHog+1oPVs5KUE7
 WhpQ2f8LjRyJTerFbZFYXYivwT8wdTW9Vz/xsKzCRyIyqkNfgf4z2II0WxJoefey7z3K
 uxMdlbteyeAyuPxXdLU7WImir3BYtGE9CBLrhYsR8QGuibMIFYNb6CBMEh5szUAG2a/R
 PutmtbEQmMxCz0P+lvUMjY4FlfXoNQ3+wmLjmXEzHZDDzF4fMo+tWSq9qbjnl33S8k5r
 ZzBut4Xub+X9sgpt6u8BJFdrfB9IultKJQdX7SXJQhl8S0HyqeadVrpCUiRStsNzZgNN
 lsnw==
X-Gm-Message-State: APjAAAXjydlAb/3kmV3FBLoAkAX0P14QQWkxCE5INLEv0qnZJo0b8pZi
 TE0IifFniJNEXO4niITr60QniHlKkjlt6sAyOtBMNw==
X-Google-Smtp-Source: APXvYqyoKS7/0TF1tdmLXrX9ofvDMLr2r/p8mHmpyBd5yntAm033XmhU1CGaf4hTCyzl8TYx1jaWNrydF4XT7x42HGQ=
X-Received: by 2002:a9d:5e10:: with SMTP id d16mr28380255oti.91.1567510439153; 
 Tue, 03 Sep 2019 04:33:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190818140710.23920-1-maz@kernel.org>
In-Reply-To: <20190818140710.23920-1-maz@kernel.org>
From: Peter Maydell <peter.maydell@linaro.org>
Date: Tue, 3 Sep 2019 12:33:48 +0100
Message-ID: <CAFEAcA-25Cm9ZgSkgXDomEs7jt4sn4z3GeXLt4hvU4P1D0vJCA@mail.gmail.com>
Subject: Re: [PATCH] KVM: arm/arm64: vgic: Allow more than 256 vcpus for
 KVM_IRQ_LINE
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_043400_943774_B3403F2D 
X-CRM114-Status: GOOD (  21.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
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
Cc: kvm-devel <kvm@vger.kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 qemu-arm <qemu-arm@nongnu.org>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Zenghui Yu <yuzenghui@huawei.com>, kvmarm@lists.cs.columbia.edu,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 18 Aug 2019 at 15:07, Marc Zyngier <maz@kernel.org> wrote:
>
> While parts of the VGIC support a large number of vcpus (we
> bravely allow up to 512), other parts are more limited.
>
> One of these limits is visible in the KVM_IRQ_LINE ioctl, which
> only allows 256 vcpus to be signalled when using the CPU or PPI
> types. Unfortunately, we've cornered ourselves badly by allocating
> all the bits in the irq field.
>
> Since the irq_type subfield (8 bit wide) is currently only taking
> the values 0, 1 and 2 (and we have been careful not to allow anything
> else), let's reduce this field to only 4 bits, and allocate the
> remaining 4 bits to a vcpu2_index, which acts as a multiplier:
>
>   vcpu_id = 256 * vcpu2_index + vcpu_index
>
> With that, and a new capability (KVM_CAP_ARM_IRQ_LINE_LAYOUT_2)
> allowing this to be discovered, it becomes possible to inject
> PPIs to up to 4096 vcpus. But please just don't.
>
> Reported-by: Zenghui Yu <yuzenghui@huawei.com>
> Signed-off-by: Marc Zyngier <maz@kernel.org>

> diff --git a/Documentation/virt/kvm/api.txt b/Documentation/virt/kvm/api.txt
> index 2d067767b617..85518bfb2a99 100644
> --- a/Documentation/virt/kvm/api.txt
> +++ b/Documentation/virt/kvm/api.txt
> @@ -753,8 +753,8 @@ in-kernel irqchip (GIC), and for in-kernel irqchip can tell the GIC to
>  use PPIs designated for specific cpus.  The irq field is interpreted
>  like this:
>
> -  bits:  | 31 ... 24 | 23  ... 16 | 15    ...    0 |
> -  field: | irq_type  | vcpu_index |     irq_id     |
> +  bits:  |  31 ... 28  | 27 ... 24 | 23  ... 16 | 15 ... 0 |
> +  field: | vcpu2_index | irq_type  | vcpu_index |  irq_id  |
>
>  The irq_type field has the following values:
>  - irq_type[0]: out-of-kernel GIC: irq_id 0 is IRQ, irq_id 1 is FIQ
> @@ -766,6 +766,10 @@ The irq_type field has the following values:
>
>  In both cases, level is used to assert/deassert the line.
>
> +When KVM_CAP_ARM_IRQ_LINE_LAYOUT_2 is supported, the target vcpu is
> +identified as (256 * vcpu2_index + vcpu_index). Otherwise, vcpu2_index
> +must be zero.
> +
>  struct kvm_irq_level {
>         union {
>                 __u32 irq;     /* GSI */

> diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
> index 35a069815baf..c1385911de69 100644
> --- a/virt/kvm/arm/arm.c
> +++ b/virt/kvm/arm/arm.c
> @@ -182,6 +182,7 @@ int kvm_vm_ioctl_check_extension(struct kvm *kvm, long ext)
>         int r;
>         switch (ext) {
>         case KVM_CAP_IRQCHIP:
> +       case KVM_CAP_ARM_IRQ_LINE_LAYOUT_2:
>                 r = vgic_present;
>                 break;

Shouldn't we be advertising the capability always, not just if
the VGIC is present? The KVM_IRQ_LINE ioctl can be used for
directly signalling IRQs to vCPUs even if we're using an
out-of-kernel irqchip model.

The general principle of the API change/extension looks OK to me.

thanks
-- PMM

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
