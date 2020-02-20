Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5B71659FC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 10:17:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HC+UPdPghg6qvOYkBlamHfG+VkkosHz/Q/s/guJ1eOU=; b=ZOpvNMIHPgkdoT85vTwsOeYW4
	2mwv7MAhJEYNOVjaReGIwjQPUVrxY0+wbuLtwWqq6N17OR/yeL8kSYuzvxQvmaeiQjAQXG2Y7CGH7
	7AxdeEZzQLeG/NK80+8RzV5gkC11cb/0LsaiWwr/VLtIP34z2ybb0oWLAwmfwvCGrhEm5ZcehIPY8
	js1kJN2ce9p7ighkbyYZr/j1CRGQWaYJ8cR5B3GNRcg1e1U1cDy9KwASPr6cqvGAR32H+yO0zLCa5
	ERM75P8O6fYEYaicGapwWjHErF/0QnXc440KpH/woxSyxlu09ylpMTGYTV6/yi/cBSsy9jc7eXbIU
	xGGVvb9bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4hxd-0000jM-81; Thu, 20 Feb 2020 09:17:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4hxT-0000hj-3n
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 09:17:24 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 40A6A24654;
 Thu, 20 Feb 2020 09:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582190242;
 bh=bWixAGMKU8jAr6IWwbDseU4VCSvdbKE6KK8Sbxd6ZgQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=oJYUJB6wiSoeEmvNcEfS3X7VfOLuHVjdjpsoUFRkT/spgki8coClO8V4oD4Dal1bU
 JiDCIS1NSjQvu9qOYE1c8wHBlgz1p7hfeOA4hnjgAmI3ENkHLFMEH2DjofD322hQ3z
 CCAioEScjF2KXmXZ8Kk9QFf2wlc4rC8O0Tes1TdQ=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j4hxQ-006gyh-Gj; Thu, 20 Feb 2020 09:17:20 +0000
MIME-Version: 1.0
Date: Thu, 20 Feb 2020 09:17:20 +0000
From: Marc Zyngier <maz@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v3 2/2] pinctrl: stm32: Add level interrupt support to
 gpio irq chip
In-Reply-To: <CACRpkdZ7uq4U6GBQQQh=pTLf4wW3KfH3Zrz9z_3ZQgoaJD9Ynw@mail.gmail.com>
References: <20200219143229.18084-1-alexandre.torgue@st.com>
 <20200219143229.18084-3-alexandre.torgue@st.com>
 <CACRpkdZ7uq4U6GBQQQh=pTLf4wW3KfH3Zrz9z_3ZQgoaJD9Ynw@mail.gmail.com>
Message-ID: <c991edca3e8925cf0489c0a5676f77b2@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: linus.walleij@linaro.org, alexandre.torgue@st.com,
 tglx@linutronix.de, jason@lakedaemon.net, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, marex@denx.de
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_011723_175323_DAD2FEA8 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Marek Vasut <marex@denx.de>, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-kernel@vger.kernel.org, "open
 list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Jason Cooper <jason@lakedaemon.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-20 09:04, Linus Walleij wrote:
> On Wed, Feb 19, 2020 at 3:32 PM Alexandre Torgue
> <alexandre.torgue@st.com> wrote:
> 
>> GPIO hardware block is directly linked to EXTI block but EXTI handles
>> external interrupts only on edge. To be able to handle GPIO interrupt 
>> on
>> level a "hack" is done in gpio irq chip: parent interrupt (exti irq 
>> chip)
>> is retriggered following interrupt type and gpio line value.
>> 
>> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
>> Tested-by: Marek Vasut <marex@denx.de>
> 
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> 
> If Marc want to merge it with patch 1/2 go ahead!

I'll queue the whole thing for 5.7.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
