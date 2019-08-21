Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 177C3971D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 07:59:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AZcI95meimrf+0hbOvjAHpBuSSiwM9mOs4HUtFVxyE8=; b=q1gU6GnDQcHU+j
	syZsriPJfaIvKAjPLpdsx3jVP65PBJvA//iyBv0a1+cApp0x7Ub4iIwg7+oK22l41+zY7qYs+JvgW
	TtQQRNemElbZ9yqDLlE5qwdrxZKpEb6mut/yUodcV46+S9xsIHrGKXM5PH+klX5XBQbBQj0xHG83a
	W6MbRxdd8BYO4sGYQQEQcUBV/Ba8sGj0v5Y7o0sIhDafmDC7B8t22kBV+tFDjtvoCgrFOIMxEYLWR
	dppk3XU9W/kw+CVtjDlPoNaAi+Zk0HpA4ddqfWHq9LfcNGzuZhMXFsU9Ao8Zqwkanzm6tUysYu40k
	FPXlKhVwPeCbwkuvmg0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Je5-0001oe-U4; Wed, 21 Aug 2019 05:58:58 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Jcj-0000KX-FI
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 05:57:35 +0000
Received: by mail-qk1-x744.google.com with SMTP id 201so826712qkm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 22:57:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=t6gYotOZasUlghj+5miHn6itbPw1Xxo5qoWX2c4AJZ0=;
 b=fRkSaGl8rcNZIMIyKlWAiXym9k7PM2Njj2vuF5xfVsWAvvzvhYS7QuzqjU8iNsynLW
 xjKCE0oaS2TZzsErSCZ+bXBoJshE2B6JY9ANXMpLIOzFkshoyNCGPE5lODc42z3c8AYn
 6EA+e6LSO18ss01/caCZqVLCqS5xyEzO+wHRw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t6gYotOZasUlghj+5miHn6itbPw1Xxo5qoWX2c4AJZ0=;
 b=Xoj+Bwl7/S5wuO6vRIy4mFHGjBsz9Lm3kANgJC14xCa0EeV/8w5AaiSPGh2+XknEgf
 kDkPwSmcGkFZbeUYIO60Zr+48BKQs2VASut9MNDpi7JKvcbaxzGOZpRZUN70BivAZM0k
 V8zr+A/nXfPkIEEjxjmZCQKzVMgArvf9WpZJi0kZfeVexbOS7zML2P8dr5/yyhj8GcSp
 N+MchakijQICyxk2yUZ5+hayD4KifCkSwydPV9HxZBr++m3XaFWppqVXUPEdXFRY/W7p
 e9gGQwyEv0ZtuyURLN9Mdu+QoHrmJp+RO7nj/b0qPftgmTdfY3GCm/9O7kclw30b2KZK
 zI3A==
X-Gm-Message-State: APjAAAXs1ORkcv2CD3kWjxGKlmbJZ6iC8kQku79UlhTGDEonhWjQsPDk
 raUYrqNOVUDMWPrgK6Mk9A31I+MAmggPfvSfGEEVpQ==
X-Google-Smtp-Source: APXvYqxC6HcxP1uepjmB3Azy4g3yRYVzUlDR2q/OUNQULPHyMxoFB38jRqS6lWI2lvQ0KTTrE5fN1aakFroOXkZTJWc=
X-Received: by 2002:a05:620a:16c3:: with SMTP id
 a3mr28335159qkn.315.1566367052074; 
 Tue, 20 Aug 2019 22:57:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190819071602.139014-1-hsinyi@chromium.org>
 <20190819071602.139014-3-hsinyi@chromium.org>
 <20190819181349.GE10349@mit.edu>
 <CAJMQK-ghQ8weMerXW7t0DFZTAg_c5M80Yp5DTAtyY2LA7YpS1A@mail.gmail.com>
 <CAKv+Gu_qJUU2hRujjv6e5yPqPQXRXokBU_2mSGD3civ2d2+xhw@mail.gmail.com>
In-Reply-To: <CAKv+Gu_qJUU2hRujjv6e5yPqPQXRXokBU_2mSGD3civ2d2+xhw@mail.gmail.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Wed, 21 Aug 2019 13:57:05 +0800
Message-ID: <CAJMQK-hdYz+pW5QL41nXkZAX1qiRynaWg7cne48qCaQsuPrSCg@mail.gmail.com>
Subject: Re: [PATCH v8 2/3] fdt: add support for rng-seed
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_225733_615293_2BA2CE6D 
X-CRM114-Status: GOOD (  21.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
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

Then we'd still use add_device_randomness() in case that bootloader
provides weak entropy.

On Tue, Aug 20, 2019 at 7:14 PM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:
>
> On Tue, 20 Aug 2019 at 10:43, Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> >
> > Hi Ted,
> >
> > Thanks for raising this question.
> >
> > For UEFI based system, they have a config table that carries rng seed
> > and can be passed to device randomness. However, they also use
> > add_device_randomness (not sure if it's the same reason that they
> > can't guarantee _all_ bootloader can be trusted)
>
> The config table is actually a Linux invention: it is populated by the
> EFI stub code (which is part of the kernel) based on the output of a
> call into the EFI_RNG_PROTOCOL, which is defined in the UEFI spec, but
> optional and not widely available.
>
> I have opted for add_device_randomness() since there is no way to
> establish the quality level of the output of EFI_RNG_PROTOCOL, and so
> it is currently only used to prevent the bootup state of the entropy
> pool to be too predictable, and the output does not contribute to the
> entropy estimate kept by the RNG core.
>
>
> > This patch is to let DT based system also have similar features, which
> > can make initial random number stronger. (We only care initial
> > situation here, since more entropy would be added to kernel as time
> > goes on )
> >
> > Conservatively, we can use add_device_randomness() as well, which
> > would pass buffer to crng_slow_load() instead of crng_fast_load().
> > But I think we should trust bootloader here. Whoever wants to use this
> > feature should make sure their bootloader can pass valid (random
> > enough) seeds. If they are not sure, they can just don't add the
> > property to DT.
>
> It is the firmware that adds the property to the DT, not the user.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
