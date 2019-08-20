Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E9D95E87
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 14:29:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JFsnF60GuXNj8rOj0sk9mRTEVektyk63VN8MUHiBOBs=; b=bUL6knDtcH+ngA
	I6PwsMlWtHlrBB3JkWK/i7vS+WcpkRXfCdFR29L+mw3h8UA/Hmjjj5CsAUOfto89WRy23XnGTlvs8
	LdgJ9HIfoUWE6UVjgIn26BnmBYoiXMpUlz90/+2GMeewQc/Bkkw48KFRnlNqMYQvBJfjm6FTxWoIC
	qN/T5ey6dCtqMgGo/rGMdOzBP2yBgRFhgZbIdH7vUE0UhDMdTTVkb9JiuxIJ1L5qUf2qen+sk8y7l
	L7pvxB24WtawBpNDD7gxUx6I54o2lE6ZT7b4xsT9csNxxaqgvQG7Ewuju1aAHCYcs6ANIlMJBocbP
	xWdm5b5r8Muq4x7QkJhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i03GL-0004Ro-QD; Tue, 20 Aug 2019 12:29:21 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i03Fe-0004NK-42
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 12:28:39 +0000
Received: by mail-wm1-x344.google.com with SMTP id e8so2296919wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 05:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dD0Co8FG/hJyJAYUqVEMglsK3T7bNz9NWAIKm1yXSok=;
 b=IAB/CxVy5OTM+bm1P/vwQO5e1zYJhw5W+8ZMfEr0TwRT2EHai9xEb7z0JLGvQL+AEM
 noesBxet+SdZXcyD+TDMiDedkuNJmvs0pynLhCizA0UKehvY/U9nfrqf3O3c50RdYmHc
 EgXw+nNiCh+Jqg7tX3pehf5oIkz3QOguhxAmmqUBwDTwZURbQrU1MliR4D+sVI/Dws45
 /wPIeJtLO2Bq1hSk5IZ6nNWF4wkRDFhE2tHy/FDvCFmeq3K+tWEMzX5g+jIp+xLZV1MA
 bPVJnH/qV91SbwdsFTlvnaGFPw3OEGc2X0UvXAcuGwYmdjhJpONCMhMRLJlRJAWxww/3
 gCKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dD0Co8FG/hJyJAYUqVEMglsK3T7bNz9NWAIKm1yXSok=;
 b=S3qYDYkZkJTl8i6GoBrTJG9CotTMpzwwlhtOKM+qa2zI5MNP5xJpwSn1HWG/Bd8ueB
 UcccrFGjgGXVVlCQcq6E3UJ+olzyEvH2FDGxgzK6Fn7IEZ/myeHMBXVJwuxK2faLYoah
 b3c4383/4rJAmpew9GyJOk5yWbv4rbiQfgYREtJRIP/nP+OV1Q+snJqg+9KFkN2aeZGj
 cUWU4650z7Xy+FKuh4kHCke5GKkykU7YW7ZeNzUnURHwtraZ+oxZBwWl/ItEJf9owt0q
 6K3CKaq0jDGwYPOD/aGyqMBW2jj4lG8feFz+A9u2FDYiZV9R3CPpJhJp+GgwfL658rl7
 WPVg==
X-Gm-Message-State: APjAAAX8oSDxMb4agKuNCuez8zdyk57PesNU3KUkq57VEvia8WisM8n/
 wE3C7B5bqHHzg2bbA2M7vTYglUMrTKq+Z92Bs1qjBg==
X-Google-Smtp-Source: APXvYqwSKf9shWqXFfBH3UvF0PUWc/5bjTYYsXrXLzFdNVsyC2m1uK+Ysr6+BUjAuYl3vNvngGtA/b2r1ypTsOqz4Ps=
X-Received: by 2002:a05:600c:2255:: with SMTP id
 a21mr25055919wmm.119.1566304116782; 
 Tue, 20 Aug 2019 05:28:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190802053744.5519-1-clin@suse.com>
 <20190820115645.GP13294@shell.armlinux.org.uk>
In-Reply-To: <20190820115645.GP13294@shell.armlinux.org.uk>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 20 Aug 2019 15:28:25 +0300
Message-ID: <CAKv+Gu_0wFw5Mjpdw7BEY7ewgetNgU=Ff1uvAsn0iHmJouyKqw@mail.gmail.com>
Subject: Re: [PATCH] efi/arm: fix allocation failure when reserving the kernel
 base
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_052838_601497_2EE82652 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: Juergen Gross <JGross@suse.com>, Joey Lee <JLee@suse.com>,
 "linux-efi@vger.kernel.org" <linux-efi@vger.kernel.org>,
 "guillaume.gardet@arm.com" <guillaume.gardet@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>, Chester Lin <clin@suse.com>,
 "geert@linux-m68k.org" <geert@linux-m68k.org>,
 "ren_guo@c-sky.com" <ren_guo@c-sky.com>, Gary Lin <GLin@suse.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 20 Aug 2019 at 14:56, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Fri, Aug 02, 2019 at 05:38:54AM +0000, Chester Lin wrote:
> > diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
> > index f3ce34113f89..909b11ba48d8 100644
> > --- a/arch/arm/mm/mmu.c
> > +++ b/arch/arm/mm/mmu.c
> > @@ -1184,6 +1184,9 @@ void __init adjust_lowmem_bounds(void)
> >               phys_addr_t block_start = reg->base;
> >               phys_addr_t block_end = reg->base + reg->size;
> >
> > +             if (memblock_is_nomap(reg))
> > +                     continue;
> > +
> >               if (reg->base < vmalloc_limit) {
> >                       if (block_end > lowmem_limit)
> >                               /*
>
> I think this hunk is sane - if the memory is marked nomap, then it isn't
> available for the kernel's use, so as far as calculating where the
> lowmem/highmem boundary is, it effectively doesn't exist and should be
> skipped.
>

I agree.

Chester, could you explain what you need beyond this change (and my
EFI stub change involving TEXT_OFFSET) to make things work on the
RPi2?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
