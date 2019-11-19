Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DAFC102F59
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 23:32:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4rzUdQPuCToL7UnjNEt3mAin5ntj0U2Z/KG5duWML7M=; b=YAo0gatLbQyl+8
	eU4PMolLfd2NTvgznR8GIavY3++Hgj2YOG1RJo3ujVwrMCMTmq3APQX33rCeuAxx5CYH1ZDhHoqF4
	DLtRtsTgkSSk1rxM0T62khkbEiACzOQd9GGlvW4Pm/dccWhI34IEoLRHzWJnSGlA5JF9frtoXRQQT
	Ml71g4MWqCT+iJf5C4w64Qmd9ccxWqUa/PAU6ABrY+I66e6v4fs99ioUzacfetfNXZEyO1JnBehgd
	9Gc6ODY2f4tk+v6U0MD+Ceu5Wpm2b+IHv7NXmqyALnfjt/jhuFUZhIf5qlhbpUq2JQzM492PDKmUn
	tvpEcMb2x7Q22/5s8nrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXC2U-0000A6-S2; Tue, 19 Nov 2019 22:32:02 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXC2J-00008z-P0
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 22:31:56 +0000
Received: from p5b06da22.dip0.t-ipconnect.de ([91.6.218.34] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1iXC27-0004Yd-KI; Tue, 19 Nov 2019 23:31:39 +0100
Date: Tue, 19 Nov 2019 23:31:38 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Qais Yousef <qais.yousef@arm.com>
Subject: Re: [PATCH 01/12] arm64: hibernate.c: create a new function to handle
 cpu_up(sleep_cpu)
In-Reply-To: <20191030153837.18107-2-qais.yousef@arm.com>
Message-ID: <alpine.DEB.2.21.1911192326120.6731@nanos.tec.linutronix.de>
References: <20191030153837.18107-1-qais.yousef@arm.com>
 <20191030153837.18107-2-qais.yousef@arm.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_143151_954111_B8CA3348 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Steve Capper <steve.capper@arm.com>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Josh Poimboeuf <jpoimboe@redhat.com>,
 Pavankumar Kondeti <pkondeti@codeaurora.org>,
 Zhenzhong Duan <zhenzhong.duan@oracle.com>,
 Nicholas Piggin <npiggin@gmail.com>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>, James Morse <james.morse@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jiri Kosina <jkosina@suse.cz>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 30 Oct 2019, Qais Yousef wrote:
>  
> +int hibernation_bringup_sleep_cpu(unsigned int sleep_cpu)

That function name is horrible. Aside of that I really have to ask how you
end up hibernating on an offline CPU?

> +{
> +	int ret;
> +
> +	if (!cpu_online(sleep_cpu)) {
> +		pr_info("Hibernated on a CPU that is offline! Bringing CPU up.\n");
> +		ret = cpu_up(sleep_cpu);
> +		if (ret) {
> +			pr_err("Failed to bring hibernate-CPU up!\n");
> +			return ret;
> +		}
> +	}
> +}

Thanks,

	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
