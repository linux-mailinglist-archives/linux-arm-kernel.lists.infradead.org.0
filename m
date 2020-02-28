Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6634C174184
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 22:31:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J6TzfvmNLi96Zu+KgHIW6ZJfV/t9GtbvN7Qjw6ecbCU=; b=js4Nc2+K0I6UFJ
	bFzcKxLQL3etS8OFxUA7EcSmVbCcFdkZ3S0tnhIzhnnprBkv5kgEvMLMdoguULhiHLYT/hu4SVW0l
	IpncoBDnojEIMZyo4DlH8G4c/Ze8AHIWCGY6hDCBKYf2CUlLZeBa9n5CW0yc4VCUow0irvkyh+paU
	7h7T956PNKGy944GGOQqb+LspWmt1Xl3/OiLvO+49ICRrCBk+MyopPkcfaRXXZ6Qh4HLftFJubGpW
	4+kobBj58O9F/qsDvWwA5aMDcObL/kWVRN02Uz5Io/NlRiU/B2JxFJL1mgJ1+NJZLgub7E8QmTFSb
	3wjjNniVMZs+Sml+nguA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7nEE-0005T5-Et; Fri, 28 Feb 2020 21:31:26 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7nE5-0005SU-5n
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 21:31:18 +0000
Received: by mail-ot1-x343.google.com with SMTP id b3so3975757otp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 13:31:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=E57qmAYxRULljTteoL9BnNM233t9xRFNSPdb4qSFmz4=;
 b=FOSXg/gDLnMTvsFKrROzrWHQkymULqZ4VWWSzkxbCpGWafrvoL1DbhvWHkNA1awmFJ
 mqZ4yc3Xu7lUtGU0lnzzTMrQrhjDoBb0aAi0O834VNv0Xx2wr1FRPluT436M+3L6Uu3P
 OeEfO9GHrkLM+a5+P9XzccUiCN5lVGpuO1RMFe6qheaZSXTBuWXwalcRrw3HRO/r9ITu
 dbpQvHayrSz63xS3XZJvxFAo9ni5zPDlHcVTL49HtS1LUdDaUyRpVgHEgZqSQiaYscIw
 1HyAUUJ1ehUcyfKMFiPZLd4BrozyOvRYXTSs34KN1qjk4Mke8taeKrGC90q2MJWKZrKw
 q4mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E57qmAYxRULljTteoL9BnNM233t9xRFNSPdb4qSFmz4=;
 b=GfdjmQZFeYBbkou0IbX+s78c1bnPNHmcW1xpezm2XJ4gs0O0Q1WMn18DveoXp0hHHN
 tqeuRUI0jRoQX3f2Oil4gosJlOq8drxQr0nvLpmnUAZmuquB7878a2QgfoXZenLdUgu4
 B+kKTVIsUzFCz94m3pDNS02ZtxAm41uQl1H9/xO5NeLFnSOYeWcODAk4DIx6LU3reSh/
 qQzOmmm2w0z/16z1EIuqAH++y9KCczT0Dxp2TlsVqvpk6O0Ou8bkkLAxda4lb5UTSGZL
 1YaJhhNTwnam6dY9i/ftf0HpAPbU35bAj2JR2daHBph/i1P3X+9Mm67ERgzXJJzYymgO
 Qksg==
X-Gm-Message-State: APjAAAWGdgRGdfhuH+S8AooSbLTBFKpdlKbsSOq8+S3cBdjC+nFvhm6m
 TyVuEh7YSlFbhhE3D6KqhZ0QzIyLUXMBrLbnvJte1g==
X-Google-Smtp-Source: APXvYqw3lx5wUMOoXp5Dz6+9E6dRQ6P4Q87wBR0C2ISCuvp93d5At8nQ1nTZ6ODRu1fC1blNWg8tMcQbt7eE8AgCHRU=
X-Received: by 2002:a9d:64d8:: with SMTP id n24mr4607004otl.71.1582925476085; 
 Fri, 28 Feb 2020 13:31:16 -0800 (PST)
MIME-Version: 1.0
References: <20200221182503.28317-1-logang@deltatee.com>
 <20200221182503.28317-2-logang@deltatee.com>
In-Reply-To: <20200221182503.28317-2-logang@deltatee.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Fri, 28 Feb 2020 13:31:05 -0800
Message-ID: <CAPcyv4gFiCBN_Bz5eZrWXV0PEaWhwdHDkgEW7e5z0xZkp6a83w@mail.gmail.com>
Subject: Re: [PATCH v3 1/7] mm/memory_hotplug: Drop the flags field from
 struct mhp_restrictions
To: Logan Gunthorpe <logang@deltatee.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_133117_268938_E02420A9 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
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
Cc: linux-ia64@vger.kernel.org, Linux-sh <linux-sh@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, platform-driver-x86@vger.kernel.org,
 Linux MM <linux-mm@kvack.org>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, linux-s390 <linux-s390@vger.kernel.org>,
 David Hildenbrand <david@redhat.com>, Ingo Molnar <mingo@redhat.com>,
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

On Fri, Feb 21, 2020 at 10:25 AM Logan Gunthorpe <logang@deltatee.com> wrote:
>
> This variable is not used anywhere and should therefore be removed
> from the structure.
>
> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
> Reviewed-by: David Hildenbrand <david@redhat.com>

Reviewed-by: Dan Williams <dan.j.williams@intel.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
