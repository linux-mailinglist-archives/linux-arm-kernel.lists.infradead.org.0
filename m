Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA58181D38
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 17:10:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rvUFwl8rUBng1m6TXIXzQ+oZ3damNW+QdLZEKCHYjTQ=; b=tCjsU1fVjjZdkO
	SIotohfneVWtB6gfV8CUe2n5bncOpG6wfMhQegpRPqh1fj+W1iVd79enr3d4xpHpGvd6xCUCCStpj
	1Vc5tJj5SqEaDLYmL4Ik6fiqeAVA0dnJrQ/2TPA8BT5D3yHAWLkng8loVgbNKRgAEjdO7eQu/43Rx
	4B4yVHRqaNlU4PNHgjcwcdBOlljyUGRX0DK4T9QeC+HbuFoi1kuHgTZMI4VVGW3J55G2up1+/OTSD
	WsT4rv7xGtfdQ3o9EhnGPizZs4DGUbJE+GSVLDaRq8wcDms3o5QWuhnNDdm0/CRcinpbOWoeqYYI1
	IcI6Nm6ry5BYeRhLcIgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC3vz-0007en-Dp; Wed, 11 Mar 2020 16:10:15 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC3vh-0007eA-OK
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 16:09:59 +0000
Received: by mail-ot1-x343.google.com with SMTP id h17so2544797otn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 09:09:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qHCMeKPDxYeB8oLBoOVgW7eRt3m++jTxFNAqk0lBahg=;
 b=T+2qbotF8YuwXHpWLAJaVZ3hVF/dquYCSRS05M1A7mvQV5LzfewtWVTsHWdk8Go9F/
 2g/4Ym2nx7n5QV/sER4Txqu5rPTxqet8VHyUWGxCmwWAJt3qUQiSWGPET2xfNz9JfedF
 5xwHqKoGb41geEImN2fUmeSQQF7St0SbGtqHlmlfn6i/7S3/hSGDeYa08lyFqq83sM5I
 UZp8EKZAV1mUiq5TMGDkiQlDPoljkg8PtpjL06pqruUn0UYWL7pIycT6vZrXwQHxfMFV
 S60j0XBqb/FAOJfDMpT+2LXN3h4M5o4PLyfEnFL6nPDVvmcVHwvYhv+3zKS43eS04L3G
 EiGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qHCMeKPDxYeB8oLBoOVgW7eRt3m++jTxFNAqk0lBahg=;
 b=Tc/l+5+kzEXbRlBATryUWYwZEHcxUAi7ZWDK0FTVC9VX12QQnc+KbhApHnxtZeF7FD
 4uoOwTHCe4RroTqIRGCnzh3wk5/G6AULA7N5UaqJzRUg+lh3XJ31USmJP++FS/HPhNbb
 vYcm0qX4Br7FC3BD5NH6AFYLZcmufpcngLAAWm19rypjDOqWJnV1auwF4akI05UeGpGI
 mfaa5DnoCE2ObGcIl/QCiYH+Yr4cCYZN1VRzRtDrLSScur5Yz27kkKVOhxZjqwRQTAJr
 eah8UhkTj8BN2urnxPQmOJZgWrXCyluANuD4vkKNKnF59TkqjHcl8Fv+HFSEjh5xo/sz
 bu+w==
X-Gm-Message-State: ANhLgQ0YQBk6gxch5rwsxwY2fyOe2u0xyF5pRAlJmeQVqLTtnagK3Fqg
 X6lpixlyETqwSNAfs0masknmbx/EhGltG9H2Gl64pw==
X-Google-Smtp-Source: ADFU+vsF0mYOWDUY9jeerFS7C1YHWPcdcvJokSfwKoYIwMy0iUuNQO8orU7ziwk2fzKINRWEir3a59IQXixeW7y6JDo=
X-Received: by 2002:a4a:2a47:: with SMTP id x7mr790140oox.23.1583942995604;
 Wed, 11 Mar 2020 09:09:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190430101230.21794-1-lokeshvutla@ti.com>
 <20190430101230.21794-8-lokeshvutla@ti.com>
 <CAJ+vNU2gnKKxX2YL1JUSnpF7qNqKVAsPhC2emv=Y79HPJbZXzw@mail.gmail.com>
 <87zhcmkicp.fsf@nanos.tec.linutronix.de>
In-Reply-To: <87zhcmkicp.fsf@nanos.tec.linutronix.de>
From: Tim Harvey <tharvey@gateworks.com>
Date: Wed, 11 Mar 2020 09:09:43 -0700
Message-ID: <CAJ+vNU2agPYq+Y3kXG40wcfUzA9q-27Cdvqj7gLT2o6RKCQK5Q@mail.gmail.com>
Subject: Re: [PATCH v8 07/14] gpio: thunderx: Use the default parent apis for
 {request, release}_resources
To: Thomas Gleixner <tglx@linutronix.de>, Lokesh Vutla <lokeshvutla@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_090957_934062_04A76E1A 
X-CRM114-Status: GOOD (  19.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Wed, Mar 11, 2020 at 8:43 AM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> Tim,
>
> Tim Harvey <tharvey@gateworks.com> writes:
> > On Tue, Apr 30, 2019 at 3:14 AM Lokesh Vutla <lokeshvutla@ti.com> wrote:
> >> -       if (parent_data && parent_data->chip->irq_request_resources) {
> >> -               r = parent_data->chip->irq_request_resources(parent_data);
> >> -               if (r)
> >> -                       goto error;
> >> -       }
> >> +       r = irq_chip_request_resources_parent(data);
> >> +       if (r)
> >> +               gpiochip_unlock_as_irq(&txgpio->chip, txline->line);
> >
> > This patch breaks irq resources for thunderx-gpio as
> > parent_data->chip->irq_request_resources is undefined thus your new
> > irq_chip_request_resources_parent() returns -ENOSYS causing this
> > function to return an error where as before it would happily return 0.
> >
> > Is the following the correct fix or should we qualify
> > data->parent_data->chip->irq_request_resources before calling
> > irq_chip_request_resources_parent() in thunderx-gpio?
>
> You are not supposed to fiddle with parent data at all. Just because C
> allows you is no excuse to violate abstractions in the first place.
>
> irq_chip_request_resources_parent() rightfully returns -ENOSYS when it
> can't request a resource from the parent chip because that chip does not
> have anything to offer.
>
> It's up to the caller to do something sensible with the return code. If
> your chip is happy with the parent not providing it then handle
> -ENOSYS. None of the chip callbacks should return -ENOSYS. If one does
> then that wants to be fixed.
>

Ok, makes sense. Thank you and Lokesh for the feedback. I just
submitted a patch to fix the thunderx-gpio breakage.

Best Regards,

Tim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
