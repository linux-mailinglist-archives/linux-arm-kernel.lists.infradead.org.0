Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CF91155F6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 17:58:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BA3JYJvVihIVLDI29Jt6ysv6miPI4k+piJDJRlbCoLM=; b=Q/IdXy75fTTy41
	kJFb1SAiFNMwqDwep9pvzMA/6DFHM+sANBprFVVPAKdWYytbUtt/KUTavb1I4pWc4gMMmTVXk84zn
	eviG+EIFEdoDtE9uBuJ3F18D4JPpC4n6euzoCYt8cn/HS02LM9zERWR3DLo8Ljf/bXCsvYTZN4cJE
	fxcLpP1WvLToRALd1T+Ncgi6myw/zz9APsrpojKSV+Y7YM9fmdrSTV4zrPlrBoo1G3sI97TNrywvo
	i9BomWC7QISDsunHRxClhyHjfPlfrYqiwm0YOZ1mvZlv73vxDWdLmlI3+b1j8VZcWLC5+tnIWDzUk
	5nFTttAaBgYK45AcuI0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idGvn-0001zm-6L; Fri, 06 Dec 2019 16:58:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idGvg-0001ys-GD
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 16:58:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CBD1F31B;
 Fri,  6 Dec 2019 08:58:06 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9710F3F52E;
 Fri,  6 Dec 2019 08:58:05 -0800 (PST)
Date: Fri, 6 Dec 2019 16:58:03 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Thomas Renninger <trenn@suse.de>
Subject: Re: [PATCH v5 0/3] sysfs: add sysfs based cpuinfo
Message-ID: <20191206165803.GD21671@lakrids.cambridge.arm.com>
References: <20191206162421.15050-1-trenn@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191206162421.15050-1-trenn@suse.de>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_085808_587215_21B0DA48 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, gregkh@linuxfoundation.org, x86@kernel.org,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 fschnitzlein@suse.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Thomas,

On Fri, Dec 06, 2019 at 05:24:18PM +0100, Thomas Renninger wrote:
> I picked up Felix Schnizlein's work from 2017.
> 
> It was already reviewed by Greg-KH at this time and even
> pushed into linux-next tree, when it came out that the mails
> never reached lkml, even the list was added to CC.
> 
> ARM people then correctly complained that this needs more review
> by ARCH people. It got reverted, Felix had no time anymore and this
> nice patcheset was hanging around nowhere...

Can you please provide a rationale for this?

It's not entirely clear to me what information people need or want, and
there's some data in /proc/cpuinfo that I think makes no sense to try to
export export in a structured way (e.g. bogomips).

> 
> Tested on aarch64:
> 
> /sys/devices/system/cpu/cpu1/info/:[0]# ls
> architecture  bogomips  flags  implementer  part  revision  variant
> 
> ------------------------------------------------------------
> 
> for file in *;do echo $file; cat $file;echo;done
> architecture
> 8
> 
> bogomips
> 40.00
> 
> flags
> fp asimd evtstrm aes pmull sha1 sha2 crc32 cpuid asimdrdm
> 
> implementer
> 0x51
> 
> part
> 0xc00
> 
> revision
> 1
> 
> variant
> 0x0
 
For arm64 we already expose the MIDR and REVIDR register values under
/sys/devices/system/cpu/cpu*/regs/identification, and that's the bulk of
the useful information above (aside from the flags/hwcaps).

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
