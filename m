Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCCC11D2066
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 22:49:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ToRb/4XVX7ZM3fICEPRndgMHt/HW63bVayeoBCrvYVg=; b=qxCOKSIK74G/KZ
	uh1oFMD1KVeI08c4hhJjttsSIeSLXrxUbdWRvSatfh7B7Pd1v9czwFXJ8lWPkPJ3UdwLfy6UqZe9P
	Ap2UFPTfs/f/eoD9LNjRXe0EyCazqNc5+PKFEnlNt7zp0Nr+3zbUtuftkg71KtbxVukVmr/Qzis5c
	kCeNOiKoJdgzfVwSGvVjylFSmqY5wIlk1XaodUkdWyY35zGcsRLpF3dC1gzxPnIICnCX+G1SfiZbz
	hvWQgjDzF40uLf9/MLIhQC1RMEWa4AI/Tgzz8TU58FNNIdbif/jd4wa8K8nrmFOqi4d/Px2Yw7A8c
	Mu8EyT5jKQ221ODqwJuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYyK9-0007Be-Hn; Wed, 13 May 2020 20:49:53 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYyK0-0007B6-C4
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 20:49:46 +0000
Received: from p5de0bf0b.dip0.t-ipconnect.de ([93.224.191.11]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1jYyJr-00046r-8g; Wed, 13 May 2020 22:49:35 +0200
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 3CC63100605; Wed, 13 May 2020 22:49:33 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] [RFC] genirq: Check irq_data_get_irq_chip() return value
 before use
In-Reply-To: <d3b76d43-675b-c699-06fa-aab448504f25@denx.de>
References: <20200507150729.244468-1-marex@denx.de>
 <87r1vvejqa.fsf@nanos.tec.linutronix.de>
 <05c06df8-f871-c20f-3b7e-bcfa0b5d88cd@denx.de>
 <875zd7e7m0.fsf@nanos.tec.linutronix.de>
 <d3b76d43-675b-c699-06fa-aab448504f25@denx.de>
Date: Wed, 13 May 2020 22:49:33 +0200
Message-ID: <87a72b1rxe.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_134944_551277_5505FA44 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
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
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Stephen Boyd <sboyd@codeaurora.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Fabien Dessenne <fabien.dessenne@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Marek,

Marek Vasut <marex@denx.de> writes:
> On 5/7/20 11:51 PM, Thomas Gleixner wrote:
> All right, so I found out the root cause is already fixed in next, and
> just needs to be backported to stable. I'll ping the patch author about
> that.
>
> It's this patch:
> 69269446ccbf ("mailbox: stm32-ipcc: Update wakeup management")
>
> I also need to revisit the regulator suspend topic next, that seems to
> be a separate issue after all.
>
> Sorry for the noise.

Nothing to be sorry about.

> That said, do you want to take this patch to add the missing check
> anyway or is there a reason the check is missing ?

The reason is probably that chip == NULL is unexpected at least from the
initial callers.

Adding a check for robustness is a good thing, but it should be done
slightly different.

	do {
		chip = irq_data_get_irq_chip(data);
                if (WARN_ON_ONCE(!chip))
                	return -ENODEV;

Simply because to alert the developer that this call is at the wrong
place.

Care to refresh it?

Thanks,

        tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
