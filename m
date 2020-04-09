Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBEF1A3742
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 17:33:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+L/vfLiLZbFOWM1gwl9riz1xmQ4j/7JFpkfNqSIHLw=; b=DnHksfxCyqcjI6
	XHkOIzocieHucDLhUScWnW9Ybpqn4Ng129v22XfNAqoLECMQzPZmI4KVY9S6p0IrzIlmU3IQ4inHN
	i71Wyceg7r6eeOc+lNMFcqmE27vF4SqQokV8n3mvwJUZIRSoEC9rFvUnxpSOWRS18ttak7SI/03M2
	R3nLamC+WID1atMPsyel8wzZkkkk6uZuDCq/FnZmxucAtlICcbKHD1HIhxwUvU/JdjKfUc4OpAlsA
	iZqogwqlRP8wR7qRZVzI+ZGeojZ2J+O1MQGWkVx4sUKU6SGKLsm1zPYgLniNsgIXLH8gCq8l2fXyx
	ccvl0STdBKPx69qAowRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMZBT-0001K1-7G; Thu, 09 Apr 2020 15:33:39 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMZBF-0001J4-TR
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 15:33:27 +0000
Received: by mail-wr1-f67.google.com with SMTP id j2so654654wrs.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 08:33:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=eU8HVKPcEFasCzGb3YcmSlRzYlNKnx8U/U7SeGkKTM4=;
 b=ckB60kEcyGNbFoIn1ftIzB5NaA6Dk9lzoOHkqw2ohwZqZrsuk0HJPr32Q16MARK9iP
 oMY+Vs/78IT32uQtXreD4rsalEeqVjJdf6jKcqDzd9KpyoSsxBliBibjyed6usJ6z1dA
 sfZjM/JXRr994jwM4j4cS6cj+pCASzGMC/sVQmejXhVovKY83R02vuPiy5edHFqZXlr9
 VdKGAoLeTp4nLGXxuDWmnq8Wmv2Eaad05lgLzr0OzgCzsKxOmQn+d0qO45nNoc7EBI/0
 UrStwVJ7Zb1a+85QXqGJJ8CbIs+KGme7eEnpeWMbM3o7ds6ibyB4VDALYpK7XIsu0M1c
 D6vQ==
X-Gm-Message-State: AGi0PuaVhcBfdwu1W/KJktwn8JYS07+LZBROfa0hAnYEaVTvrgzedfGB
 W4i5Sp0m2oMIIo4SS4f4PE8=
X-Google-Smtp-Source: APiQypLhnJ0ArE660dAIRKPg+UfX8htjcJDtxqzlxSXIrBucMDxX/FoA+uq76nGwKcjVTj7PGoGnsA==
X-Received: by 2002:a5d:5112:: with SMTP id s18mr15000370wrt.306.1586446403503; 
 Thu, 09 Apr 2020 08:33:23 -0700 (PDT)
Received: from localhost (ip-37-188-180-223.eurotel.cz. [37.188.180.223])
 by smtp.gmail.com with ESMTPSA id o67sm4335914wmo.5.2020.04.09.08.33.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 08:33:22 -0700 (PDT)
Date: Thu, 9 Apr 2020 17:33:21 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Baoquan He <bhe@redhat.com>
Subject: Re: [PATCH RFC] mm: remove CONFIG_HAVE_MEMBLOCK_NODE_MAP (was: Re:
 [PATCH v3 0/5] mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by default for NUMA)
Message-ID: <20200409153321.GQ18386@dhcp22.suse.cz>
References: <1585420282-25630-1-git-send-email-Hoan@os.amperecomputing.com>
 <20200330074246.GA14243@dhcp22.suse.cz>
 <20200330092127.GB30942@linux.ibm.com>
 <20200330095843.GF14243@dhcp22.suse.cz>
 <20200331215618.GG30942@linux.ibm.com>
 <20200401054227.GC2129@MiWiFi-R3L-srv>
 <20200401075155.GH30942@linux.ibm.com>
 <20200402080144.GK22681@dhcp22.suse.cz>
 <20200409144119.GE2129@MiWiFi-R3L-srv>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409144119.GE2129@MiWiFi-R3L-srv>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_083325_945199_D5DB2D41 
X-CRM114-Status: GOOD (  24.02  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mstsxfx[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
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
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Hoan Tran <Hoan@os.amperecomputing.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Pavel Tatashin <pavel.tatashin@microsoft.com>, lho@amperecomputing.com,
 Vasily Gorbik <gor@linux.ibm.com>, Vlastimil Babka <vbabka@suse.cz>,
 Will Deacon <will.deacon@arm.com>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Oscar Salvador <osalvador@suse.de>, linux-kernel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 09-04-20 22:41:19, Baoquan He wrote:
> On 04/02/20 at 10:01am, Michal Hocko wrote:
> > On Wed 01-04-20 10:51:55, Mike Rapoport wrote:
> > > Hi,
> > > 
> > > On Wed, Apr 01, 2020 at 01:42:27PM +0800, Baoquan He wrote:
> > [...]
> > > > From above information, we can remove HAVE_MEMBLOCK_NODE_MAP, and
> > > > replace it with CONFIG_NUMA. That sounds more sensible to store nid into
> > > > memblock when NUMA support is enabled.
> > >  
> > > Replacing CONFIG_HAVE_MEMBLOCK_NODE_MAP with CONFIG_NUMA will work, but
> > > this will not help cleaning up the whole node/zone initialization mess and
> > > we'll be stuck with two implementations.
> > 
> > Yeah, this is far from optimal.
> > 
> > > The overhead of enabling HAVE_MEMBLOCK_NODE_MAP is only for init time as
> > > most architectures will anyway discard the entire memblock, so having it in
> > > a UMA arch won't be a problem. The only exception is arm that uses
> > > memblock for pfn_valid(), here we may also think about a solution to
> > > compensate the addition of nid to the memblock structures. 
> > 
> > Well, we can make memblock_region->nid defined only for CONFIG_NUMA.
> > memblock_get_region_node would then unconditionally return 0 on UMA.
> > Essentially the same way we do NUMA for other MM code. I only see few
> > direct usage of region->nid.
> 
> Checked code again, seems HAVE_MEMBLOCK_NODE_MAP is selected directly in
> all ARCHes which support it. Means HAVE_MEMBLOCK_NODE_MAP is enabled by
> default on those ARCHes, and has no dependency on CONFIG_NUMA at all.
> E.g on x86, it just calls free_area_init_nodes() in generic code path,
> while free_area_init_nodes() is defined in CONFIG_HAVE_MEMBLOCK_NODE_MAP
> ifdeffery scope. So I tend to agree with Mike to remove
> HAVE_MEMBLOCK_NODE_MAP firstly on all ARCHes. We can check if it's worth
> only defining memblock_region->nid for CONFIG_NUMA case after
> HAVE_MEMBLOCK_NODE_MAP is removed.

This can surely go in separate patches. What I meant to say is the
region->nid is by definition 0 on !CONFIG_NUMA.

-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
