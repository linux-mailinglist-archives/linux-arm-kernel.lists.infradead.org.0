Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 755EF3B3DE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 13:15:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9e/hBbBt7a1RXJz2UhPw6yjIWtTjSY90NyupN8KHoyI=; b=msUdC7+KMy3BR3
	P0ZtnYGR73u/22byHvqIUbUzr90N63i14c7q9CPUMqt1b3tDodXJ5eSBcsrIAIom8TXq8KG5g1a6P
	A1w4LjySQnKB4AUY5U0zzxr1JD5nDX5px8MuDBVJ2f1y+sW+OaNxfHn7aBxjIY/1mURvT0W+TrCGP
	xalzd6m1DzFgd9UfzIE4mcQ32BsVEX1r8jcUUO3Pyo7xgT6W4kwOpJc8Aivu/oS5cYykmf6s2kYbh
	wWUYuOh2v2AH1pCJlsV+oWbQt1DbK9T4RZVE6x1pk1DBU/+c5semrzxESno+ldkE/kVEDYwemw+Ro
	iRXKmn6FTgqqA00Ltvlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haIH6-0004js-V4; Mon, 10 Jun 2019 11:15:40 +0000
Received: from mail-lj1-f194.google.com ([209.85.208.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haIGq-0004j2-O3
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 11:15:26 +0000
Received: by mail-lj1-f194.google.com with SMTP id x25so2943235ljh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 04:15:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SfxM0MNNGeeWbqtads2f1ME1VOG/Aj6l8MDO5yfiWbE=;
 b=kDh8tegwL7Z5sViW6TIAQmkCGuhSidnRRK57pMAZdUllGAKr9srB8Ejee71tP+P0Aj
 wyTYXlmnYLWBs1WgWbvFipUWW1Hnof5tHwkimgQpZEyGpLfQhbMgQLqNf0gAGWmddGI4
 F7B7Y15Zl4hTD3+7JQzT8IiGPtQGsLzoKz82tGLgWHdcKpm1jb/u44Uiy0fGFM9nKLiE
 2WRvzFXDx94lPQr2yjcAOqHRz7tcb5+pVKmwPIBr6FFz+NnZ9VHxvP9CUFutUt5NBm5K
 2zZjZt4L1511Clk8oKExVfQxoJUwkhnfmOO/6UMnYiEtg7kwnkiONgsW4bdJBbgKwIpU
 0zuA==
X-Gm-Message-State: APjAAAVX0cObbcdaX74r4jQp/DEszNsEjBjf0QsQTQhRr/IlKVWXsYXD
 PasAn3s4p6h/7SU0tkpZd3Cp/8Mb1iu8FYAz70VVnw==
X-Google-Smtp-Source: APXvYqyyiM5ns67LDipiZNn5s1xfztrTGt7GU1FcOcz5XuRyxGBFWbTi8d6ThIlPuDUIBspZrP9aFHRQVTxlFFvhIq8=
X-Received: by 2002:a2e:6545:: with SMTP id z66mr36732710ljb.146.1560165322896; 
 Mon, 10 Jun 2019 04:15:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190528161026.13193-1-steve.capper@arm.com>
 <762411c4-1148-a10e-2a79-d2c9e38bc46e@redhat.com>
 <20190610105425.d4vubtcknc2wn5uk@mbp>
In-Reply-To: <20190610105425.d4vubtcknc2wn5uk@mbp>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Mon, 10 Jun 2019 16:45:10 +0530
Message-ID: <CACi5LpMpyNWEoX8oR-YpjDjO9XkvaA3KYiivozm=0hT+hkQ5sw@mail.gmail.com>
Subject: Re: [PATCH v2 00/12] 52-bit kernel + user VAs
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_041524_786943_93608CC7 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Christoph von Recklinghausen <crecklin@redhat.com>,
 Steve Capper <steve.capper@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin,

On Mon, Jun 10, 2019 at 4:24 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Mon, Jun 10, 2019 at 04:10:50PM +0530, Bhupesh Sharma wrote:
> > On 05/28/2019 09:40 PM, Steve Capper wrote:
> > >   2) How can this memory map be advertised to kdump tools/documentation?
> > >      I was planning on getting the kernel VA structure agreed on, then I
> > >      would add the relevant exports/documentation.
> >
> > Indeed, in the absence of corresponding changes to the Documentation
> > section, it is hard to visualize the changes being made in the memory
> > map.
>
> We used to have some better documentation in the arm64 memory.txt until
> commit 08375198b010 ("arm64: Determine the vmalloc/vmemmap space at
> build time based on VA_BITS") which removed it in favour of what the
> kernel was printing. Subsequently, the kernel VA layout printing was
> also removed. It would be nice to bring back the memory.txt, even if it
> is for a single configuration as per defconfig.

Indeed, that's what I suggested during the v1 review as well. See
<https://www.spinics.net/lists/arm-kernel/msg718096.html> for details.

Also, we may want to have a doc dedicated to 52-bit address space
details on arm64, similar to what we have currently for x86 (see [1a]
and [1b])

[1a]. https://github.com/torvalds/linux/blob/master/Documentation/x86/x86_64/5level-paging.txt
[1b].https://github.com/torvalds/linux/blob/master/Documentation/x86/x86_64/mm.txt

Thanks,
Bhupesh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
