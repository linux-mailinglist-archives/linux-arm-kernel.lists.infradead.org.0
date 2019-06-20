Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 523D04CB40
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 11:44:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0GU0AGTaJsoASmdfgysQcE+b9wXHlRamCQduandvdak=; b=kFj0jADflkcDvF
	4QKC6NpxVbUuOEA4Bb+Mpv2mDwrGsw+vqtmN90eErQyjNuYQIilx506UWDoPhA6QY01jfQoUFsMV9
	5Qf+nspRfz9PT9hIUZVN1r5WU1KG/Dvoh+VRDeUw/Zoqnlfb8wqQ+2E9Nufc7AlpPiz6ID4YrJZTx
	vcPMi1O2CppOGPhJxcEmXJD2wIFrr0lFZk1SlqA86hcGsM5quccTOWBL92QSGzdhDDpbqXI8OMb73
	Xba5iGSARrP21q0sDFRpO1QCetNsS0oVBA4FZ2IwrG4glfWmKHk22Cs9Xlg+VEwfH4JX5KBEql0o7
	WrAc7yi4GzPWn/0AdBhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdtce-0004xC-W7; Thu, 20 Jun 2019 09:44:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdtcH-0004uQ-Fd
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 09:44:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F4104360;
 Thu, 20 Jun 2019 02:44:24 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F063E3F246;
 Thu, 20 Jun 2019 02:44:23 -0700 (PDT)
Subject: Re: [PATCH] genirq: Remove warning on preemptible in
 prepare_percpu_nmi()
To: Lecopzer Chen <lecopzer.chen@mediatek.com>, linux-kernel@vger.kernel.org
References: <20190620091233.22731-1-lecopzer.chen@mediatek.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <6b1dfe9b-90b4-2782-9444-b6afd2b8791b@arm.com>
Date: Thu, 20 Jun 2019 10:44:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20190620091233.22731-1-lecopzer.chen@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_024425_594157_C83B2069 
X-CRM114-Status: GOOD (  13.39  )
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
Cc: Peter Zijlstra <peterz@infradead.org>, YJ Chiang <yj.chiang@mediatek.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lecopzer,

On 20/06/2019 10:12, Lecopzer Chen wrote:
> prepare_percpu_nmi() acquires lock first by irq_get_desc_lock(),
> no matter whether preempt enabled or not, acquiring lock forces preempt off.
> 
> This simplifies the usage of prepare_percpu_nmi() and we don't need to
> acquire extra lock or explicitly call preempt_[disable,enable]().
> 

This allows wrong usage of prepare_percpu_nmi(). If you are not calling
it from a preemptible context, you could start the call on a CPU, get
preempted and setup the NMI on a completely different CPU than the one
you started on.

This check is for sanity checking, and if you end up calling
prepare_percpu_nmi() from non-preemptible context then your intentions
are unclear, unless you are fine with the possibility of "preparing an
NMI on a random CPU". Also you would have no way to know that that CPU
(since you could run on a random CPU) doesn't already have that IRQ line
set for NMI delivery.

So, I don't think removing those simplifies much, it just silences calls
to it that could go wrong.

Cheers,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
