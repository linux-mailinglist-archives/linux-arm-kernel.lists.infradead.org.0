Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEBCAA5094
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 10:01:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fg9UcmDYLS22Qn7TDLNQ0/QJNOPrF2qtPp+Co/wl6uA=; b=e35z6jJvdWT3Ib
	1Xd5M4PDL3utc/8CO8vZtoYYfigNFFj9L+81URozIyLsmcNrKhUckehQCBGNgHejczw86RvZFVgRe
	U5zTnNqGPBkAeTeP68hRYBs5LsMkJykF7/rHznoPRJsADIHIc2J1azagANNED/9wcPUJrd4e/qYQZ
	LGKtO6uRsCLfFdYwBewg8yvoyHQxRK7IDZOqUDsoLq1LxCNtmxJbJgVr5u9lhe9+hf5i0n+9jenJ1
	P4Qjuh6y2RfV7XQPnkJyKqFYWnSFXwH29isPkCUBUIRef3g3VyXMl3DN3kU95vwiOB1nLGSqAvUYi
	hF3kHIL7LJq3+ShpcvwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4hGz-0003MJ-Bh; Mon, 02 Sep 2019 08:01:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i4hGm-0003LF-HD
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 08:01:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E19D728;
 Mon,  2 Sep 2019 01:00:56 -0700 (PDT)
Received: from localhost (e113682-lin.copenhagen.arm.com [10.32.144.41])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 73D583F71A;
 Mon,  2 Sep 2019 01:00:56 -0700 (PDT)
Date: Mon, 2 Sep 2019 10:00:55 +0200
From: Christoffer Dall <christoffer.dall@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 0/3] arm64: KVM: Kiss hyp_alternate_select() goodbye
Message-ID: <20190902080055.GA4320@e113682-lin.lund.arm.com>
References: <20190901211237.11673-1-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190901211237.11673-1-maz@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_010100_621210_080109AD 
X-CRM114-Status: GOOD (  12.48  )
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
Cc: kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 kvm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 01, 2019 at 10:12:34PM +0100, Marc Zyngier wrote:
> hyp_alternate_select() is a leftover from the my second attempt at
> supporting VHE (the first one was never merged, thankfully), and is
> now an irrelevant relic. It was a way to patch function pointers
> without having to dereference memory, a bit like static keys for
> function calls.
> 
> Lovely idea, but since Christoffer mostly separated the VHE and !VHE
> hypervisor paths, most of the uses of hyp_alternate_select() are
> gone. What is left is two instances that are better replaced by
> already existing static keys. One of the instances becomes
> cpus_have_const_cap(), and the rest is a light sprinkling of
> has_vhe().
> 
> So off it goes.

I'm not sure I want to kiss hyp_alternate_select() at all, but away it
must go!

Reviewed-by: Christoffer Dall <christoffer.dall@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
