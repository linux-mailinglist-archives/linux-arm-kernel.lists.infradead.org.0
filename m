Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46ADB181C8F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 16:43:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V5MD0YxBDjqxCgv1LXbN6hlw44yQy9Rn0ytbj/5nEEY=; b=E6JkjwORlhUh7O
	Gwl1CQNbysxe28Eaje/kMGFviwhxcAkDRGvnPSJP/AqBs3B1RDu//luUL5JN+6hMgd+0JlWKtsMqq
	MnNQgCVKGQY+pw82I/uZEezQDt2FGzddFkou6W3BxsAHZeti+zF31XDYgA6Cpf95nFBOZLXU70eTT
	XXxHu//SV6uMVzLoHO2+5u8xhoTyHdMW+qva77rTKmV2Ptl5y396tk25wZEwnVgb0utEsx3E4gnTF
	6vhFQoqS+Z8HMRjHN3AePHF7y9CgtE/Y3kwE36UYCubiauz5Ktqw7tXV2lHvNcocH2hmZ17JKdT16
	Tw4OGwZvwUImPdwf8mWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC3WF-0004MJ-Kp; Wed, 11 Mar 2020 15:43:39 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC3W4-0004Lc-V3
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 15:43:30 +0000
Received: from p5de0bf0b.dip0.t-ipconnect.de ([93.224.191.11]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1jC3Vv-0003YB-Q2; Wed, 11 Mar 2020 16:43:19 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 04E17100F5A; Wed, 11 Mar 2020 16:43:18 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Tim Harvey <tharvey@gateworks.com>, Lokesh Vutla <lokeshvutla@ti.com>
Subject: Re: [PATCH v8 07/14] gpio: thunderx: Use the default parent apis for
 {request, release}_resources
In-Reply-To: <CAJ+vNU2gnKKxX2YL1JUSnpF7qNqKVAsPhC2emv=Y79HPJbZXzw@mail.gmail.com>
References: <20190430101230.21794-1-lokeshvutla@ti.com>
 <20190430101230.21794-8-lokeshvutla@ti.com>
 <CAJ+vNU2gnKKxX2YL1JUSnpF7qNqKVAsPhC2emv=Y79HPJbZXzw@mail.gmail.com>
Date: Wed, 11 Mar 2020 16:43:18 +0100
Message-ID: <87zhcmkicp.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_084329_138214_F608343B 
X-CRM114-Status: GOOD (  16.90  )
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
Cc: Nishanth Menon <nm@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Jason Cooper <jason@lakedaemon.net>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Marc Zyngier <marc.zyngier@arm.com>, Linus Walleij <linus.walleij@linaro.org>,
 Sekhar Nori <nsekhar@ti.com>, open list <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Tony Lindgren <tony@atomide.com>,
 Rob Herring <robh+dt@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tim,

Tim Harvey <tharvey@gateworks.com> writes:
> On Tue, Apr 30, 2019 at 3:14 AM Lokesh Vutla <lokeshvutla@ti.com> wrote:
>> -       if (parent_data && parent_data->chip->irq_request_resources) {
>> -               r = parent_data->chip->irq_request_resources(parent_data);
>> -               if (r)
>> -                       goto error;
>> -       }
>> +       r = irq_chip_request_resources_parent(data);
>> +       if (r)
>> +               gpiochip_unlock_as_irq(&txgpio->chip, txline->line);
>
> This patch breaks irq resources for thunderx-gpio as
> parent_data->chip->irq_request_resources is undefined thus your new
> irq_chip_request_resources_parent() returns -ENOSYS causing this
> function to return an error where as before it would happily return 0.
>
> Is the following the correct fix or should we qualify
> data->parent_data->chip->irq_request_resources before calling
> irq_chip_request_resources_parent() in thunderx-gpio?

You are not supposed to fiddle with parent data at all. Just because C
allows you is no excuse to violate abstractions in the first place.

irq_chip_request_resources_parent() rightfully returns -ENOSYS when it
can't request a resource from the parent chip because that chip does not
have anything to offer.

It's up to the caller to do something sensible with the return code. If
your chip is happy with the parent not providing it then handle
-ENOSYS. None of the chip callbacks should return -ENOSYS. If one does
then that wants to be fixed.

Thanks,

        tglx



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
