Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DECD1FD19B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 18:11:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=puAFaoSeUJkNZla8ZNE55pMqyzVq7MIN4/I1/bqDAjQ=; b=Nnp6bJypZdjZxc
	JjfSgzsmFmpHnBWFHpXgt7jZB4C+ltnRDuZFRyJrh3swMBKSm1mGN7nFAwReiU+tWGtgzf7UcP1qi
	Es0RsqPfeMtq5rCYfPYMTivzmEiv01cECNFsAOXo7aN2vPg2VLljBtptRB5H/286dm5K3yIT7/I6u
	3gsWZ38+Vcg+rDf8SK8Zr3Yuon3ua3rFX9Lbs+lBi1GDNRx5sE7GLuPZJgyJ55c0gY5So+vPb5zPi
	ehifwyR9k5Eewfkk7sWuyFtkk61zRgLjlimKl2aqnyX3bW6FU1RZxN/GQXY9CSxDYHVtb++QNzyTx
	U/MkAMFkx0Hs0azKLg1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlaeX-0007Wi-32; Wed, 17 Jun 2020 16:11:05 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlaeO-0007W2-Lj
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 16:10:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592410254;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=pwPndLdm35gmxUTd/yGdLqQ8FsjkAPP7/6FDJCdV2mM=;
 b=FIlQShFUpHaVXIsePnoHC1W1OkcqaZqCtukZ4mqpuf7wwU4hEHqFZaneFC4Hr8zS0aOvXq
 28aAw31xUOtmFiOT1i39WZznxjCXAs5hqoZw2OHmljcrSEGvOuX6DAQ+QDXUtrv4lOP8J2
 Ss5p50Cfhoc1G9Ci4HohIrTKsh8ynoo=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-81-LBWohS55N9GUXKAavyV0OQ-1; Wed, 17 Jun 2020 12:10:52 -0400
X-MC-Unique: LBWohS55N9GUXKAavyV0OQ-1
Received: by mail-qt1-f198.google.com with SMTP id k23so2109823qtb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 09:10:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=pwPndLdm35gmxUTd/yGdLqQ8FsjkAPP7/6FDJCdV2mM=;
 b=GhnS32b0/d3j96qw9S2kaApzt01jd3MpkvvecJVyVClLmnzOPLIv9eZKtj8MQCdlB8
 Hf3hUDhE950d8e6ou4U6iWj9yNODA/USmzWjRI0qCIG6O+NV2XHm3cD82w15Sihbp8sQ
 GPMYd59tYYwTOu/FbzVjbkxOr0sJfUdAQsqvJ+itvSP8yYGu3VNZpCyfkC8BWsL+1rgx
 EW4im6Mu+yqCt8aKqiCimuAAAmBpY6I6X9SGOpNLaYUco+pZcqRJfaqsMXT1oFgTgT0S
 fk9orD9BNpnHg8fXclgviCWHNCU9kz4HsBBzAZE9tq0u43imV23BW0UCQ7uYbLV2Drfw
 iZpg==
X-Gm-Message-State: AOAM533gbdesbCQKCuSk5cen2RewOnZkFthbeUUzJDJThzFF2/qI8x+z
 gt/+yDQuD4Tfhs+qvMhTswev++m1RtXOkXzROVv8ppTvArMfUOtVynWQc6T3BiXO+xK1VxCCWll
 gqzygaM4O/xd58VmhFvVdN28urSiKtidfeEU=
X-Received: by 2002:ac8:fb4:: with SMTP id b49mr27502907qtk.323.1592410252034; 
 Wed, 17 Jun 2020 09:10:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxHPvRTdazh3ByXAbV1+DQb3IK/Hxo+xAXMp5hAEJHzAOp6L2Jx/mkBgpOD51Mg4XUcXd/11g==
X-Received: by 2002:ac8:fb4:: with SMTP id b49mr27502878qtk.323.1592410251778; 
 Wed, 17 Jun 2020 09:10:51 -0700 (PDT)
Received: from xz-x1 ([2607:9880:19c0:32::2])
 by smtp.gmail.com with ESMTPSA id b4sm265252qka.133.2020.06.17.09.10.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 09:10:51 -0700 (PDT)
Date: Wed, 17 Jun 2020 12:10:49 -0400
From: Peter Xu <peterx@redhat.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 00/25] mm: Page fault accounting cleanups
Message-ID: <20200617161049.GE76766@xz-x1>
References: <20200615221607.7764-1-peterx@redhat.com>
 <CAHk-=wiTjaXHu+uxMi0xCZQOm4KVr0MucECAK=Zm4p4YZZ1XEg@mail.gmail.com>
 <87imfqecjx.fsf@mpe.ellerman.id.au>
 <20200617080405.GA3208@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200617080405.GA3208@willie-the-truck>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_091056_785097_0325105B 
X-CRM114-Status: GOOD (  24.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Andrea Arcangeli <aarcange@redhat.com>,
 linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 openrisc@lists.librecores.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 17, 2020 at 09:04:06AM +0100, Will Deacon wrote:
> On Wed, Jun 17, 2020 at 10:55:14AM +1000, Michael Ellerman wrote:
> > Linus Torvalds <torvalds@linux-foundation.org> writes:
> > > On Mon, Jun 15, 2020 at 3:16 PM Peter Xu <peterx@redhat.com> wrote:
> > >> This series tries to address all of them by introducing mm_fault_accounting()
> > >> first, so that we move all the page fault accounting into the common code base,
> > >> then call it properly from arch pf handlers just like handle_mm_fault().
> > >
> > > Hmm.
> > >
> > > So having looked at this a bit more, I'd actually like to go even
> > > further, and just get rid of the per-architecture code _entirely_.
> > 
> > <snip>
> > 
> > > One detail worth noting: I do wonder if we should put the
> > >
> > >     perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS, 1, regs, addr);
> > >
> > > just in the arch code at the top of the fault handling, and consider
> > > it entirely unrelated to the major/minor fault handling. The
> > > major/minor faults fundamnetally are about successes. But the plain
> > > PERF_COUNT_SW_PAGE_FAULTS could be about things that fail, including
> > > things that never even get to this point at all.
> > 
> > Yeah I think we should keep it in the arch code at roughly the top.
> 
> I agree. It's a nice idea to consolidate the code, but I don't see that
> it's really possible for PERF_COUNT_SW_PAGE_FAULTS without significantly
> changing the semantics (and a potentially less useful way. Of course,
> moving more of do_page_fault() out of the arch code would be great, but
> that's a much bigger effort.
> 
> > If it's moved to the end you could have a process spinning taking bad
> > page faults (and fixing them up), and see no sign of it from the perf
> > page fault counters.
> 
> The current arm64 behaviour is that we record PERF_COUNT_SW_PAGE_FAULTS
> if _all_ of the following are true:
> 
>   1. The fault isn't handled by kprobes
>   2. The pagefault handler is enabled
>   3. We have an mm (current->mm)
>   4. The fault isn't an unexpected kernel fault on a user address (we oops
>      and kill the task in this case)
> 
> Which loosely corresponds to "we took a fault on a user address that it
> looks like we can handle".
> 
> That said, I'm happy to tweak this if it brings us into line with other
> architectures.

I see.  I'll keep the semantics for PERF_COUNT_SW_PAGE_FAULTS in the next
version.  Thanks for all the comments!

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
