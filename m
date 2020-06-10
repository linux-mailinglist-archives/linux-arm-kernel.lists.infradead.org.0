Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE0B1F5975
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 18:52:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JnStK8XD5XsEAA4ohHbnjccDKttfrgK4x4wstCKDU8k=; b=p5AkIAQdLv1CPh
	JCfLCSoYhnVyf/jRIeADYx2flRaY0FhE03qH0C1W2pCwjGIaV5YUleHXCzuTscuQUOi/jbOFDXPlR
	5/k83K0z4tATGE0FjD8LbafMlWXA+fVEF4BnnvofGQzZ1MmIYWyF/1Era/L7JySBZqhnDC2XIeNRr
	ntOqBR90p4wsme4U3ZflR4gYelokJ2R06S3+NDWyT/RIv/zhhq7eWyOuwcCDd7+oqZnoPKdNYq7VG
	6kmk0t1Lbpi3/bDZTN6vzblk0eEyFZMl7wU/aH6yMfl0XpEztdTxKSO8UNJrjYnKKNkQD1aTORpxo
	BSEgeVEqED7vsbg6s3jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj3xs-0006bl-T1; Wed, 10 Jun 2020 16:52:36 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj3xg-0006aZ-Kb
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 16:52:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591807942;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=EMwUauau342Zml1K34QLPe12sp1DuwpV44r+JLoVGLk=;
 b=LIQhiR/LoXbRxeitE2BTaGN1RrZbtBiVeHkyNNFh2w7ArnVozYeAE3DslXJmIGSMoiNz+3
 MDSnQKCug0sHl5iq0HEU2cqH8y9hKXXebT9OSXytJf3O+SRwGuZudpeNIHw8/r50xc97ct
 OiF/mnghH4V2mn3IRMknLCbhZGx/avk=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-197-M314Va8EMQ6FVSPy5g449g-1; Wed, 10 Jun 2020 12:50:28 -0400
X-MC-Unique: M314Va8EMQ6FVSPy5g449g-1
Received: by mail-qv1-f72.google.com with SMTP id v1so2307283qvx.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 09:50:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=EMwUauau342Zml1K34QLPe12sp1DuwpV44r+JLoVGLk=;
 b=YhJvC7qI1kM9UZ9TW6gt8ts7UOb3M3j3ZM+Teltj0zugx9Aqt8scrdcEgwxV6ZyuMP
 sqMQQHG56KiajF6/vXHmhuTnv9VkrJgNapDSrE6VjHtNidVjrwXs4ZlSPHjtWNYiAfXy
 JDtohOqAWsFC61RFQhssr/zvXkOQRbIFz1I0vUJCjHeshLqODTD7ktB6Oq0NKGhABoCa
 iH9Rovt9uG3E+az4U+pgUyXExC9dS+fkjXb730KkJ5lM81hs23QPfiYxTaNcEZrXD5j4
 ZJEoN19YhBGiFC5Uw1PcRVc57O+Q+oPimpFdoEedGpH28AakdWtLpvSeJXXT2bqD+l4V
 DE6Q==
X-Gm-Message-State: AOAM533zrhkm/vl3R2E70K3ogHg25uudGTks4HrjQEFTzNrZJYsvYzK1
 I+tByYAXcU9qdezDGAozdNIESSPDxG3ksc8pLz/mPTJzWTl1Iu9H3moLqf+dugf8u5IyK4BfN56
 qwpaB9RDvS/F+4AeWGpASU1dLx04n/2MszwU=
X-Received: by 2002:a37:9cc7:: with SMTP id f190mr3987567qke.236.1591807826875; 
 Wed, 10 Jun 2020 09:50:26 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyn20TLNz7hD3Ni4blZzJN/2PX0jI8mrO6z2/UHNbD+ObHKXkY/kSbOK73eCMc/XFP0Ereokw==
X-Received: by 2002:a37:9cc7:: with SMTP id f190mr3987535qke.236.1591807826580; 
 Wed, 10 Jun 2020 09:50:26 -0700 (PDT)
Received: from xz-x1 ([2607:9880:19c0:32::2])
 by smtp.gmail.com with ESMTPSA id 207sm149672qki.134.2020.06.10.09.50.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 09:50:25 -0700 (PDT)
Date: Wed, 10 Jun 2020 12:50:23 -0400
From: Peter Xu <peterx@redhat.com>
To: Gerald Schaefer <gerald.schaefer@de.ibm.com>
Subject: Re: Possible duplicate page fault accounting on some archs after
 commit 4064b9827063
Message-ID: <20200610165023.GA67179@xz-x1>
References: <20200610174811.44b94525@thinkpad>
MIME-Version: 1.0
In-Reply-To: <20200610174811.44b94525@thinkpad>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_095224_757110_7A834962 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mips@vger.kernel.org,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-arch@vger.kernel.org, linux-hexagon@vger.kernel.org,
 Ley Foon Tan <ley.foon.tan@intel.com>, Andrea Arcangeli <aarcange@redhat.com>,
 linux-xtensa@linux-xtensa.org, linux-um@lists.infradead.org,
 linux-m68k@lists.linux-m68k.org, openrisc@lists.librecores.org,
 Guan Xuetao <gxt@pku.edu.cn>, linux-arm-kernel@lists.infradead.org,
 Michal Simek <monstr@monstr.eu>, Nick Hu <nickhu@andestech.com>,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-alpha@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 05:48:11PM +0200, Gerald Schaefer wrote:
> Hi,

Hi, Gerald,

> 
> Some architectures have their page fault accounting code inside the fault
> retry loop, and rely on only going through that code once. Before commit
> 4064b9827063 ("mm: allow VM_FAULT_RETRY for multiple times"), that was
> ensured by testing for and clearing FAULT_FLAG_ALLOW_RETRY.
> 
> That commit had to remove the clearing of FAULT_FLAG_ALLOW_RETRY for all
> architectures, and introduced a subtle change to page fault accounting
> logic in the affected archs. It is now possible to go through the retry
> loop multiple times, and the affected archs would then account multiple
> page faults instead of just one.
> 
> This was found by coincidence in s390 code, and a quick check showed that
> there are quite a lot of other architectures that seem to be affected in a
> similar way. I'm preparing a fix for s390, by moving the accounting behind
> the retry loop, similar to x86. It is not completely straight-forward, so
> I leave the fix for other archs to the respective maintainers.

Sorry for not noticing this before.  The accounting part should definitely be
put at least into a check against fault_flag_allow_retry_first() to mimic what
was done before.  And I agree it would be even better to put it after the retry
logic, so if any of the page faults gets a major fault, it'll be accounted as a
major fault which makes more sense to me, just like what x86 is doing now with:

	major |= fault & VM_FAULT_MAJOR;

I'm not sure what's the preference of the arch maintainers, just let me know if
it's preferred to use a single series to address this issue for all affected
archs (or the archs besides s390), then I'll do.

Thanks!

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
