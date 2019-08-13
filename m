Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE428BE79
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 18:26:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SnlCBTwkYAC1xqAzREmosqGNiaqPNUzd6/S5CNFZjwo=; b=YSTEb2rzPI6QsW
	vkbZhbhcm8sMmTE5GcLxwZfhrWEy0bxr7jEHXP4RpnPHJBCi8T466v13NfdNrwgjIF4GriRR5aJrD
	+x2DSHGR0ZOun53h+friMaGT3u5au1dyMvejtQX89dVqpL65BKf2eQ2TKT546+VRWyS8owI8eBHRV
	u1VpUSLDrE0veqXFbv0g4TA+dhmY806R4A6KmcgEzX1bsTqyXZQ0YoN8BvSt+WF6SpouaPYqGaIpd
	Nj5VXHemiNvcdKbfU0VF4ouSX0xJdgiEQ1duGNwnh+P9/edvb32cYWMkEpIeiR35MWq5pqtM0m/lz
	JkbUocuyIBj0F/acNutg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZd0-0005kE-K9; Tue, 13 Aug 2019 16:26:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZZc-0001ct-1d
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 16:23:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8D329337;
 Tue, 13 Aug 2019 09:22:57 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BFD1B3F706;
 Tue, 13 Aug 2019 09:22:56 -0700 (PDT)
Date: Tue, 13 Aug 2019 17:22:54 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v3 00/11] Add arm64/signal initial kselftest support
Message-ID: <20190813162254.GX10425@arm.com>
References: <20190802170300.20662-1-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802170300.20662-1-cristian.marussi@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_092300_291590_D4BFE1E9 
X-CRM114-Status: GOOD (  16.26  )
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
Cc: andreyknvl@google.com, shuah@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 02, 2019 at 06:02:49PM +0100, Cristian Marussi wrote:
> Hi
> 
> this patchset aims to add the initial arch-specific arm64 support to
> kselftest starting with signals-related test-cases.
> A common internal test-case layout is proposed which then it is anyway
> wired-up to the toplevel kselftest Makefile, so that it should be possible
> at the end to run it on an arm64 target in the usual way with KSFT.

The tests look like a reasonable base overall and something that we can
extend later as needed.

There are various minor things that need attention -- see my comments on
the individual patches.  Apart for some things that can be factored out,
I don't think any of it involves redesign.


A few general comments:

 * Please wrap all commit messages to <= 75 chars, and follow the other
   guidelines about commit messages in
   Documentation/process/submitting-patches.rst).

 * Remember to run scripts/checkpatch.pl on your patches.  Currently
   various issues are reported: they should mostly be trivial to fix.
   checkpatch does report some false positives, but most of the warnings
   I see look relevant.

 * If you like, you can add an Author: line alongside the copyright
   notice in new files that you create.  (You'll see this elsewhere in
   the kernel if you grep.)

One general stylistic issue (IMHO):

 * Try to avoid inventing names for things that have no established
   name (for example "magic0" to mean "magic number 0").

   The risk is that the reader wastes time grepping for the definition,
   when really the text should be read at face value.  It's best to use
   all caps just for #define names, abbreviations, and other things
   that are customarily capitalised (like "CPU" etc.).  Other words
   containing underscores may resemble variable / function names, and
   may cause confusion of there is no actual variable or function with
   that name.

   I don't think it's worth heavily reworking the patches for this, but
   it's something to bear in mind.

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
