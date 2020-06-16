Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DA61FB8FA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 18:00:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TNTJwqtSNe6mf12+lmisF8oLNYMnFlZet07ynAiX98k=; b=rDyKDJAWNJA2dr
	EHS/0qoePLoZJyryy/F7aCIgKpU2p5ewgOfW/WEg9Hnu47dklAdBVj1gX1HfbeUmekp4RmnMxyYyb
	1WrGJRdlF0dzyF0VB9PXlpU6mr5Hy2vEViIiWoh4IC+ZZJRy/afKXP7wpEfIdJ2ZhPqj+Nq8wo4wZ
	W83iRqXC/UrV18m1j8k52ndok5wbf2Htwt9PgiGkEKZ0VwOLRr37gcd/YaTVVpNnxWSihWXhGDRRF
	sYx+71PLCV7OPZcrl6yzGv+iAV3ZgpQDIR02h9evx6sc9BeF5ZRiFrTX1ElJMBTztSit5kbVbyzhv
	pO7T0LX7ourjY593yuJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlE0t-0006fS-Iz; Tue, 16 Jun 2020 16:00:39 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlDze-0004C8-Gw
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 15:59:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592323161;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=5Gc0Dg29WyIqBxMjGZGdoDeYitc04zw+8Uk/3lb0oUU=;
 b=bT0HTOvX7SlMU628ugkPMVhaTKAhm0p4uIeekRPBvNlhSihwE8P6e4ualmbbJnRLKayi4w
 KaofhGQmWZmo1IFaJnA92mMwwg+KNpo7reeVC4eI8gnCa0ec/RLmLtbc9dezCSvMBYyItf
 ycWZ2vTFA+L94hNaujLB0K7q/rrnIUI=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-496-qHF1zSjAOAK8LSXflAsw7w-1; Tue, 16 Jun 2020 11:59:17 -0400
X-MC-Unique: qHF1zSjAOAK8LSXflAsw7w-1
Received: by mail-qv1-f72.google.com with SMTP id 59so15909367qvb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 08:59:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=5Gc0Dg29WyIqBxMjGZGdoDeYitc04zw+8Uk/3lb0oUU=;
 b=P9At7hmj8dKi988Tnn9ZNnhMcSJgQaQPr47aaMOEZGGtBLOHyLu9tau2ebhmmEd8Mc
 gGUcMRlFXN78ZMXRQLcQthhnyXu5kRikdsmRnyDNlD2akMpswY7v3MHbXMGHy62AVP4A
 mAopzgFSN9hrMGRCkitQ82ESK9mHwNF2I49vJm8y6CJA7+MfTrtTbGiLlUgvsYlg9tjl
 vwkfi0pGSSXKH3CsRdi4z2IBac2DoQ6HG6Fmnn9gLAqJn1qzHhmXDFf46JK5/JU3ZWTX
 U3Jq2AApcQavejzvrcB5T9jVIlnoBkojNwGQB5U8PuOk77g4MzE/u+CSg2V7LVyF88mp
 CTTA==
X-Gm-Message-State: AOAM532QiSQ+LK4O+p88SXS1O9pUWdXtaQQYQF2DWhj5bbU5SJUmbk5s
 TC/Q1RQ9SB0nShXkDDvr8YyPGt5WIxbVAp55ycIPynuIZf4qFyRVvF6oKVEU1upaZH/++YCShJU
 N13Mn4+UD/8UcSsu/okkXVx+Ug20Xy7W3ShE=
X-Received: by 2002:a37:6f02:: with SMTP id k2mr20702246qkc.129.1592323157178; 
 Tue, 16 Jun 2020 08:59:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy+CJxAHuYkrcTeCwjCPlS1h0Nvk5LsJIDdZuRwaKtc+dpfMVU5ZGkZ12CkR4olUnzdv9Abeg==
X-Received: by 2002:a37:6f02:: with SMTP id k2mr20702225qkc.129.1592323156891; 
 Tue, 16 Jun 2020 08:59:16 -0700 (PDT)
Received: from xz-x1 ([2607:9880:19c0:32::2])
 by smtp.gmail.com with ESMTPSA id 123sm154267qkj.56.2020.06.16.08.59.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 08:59:15 -0700 (PDT)
Date: Tue, 16 Jun 2020 11:59:14 -0400
From: Peter Xu <peterx@redhat.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 06/25] mm/arm64: Use mm_fault_accounting()
Message-ID: <20200616155914.GB11838@xz-x1>
References: <20200615221607.7764-1-peterx@redhat.com>
 <20200615221607.7764-7-peterx@redhat.com>
 <20200616074307.GA1637@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200616074307.GA1637@willie-the-truck>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_085922_636931_07CBE7DC 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.120 listed in wl.mailspike.net]
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
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Will,

On Tue, Jun 16, 2020 at 08:43:08AM +0100, Will Deacon wrote:
> Please can you explain why it's ok to move the PERF_COUNT_SW_PAGE_FAULTS
> update like this? Seems like a user-visible change to me, so some
> justification would really help.

Indeed this could be a functional change for PERF_COUNT_SW_PAGE_FAULTS on some
archs, e.g., for arm64, PERF_COUNT_SW_PAGE_FAULTS previously will also contain
accounting of severe errors where we go into the "no_context" path.  However if
you see the other archs, it's not always true, for example, the xtensa arch
only accounts the correctly handled faults (arch/xtensa/mm/fault.c).

After I thought about this, I don't think it's extremely useful (or please
correct me if I missed something important) to use PERF_COUNT_SW_PAGE_FAULTS
for fatal error accountings among all those correct ones.  After all they are
really extremely rare cases, and even if we got a sigbus for a process, we'll
normally got something dumped in dmesg so if we really want to capture the
error cases there should always be a better way (because by following things
like dmesg we can not only know how many error faults triggered, but also on
the details of the errors).

IOW, my understanding of users of PERF_COUNT_SW_PAGE_FAULTS is that they want
to trap normal/correct page faults, not really care about rare errors.

Then when I went back to think PERF_COUNT_SW_PAGE_FAULTS, it's really about:

  A=PERF_COUNT_SW_PAGE_FAULTS 
  B=PERF_COUNT_SW_PAGE_FAULTS_MAJ
  C=PERF_COUNT_SW_PAGE_FAULTS_MIN

And:

  A=B+C

If that's the case (which is simple and clear), it's really helpful too that we
unify this definition across all the architectures, then it'll also be easier
for us to provide some helper like mm_fault_accounting() so that the accounting
can be managed in the general code rather than in arch-specific ways.

Thanks,

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
