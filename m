Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC941DCAC9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 12:14:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zXg/r/Wxl3OvHFOkgomcZgHcil/sHcqk7cmz12e5jBI=; b=c3ilAnLps/8Tfs
	y2kEAB51u7Pwq3lFqRw0A33K0cVKe46My0GXcLdQEW1crUjFkZjAhbqBFNodiZtkxGEIUi62MxJPG
	80RGiDLBIhHN3QSLZeS2B7K8yv4fwNOMSttOU6fHdIhWfIyZ0+jkz0VYzralHwwYjlO1guiqsBX3W
	WW2wOWjH6p870tp66IZof92w5sU9fOSM/XlLaZafZKpPgl/mkTPiQbbOVahXpKjUg0Jp1BwIZM4hc
	JGrJ9xgmCu75kgACjJJlT3vFFy2IoZWUC9vR5B6GQ4obLijw2N25c3TXZSBDBt3nyj7qmMsgTgXGI
	rTRpv7IBmnwZV1HX5axA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbiDz-0008SC-1B; Thu, 21 May 2020 10:14:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbiDq-0008Ra-SO
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 10:14:44 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 081862072C;
 Thu, 21 May 2020 10:14:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590056082;
 bh=D9Q72b7qUgPDDR206w4ichbVQq6A8rfnDC2+Hv+edCc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Dmg4JoXUCdd6Bq6CUMCM52AvT1HD5NxqVWfhuQQk2ejzC7BcgrwdvasbhSGDNmfAH
 r2Q6jEgv9Oyah98CWOOxvb63BYPLCyuBkEGCMeck/m5YEIPxKwbTNNoz6O5ZO/p5BV
 Dj7TuRATLbQXuL+HfJ62WO6JZTYSfOMB6SU8uOUo=
Date: Thu, 21 May 2020 11:14:38 +0100
From: Will Deacon <will@kernel.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v4 0/7] firmware: smccc: Add basic SMCCC v1.2 +
 ARCH_SOC_ID support
Message-ID: <20200521101437.GB5360@willie-the-truck>
References: <20200518091222.27467-1-sudeep.holla@arm.com>
 <158999823818.135150.13263761266508812198.b4-ty@kernel.org>
 <CAK8P3a0bx2eOFSqM7ihNkJBWU_KKSh0vGJZZdvpkH=1nppingw@mail.gmail.com>
 <20200521070629.GB1131@bogus>
 <CAK8P3a1h1MR4Mq2sSV_FDUodrfaKRFtyOuOOGPWAbPYbzjc4YQ@mail.gmail.com>
 <20200521075755.GA4668@willie-the-truck>
 <20200521081055.GD1131@bogus>
 <CAK8P3a3dV0B26XE3oFQGTFf8EWV0AHoLudNtpSSB_t+pCfkOkQ@mail.gmail.com>
 <20200521091736.GA5091@willie-the-truck>
 <20200521092627.GB6425@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521092627.GB6425@bogus>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_031442_937978_71F41F83 
X-CRM114-Status: GOOD (  21.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Steven Price <steven.price@arm.com>, harb@amperecomputing.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 10:26:27AM +0100, Sudeep Holla wrote:
> On Thu, May 21, 2020 at 10:17:39AM +0100, Will Deacon wrote:
> > On Thu, May 21, 2020 at 11:06:23AM +0200, Arnd Bergmann wrote:
> > > On Thu, May 21, 2020 at 10:11 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
> > > > /me confused. Do you need the fix for this warning or you are happy to ignore?
> > > 
> > > I want a fix for that, as I hope we can eventually turn this warning on by
> > > default and stop playing whack-a-mole when they come up. Most of these
> > > warnings are harmless, but occasionally the prototypes don't match exactly
> > > and cause real bugs depending on the configuration, and ensuring both
> > > sides include a common header file is an easy way to make it work
> > > more reliably.
> > > 
> > > Note that the warning should come up for either W=1 or C=1, and I also
> > > think that
> > > new code should generally be written sparse-clean and have no warnings with
> > > 'make C=1' as a rule.
> > 
> > Fair enough. Is anybody working on a tree-wide sweep for this, like we've
> > done for other things such as zero-length arrays? If so, I can start
> > enforcing this in the arch code as well (I haven't been so far, even though
> > I do run sparse on every commit).
> > 
> > Anyway, I've dropped the last patch from the branch, and we can put a fix
> > for the missing prototype on top.
> > 
> 
> Thanks Will, sorry for the trouble. Though I can send the fix for the
> missing prototype right away, I would like to get my clang setup working
> as an opportunity. clang-8 that I have is failing vanilla v5.7-rc6
> when expanding arm_smccc_1_1_*

No trouble at all, really. I also saw this from Nathan the other day, which
may help you get up and running with clang:

https://lore.kernel.org/r/20200520024736.GA854786@ubuntu-s3-xlarge-x86

(but I haven't tried it myself, as I'm just using the Android binary)

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
