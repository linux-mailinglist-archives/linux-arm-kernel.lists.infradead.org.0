Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9414D1664FD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 18:36:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iYYXw4CCYTMeAnEi+7hKKc5hDQBiOpGaJT9g54IDoiY=; b=ttSVTs/MH7XFif
	Ur3htdZ7Gb3YQmvn745znfw3SNaxBWoVTv9v9hpufnO1VHNx98G/DUie5XX8p4adgkUCr0ZRMc2A4
	ve6NqmIChXK06B1LtCxJELjH3Qb4dxzBvryTBBM6EiHdc1BAOMWv+RuK2NFF1wR9cNFdBy6nuQXUp
	oW7/Yy8pFROPvNsnezTeY/EaoQmuh8e7zxcoVoQfLKzn66P91UOPW/P+VLPBABeaMbT11PdRmcbhV
	rleVXDIThBpXP7XOqo7uwotUrO7bDyIqNoQ7OiYx0mobdjy0m3GisR38pLYMSTsZX5hNcDXnLSn8s
	Gd/dbpZ91IPdSseXEznA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4pk2-0005Dt-27; Thu, 20 Feb 2020 17:36:02 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4pju-0005DJ-5b
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 17:35:55 +0000
Received: by mail-wm1-x344.google.com with SMTP id b17so2985376wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 09:35:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HkVLR2b73DAGD917AOuRE1lTBu4a8Rh3kqQkFLTI4rc=;
 b=yFT0Vn710DW0so3/boied4hPxoxXhsUqHPxoqWb8ruUCtG9a8uZrf50nHxtcsn8+WH
 AYAFTsGCwhfeFGOmw7YgjxkVZyDOxvefF8Hy2iGEhJzxnRuTLtQgadXLRJkvReQeJ0oP
 FkCydzbq4aw/lcWzsrEnTjI44SYQTsq1F4hhak/GGrO4o7cg0evOxCW5L5gK3DT8U6gw
 XbDTtS91UTJQbHxgmwEB4vkyKVH7UjANPo601Otd+5KpjqOyDzCAgod1jEXvnfJXNLBN
 vJyhRaWrLgAU60P50Dl8eHqPGWTiVQgDt2p0WzsmeDIvKnGD8uW91vSu3eFxYw+sa+Od
 cNyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HkVLR2b73DAGD917AOuRE1lTBu4a8Rh3kqQkFLTI4rc=;
 b=Wkm4iQswyDvs8x96HPGqrxc1TwZkDP/BpaSWZcBmkwhE+zjwu8mTzV+ImSxcklJZmq
 pz4RGY0n2haTC0fyfSAsZ7aEKaLPq5pMytEXSrEuuH6JXIUIMBgUT0s+ngzOCOwtOWFP
 Ay7yhN5crmNN8qV3sgCQZSw3+/qaRy/T5tCAG/AgqNmdX3xglQoZcL7fIsws4j8VKC/y
 uuQtUzi4vv4eOWmpM9J08CtdpLZVIXHssd1ksfvkzdxWLecIHFePdgTZezoYw7L81BrV
 gciksbcLowabr6bZym9x2LH+UIzMI7KJCe7uLzfIGh9nQhmTxtAPBnRjCmSRTZgvUfzw
 /OnQ==
X-Gm-Message-State: APjAAAVHtshB9CG5AIi2c/c6rc20qizXPqzbr9azzQ/ped7+BuevTf3r
 E/qE7MlVrsgGLBLl6ZlY20M8gBuZ+9Y6MO/NVxA+Jg==
X-Google-Smtp-Source: APXvYqz8RR9jQXx/vIJb8eAbOBHSHnLSW6n15dc9aL96rRs/LA9imwxF8w2omx0W/F5kPRZgi607H449WjEU68J/swY=
X-Received: by 2002:a1c:282:: with SMTP id 124mr5482340wmc.62.1582220152092;
 Thu, 20 Feb 2020 09:35:52 -0800 (PST)
MIME-Version: 1.0
References: <20200220165839.256881-1-james.morse@arm.com>
 <CAKv+Gu-tPOWyxjsKrL-auC=ZxeNJPgAPyQ2rBd9S8sgMbb=r_w@mail.gmail.com>
 <1ecedad2-1b3e-0d37-42e8-7022ac5a8370@arm.com>
In-Reply-To: <1ecedad2-1b3e-0d37-42e8-7022ac5a8370@arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 20 Feb 2020 18:35:41 +0100
Message-ID: <CAKv+Gu-4wOvPppZDxd9TdoK5_+=JMJ-ado5C4VP3-khod70_bw@mail.gmail.com>
Subject: Re: [PATCH 0/3] KVM: arm64: Ask the compiler to __always_inline
 functions used by KVM at HYP
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_093554_216571_674F539D 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Sami Tolvanen <samitolvanen@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 kvmarm <kvmarm@lists.cs.columbia.edu>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 20 Feb 2020 at 18:33, James Morse <james.morse@arm.com> wrote:
>
> Hi Ard,
>
> On 20/02/2020 17:04, Ard Biesheuvel wrote:
> > On Thu, 20 Feb 2020 at 17:58, James Morse <james.morse@arm.com> wrote:
> >> It turns out KVM relies on the inline hint being honoured by the compiler
> >> in quite a few more places than expected. Something about the Shadow Call
> >> Stack support[0] causes the compiler to avoid inline-ing and to place
> >> these functions outside the __hyp_text. This ruins KVM's day.
> >>
> >> Add the simon-says __always_inline annotation to all the static
> >> inlines that KVM calls from HYP code.
>
> > This isn't quite as yuck as I expected, fortunately, but it does beg
> > the question whether we shouldn't simply map the entire kernel at EL2
> > instead?
>
> If the kernel is big enough to need internal veneers (the 128M range?), these would
> certainly go horribly wrong because its running somewhere other than the relocation-time
> address. We would need a way of telling the linker to keep the bits of KVM close together...
>

Ah, of course, there is that as well ...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
