Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE43DB008
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 16:27:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oIaVD17Q/PDg9DUwfBaB88EszyT2sJpG8cVEP/FcuQw=; b=NU2tkDAx3YXFL7Jbb5snIMNaVm
	5tF2i1HKcCnyqB2BfQfae/o2CbBfkETX7QBz6RnzS1VGbIWODDCsxzJn6N0lQBg7JXV5yvtFfXzQq
	16yxSOmAg2AXgDhDfnlxrcHwPRUiPYCRXYPawIAZwy5QXkkD5i3Ye33AiGrxDuBr1Cc5xCv0cUGzY
	IWeb4Fj8E19cp9HClh3jlUhedRfIYklkVYDyiFzm/4kVNz87vd6RUB3ndael9RbPmYzNnh44FwH8p
	ZkGXrq1QYZ1I/ICRv0nziEYt0x/q4jMDRr0+vH24mAtyShW2ealQO7AeNbA5khRzGNnN/p5h8k8Ey
	aP9q6JIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL6k0-0008WL-HH; Thu, 17 Oct 2019 14:27:00 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL6jm-0008Uy-6e
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 14:26:48 +0000
Received: by mail-ed1-x544.google.com with SMTP id v8so1909164eds.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 07:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=pTZm79Y77en4+WVH2R/MS/mKWiM//Hl1RgvICjEclrk=;
 b=TKjxRtPwWpvtdWaMYbV45LyV9HVOzaOpAFbMpF2wo5zHCbYg0VRPUUtdJ1VyU2CUc6
 l/GfxXIxUHAzOJXFyL/sOqbcEBBADqp8Pq1no/2KigSG5eGP/nwp1ooFXzgeBH8HEdjO
 GmJV/kE/BTVPJEGV8LKAdzay5o0rhZDFgVvRTWl/8/mJ/iwqxTg0IqZ6T9qTkiFc8x78
 2EcQkBTDbFH6XEMf1N3dkNFpK4jjV2/42IkyvXgNWCq+s3Q6czyEmpaIe60dwwf0EJUc
 0QeFMbdS9HQHYMtc2JQUheqYhHhaL2gcvWIPxKnh27DvXjcivpklLdfmftATrLQDcDfZ
 nO4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=pTZm79Y77en4+WVH2R/MS/mKWiM//Hl1RgvICjEclrk=;
 b=aI5AUHsQr+Ht/C41nwX1WELbyo14aQBIKkFBUaJXeeSh1/+YRVzHIez03izJG6ZsiT
 a7QAJ/sp2fomkrw/AqfKsufmEy00KhpBa0kfQr/wQG2meJ+os7etEAQ9aU8+mt3yT8xY
 FPdYby/glVHNwgZ7jSuAd8r8HHAlLDcRpPWs+hVbtoDhc/mkv4o8AVvsQaLGb5ObMVqw
 s1uPTjjOVds9zG8qeLsFUhjYgZhBiH4ubrN+MfRCgU/UjlV0hFjceMFBj04eK7VWMetu
 KnT3Q+CFx/pocvoO2ZbF9MWZtlz1zpudmEvs0ZDJJh/BIWxHbqJJRX6ggBxI9IWlIo17
 5M3A==
X-Gm-Message-State: APjAAAXHUSAmb6kqWFMzadmEvMtQeuJyfq8RXihKn8UxekcsC8NoZr27
 Hp880SFuOMO1QtvH1kSQc6ml4QYY9L4mgG7RJnKoIQ==
X-Google-Smtp-Source: APXvYqziFMNgpgw2iHsErr96SyZ2uSmSqs5rGVbMozjNUXiBuLfqaEtdRt8edlaf9N0bltup9A+f3kj+ItWHzZYFDds=
X-Received: by 2002:aa7:dd0f:: with SMTP id i15mr4281166edv.0.1571322404589;
 Thu, 17 Oct 2019 07:26:44 -0700 (PDT)
MIME-Version: 1.0
References: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
In-Reply-To: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Thu, 17 Oct 2019 10:26:33 -0400
Message-ID: <CA+CK2bC2KwWufE1DWa4szn_hQ1dbjDVHgYUu7=J4O_kvKXTrHg@mail.gmail.com>
Subject: Re: [PATCH v7 00/25] arm64: MMU enabled kexec relocation
To: Pavel Tatashin <pasha.tatashin@soleen.com>,
 James Morris <jmorris@namei.org>, 
 Sasha Levin <sashal@kernel.org>, "Eric W. Biederman" <ebiederm@xmission.com>, 
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>, Catalin Marinas <catalin.marinas@arm.com>,
 will@kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marc Zyngier <marc.zyngier@arm.com>, 
 James Morse <james.morse@arm.com>, Vladimir Murzin <vladimir.murzin@arm.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, Bhupesh Sharma <bhsharma@redhat.com>,
 linux-mm <linux-mm@kvack.org>, Mark Rutland <mark.rutland@arm.com>,
 steve.capper@arm.com, 
 rfontana@redhat.com, Thomas Gleixner <tglx@linutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_072646_673496_466C9E46 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> https://lore.kernel.org/lkml/45a2f0b8-5bac-8b5d-d595-f92e9acb27ad@arm.com
> > +     /* Map relocation function va == pa */
> > +     rc = trans_pgd_map_page(&info, trans_ttbr0,  __va(kern_reloc),
> > +                             kern_reloc, PAGE_KERNEL_EXEC);
> > +     if (rc)
> > +             return rc;
> James wrote:
> You can't do this with the page table helpers. We support platforms
> with no memory in range of TTBR0's VA space. See dd006da21646f
>
> You will need some idmapped memory to turn the MMU off on a system
> that booted at EL1. This will need to be in a set of page tables
> that the helpers can't easily touch - so it should only be a single
> page. (like the arch code's existing idmap - although that may
> have been overwritten).
>
> (I have a machine where this is a problem, if I get the time I will
> have a stab at making hibernate's safe page idmaped).
> ---
>
> As I understand, there are platforms where TTBR0 cannot include all
> physical memory for idmap. However, kexec must have at least one page
> idmapped (kimage->control_code_page) to be able to relocate kernel
> while MMU is enabled:
>
> I am still trying to fully understand the problem:
> CONFIG_ARM64_VA_BITS must be smaller than 48 and physical memory must
> start at a high address for this problem to occur.
>
> Why can't we simply decrease T0SZ to cover all physical memory?

Is there a way to reproduce this platform with qemu?

Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
