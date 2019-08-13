Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 540928BE9B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 18:30:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pEAQMNSNeYYiVAdYbq1vCEN6DRQpVI6ZqRGa1cQqw4o=; b=VFEvVXXh+/HIBT
	tezY0yjztD8i0SnkkaFiKvhp5bbNyRHbuGjnTcXxY8J8dck6dTolfo5pP1K080x7XD16plSJx+299
	em6IOGH6DR/3ZHhO6EtIEAwP+bwMSIIkMYHF14HF5lq03ORuwJYPFmYJ/VfcTY/V4Zf0RtzEfAU7T
	1JanpbI5o+YW1+KeI4rAjGblW84guktFxjqvYa77Cr5fxRsnYkhUoZtqrAVzzZ6nTSs4y3jmH07Si
	d7HxCGkP0iD3aueuWWURaHDk7jMYiJfEmuF0T9Nn0MfeidNFwyNuCoD093gMa9OiPniwJLQZ9Iney
	G7pYC3thf6Hb24Jz9u8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZgk-000229-TO; Tue, 13 Aug 2019 16:30:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZeb-00083c-Tr
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 16:28:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3C99A337;
 Tue, 13 Aug 2019 09:28:09 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A68513F706;
 Tue, 13 Aug 2019 09:28:08 -0700 (PDT)
Date: Tue, 13 Aug 2019 17:28:06 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v3 11/11] kselftest: arm64: fake_sigreturn_misaligned_sp
Message-ID: <20190813162806.GJ10425@arm.com>
References: <20190802170300.20662-1-cristian.marussi@arm.com>
 <20190802170300.20662-12-cristian.marussi@arm.com>
 <8811be0d-efb3-b6da-9f6b-acaeb3edce7d@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8811be0d-efb3-b6da-9f6b-acaeb3edce7d@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_092810_254122_B90439C3 
X-CRM114-Status: GOOD (  14.19  )
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
Cc: linux-arm-kernel@lists.infradead.org, linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 05:04:13PM +0100, Cristian Marussi wrote:
> On 02/08/2019 18:03, Cristian Marussi wrote:
> > Added a simple fake_sigreturn testcase which places a valid
> > sigframe on a non-16 bytes aligned SP.
> > fake_sigretrun() helper function has been patched accordingly
> > to support placing a sigframe on a non-16 bytes aligned address.
> > Expects a SIGSEGV on test PASS.
> > 
> > Adds also a test TODO lists holding some further test ideas.
> > 
> > Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> > ---
> > Re-added this text after fixing the forced misaglinment procedure in
> > fake_sigreturn() itself: require a ZERO alignment and you'll get
> > your sigframe placed on a misaligned SP (2-bytes off the 16-align)
> > ---
> >  .../testing/selftests/arm64/signal/signals.S  | 21 +++++++++----
> >  .../arm64/signal/testcases/TODO.readme        |  8 +++++
> >  .../testcases/fake_sigreturn_misaligned_sp.c  | 30 +++++++++++++++++++
> >  3 files changed, 53 insertions(+), 6 deletions(-)
> >  create mode 100644 tools/testing/selftests/arm64/signal/testcases/TODO.readme
> >  create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_misaligned_sp.c
> > 
> 
> When this test was re-added in V3, the related .gitignore was missed.
> It will go in V4

Ack, or otherwise try switching to using wildcards in .gitignore as
suggested in my reply to patch 4.

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
