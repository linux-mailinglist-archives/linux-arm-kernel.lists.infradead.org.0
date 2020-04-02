Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B3919BD3B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 10:02:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q7GqSQH5x62i0kGjHGfc9rbVyWxxjHMqfPfoW1TmB7E=; b=msg4uk/K+NN4Lq
	Cy0H4BLXa58f6rfdvH7xY4nyI4du24LcNSN3jGFf4ZUcpF4rW2jvu49HiRVVSF0iCXXi9HkTu+t7/
	Ag4RAx1oZEZHnndffKts4XVV+OrUR8fWUDhd3j7ZQw1nCWJL/1R68iqsGn/yUXBlnwrYg0rOME1Ek
	8z1roAAlNx/K8jQcudwNKUcK2Pzu8coHRgcvtMGTpn5B/ZgxYcdN1Nx21LxkNLMniCpnyNaKw3m1d
	OaphEtLplMRXjV9tcJRP4ysqhd4C2YouXKXFfgnyo5oVX8gmKxqBb1cweUb+2ByzRlexChPjVyeOA
	Xiv8a8+y9NO4rNrHYwWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJunb-0004ug-4A; Thu, 02 Apr 2020 08:02:03 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJunS-0004s3-Rz
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 08:01:56 +0000
Received: by mail-wm1-f66.google.com with SMTP id a81so2499003wmf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Apr 2020 01:01:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=UrBSIQuzAujdG2IKZQy1WDw2nZSqWHmIp0pyFUuT55I=;
 b=nofzozuQi3OPGZN6AVvt3W24ktgNnrt2YEUMK6jU5z55L9epY5agIhe2lgXO/R4iqN
 ItLEXTt6iGfcpo5K1g3EjRBJ8aYqY+hmh3aT+GZaYK5sh6OM1fydpAj6xeNVZ3d5vpZe
 MdNZvTpq97A3GFp39RzDNucmRpDGzHU4R2FmQUiB97xXCW7adwSLtINsq+EHIpbWg7Si
 HbEcYkHAgxHvDtTA1zILHyvzke6BP2J3A+Rq6AQxlPROxuLDA7c7KhSo4yYmkxcn0Pkl
 uDypN9XVzYJHYkHxTuZ0siNNHKC4ZeZkf1370dN6RQpWrTYv4Zl0M8ug3xVLlBSqMZc2
 8eZQ==
X-Gm-Message-State: AGi0PuaCkPTV3vyDzyDqo46x3JLjRAGnZRHDqLzxIViP38bqH7/4VbAs
 U/A1/I2j5Fy++LMQSPYEufU=
X-Google-Smtp-Source: APiQypLKMYqb9qsRd12t2lZK0oNaHQe5op/Ct4om+69/3ikerP3v6RKRd1oyx6YEyyBTpuIaTaPA/w==
X-Received: by 2002:a1c:4d16:: with SMTP id o22mr2320220wmh.56.1585814506667; 
 Thu, 02 Apr 2020 01:01:46 -0700 (PDT)
Received: from localhost (ip-37-188-180-223.eurotel.cz. [37.188.180.223])
 by smtp.gmail.com with ESMTPSA id v21sm5906815wmh.26.2020.04.02.01.01.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Apr 2020 01:01:45 -0700 (PDT)
Date: Thu, 2 Apr 2020 10:01:44 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Mike Rapoport <rppt@linux.ibm.com>
Subject: Re: [PATCH RFC] mm: remove CONFIG_HAVE_MEMBLOCK_NODE_MAP (was: Re:
 [PATCH v3 0/5] mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by default for NUMA)
Message-ID: <20200402080144.GK22681@dhcp22.suse.cz>
References: <1585420282-25630-1-git-send-email-Hoan@os.amperecomputing.com>
 <20200330074246.GA14243@dhcp22.suse.cz>
 <20200330092127.GB30942@linux.ibm.com>
 <20200330095843.GF14243@dhcp22.suse.cz>
 <20200331215618.GG30942@linux.ibm.com>
 <20200401054227.GC2129@MiWiFi-R3L-srv>
 <20200401075155.GH30942@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401075155.GH30942@linux.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_010154_905434_83E56BBC 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mstsxfx[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mmorana@amperecomputing.com, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 linux-s390@vger.kernel.org, Baoquan He <bhe@redhat.com>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Hoan Tran <Hoan@os.amperecomputing.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Pavel Tatashin <pavel.tatashin@microsoft.com>, lho@amperecomputing.com,
 Vasily Gorbik <gor@linux.ibm.com>, Vlastimil Babka <vbabka@suse.cz>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Oscar Salvador <osalvador@suse.de>, linux-kernel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 01-04-20 10:51:55, Mike Rapoport wrote:
> Hi,
> 
> On Wed, Apr 01, 2020 at 01:42:27PM +0800, Baoquan He wrote:
[...]
> > From above information, we can remove HAVE_MEMBLOCK_NODE_MAP, and
> > replace it with CONFIG_NUMA. That sounds more sensible to store nid into
> > memblock when NUMA support is enabled.
>  
> Replacing CONFIG_HAVE_MEMBLOCK_NODE_MAP with CONFIG_NUMA will work, but
> this will not help cleaning up the whole node/zone initialization mess and
> we'll be stuck with two implementations.

Yeah, this is far from optimal.

> The overhead of enabling HAVE_MEMBLOCK_NODE_MAP is only for init time as
> most architectures will anyway discard the entire memblock, so having it in
> a UMA arch won't be a problem. The only exception is arm that uses
> memblock for pfn_valid(), here we may also think about a solution to
> compensate the addition of nid to the memblock structures. 

Well, we can make memblock_region->nid defined only for CONFIG_NUMA.
memblock_get_region_node would then unconditionally return 0 on UMA.
Essentially the same way we do NUMA for other MM code. I only see few
direct usage of region->nid.
-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
