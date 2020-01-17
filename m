Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B861405B3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 10:00:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Mime-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vwD1IMpp3PDm+o1RDND5+gl0cYz5wRxqhn8GBahWGUI=; b=gu1usfTMumPENW
	MpNPfNp84vUJae5fALJLajB/eUfcu1wsQG7EC8LHcl9FYdy0aazQz8AcLvMoapVq9TRMeDbdqGXNR
	g63h722iN/4SAc7CRyQdIx8gNFbSO9JoeY+ZX7ze7oKsTu9uhp2kdYDviOxFDKU6wecz0is2mDjf4
	B0ZRTw8SdMcoI7ETXMM3ytiqVGDYmybnEEXsSui0gWetOroIM2u0fFqk/c/2UJnyBK+CdRsPHhnBm
	xIr/5OPi0BVryzpiGb7lX90mfSFBoJEpa/TaNEVO4njHg1EKms+SS+qsKn+lw6xJ76EqyZXW+kpN6
	nfdrVgLsPPOy8a6lNrMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isNTp-0006uQ-I7; Fri, 17 Jan 2020 08:59:49 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isNTb-0006iB-Bo
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 08:59:41 +0000
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 00H8ws29002697;
 Fri, 17 Jan 2020 02:58:54 -0600
Received: (from segher@localhost)
 by gate.crashing.org (8.14.1/8.14.1/Submit) id 00H8wpV1002692;
 Fri, 17 Jan 2020 02:58:51 -0600
X-Authentication-Warning: gate.crashing.org: segher set sender to
 segher@kernel.crashing.org using -f
Date: Fri, 17 Jan 2020 02:58:51 -0600
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: Re: [RFC PATCH v4 00/11] powerpc: switch VDSO to C implementation.
Message-ID: <20200117085851.GS3191@gate.crashing.org>
References: <cover.1579196675.git.christophe.leroy@c-s.fr>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1579196675.git.christophe.leroy@c-s.fr>
User-Agent: Mutt/1.4.2.3i
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_005935_543900_402F86B9 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Cc: nathanl@linux.ibm.com, arnd@arndb.de,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@samba.org>, luto@kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, tglx@linutronix.de,
 vincenzo.frascino@arm.com, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

On Thu, Jan 16, 2020 at 05:58:24PM +0000, Christophe Leroy wrote:
> On a powerpc8xx, with current powerpc/32 ASM VDSO:
> 
> gettimeofday:    vdso: 907 nsec/call
> clock-getres-realtime:    vdso: 484 nsec/call
> clock-gettime-realtime:    vdso: 899 nsec/call
> 
> The first patch adds VDSO generic C support without any changes to common code.
> Performance is as follows:
> 
> gettimeofday:    vdso: 1211 nsec/call
> clock-getres-realtime:    vdso: 722 nsec/call
> clock-gettime-realtime:    vdso: 1216 nsec/call
> 
> Then a few changes in the common code have allowed performance improvement. At
> the end of the series we have:
> 
> gettimeofday:    vdso: 974 nsec/call
> clock-getres-realtime:    vdso: 545 nsec/call
> clock-gettime-realtime:    vdso: 941 nsec/call
> 
> The final result is rather close to pure ASM VDSO:
> * 7% more on gettimeofday (9 cycles)
> * 5% more on clock-gettime-realtime (6 cycles)
> * 12% more on clock-getres-realtime (8 cycles)

Nice!  Much better.

It should be tested on more representative hardware, too, but this looks
promising alright :-)


Segher

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
