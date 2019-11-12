Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93845F92FD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 15:48:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uxCIdBHOkaS9L9ln56I0hrAc4fOtmkPbgFCVxkOPSMs=; b=Le60Y98jRDHy/1
	kpYH+XrslrylGscVhlIkhd+pd2uMKAhx6b8W1TevfH4I/spj1vD3NR8n+8y32AyMdMZeDkJZiyd4B
	kMFXkDLgZ5Lt70HJrHmLazZLFSVOWs3e0agiZh3QvpmAxuVOvo4SyS2jOag6p5z8zaqhL25pLT/+v
	WSwgrDtT7fLLNayiMjsoNfAJFmTTv6ycrE2p3OkyW+1XMinDuAWRd2Ba0mXpdlGOO97hE3eGEThiD
	h7fZTQ1KhmHBbLxTcNNopiIV/gjXmVab3W6AgCsUmyjrofbsa/US/tsmzOPjyjdSq5HxI4DdvEfo4
	FYtscIJW/2HxXPylRE1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUXT3-0007tb-Os; Tue, 12 Nov 2019 14:48:29 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUXSs-0007t7-5D
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 14:48:19 +0000
Received: from p5b06da22.dip0.t-ipconnect.de ([91.6.218.34] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1iUXSl-0004ha-50; Tue, 12 Nov 2019 15:48:11 +0100
Date: Tue, 12 Nov 2019 15:48:10 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH] arm: kernel: initialize broadcast hrtimer based clock
 event device
In-Reply-To: <20191112120625.20173-1-benjamin.gaignard@st.com>
Message-ID: <alpine.DEB.2.21.1911121547490.1833@nanos.tec.linutronix.de>
References: <20191112120625.20173-1-benjamin.gaignard@st.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_064818_341731_E999823A 
X-CRM114-Status: GOOD (  17.12  )
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
Cc: gregkh@linuxfoundation.org, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, rmk+kernel@armlinux.org.uk,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 12 Nov 2019, Benjamin Gaignard wrote:

> On platforms implementing CPU power management, the CPUidle subsystem
> can allow CPUs to enter idle states where local timers logic is lost on power
> down. To keep the software timers functional the kernel relies on an
> always-on broadcast timer to be present in the platform to relay the
> interrupt signalling the timer expiries.
> 
> For platforms implementing CPU core gating that do not implement an always-on
> HW timer or implement it in a broken way, this patch adds code to initialize
> the kernel hrtimer based clock event device upon boot (which can be chosen as
> tick broadcast device by the kernel).
> It relies on a dynamically chosen CPU to be always powered-up. This CPU then
> relays the timer interrupt to CPUs in deep-idle states through its HW local
> timer device.
> 
> Having a CPU always-on has implications on power management platform
> capabilities and makes CPUidle suboptimal, since at least a CPU is kept
> always in a shallow idle state by the kernel to relay timer interrupts,
> but at least leaves the kernel with a functional system with some working
> power management capabilities.
> 
> The hrtimer based clock event device is unconditionally registered, but
> has the lowest possible rating such that any broadcast-capable HW clock
> event device present will be chosen in preference as the tick broadcast
> device.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>

Reviewed-by: Thomas Gleixner <tglx@linutronix.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
