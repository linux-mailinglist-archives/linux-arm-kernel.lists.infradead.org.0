Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D0E5693C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 14:32:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dB2q399U7jOACLJheCGYuA2tLK/YlHldxu2hgTBysnU=; b=KoQuMHKtgivdlg
	93I7V2TBNdyHwb9LM0O7LTKUbxX2EweTDBk7Nt7p3g3y4MP25XuTCtXtFR0vLtLD9JymZmaegOFda
	06BT9glHGZRzjjqIWiXircj6EYstGToJd7W8mCGOsSeEmuncI+oKjRpypShtcbPk+j9SKQieLinFv
	CTiq1Q9KBsxTkaJ9nGzu1yUTalRu4kwRCG53j8GcqGT+ODCnCdIzH59ycuOSUOqkdYOG6v1jIQkf9
	bOcY+pu4VffaNYJMvMd7p/vXO8oewOCtQF+/G78eOjhRfDs8aB11E1daxjuOuF9p0Ck42zXcajJgm
	rowIyIBttEX1TtyPf5Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg75j-0003eK-JT; Wed, 26 Jun 2019 12:31:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hg75V-0003dz-GJ
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 12:31:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F2E41D6E;
 Wed, 26 Jun 2019 05:31:43 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 82E143F718;
 Wed, 26 Jun 2019 05:31:42 -0700 (PDT)
Date: Wed, 26 Jun 2019 13:31:40 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH v3 0/4] Devmap cleanups + arm64 support
Message-ID: <20190626123139.GB20635@lakrids.cambridge.arm.com>
References: <cover.1558547956.git.robin.murphy@arm.com>
 <20190626073533.GA24199@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626073533.GA24199@infradead.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_053145_595297_CB0D396B 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Michal Hocko <mhocko@suse.com>, anshuman.khandual@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Jason Gunthorpe <jgg@mellanox.com>,
 akpm@linux-foundation.org, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 12:35:33AM -0700, Christoph Hellwig wrote:
> Robin, Andrew:

As a heads-up, Robin is currently on holiday, so this is all down to
Andrew's preference.

> I have a series for the hmm tree, which touches the section size
> bits, and remove device public memory support.
> 
> It might be best if we include this series in the hmm tree as well
> to avoid conflicts.  Is it ok to include the rebase version of at least
> the cleanup part (which looks like it is not required for the actual
> arm64 support) in the hmm tree to avoid conflicts?

Per the cover letter, the arm64 patch has a build dependency on the
others, so that might require a stable brnach for the common prefix.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
