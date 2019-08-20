Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3269395D03
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 13:14:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TAssMUpFDKUEryL83+Y8O8K2qU3OFXxBYmeJwa5Di5A=; b=oZ3rQBfeVOEbMS
	dqyeHvlY8JQ2Zwd8yu2Eangp8vW1eWKMKU8fm/yKHdxCw1Mu7B0B8fyIz8/XUyxFZELcbk7ADhMYO
	45nQx7DJCnbZVvCRvMmEuiH/Cox6h9xS5GoO4AHN0dOA5TaLAv3jfr7B957RIFHjAvU1IzxS3KNAa
	w6Ae/mVqeZYuWL1EnKiq5ozwcPiN48g7qc/nmFEVKQ8hIo/QkDvnaAq/0kdphlWud3kdXea8y+YJ1
	ToNDGbvM7nz9jOLOcsY9IgcOfRhfnt8iVqmJoZ7bu1CulsE5E0rSjwKjbgz9eKbV6lfadFSHJHP1c
	Y1YkkPGxpZp34KJMg4cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0268-0001ZC-HJ; Tue, 20 Aug 2019 11:14:44 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i025w-0001Ye-08
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 11:14:33 +0000
Received: by mail-wr1-x444.google.com with SMTP id z1so11945228wru.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 04:14:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MRQJ+YcRBrLZ+LgU7cW1tMLpibGXEBh4atKjQOVEfXU=;
 b=N602lxG8vpSrmGWjvR1XljSyBYd0DjQUFLh4T8umT44074G3gYOo2sAREhNXeKGjtC
 jok8+4nz/M5e0aqh4mVhyNDDl+VUtWzJbRwRMwElirMWXzdGd08AIV8OqpDvv5jFPCBj
 JT9dVUenhoIHZGReBwimvlJk90Jtavzdv1ZReDeBq0nUnBDzJe/UP+VycMympEueswZ8
 MJSTs+OmnRr9xv/BAKM2AHO3vUV8aNrvgtiPvahi8uO97PYc5uJvNtVCdj4XSeFsulav
 sfG/VeYfKvWV9HPPJRG6p2/3mX7K8IC2O+g99vHpaQNx+5D1jXqfg4s9CXe2i5Bwl2Ay
 9lww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MRQJ+YcRBrLZ+LgU7cW1tMLpibGXEBh4atKjQOVEfXU=;
 b=DxbY0/bagIKX/PwVOnoMlBjy7gpk/Z7IqPPVQ8BBbNcVXA2XIlSaExAp15ndvcifuN
 V9aF/NJpUtnHMhsN+xZZU4oNSD5WH+yuqHAfTGgefukh3JQ3Z7k/C60Ku9PP87C3J3k4
 VSsiRrRoU+ymWaojKbCynBrFM/hVQKAIAJTmieqceV2UZimtMYVk/3kojtfXBl0nYORn
 TawKB7gU2gq0YDrx1nKrRDF/gfnQURRfmNhWsP9PYzoHKGgp+am8XrdzwXyJCrZyCJ8W
 5qaSxfKBu673lgTzrGfWVbQ+SNOLJgq5ZbQYDvym+/xSEZA6svRMY4bMQ5XMhc9hP5eb
 9kQQ==
X-Gm-Message-State: APjAAAUtgEE9ksAQ2UybGo2qxMCtzMkcP5Pm8Kw0qxocMQNjkMe8yKRQ
 UWQynuGrM2Jl3qj7Nr20og11aq2xvQ9IqYezsNqLaA==
X-Google-Smtp-Source: APXvYqwersajj8U78aWRH4Pqq7XyMqeU8A2Xgf8/IDh3Q7bnOUdoJ9c+hs7rviwoyYqWqYB/ydO/OpoIVygIgkEn+wI=
X-Received: by 2002:a05:6000:128d:: with SMTP id
 f13mr1035997wrx.241.1566299669401; 
 Tue, 20 Aug 2019 04:14:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190819071602.139014-1-hsinyi@chromium.org>
 <20190819071602.139014-3-hsinyi@chromium.org>
 <20190819181349.GE10349@mit.edu>
 <CAJMQK-ghQ8weMerXW7t0DFZTAg_c5M80Yp5DTAtyY2LA7YpS1A@mail.gmail.com>
In-Reply-To: <CAJMQK-ghQ8weMerXW7t0DFZTAg_c5M80Yp5DTAtyY2LA7YpS1A@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 20 Aug 2019 14:14:18 +0300
Message-ID: <CAKv+Gu_qJUU2hRujjv6e5yPqPQXRXokBU_2mSGD3civ2d2+xhw@mail.gmail.com>
Subject: Re: [PATCH v8 2/3] fdt: add support for rng-seed
To: Hsin-Yi Wang <hsinyi@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_041432_050380_239D6683 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

On Tue, 20 Aug 2019 at 10:43, Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> Hi Ted,
>
> Thanks for raising this question.
>
> For UEFI based system, they have a config table that carries rng seed
> and can be passed to device randomness. However, they also use
> add_device_randomness (not sure if it's the same reason that they
> can't guarantee _all_ bootloader can be trusted)

The config table is actually a Linux invention: it is populated by the
EFI stub code (which is part of the kernel) based on the output of a
call into the EFI_RNG_PROTOCOL, which is defined in the UEFI spec, but
optional and not widely available.

I have opted for add_device_randomness() since there is no way to
establish the quality level of the output of EFI_RNG_PROTOCOL, and so
it is currently only used to prevent the bootup state of the entropy
pool to be too predictable, and the output does not contribute to the
entropy estimate kept by the RNG core.


> This patch is to let DT based system also have similar features, which
> can make initial random number stronger. (We only care initial
> situation here, since more entropy would be added to kernel as time
> goes on )
>
> Conservatively, we can use add_device_randomness() as well, which
> would pass buffer to crng_slow_load() instead of crng_fast_load().
> But I think we should trust bootloader here. Whoever wants to use this
> feature should make sure their bootloader can pass valid (random
> enough) seeds. If they are not sure, they can just don't add the
> property to DT.

It is the firmware that adds the property to the DT, not the user.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
