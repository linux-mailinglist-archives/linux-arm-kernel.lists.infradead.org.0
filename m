Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42ED5E6FAE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 11:32:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E7Nr4Ey86Y9KhjNdpcOj9uTypMrs1Myt7mvkmMAuDzE=; b=s5ILRbFMHbZwb6
	hfhot/p4a2J4+as/vOKzCiS2bbSMPFA1dK27O5zMPBVZdCROkyVE7dL+kVRvBlViIozU0GXT6eXFY
	fnwe+yzisnn04mUCyuPVm3bGUBI0tEPY/GU3KStB96g97DB/wvaki9FVUjuUPMspZpxs1i5x1oMR+
	TsFqO0M5ynzeJA/N/yizPVVv5GNPQIBkUo3tc9Gat8tMta10zm39I3k3Btz8b6dG0KBuGJonaNjo4
	48xe+QP735fTM4Z/9pNbcWEAXe8heuFt3shh+eCJ2q1pr/6eNJeF4o2BTkj5ccTUDgsaq2bIn0AVd
	ckeW8ALDyXa/0jtJRg1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP2KE-00073M-P0; Mon, 28 Oct 2019 10:32:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP2K2-00072n-S4
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 10:32:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C568F1F1;
 Mon, 28 Oct 2019 03:32:20 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 8A0AC3F71E; Mon, 28 Oct 2019 03:32:19 -0700 (PDT)
Date: Mon, 28 Oct 2019 10:32:17 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2 4/5] arm64: KVM: Prevent speculative S1 PTW when
 restoring vcpu context
Message-ID: <20191028103217.GB16739@arrakis.emea.arm.com>
References: <20191019095521.31722-1-maz@kernel.org>
 <20191019095521.31722-5-maz@kernel.org>
 <151fc868-6709-3017-e34d-649ec0e1812c@arm.com>
 <8636ffzu30.wl-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8636ffzu30.wl-maz@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_033226_951432_412C3167 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 26, 2019 at 11:20:35AM +0100, Marc Zyngier wrote:
> Catalin, Will: given that this series conflicts with the workaround for
> erratum 1542419, do you mind taking it via the arm64 tree?

I assume you target 5.5 with this workaround.

I don't mind merging it but if you want to queue it, we already have a
stable for-next/neoverse-n1-stale-instr branch with 1542419 (I'll push a
fixup on top soon for a clang warning). The other issue is that we get a
conflict with mainline due to the tx2 erratum. If it gets too
complicated, I'll also merge for-next/fixes into for-next/core.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
