Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B061396F7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 18:06:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=juR3ghf5/5gpGqziIm6316xWhAv6lMMXQMU7pyVlhh4=; b=VBL8teFFxkwLgM
	8qUyCgIHwacfKo1VElJTPSnmzPgSKWoYdtyir+MQHbhHEr2OFiKbJYbQ4hfaZlmEWGC24J8DoyfVQ
	OO+NpwW+vt24q/vI0Il04jM95PS7b+n6NFiqmYoVbUe5KMH4r0f4DgYmfqHMZhbi+OvJMFuNdPfen
	PHDDBss03s5FZW/5ngWIuEdaa9AUwht4tNfIx7pf1cUzrNPpbJbUu6WyJJkqiU9jpemWzWoGoUq8V
	JqPGTfFqnANrhZX1uie50e4EVh6zzCEb1bGGjhvlgiK4et1a4Yv+4gIEIGPxkBRrwIWtKkUksAo/6
	PwFDuE3lmsUosR+wH2dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir3AA-0001MU-Ju; Mon, 13 Jan 2020 17:06:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir3A1-0001Kt-NN
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 17:05:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 317CB11B3;
 Mon, 13 Jan 2020 09:05:51 -0800 (PST)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D3A583F534;
 Mon, 13 Jan 2020 09:05:44 -0800 (PST)
Subject: Re: [RFC PATCH v3 00/12] Unify SMP stop generic logic to common code
To: Will Deacon <will@kernel.org>
References: <20191219121905.26905-1-cristian.marussi@arm.com>
 <20200113164029.GE4458@willie-the-truck>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <7937f12d-8aba-733a-c313-f446857a1447@arm.com>
Date: Mon, 13 Jan 2020 17:05:43 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200113164029.GE4458@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_090553_895537_2245C894 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, mark.rutland@arm.com,
 sparclinux@vger.kernel.org, dzickus@redhat.com, ehabkost@redhat.com,
 peterz@infradead.org, catalin.marinas@arm.com, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux@armlinux.org.uk, hch@infradead.org,
 takahiro.akashi@linaro.org, mingo@redhat.com, james.morse@arm.com,
 hidehiro.kawai.ez@hitachi.com, tglx@linutronix.de, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will

On 13/01/2020 16:40, Will Deacon wrote:
> On Thu, Dec 19, 2019 at 12:18:53PM +0000, Cristian Marussi wrote:
>> the logic underlying SMP stop and kexec crash procedures, beside containing
>> some arch-specific bits, is mostly generic and common across all archs:
>> despite this fact, such logic is now scattered across all architectures and
>> on some of them is flawed, in such a way that, under some specific
>> conditions, you can end up with a CPU left still running after a panic and
>> possibly lost across a subsequent kexec crash reboot. [1]
> 
> Is this still the case even after 20bb759a66be ("panic: ensure preemption is
> disabled during panic()")?
> 

v3 is based on 5.5-rc2 which seems to include 20bb759a66be, and when I tested before
re-posting a few weeks ago it was still failing as usual, i.e. kernel still alive after panic.
[but please be aware that to reproduce it, you need to have only one core online and another one
 panicing while starting up (while still marked offline)]

Thanks

Cristian



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
