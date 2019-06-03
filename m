Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C1532E4F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 13:12:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hJlx6nGea08vDkhljcEuhaZzog1pNpPUVuuPdIuixSY=; b=kwlLqdz1EWcJev
	UflTCdyW4wIt2XVX7xHl8X7tyZkS7Bbdtyk3a+5ai1nJRtm2uNIdsj1gxap/yxkWTO82faygP9y/V
	mthKF2W5KfjUuSt6Zh4+Dnrqr4n+ZtPRXDxcBZAGlbZGD/xX+1m/EUdD0S7bpGEBQurBGS3I0/KNC
	7zGkfjcKgjla7WZ7tNsRFjh0XP+IsDu3i8g97zvRZ6ynxeY+7G8gclbVymtXvqGQ1DQCYwESg4OEZ
	NaTA+nfC1dHmkyAiMKwRPQY6qhS9UK6gNSpl6NoEMMBF+xlWLVKkPop2fUov9WOWyR+8D8efbLH2S
	HjF5BsJ6qsaLT+2GuCYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXktG-0002Mt-Uy; Mon, 03 Jun 2019 11:12:34 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXkt9-0002Lz-77
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 11:12:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 327D3A78;
 Mon,  3 Jun 2019 04:12:26 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 874683F5AF;
 Mon,  3 Jun 2019 04:12:24 -0700 (PDT)
Date: Mon, 3 Jun 2019 12:12:22 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH kvmtool v3 6/9] arm/arm64: Factor out ptrauth vcpu
 feature setup
Message-ID: <20190603111221.GK28398@e103592.cambridge.arm.com>
References: <1559229194-3036-1-git-send-email-Dave.Martin@arm.com>
 <1559229194-3036-7-git-send-email-Dave.Martin@arm.com>
 <20190531180436.118450c5@donnerap.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531180436.118450c5@donnerap.cambridge.arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_041227_257234_9B6B109E 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Christoffer Dall <cdall@kernel.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 06:04:36PM +0100, Andre Przywara wrote:
> On Thu, 30 May 2019 16:13:11 +0100
> Dave Martin <Dave.Martin@arm.com> wrote:
> 
> > In the interest of readability, factor out the vcpu feature setup
> > for ptrauth into a separate function.
> > 
> > Also, because aarch32 doesn't have this feature or the related
> > command line options anyway, move the actual code into aarch64/.
> > 
> > Since ARM_VCPU_PTRAUTH_FEATURE is only there to make the ptrauth
> > feature setup code compile on arm, it is no longer needed: inline
> > and remove it.
> 
> I am not sure this is useful as a separate patch, so can we just merge
> this into 5/9?

Could be.  I wanted to keep the changes against Amit's original patch
clear for now, so it's easier for him to review.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
