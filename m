Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 237CD9725A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 08:39:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R+R0S01Ih86jOnUgLBWg1tFdDbZwPCUMIa7Pgp4Kbt4=; b=RAj73GZI4m/z43
	KFYX4Euovzlj0CN/xFIsi+AnUyEy+tVltm0TDZmaC/9cckMOgdDt70SJD31psfRtfTDl4r8dvytpF
	JC3x3nL+K4rJOTfyFk3jigG0RmfwLneHKbf+ZYPpE+XlwfiWrJvn9F4/yx+1obw6/3NsMf1rcFRvA
	Ihvw/JBITPOpQjkoW6tjtL4Wb6yX47SsvnrvLvNkP2CBxLjahVFbe4UuYq7WN49PfFyZtVhpw8GWd
	hkpolhYL4b5T526bfN/Mbj9rIhP3i1QHkRGslAxTRLnASYYoJI675AGh9YenH0BpzZ+mrMj/SK+AX
	xMRn1nSiPowakAK/y2dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0KHg-0005EB-F7; Wed, 21 Aug 2019 06:39:52 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0KHS-0005Dk-SS
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 06:39:40 +0000
Received: by mail-wr1-x441.google.com with SMTP id y8so850889wrn.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 23:39:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=U+7whJW84Q49Ku+tw2Y5QNdnttATl2VRa7WB7fHg68o=;
 b=rwvLYMbeP8ySJGdV0IkNoD91ZQfFrN1kEmdG5r2tdlTMkc4ps7w13HZSXF0Ibzum1/
 UVlXDqdXkLra+2adVVO2z6Xo7hstLOgtvXF/hZXb7bDyWBj+XEjTIpAdsxMcthMiDSwn
 f2LwUot26mNiOU+PCm8geyufK6dABTXIwUmzeTg9T2Z04fGf8IIHLqnEHOEcYLdeBIRT
 pGDxXnLYDvBcX8eqkJIi5991g5o7HM5mWW3AzpSot9JlL4DZnWSt7gZ0KnHmo5mOxOn8
 KimVeaSqaJ7H4afIgL6dh/KoJigQivEOJnUsPoyaPavm/rg/zZUZ+GgdhUb6vPIzdNCu
 znTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U+7whJW84Q49Ku+tw2Y5QNdnttATl2VRa7WB7fHg68o=;
 b=eapGxtrDqN8NTG3Ho6qz38XFN6KvbAkAcd+z+MUwLgmY8R9AOxL18xLGFlqxb66S8c
 pdDEqIZlt7rcI2sYZOuFH+od4Y0sXviDBPhUpF2s1bPj7A228A/wWqOdTSZb+Ilz+jCR
 XJh1wf3uae4LDL61/4y+uZDLcJ+HBRJ3LMqu+uOZrd+/eU2ne5FEeO/vU+HI3HHMB1gl
 aVV0aSMuQ26YNq2E4sYUh7eNg6hGpQpzCDaZpjCaxJp1TnkkpGSc1W/mO+I84tVbsr70
 n0SwBcTVBGdPJaJzZwPon9A6fUq83v+eiw/Rvfr8S4wY9cKO2wYkDiO3l+zOQ7+oSr7y
 hYtg==
X-Gm-Message-State: APjAAAW59mdfeqFS/yEErUlnfUooUPNybSdKanbe7kU+nkpL8Qs+achP
 y7whqkaPJ77rgIoXP3Lrz3LlyE8jyk5Np/S7X/21+g==
X-Google-Smtp-Source: APXvYqyrX+9pSLpQEjc0TgjWjVFX2qvDP4gyHjSJFa0BWPhsO0V7XtNUPTgXWKQXf3YQVQrHi13L+S8xjP312PFd24Q=
X-Received: by 2002:a5d:5450:: with SMTP id w16mr25168992wrv.174.1566369576336; 
 Tue, 20 Aug 2019 23:39:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190819071602.139014-1-hsinyi@chromium.org>
 <20190819071602.139014-3-hsinyi@chromium.org>
 <20190819181349.GE10349@mit.edu>
 <CAJMQK-ghQ8weMerXW7t0DFZTAg_c5M80Yp5DTAtyY2LA7YpS1A@mail.gmail.com>
 <CAKv+Gu_qJUU2hRujjv6e5yPqPQXRXokBU_2mSGD3civ2d2+xhw@mail.gmail.com>
 <CAJMQK-hdYz+pW5QL41nXkZAX1qiRynaWg7cne48qCaQsuPrSCg@mail.gmail.com>
In-Reply-To: <CAJMQK-hdYz+pW5QL41nXkZAX1qiRynaWg7cne48qCaQsuPrSCg@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 21 Aug 2019 09:39:28 +0300
Message-ID: <CAKv+Gu-kp-LqCCx=h2TJxzns4KpM-UEjz3md0u3hbVOyp+iFtA@mail.gmail.com>
Subject: Re: [PATCH v8 2/3] fdt: add support for rng-seed
To: Hsin-Yi Wang <hsinyi@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_233938_933652_C2B19F00 
X-CRM114-Status: GOOD (  24.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 "Theodore Y. Ts'o" <tytso@mit.edu>, Yu Zhao <yuzhao@google.com>,
 Kees Cook <keescook@chromium.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Stephen Boyd <swboyd@chromium.org>, Will Deacon <will.deacon@arm.com>,
 lkml <linux-kernel@vger.kernel.org>, Mike Rapoport <rppt@linux.ibm.com>,
 Jun Yao <yaojun8558363@gmail.com>, Miles Chen <miles.chen@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, James Morse <james.morse@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 21 Aug 2019 at 08:57, Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> Then we'd still use add_device_randomness() in case that bootloader
> provides weak entropy.
>

(please don't top post)

Whether to trust the firmware provided entropy is a policy decision,
and typically, we try to avoid dictating policy in the kernel, and
instead, we try to provide a sane default but give the user control
over it.

So in this case, we should probably introduce
add_firmware_randomness() with a Kconfig/cmdline option pair to decide
whether it should be trusted or not (or reuse the one we have for
trusting RDRAND etc)


> On Tue, Aug 20, 2019 at 7:14 PM Ard Biesheuvel
> <ard.biesheuvel@linaro.org> wrote:
> >
> > On Tue, 20 Aug 2019 at 10:43, Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> > >
> > > Hi Ted,
> > >
> > > Thanks for raising this question.
> > >
> > > For UEFI based system, they have a config table that carries rng seed
> > > and can be passed to device randomness. However, they also use
> > > add_device_randomness (not sure if it's the same reason that they
> > > can't guarantee _all_ bootloader can be trusted)
> >
> > The config table is actually a Linux invention: it is populated by the
> > EFI stub code (which is part of the kernel) based on the output of a
> > call into the EFI_RNG_PROTOCOL, which is defined in the UEFI spec, but
> > optional and not widely available.
> >
> > I have opted for add_device_randomness() since there is no way to
> > establish the quality level of the output of EFI_RNG_PROTOCOL, and so
> > it is currently only used to prevent the bootup state of the entropy
> > pool to be too predictable, and the output does not contribute to the
> > entropy estimate kept by the RNG core.
> >
> >
> > > This patch is to let DT based system also have similar features, which
> > > can make initial random number stronger. (We only care initial
> > > situation here, since more entropy would be added to kernel as time
> > > goes on )
> > >
> > > Conservatively, we can use add_device_randomness() as well, which
> > > would pass buffer to crng_slow_load() instead of crng_fast_load().
> > > But I think we should trust bootloader here. Whoever wants to use this
> > > feature should make sure their bootloader can pass valid (random
> > > enough) seeds. If they are not sure, they can just don't add the
> > > property to DT.
> >
> > It is the firmware that adds the property to the DT, not the user.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
