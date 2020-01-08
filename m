Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 152AF134B2B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 20:02:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/khsCq8osyensRWDqakSc0ZQSZF01rGPhCIuSycJzKU=; b=toGZ7KxnHiqZmN
	/NwoXFwue2Y/aAJQcWqh558EWNaNBHlJ0b6BH9n9FZojgPe70YWYv9Mst+UT1JmSbOOqvTBiglypD
	KLQK2+7d7XdZ1zJKdl61hn6PHLxlDldgitiGZXZk5TNtnMsF2lLxDv89cbZoq3R7VvW6Kv8MNoqu/
	dh+ASy8aKCuGa9U6pal0GbcibqAmTIhuqS8FZcUAhrkeNCZqWUhAohMg9WAtnDu+VM/GwdWTBKavl
	x+TcoKk9hnUZ6BroB3bUTqQ8/CJL2SrAgfYq5EiRjmilJSg1IXiAEIrzfTzOUquv2lqnGE0ZJZrLt
	3kR1hcwfFQ1eMRQemwkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipGad-0004eg-Ks; Wed, 08 Jan 2020 19:01:59 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipGYo-0001vG-3h
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 19:00:09 +0000
Received: by mail-ot1-x341.google.com with SMTP id h9so4588089otj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 11:00:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XKG1nbVwzj/tRpstff6fH6LSUuwV4sjHhIFUgWIlV+U=;
 b=s9NJQtCqnectin8Ti+6PJbbfj1iVC29kijEEVzBm9eYM0xqovEdSIvUBRa5QV+2Qzf
 uMjhO+nADZCdf/v+dinki4tHGe/eBYjmY78A0B9gngLOIJZSvsYSGQUcFghNBkzajBm+
 002VIJLs2HYb6/7/565YtsSdwQ7BoFsW7F2g/8JhRZm5aaupLnZ+WjxKHOUtdugZXa+v
 M5Cfg0EYtVYHOoLi8prNlcRFGlvf0CrScWNFvhySDu/GUL/m4BLe/M+OqS31fpVqrUm6
 /h5oOCVTEniuxvpSTmawQh4xsO4jXbtbwJSxpi9ba8XLCoKCbuSjDDKpfn0F41JYkU5K
 2q8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XKG1nbVwzj/tRpstff6fH6LSUuwV4sjHhIFUgWIlV+U=;
 b=C2Ey+kVKXmAeEzoTZcN62x8JIuyDwSLre5jvvybpj4n2YvwAP5nhambSxfGZsn3qIB
 jiWv2RynWSPMqnrvzQHdQwlZh6VS1ELywX5f8R5WzrEmBimuFz78sFSpcE8qu8Uuo93t
 KnSoWzo6i9KQsM5RKsVFrVnNIfaS9JOsfC3n6uNoJ/fIGzG5q964H+qTrs125L66VNqH
 VD5FYhUuBKgoYfAoaeez2J1jkwgGvtnfpW27SQ5XmA1KHEdJo+0ZfgwLDJowgCdBdLi8
 5o8GFoG9Jyrp2mCu1kfWt36Tq1lXVOdzh919SXdIM86EmMxrO/+TffMalwk72469L9Vx
 w+zg==
X-Gm-Message-State: APjAAAWxB2l/HqjsDPojcK+fcZ4HwQbpOZAzfFwavi3Vbi7CAdnXawH9
 bz0DKvaIOUNrXsi2pscmjNR7R/sKo/96KktBvk8rpKLM
X-Google-Smtp-Source: APXvYqxCuOUFRmTIFvW4iH38UfBo5T8KUr6T2q9RXS3eopOSB7fDf5LWtiL93/r45iWPoVq/UfuDWeRs67v8mZX9sdI=
X-Received: by 2002:a9d:68d3:: with SMTP id i19mr4939869oto.71.1578510001998; 
 Wed, 08 Jan 2020 11:00:01 -0800 (PST)
MIME-Version: 1.0
References: <20200107205959.7575-1-logang@deltatee.com>
 <20200107205959.7575-3-logang@deltatee.com>
 <3e432695-e3a9-2aae-e9f5-1b6454886c06@redhat.com>
 <eef4ec73-8823-9f20-93ed-5c09f18c437a@deltatee.com>
In-Reply-To: <eef4ec73-8823-9f20-93ed-5c09f18c437a@deltatee.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Wed, 8 Jan 2020 10:59:51 -0800
Message-ID: <CAPcyv4hdpMs5om4_VrYUz98aWDJ9eRhj7WJr312Jwn6LCmAm9Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/8] mm/memory_hotplug: Rename mhp_restrictions to
 mhp_modifiers
To: Logan Gunthorpe <logang@deltatee.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_110006_394025_98C0E7C9 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-ia64@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, platform-driver-x86@vger.kernel.org,
 Linux MM <linux-mm@kvack.org>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, linux-s390 <linux-s390@vger.kernel.org>,
 Linux-sh <linux-sh@vger.kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Michal Hocko <mhocko@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Eric Badger <ebadger@gigaio.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 8, 2020 at 9:17 AM Logan Gunthorpe <logang@deltatee.com> wrote:
>
>
>
> On 2020-01-08 5:28 a.m., David Hildenbrand wrote:
> > On 07.01.20 21:59, Logan Gunthorpe wrote:
> >> The mhp_restrictions struct really doesn't specify anything resembling
> >> a restriction anymore so rename it to be mhp_modifiers.
> >
> > I wonder if something like "mhp_params" would be even better. It's
> > essentially just a way to avoid changing call chains rough-out all archs
> > whenever we want to add a new parameter.
>
> Sure, that does sound a bit nicer to me. I can change it for v3.

Oh, I was just about to chime in to support "modifiers" because I
would expect all parameters to folded into a "params" struct. The
modifiers seem to be limited to the set of items that are only
considered in a non-default / expert memory hotplug use cases.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
