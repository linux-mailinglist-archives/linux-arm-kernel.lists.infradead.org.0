Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA7FC4A64
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 11:18:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vqeA2koHE+xzkCjHc2xl2GolOYR0VedRgKH9yorRUbQ=; b=bJuY5O3xBl1Yp9
	KKbG2ULZmW+WkhQeW12ZS5GwUc/IlLxrnlqNHOt0VxTkUBCi7MdJiyGMfpvRBoFTqRgpSKicZphzu
	0n9I4HB6hIMmoKDCDGC2C92wbK8qODRX6TFTGGyPODA+WNvepjBuMIYmeLACLy0Qcleap2hefjsG1
	H+L0md5WlpZYd/ZRc9w4leAae8n0LWg78AWvBvdTcEHy+jUyI6m6szkwGCLIC0t3En+1zvia6rDXJ
	AnQym756ip/E6jHr6DKQBCjuS3p35ChVVz90EuZdOVxT6KjZVd4/8ZZr0xXvg5sVDETZiGmUbO9CP
	Up4I+WcPJEmzSx2afYfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFalJ-0007rn-Fn; Wed, 02 Oct 2019 09:17:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFaWt-0007gs-Ma
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 09:03:43 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B52A721783;
 Wed,  2 Oct 2019 09:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570006958;
 bh=Z8QwW8MIjQLIHFlqMh9fMr8GTSPJkKjbRDniUQRKws0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eGc4EAGTwyCqTzffhSb3P+qIqZMA02bktti0bUi4jGVffU0UQ3SiN827HC/cs8qjX
 1la6R+5UvO3l1o43yM3pYHJjbr38p2e5ILMGSfJkasJUwPg8rTwhB47cjl/DiJjxR8
 OclK8rPe8umBsSZQaFIA2Gv+UJ5w+ZwMvgYYwDeE=
Date: Wed, 2 Oct 2019 10:02:34 +0100
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: SMMU performance
Message-ID: <20191002090233.rqpmhyax2qztyhsr@willie-the-truck>
References: <20190930110047.GF25745@shell.armlinux.org.uk>
 <cf3ac700-1954-8800-6ce4-9983ab27707b@arm.com>
 <20190930115405.phkllciuv62cz2fk@willie-the-truck>
 <250d78f8-a4d1-5ff0-e537-e7c2a49c0bf4@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <250d78f8-a4d1-5ff0-e537-e7c2a49c0bf4@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_020240_441681_466A8E47 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 01:00:00PM +0100, Robin Murphy wrote:
> On 30/09/2019 12:54, Will Deacon wrote:
> > On Mon, Sep 30, 2019 at 12:45:28PM +0100, Robin Murphy wrote:
> > > The major changes in 5.4 are for SMMUv3, so won't impact your platform.
> > 
> > I was wondering whether rigging up the gather stuff would help here but,
> > looking at the backtrace, the time is spent on the sync itself so I suspect
> > it won't help. Hmm... I wonder if we can do better using a sequence number
> > so that we can ride off the back of somebody else's sync?
> 
> The trouble with v2 is that then we'd have to introduce locking around the
> invalidates as well, in order to keep track of what the last 'command'
> issued in each context was - that's almost certainly going to have far more
> overhead than eliding syncs could possibly save.

I was thinking along the lines of allocating an ID to each flush, and then
updating a sync ID on sync, so you can elide the sync if the sync ID is
greater than your flush ID. But it's vague and I didn't try to implement
anything.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
