Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4883172547
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 18:43:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JLIUmhXYI4MlzSHECIJqkUrKrPzJW3+kfd06/Mq607s=; b=jLUlMWh61ppJgb
	3IQH2LV5RpBJZNmWGpzSue5wF+h8N0Hkkxs0/oqXFaxVt4oiOFznwIiEBkgmg4NuSkzepbxDmjMHr
	2gZCRy4lIBYW5PuJxNr6jvwVqe+2xwAP43hw/Z95KoZrcf/JkGYMEVgBljxOU1V5UyRS3fjP0g6zB
	JuTXsEN74etySx3woatN4Nr6qTtSR05tyLvC5DSgQlpBkOj1bn3jqe2N79fh0u0aOqHVFiLi6VCgF
	zPNMqO45qAc5peEp/2GSd4js/XOmP2PloHAvP1g8RJtqhe3ZAJeyk28Ff1RCHAstmqoubqkp5Ytnx
	aAR34T34ja8VI3P0csrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7NC1-0000F7-HA; Thu, 27 Feb 2020 17:43:25 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7NBp-0000E2-Gc
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 17:43:14 +0000
Received: by mail-qk1-x741.google.com with SMTP id h4so201908qkm.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 09:43:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=oCjJQPxZpDAddCTP2fyq9zy2cQ1xSVL89kL40WfyDFw=;
 b=h0ccKzeyP3flPLgjKffvX6NEZ8a/uwNV100LizRKN14n3zedm2cahPgJEhxnAi/Eux
 SoJyZIMb4T7nlpMiSIVzl4rMs2X4TuO582QZ1v3uBlvSIJKL/2eHq1X0Q3RguRMqGiyD
 jIHlP2hMNaMnlwbC+BJKvF6YRP2s83wQLQnu6HWuvl9gBkHIXEKgRfF2bx2kqxfLtaoi
 NHPp/iB678wthxbg1SayDlPMTRa2+OyRd0c8slMZFoj0NWbnumSUHITUyCw6JAjfKy0s
 /ZPnh7hQIi+kffDRK1XYwUv4XEf8RRXfY3Aofqotene7stHVy6OiSQWIReq879CDmrtM
 2sgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oCjJQPxZpDAddCTP2fyq9zy2cQ1xSVL89kL40WfyDFw=;
 b=ui1WBcXUQ+V1PJMsfgnxkyYEvd1foAbR5kinaJrRaA+XYNNYGKMMssKseixGC+C4+k
 v8ZEDEotD2kI9Yb6wPDjHplpoO0n3GdinnFXX1rUm53mcz/yaY0ETnMMVJmz+E+hqHQQ
 cN0JzaWSLnTX4JpBFEoooShL4PPxnKafwS+JwzesQPPTuiNr/wU487EMDVAZg5XPPhkZ
 DpngZhuFr/cxeyetkj36TFEO50DcFpn7J6aysrKAooXqihnUfitNiS9L3EgQnzt82FYI
 wbg3rfp6of0rwZ6Ovm9N+lrsTXARdQFq47GIyg5UHLbXdzFOZ/CtfjMX92vxx8WgOPW+
 3X1A==
X-Gm-Message-State: APjAAAVxwwhgHbdo6G185YkGu/BbIJ79FGukTylW37NuDuQp/utGtTYs
 CDkZh94X4ACHHLTRkUaYmTT5fg==
X-Google-Smtp-Source: APXvYqz1bAJmZgA8/8aWp40ku++Grc84lutv6gcjfJ4VE4iLl6cxS/fnpq6F9eLVrs8dckDJaWVR0g==
X-Received: by 2002:a05:620a:2185:: with SMTP id g5mr445502qka.4.1582825391979; 
 Thu, 27 Feb 2020 09:43:11 -0800 (PST)
Received: from ziepe.ca
 (hlfxns017vw-142-68-57-212.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.68.57.212])
 by smtp.gmail.com with ESMTPSA id k23sm3317124qtq.89.2020.02.27.09.43.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 27 Feb 2020 09:43:11 -0800 (PST)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1j7NBn-0003iZ-2v; Thu, 27 Feb 2020 13:43:11 -0400
Date: Thu, 27 Feb 2020 13:43:11 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH v3 0/7] Allow setting caching mode in arch_add_memory()
 for P2PDMA
Message-ID: <20200227174311.GL31668@ziepe.ca>
References: <20200221182503.28317-1-logang@deltatee.com>
 <20200227171704.GK31668@ziepe.ca>
 <e8781f85-3fc7-b9ce-c751-606803cbdc77@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e8781f85-3fc7-b9ce-c751-606803cbdc77@deltatee.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_094313_554007_B7497DF7 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, platform-driver-x86@vger.kernel.org,
 linux-mm@kvack.org, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, linux-s390@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dan Williams <dan.j.williams@intel.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Michal Hocko <mhocko@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Eric Badger <ebadger@gigaio.com>, linux-kernel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 10:21:50AM -0700, Logan Gunthorpe wrote:
> 
> 
> On 2020-02-27 10:17 a.m., Jason Gunthorpe wrote:
> >> Instead of this, this series proposes a change to arch_add_memory()
> >> to take the pgprot required by the mapping which allows us to
> >> explicitly set pagetable entries for P2PDMA memory to WC.
> > 
> > Is there a particular reason why WC was selected here? I thought for
> > the p2pdma cases there was no kernel user that touched the memory?
> 
> Yes, that's correct. I choose WC here because the existing users are
> registering memory blocks without side effects which fit the WC
> semantics well.

Hm, AFAIK WC memory is not compatible with the spinlocks/mutexs/etc in
Linux, so while it is true the memory has no side effects, there would
be surprising concurrency risks if anything in the kernel tried to
write to it.

Not compatible means the locks don't contain stores to WC memory the
way you would expect. AFAIK on many CPUs extra barriers are required
to keep WC stores ordered, the same way ARM already has extra barriers
to keep UC stores ordered with locking..

The spinlocks are defined to contain UC stores though.

If there is no actual need today for WC I would suggest using UC as
the default.

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
