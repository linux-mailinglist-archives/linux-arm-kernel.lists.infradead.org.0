Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B32471850A0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 22:06:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TSBLPpngQzLW/g8+c+/OLeWKd9cVhSdj8Rd1K9Dkht0=; b=RvJgk6qd+f/V5a
	t/oBkXvNJ9vdcf2qUZmouYHw4/ru+RlVg6QPaKAadJ+vDecTGmdDUvxIuZSn26cJCNJLWFABeLSDm
	oOZTV/hnDw4tqjIgBhvqTxluNLI68Z+ycAJ/dmbfYT5qDtc+ATg2mVsIAPocQ8tJNn3RIAf9HqWvT
	Zga71mLHEUaIF5/BI4awuiUKZfqFL2vvWEhocI8k4VXSs6zLxLfUbtBtlzBFCQf9k35PbyxxxKYu0
	t4H9rscJ6D5a5cn4f7dSd+/93VULlR/sCMVDjz38835aJvzPQAEbNM+NGOJ9g7uCG7YX1J7ckONKJ
	mYV01nI8Mn8OlR09LpSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCrVZ-0004tf-D5; Fri, 13 Mar 2020 21:06:17 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCrVQ-0004su-KC; Fri, 13 Mar 2020 21:06:10 +0000
Received: from p5de0bf0b.dip0.t-ipconnect.de ([93.224.191.11]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1jCrVH-0003IC-Bk; Fri, 13 Mar 2020 22:05:59 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 7674A100C8D; Fri, 13 Mar 2020 22:05:58 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Bjorn Helgaas <helgaas@kernel.org>, Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCH 4/5] pci: handled return value of platform_get_irq
 correctly
In-Reply-To: <20200312141102.GA93224@google.com>
References: <20200312141102.GA93224@google.com>
Date: Fri, 13 Mar 2020 22:05:58 +0100
Message-ID: <871rpwhsnd.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_140608_807509_73D30780 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
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
Cc: Ryder Lee <ryder.lee@mediatek.com>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Aman Sharma <amanharitsh123@gmail.com>, linux-kernel@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-mediatek@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Marc Zyngier <maz@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Mans Rullgard <mans@mansr.com>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Bjorn,

Bjorn Helgaas <helgaas@kernel.org> writes:
> On Thu, Mar 12, 2020 at 10:53:06AM +0100, Marc Gonzalez wrote:
>> Last time around, my understanding was that, going forward,
>> the best solution was:
>> 
>> 	virq = platform_get_irq(...)
>> 	if (virq <= 0)
>> 		return virq ? : -ENODEV;
>> 
>> i.e. map 0 to -ENODEV, pass other errors as-is, remove the dev_err
>> 
>> @Bjorn/Lorenzo did you have a change of heart?
>
> Yes.  In 10006651 (Oct 20, 2017), I thought:
>
>   irq = platform_get_irq(pdev, 0);
>   if (irq <= 0)
>     return -ENODEV;
>
> was fine.  In 11066455 (Aug 7, 2019), I said I thought I was wrong and
> that:
>
>   platform_get_irq() is a generic interface and we have to be able to
>   interpret return values consistently.  The overwhelming consensus
>   among platform_get_irq() callers is to treat "irq < 0" as an error,
>   and I think we should follow suit.
>   ...
>   I think the best pattern is:
>
>     irq = platform_get_irq(pdev, i);
>     if (irq < 0)
>       return irq;

Careful. 0 is not a valid interrupt.

Thanks,

        tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
