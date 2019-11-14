Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DB5FC8BA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 15:20:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Pu6sacXHGf12bMVx5wYi7jAsQbZgxS2w9v+Tw6y2k4=; b=QfIi1MQrzV7Suq
	tSRtSLLUehExqSwd7ZNJKvpRX+ws/EmUfEcSroQPA/YB6jmsHpoQHHZmyhtJXmSgm1msqFUaOT0op
	B9yCmwrxNIQ3ap7l0ARIxvvm8ydod4p2xcaF/6SBzdZZPNvxuD0dPLdjuINyRuWn1cVl2UR6jOdM2
	HGVCwLIUa7xCzHNb9m2XO1AWYOJqL7wo8ABZnqy7zltOi/xm8k1U5HJ6zg6emYFStoND56HwasRN/
	5gmZIqeh8vV6PEdfkddnXbnOLRXpOrlRiaT9vje2tFXngniBPoq4xeQGk1UIHebQZb5WSAHMcpx3P
	aF64l0Wyer8ZPQFXovAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVFyA-0006Bb-AC; Thu, 14 Nov 2019 14:19:34 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVFxq-000620-Sy
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 14:19:16 +0000
Received: from [5.158.153.52] (helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1iVFxe-00046J-A5; Thu, 14 Nov 2019 15:19:02 +0100
Date: Thu, 14 Nov 2019 15:19:01 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Jianyong Wu <jianyong.wu@arm.com>
Subject: Re: [RFC PATCH v7 4/7] time: Add mechanism to recognize clocksource
 in time_get_snapshot
In-Reply-To: <20191114121358.6684-5-jianyong.wu@arm.com>
Message-ID: <alpine.DEB.2.21.1911141507010.2507@nanos.tec.linutronix.de>
References: <20191114121358.6684-1-jianyong.wu@arm.com>
 <20191114121358.6684-5-jianyong.wu@arm.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_061915_116267_0E903D76 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark.Rutland@arm.com, justin.he@arm.com, kvm@vger.kernel.org,
 suzuki.poulose@arm.com, maz@kernel.org, richardcochran@gmail.com,
 yangbo.lu@nxp.com, linux-kernel@vger.kernel.org,
 sean.j.christopherson@intel.com, Kaly.Xin@arm.com, john.stultz@linaro.org,
 netdev@vger.kernel.org, pbonzini@redhat.com, nd@arm.com, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 Steve.Capper@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 14 Nov 2019, Jianyong Wu wrote:
> From: Thomas Gleixner <tglx@linutronix.de>
> In some scenario like return device time to ptp_kvm guest,
> we need identify the current clocksource outside core time code.
> A mechanism added to recognize the current clocksource
> by export clocksource id in time_get_snapshot.

Can you please replace that with the following:

 System time snapshots are not conveying information about the current
 clocksource which was used, but callers like the PTP KVM guest
 implementation have the requirement to evaluate the clocksource type to
 select the appropriate mechanism.

 Introduce a clocksource id field in struct clocksource which is by default
 set to CSID_GENERIC (0). Clocksource implementations can set that field to
 a value which allows to identify the clocksource.

 Store the clocksource id of the current clocksource in the
 system_time_snapshot so callers can evaluate which clocksource was used to
 take the snapshot and act accordingly.

> diff --git a/include/linux/clocksource_ids.h b/include/linux/clocksource_ids.h
> new file mode 100644
> index 000000000000..93bec8426c44
> --- /dev/null
> +++ b/include/linux/clocksource_ids.h
> @@ -0,0 +1,13 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef _LINUX_CLOCKSOURCE_IDS_H
> +#define _LINUX_CLOCKSOURCE_IDS_H
> +
> +/* Enum to give clocksources a unique identifier */
> +enum clocksource_ids {
> +	CSID_GENERIC		= 0,
> +	CSID_ARM_ARCH_COUNTER,

This should only add the infrastructure with just CSID_GENERIC in place.

The ARM_ARCH variant needs to come in a seperate patch which adds the enum
and uses it in the corresponding driver. Seperate means a patch doing only
that and nothing else, i.e. not hidden in some other patch which actually
makes use of it.

Thanks,

	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
