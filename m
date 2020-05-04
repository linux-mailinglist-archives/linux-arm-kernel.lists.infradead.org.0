Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7DB1C4076
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 18:51:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RWb88pyFakP2+gTf10cE4rvI9n5uSv6jjfrnUM3so60=; b=bWJNE+vS1Xs7kh
	yr+2hn+I3+TiQXf/M12NWUffEq90+QiuR55cjVI01vBwoECuvwNQmGZviDcHtO47n1OSSMgfXCvMX
	MoMH2QejMTGrfXfa0accz7Z3GK2OjJkOH2MOf9NBi/gkSx2hLgYTYVLz3Tg97oC+UUeaHXVN+Ow07
	VDLWfk/tOUOhndPMJ3byONjmtpx7A7TgDips+47QjE1rru87hFDri6B/RPEB5L21paBcHpAghLzIP
	BKSNl1HARP1Wf8d/NBqyH17ogIohVGRgH6MglcYY1q5qS9IA5CJ+8260QsMy6Zi7BFoE25/flN1jS
	YAjTZX+HX2o+CgwHOpLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVeJm-0005vD-Sm; Mon, 04 May 2020 16:51:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVeJf-0005tW-TP
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 16:51:41 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9CA80206D9;
 Mon,  4 May 2020 16:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588611098;
 bh=vNjcj7BiW7fsrp1PHDFOxUtfyekks+fuqVJ5fa+MBVU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=F+xJ6rUn2jyOJhjTTP4RDpIU9PMA0E4wiN0tBoAsaa01z99VfvRWlchg0ha7hBAtZ
 D4LGUXdjQ2cM6CbLAuhdcWlaT6Waym4whpQThp95vDGN1kAIoigsCu7mQ9r9jikuGr
 RstFdo9WOMEId9nXKZkHbsRmA3PK4kDvnNFbz9Sk=
Date: Mon, 4 May 2020 17:51:33 +0100
From: Will Deacon <will@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: Re: [GIT PULL] KVM/arm fixes for 5.7, take #2
Message-ID: <20200504165132.GA1833@willie-the-truck>
References: <20200501101204.364798-1-maz@kernel.org>
 <20200504113051.GB1326@willie-the-truck>
 <df78d984-6ce3-f887-52a9-a3e9164a6dee@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <df78d984-6ce3-f887-52a9-a3e9164a6dee@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_095139_988886_429CF825 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Jones <drjones@redhat.com>,
 kvm@vger.kernel.org, Fangrui Song <maskray@google.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Zenghui Yu <yuzenghui@huawei.com>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 04, 2020 at 06:05:51PM +0200, Paolo Bonzini wrote:
> On 04/05/20 13:30, Will Deacon wrote:
> > I don't see this queued up in the kvm tree, which appears to have been
> > sitting dormant for 10 days. Consequently, there are fixes sitting in
> > limbo and we /still/ don't have a sensible base for arm64/kvm patches
> > targetting 5.8.
> > 
> > Paolo -- how can I help get this stuff moving again? I'm more than happy
> > to send this lot up to Linus via arm64 if you're busy atm. Please just
> > let me know.
> 
> 10 days is one week during which I could hardly work and the two
> adjacent weekends.  So this is basically really bad timing in Marc's
> first pull request, that he couldn't have anticipated.

Understood, and thanks for the quick reply. If possible, please just let us
know in future as we can probably figure something out rather than having
things sit in limbo.

> I have pulled both trees now, so you can base 5.8 development on
> kvm/master.  It will get to Linus in a couple days.

Thanks, Paolo!

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
