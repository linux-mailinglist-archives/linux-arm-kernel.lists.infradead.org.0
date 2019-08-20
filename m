Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EAD995D57
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 13:30:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dNw/+EI+ghRkzVBEFSFaOP3Uk/wNZiPA2Fzga4WAV90=; b=SAlqgXy/G0y59O
	xAw2BYr9bN+Mvrdg/I097yA3gMRUoy3T1on3nWHb6AWzAuj/Ew6jpKYuaJJMGBJnNeMIWh3sGdBB8
	JFhsDxRR1F+52NTor74Jmh5sQG34OwOm0ybsGP/afIChtfNUbxXJpE3tUZvkBP6CV4nZ64dG+EHRn
	tqB/t4pZib4zyhkvTWOfJpMQb6hR2JFdq+wrCiFhtxscL+5Y+aye0n5LbhCGYqkci48zIhR1304Zf
	GrMjrFppr6hVfag/nlNS7/L/gmDk1ndlRRB8I+KvvdT1aiVSzmdDyfW2H1WjXjd9AHstc3HO9VqbO
	aXgeS85+Vw0QWXqrKbeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i02Lb-0001Yb-GT; Tue, 20 Aug 2019 11:30:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i02LL-0001Wj-W6; Tue, 20 Aug 2019 11:30:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A2932344;
 Tue, 20 Aug 2019 04:30:22 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4C98A3F718;
 Tue, 20 Aug 2019 04:30:20 -0700 (PDT)
Date: Tue, 20 Aug 2019 12:30:10 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Pavel Tatashin <pasha.tatashin@soleen.com>
Subject: Re: [PATCH v2 03/14] arm64, hibernate: add trans_table public
 functions
Message-ID: <20190820113000.GA49252@lakrids.cambridge.arm.com>
References: <20190817024629.26611-1-pasha.tatashin@soleen.com>
 <20190817024629.26611-4-pasha.tatashin@soleen.com>
 <20190819155824.GE9927@lakrids.cambridge.arm.com>
 <CA+CK2bD4zE6eieSW2OLQwOQC7=4ncDc8wK6ZjhDO3Dv+BUqnzQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+CK2bD4zE6eieSW2OLQwOQC7=4ncDc8wK6ZjhDO3Dv+BUqnzQ@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_043028_078463_286583FB 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sasha Levin <sashal@kernel.org>, Vladimir Murzin <vladimir.murzin@arm.com>,
 Jonathan Corbet <corbet@lwn.net>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morris <jmorris@namei.org>,
 linux-mm <linux-mm@kvack.org>, James Morse <james.morse@arm.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 12:33:31PM -0400, Pavel Tatashin wrote:
> On Mon, Aug 19, 2019 at 11:58 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > On Fri, Aug 16, 2019 at 10:46:18PM -0400, Pavel Tatashin wrote:
> > > trans_table_create_copy() and trans_table_map_page() are going to be
> > > the basis for public interface of new subsystem that handles page
> > > tables for cases which are between kernels: kexec, and hibernate.
> >
> > While the architecture uses the term 'translation table', in the kernel
> > we generally use 'pgdir' or 'pgd' to refer to the tables, so please keep
> > to that naming scheme.
> 
> The idea is to have a unique name space for new subsystem of page
> tables that are used between kernels:
> between stage 1 and stage 2 kexec kernel, and similarly between
> kernels during hibernate boot process.
> 
> I picked: "trans_table" that stands for transitional page table:
> meaning they are used only during transition between worlds.
> 
> All public functions in this subsystem will have trans_table_* prefix,
> and page directory will be named: "trans_table". If this is confusing,
> I can either use a different prefix, or describe what "trans_table"
> stand for in trans_table.h/.c

Ok.

I think that "trans_table" is unfortunately confusing, as it clashes
with the architecture terminology, and differs from what we have
elsewhere.

I think that "trans_pgd" would be better, as that better aligns with
what we have elsewhere, and avoids the ambiguity.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
