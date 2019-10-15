Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DE7D7B15
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 18:19:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1xRYLEkPLoGNxS50+gkIlKxk8/1+GOQCBjRJV1ZIPzA=; b=jqMfQgRFW4RGPx
	QdDu3ZFfA2WrJ+8MxkoNuDmB6m/5JG7drvqg4smWRfz/chXFyZzi/4T66hGB2/hl2NCazW1Ettc0Q
	XYJUUyE2PfGitjxmKU0CR8aHu1ziYqSz6eET/TqyeahG6MbF0UTgJgmzRm6K/6Lze4dqfPUvNS099
	CkW3kMWv2U6ckYaN3Epnlck/nTtai7D4C08wRO9/FlZpHhuNLaTvhgQlnQCg/DIDtJrPxWmLivC3R
	X7p5MQQpbGeu+Alry25huPgxXfSJNAPSusX34cXjbkmpg1SUJZ+ejl8tBdNGo7UtYodxhmoeWD7lB
	9yanPLKm5xfVO0C3t5kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKPXw-0001Gl-Dp; Tue, 15 Oct 2019 16:19:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKPXo-0001Fm-Fb
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 16:19:33 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EEBCD2064A;
 Tue, 15 Oct 2019 16:19:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571156370;
 bh=o+2ADBoaRaNOXQKPdV1EdfBdRnnm07DN8Tz5LueEYEY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=X51xcbsCs95Zu90V9+LHMgJjLYvcf2nh+XUccVLBzUN17jhP2xojFID22MPdw+1Dc
 oA5Q/2ZfZAD8/GQ6jF88qr2lBlgvh8YB2ZC4oD29WSCn8O4AgEfvSSAEMqX9+mCCQ8
 ZW9E1h6RfsNxm0gC/Wm8mME6QjISEwUmo48E5VWA=
Date: Tue, 15 Oct 2019 17:19:26 +0100
From: Will Deacon <will@kernel.org>
To: Mike Rapoport <rppt@kernel.org>
Subject: Re: [PATCH v4] arm64: use generic free_initrd_mem()
Message-ID: <20191015161925.5djuqpdeh3z32awn@willie-the-truck>
References: <1569657746-31672-1-git-send-email-rppt@kernel.org>
 <20191015004659.l5xbxv4mlpzqpsdl@willie-the-truck>
 <2AB94CD5-3374-4A15-9422-689EE2549FC6@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2AB94CD5-3374-4A15-9422-689EE2549FC6@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_091932_541888_A7674CB2 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>, Laura Abbott <labbott@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 15, 2019 at 09:39:41AM +0200, Mike Rapoport wrote:
> On October 15, 2019 2:46:59 AM GMT+02:00, Will Deacon <will@kernel.org> wrote:
> >On Sat, Sep 28, 2019 at 11:02:26AM +0300, Mike Rapoport wrote:
> >> From: Mike Rapoport <rppt@linux.ibm.com>
> >> 
> >> arm64 calls memblock_free() for the initrd area in its implementation
> >of
> >> free_initrd_mem(), but this call has no actual effect that late in
> >the boot
> >> process. By the time initrd is freed, all the reserved memory is
> >managed by
> >> the page allocator and the memblock.reserved is unused, so the only
> >purpose
> >> of the memblock_free() call is to keep track of initrd memory for
> >debugging
> >> and accounting.
> >> 
> >> Without the memblock_free() call the only difference between arm64
> >and the
> >> generic versions of free_initrd_mem() is the memory poisoning.
> >> 
> >> Move memblock_free() call to the generic code, enable it there
> >> for the architectures that define ARCH_KEEP_MEMBLOCK and use the
> >generic
> >> implementation of free_initrd_mem() on arm64.
> >> 
> >> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> >> ---
> >> 
> >> v4:
> >> * memblock_free() aligned area around the initrd
> >
> >Looks straightforward to me:
> >
> >Acked-by: Will Deacon <will@kernel.org>
> 
>  Can it go via arm64 tree?

Yes, I was hoping Catalin would pick it up for 5.5.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
