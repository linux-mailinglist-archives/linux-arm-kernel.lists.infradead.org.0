Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3D418FD95
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 20:25:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PVTO3WED7BXr8L/yCYsUFwEN/x8DTeLhw74040mztKo=; b=GgenRS+4rGgg8w
	RIUb9mmd3MRhxHTrMkKgJG5X7q26o69RSAOnWijZMmJanmgCvtP2x1UNNySqzf5eR7ckLfbuIYEFl
	pUpO3GZM7lzjSXOnj4BJpajfZM2L5IndJhwToM2r1u1lGs1k5oJKFC2ygXN5IzsdgeF1M6kQz0zz5
	Vs+/9IFo042YS+vPgcfA0JXCQywHjPwjoHKbJgMLLXAPh52htPwiwkU6SZxWOEE/gwLIx+YMIzyUI
	qTN/982sQDzODvxX33ACP62ZZ53D8RHwFw+KSz0UL5tfzVLXOqJ96ITsnDSBQfbPlPH13UFglRkSS
	S/TUkLMVUbrU+Tz6emfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGShZ-0007Ns-Hb; Mon, 23 Mar 2020 19:25:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGShQ-0007Mc-IT
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 19:25:25 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 116FC206F8;
 Mon, 23 Mar 2020 19:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584991522;
 bh=/NMyoIndtBy/uN2Nsb9xjYgoiz267TfqlBXGqvQ5aN4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=X+lbU52fWuhOblpsezheiDLXs/V9cliJVLzB2nfh0dDGkGt54V7PEXXyeyLKstS0L
 YNCmG0alVYdue7YDyZ7NG5OKHCOc6DZmGhUkRpVhu9G1FBpFrD1egvDgoiEqUm/dDV
 aXyHk3dJOBUdhuKnjkn/yGo1JsltgN5O2nBqHr8M=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jGShM-00F3Iu-9Z; Mon, 23 Mar 2020 19:25:20 +0000
Date: Mon, 23 Mar 2020 19:25:19 +0000
From: Marc Zyngier <maz@kernel.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH v3 2/2] pinctrl: stm32: Add level interrupt support to
 gpio irq chip
Message-ID: <20200323192519.1bd1dc5f@why>
In-Reply-To: <a7fc5e43-34c2-a4e6-e0c5-1584f17fb024@denx.de>
References: <20200219143229.18084-1-alexandre.torgue@st.com>
 <20200219143229.18084-3-alexandre.torgue@st.com>
 <CACRpkdZ7uq4U6GBQQQh=pTLf4wW3KfH3Zrz9z_3ZQgoaJD9Ynw@mail.gmail.com>
 <c991edca3e8925cf0489c0a5676f77b2@kernel.org>
 <a7fc5e43-34c2-a4e6-e0c5-1584f17fb024@denx.de>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: marex@denx.de, linus.walleij@linaro.org,
 alexandre.torgue@st.com, tglx@linutronix.de, jason@lakedaemon.net,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_122524_633606_5728225E 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org, "open
 list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Jason Cooper <jason@lakedaemon.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 23 Mar 2020 20:04:23 +0100
Marek Vasut <marex@denx.de> wrote:

> On 2/20/20 10:17 AM, Marc Zyngier wrote:
> > On 2020-02-20 09:04, Linus Walleij wrote:
> >> On Wed, Feb 19, 2020 at 3:32 PM Alexandre Torgue
> >> <alexandre.torgue@st.com> wrote:
> >>
> >>> GPIO hardware block is directly linked to EXTI block but EXTI handles
> >>> external interrupts only on edge. To be able to handle GPIO interrupt on
> >>> level a "hack" is done in gpio irq chip: parent interrupt (exti irq
> >>> chip)
> >>> is retriggered following interrupt type and gpio line value.
> >>>
> >>> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
> >>> Tested-by: Marek Vasut <marex@denx.de>
> >>
> >> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> >>
> >> If Marc want to merge it with patch 1/2 go ahead!
> > 
> > I'll queue the whole thing for 5.7.
> 
> I have a feeling this doesn't work with threaded interrupts.
> 
> If the interrupt handler runs in a thread context, the EOI will happen
> almost right away (while the IRQ handler runs) and so will the code
> handling the IRQ retriggering. But since the IRQ handler still runs and
> didn't return yet, the retriggering doesn't cause the IRQ handler to be
> called again once it finishes, even if the IRQ line is still asserted.
> And that could result in some of the retriggers now happening I think.
> Or am I doing something wrong ?

Wouldn't the hardirq handler mask the interrupt? This should certainly
be the case when IRQF_ONESHOT is set.

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
