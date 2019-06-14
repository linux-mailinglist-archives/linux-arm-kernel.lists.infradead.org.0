Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C4A46BB1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 23:17:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gpc9tIapaXnTebxFh+VALtRoMD03JTWypDg1AooV8hM=; b=KlCAyM+3cl0IRRitKQzwfHXcg
	paWsFMfcpQ9bRTnyRXDmbu1ayYsEr4P0EC+AICPkjIgDeRkiFRWzSoXTYXxxULg0TKbymExa/w0+e
	tSDkXHSBxsgyJuSWcFJjwG4Zksp55jmr54XWxEu+Z2T1tfj/HwO7XyMDbeWIzUBGDFLzFeQ5BHTuk
	R8D2RbkTtwo/q1bZaVJsZwUn+mQ5WU1tIM08MC3kpkuvoxSU8iGIUvcKZkqZhLjeWuzuP0RGnzZvF
	O/T5nIxfdsQSHjD6cYc06Z6lSbNHRojGzBM8+4Pwi7bslI2We+tsjdjPiYLdMfzFODe9nwD+KuGDJ
	CY7N45SlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbtZZ-00013v-8u; Fri, 14 Jun 2019 21:17:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbtZO-00013b-QT
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 21:17:12 +0000
Received: from localhost (unknown [131.107.159.134])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7CEBA2184B;
 Fri, 14 Jun 2019 21:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560547030;
 bh=3qZBnSeXO8K4oYa3/N25KQYrBFfoH3IDbPh/Ayhnk1s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wSQKJ/fpvZ2VNMj+Ci4k6VkUSRmnCwxH0B3QSi4pAXHaafCyjkLk5Ay1FlTE8nu4t
 G9JhtzPQKgDEUCIAmnZTe5zgfu4bvGevKrkwx5eb89dokUpJIBwpcuH1xlDk/nCpvt
 xMI4C4u1OBkryDfNx63vmnnkfSFUTeuK+DAqJlh4=
Date: Fri, 14 Jun 2019 17:17:10 -0400
From: Sasha Levin <sashal@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH v6 18/19] x86: Add support for generic vDSO
Message-ID: <20190614211710.GQ1513@sasha-vm>
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
 <20190530141531.43462-19-vincenzo.frascino@arm.com>
 <BYAPR21MB1221D54FCEC97509EEF7395CD7180@BYAPR21MB1221.namprd21.prod.outlook.com>
 <alpine.DEB.2.21.1906141313150.1722@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1906141313150.1722@nanos.tec.linutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_141710_870068_FA7F13C8 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 Shuah Khan <shuah@kernel.org>, Michael Kelley <mikelley@microsoft.com>,
 Arnd Bergmann <arnd@arndb.de>, Mark Salyzyn <salyzyn@android.com>,
 Huw Davies <huw@codeweavers.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Burton <paul.burton@mips.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 01:15:23PM +0200, Thomas Gleixner wrote:
>On Thu, 30 May 2019, Michael Kelley wrote:
>> Vincenzo -- these changes for Hyper-V are a subset of a larger patch set
>> I have that moves all of the Hyper-V clock/timer code into a separate
>> clocksource driver in drivers/clocksource, with an include file in
>> includes/clocksource.  That new include file should be able to work
>> instead of your new mshyperv-tsc.h.  It also has the benefit of being
>> ISA neutral, so it will work with my in-progress patch set to support
>> Linux on Hyper-V on ARM64.  See https://lkml.org/lkml/2019/5/27/231
>> for the new clocksource driver patch set.
>
>Grrr. That's queued in hyperv-next for whatever reasons.

I queue up our future pull requests there to give them some soaking in
-next.

>Sasha, can you please provide me the branch to pull from so I can have a
>common base for all the various changes floating around?

I'll send you a unified pull request for these changes.

--
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
