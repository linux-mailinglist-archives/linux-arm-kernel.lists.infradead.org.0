Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D52181D5648
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 18:39:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ujq2AcMIBmxx7TPnDOOTo7MOJdMmqujsSootnpEi7M=; b=QC2vkQQCGI3Mkh
	TNpB30psIvhEa5VAk36P++IZb1UBsd34DF8x/ybY5XmnsX3fVyJ/9VE3f0IRhY3sZ6/dOGKQqHiu2
	zrFH44oFZNQBbF3bCLbswOpihAgHJGgxZmIRkB4gcsHOX9d0tkM4FB44evN1L0B+Ib/mIT1JUuT6F
	+a/1gj72zu5HtsmzYn+8473ubaRtfoPYPBCOHgorDtefA52QPyz/KToBk1QLpYoV6Pij5yjEUNUur
	XAR8seOxoseHhwhiVZ5ZjMZjTDP6TsweimWJXPE2g460fzidXPeHtJBL2JbcY2b9lq0K+WBobu8pE
	h2p7QdOWhR1cWOO/VnyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZdMo-0004zr-5z; Fri, 15 May 2020 16:39:22 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZdMd-0004zN-EW
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 16:39:12 +0000
Received: by mail-oi1-f196.google.com with SMTP id 19so2749728oiy.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 09:39:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wu75K1JQVmD5ftGcEDgptNf2zmztCB2YYmBlZh6hRAs=;
 b=NAQX8eQTaUxlDIJOv/4S954gkr26oD4Ln14jDJtCQwH+0N9oX3bLLl+cvZfWCHIbFX
 yMaBk73zMEm7U4F+Wo6y3r64nPLZN8Qn0pgQZkvgZMvQggwZa0ZpHS+WwyzfeyuX8YL0
 FfJ9z355oLzjV4N6ig+1JgwTb+fON2BDptQcDJkojQt3kC3Cu0bc9TrKHqml0ysC3DAf
 hkR9Y7XgVMFX1zhkbKcVasDuB2J4UZQOwd+yTVNOMSicMFBq3Y+Hq0JRzhjm2bLBgxgY
 9UxFNMvOSvR15uJmxKSoMXAMTtvw04AeaR5ot4sIl/cGHvwk0LKJbwM5B+BUqzUFm45J
 eQBw==
X-Gm-Message-State: AOAM5337ZhWwqlj2MnRB8amn8x5tmhVGpUP52PpJyIyz35dsCoh6DMLk
 UoLUbJYIH5gUjuNrSGgCzlpqVXZW4/3+6I614iE=
X-Google-Smtp-Source: ABdhPJxMLi3q/7SEYR9jrQy7LNdJekTiHJaE7sfxiNhuG/9UYGszH1SOLcsUPxRqDsUtYcyp6n6EjKP0pI93K+bkylU=
X-Received: by 2002:aca:eb56:: with SMTP id j83mr2374613oih.110.1589560750449; 
 Fri, 15 May 2020 09:39:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200511133346.21706-1-ulf.hansson@linaro.org>
 <20200514142015.GA23401@bogus>
 <CAPDyKFoVo8L7eiGdEVNYR2DY7cszDuLkmX8O_SfyUKh73pbpMQ@mail.gmail.com>
 <20200514172816.GA42669@bogus>
 <CAPDyKFrdrOnxFHaAR=cmMi2VfSudyHdjZ7vRZKhTQtepdkiXug@mail.gmail.com>
 <20200515102255.GA25927@bogus>
 <CAPDyKFrsfLExZHvNrJgqsJj8TTzj9jg5v=jEowBTdi26uyjZXg@mail.gmail.com>
In-Reply-To: <CAPDyKFrsfLExZHvNrJgqsJj8TTzj9jg5v=jEowBTdi26uyjZXg@mail.gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 15 May 2020 18:38:59 +0200
Message-ID: <CAJZ5v0imyuNQe0yDmK8nV8eCCMBy+oXB7CZttZ47cijt7dEGOA@mail.gmail.com>
Subject: Re: [PATCH] cpuidle: psci: Fixup execution order when entering a
 domain idle state
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_093911_484243_5A1F404A 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rjwysocki[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Linux PM <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 1:30 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Fri, 15 May 2020 at 12:23, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Thu, May 14, 2020 at 09:11:50PM +0200, Ulf Hansson wrote:
> > >
> > > No worries, thanks for reviewing.
> > >
> >
> > You are welcome.
> >
> > > That said, are you fine with Rafel queuing this then?
> > >
> >
> > I am fine with that. However I told if you need fixes tags as there are
> > no users of the notification yet in the kernel. Though this is trivial,
> > but do we need this backported to stable kernel. I don't have strong
> > opinion and leave it to you and Rafael.
>
> I wanted to add the fixes tag, to make it obvious that there is an
> error being fixed.
>
> On the other hand, no need to tag this for stable, nor to need to send
> it as fix for 5.7,
>
> >
> > Acked-by: Sudeep Holla <sudeep.holla@arm.com>
>
> Thanks!

So applied as 5.8 material, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
