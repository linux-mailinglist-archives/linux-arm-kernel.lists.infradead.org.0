Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B189D915
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 00:26:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aff2mQm4akWZJMirrT8YGMoh5r3Wi4vYMgIaquwm9P8=; b=FGgjqAK+Eo6zW9
	ysb2u69TRTiqPupt4doqComHj3dGBEvfvzYwD0jVfNajXiF4IK8MTQNZaqb/0HYeufhG+3DAWDJPP
	94SuCz5D8j6BVvLOa0/Uws0706gB4+ScOHPdza1ewqlyxsNiBHoL+nFfl90J3UD2FO1BBzvgZPAL2
	9wk6PkwpTwl+7erWzxNLnPd6tIf4nu7rlW27L8is0dz+YErabkc1IQiuZsGfzTgOFMM4U6E/Qm+d0
	VrmrayG//eDVdXk2nyjpTgw0r9X16utPMikbMltw32Z1SGIl15V0MzoP76/pnA/RxU95jUQG9RHEV
	uqHzq8E9aszexRRUqQuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2NRe-000768-1Y; Mon, 26 Aug 2019 22:26:38 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2NRQ-00075o-Lh
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 22:26:26 +0000
Received: from p5de0b6c5.dip0.t-ipconnect.de ([93.224.182.197] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1i2NR8-0006Vh-6T; Tue, 27 Aug 2019 00:26:07 +0200
Date: Tue, 27 Aug 2019 00:26:05 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [RFC PATCH 5/7] arm64: smp: use generic SMP stop common code
In-Reply-To: <c6a86709-6faf-bf84-08aa-c41dab61c58f@arm.com>
Message-ID: <alpine.DEB.2.21.1908270025340.1939@nanos.tec.linutronix.de>
References: <20190823115720.605-1-cristian.marussi@arm.com>
 <20190823115720.605-6-cristian.marussi@arm.com>
 <20190826153236.GA9591@infradead.org>
 <c6a86709-6faf-bf84-08aa-c41dab61c58f@arm.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_152624_849961_3936BAD3 
X-CRM114-Status: GOOD (  10.70  )
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
Cc: linux-arch@vger.kernel.org, mark.rutland@arm.com, peterz@infradead.org,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@infradead.org>, takahiro.akashi@linaro.org,
 james.morse@arm.com, hidehiro.kawai.ez@hitachi.com, will@kernel.org,
 dave.martin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 26 Aug 2019, Cristian Marussi wrote:
> On 8/26/19 4:32 PM, Christoph Hellwig wrote:
> > > +config ARCH_USE_COMMON_SMP_STOP
> > > +	def_bool y if SMP
> > 
> > The option belongs into common code and the arch code shoud only
> > select it.
> > 
> 
> In fact that was my first approach, but then I noticed that in kernel/ topdir
> there was no generic Kconfig but only subsystem specific ones:
> 
> Kconfig.freezer  Kconfig.hz       Kconfig.locks    Kconfig.preempt

arch/Kconfig

Thanks,

	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
