Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D42C36FDF7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 12:41:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UTve5Ly7d7ZOV01Tfu+y/26zc0+PYldP/qQ70uzQqho=; b=AYyQ+9tWk59YnM
	21IJMk4JQMDYcqg6yryShomC9xkIbu8hu1WyYg1UkEFWyNg47sgiBHircCqhOdZ3CQtp6v7b4XbpW
	xzqJProz9g21iBuYs3vVPXYI4cD6Futal8Xckdc2hpnVveGSmaeMMhd93PsAIa+tDeknSdCrMkbEb
	km144PGJcom1HABwLqA97H8MSgsGQEcz0UwhDYgjCyrqVaCqOY/1X7hgSeYSMJ2ksaU1EqxieKrkv
	lWkx5zSrUREPMCYrog7XQkigaXxy2v2ibCHGOKt4+L8MnPIlFtzba1wOPGOSBnNqG/8H/da2VuSMU
	MomyFmCWOnIvz+b9QH7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpVkt-0007xN-Hm; Mon, 22 Jul 2019 10:41:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpVkk-0007ww-Da
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 10:41:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8DFE828;
 Mon, 22 Jul 2019 03:41:08 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 A4CB73F71A; Mon, 22 Jul 2019 03:41:07 -0700 (PDT)
Date: Mon, 22 Jul 2019 11:41:05 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCHv3 0/3] arm64: stacktrace: improve robustness
Message-ID: <20190722104105.GC60625@arrakis.emea.arm.com>
References: <20190702130729.19615-1-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190702130729.19615-1-mark.rutland@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_034110_501594_E93E0DD9 
X-CRM114-Status: UNSURE (   7.00  )
X-CRM114-Notice: Please train this message.
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
Cc: will.deacon@arm.com, tengfeif@codeaurora.org, james.morse@arm.com,
 dave.martin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 02, 2019 at 02:07:26PM +0100, Mark Rutland wrote:
> Dave Martin (2):
>   arm64: stacktrace: Constify stacktrace.h functions
>   arm64: stacktrace: Factor out backtrace initialisation
> 
> Mark Rutland (1):
>   arm64: stacktrace: better handle corrupted stacks

It was pretty late to queue them for the 5.3 merging window but I think
Will can merge post -rc1. For the series:

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
