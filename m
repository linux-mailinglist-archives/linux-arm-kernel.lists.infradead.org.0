Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44109113F25
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 11:13:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nr1EMzNqfcHltAGB26zKb4rDOqeIfNZAp9/E/ruk5i0=; b=U5Yq1bRMlsMu8X
	6COEGxGjgsl8+rURVrghYWUdcnXKU+O9lJE5bvLeGrIIc0IO1Qq1KalCFr749iaMRtgL4N5f1uV20
	Aa1NeZSAOna5jpLWumjrS5PPqngouQ/TDDtQvmjE6FWFx1ufU3pTSztiEXezAs6MY+3TUxR93d9GZ
	v3nCjvuCE0vECwmXcTbJcOJy7siCs2JtsRWAqkgIXndZ6uJJ+hC1UHA3sEGY3dbLPvKh72hegvswz
	wW4RpwUpv1aW7Cx7RhiekjXTLxdg/OoorZp6Yvpt+T5kXGx2KtLZ4lRbbujLpCg0fxb/8JHm0urAn
	Z8gMZXA8W/I4nWmREkoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ico8W-0006w9-9l; Thu, 05 Dec 2019 10:13:28 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ico8F-0006sq-S5
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 10:13:15 +0000
Received: by mail-oi1-f196.google.com with SMTP id k196so2243322oib.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 02:13:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=m78asFY8f9keRUsJds9leXbmRNR06quDYSTULIN8+YQ=;
 b=GOzbI5+1VdjfDMr6dQhfLHrirbK5KPH6lW3rK+0zIAMe1vG81AZi5QCWTEXISEhmo4
 4iBUQZDwzU8N8D2/EbxAi/+s/c0kmy2XAtkAJncejhXknF8BSzxYslMul6Wp1afAKwTK
 NzAKd0zgokdhrtdhX+6/I0ErvVCwJKCirSTRp2+pVbwk9cEBsuwaaecT6Gf1VU7mXiTb
 15OFrrNOIQIz332SnYBwyICLWGJo3BstVMOzV+uENv1B51AqWqqMqS9dAzVqXdIfnU08
 A83MSiDe7dQBSOsWLBxcDBFQYG5260DdBRRuQVVFLFRRaBFgM7j6SyZMzpf8VxltnwL2
 G60Q==
X-Gm-Message-State: APjAAAXD669BAnHCXeorE49neJwPvvrxdrWoYVb1EGv/ImjCZrZLHBVH
 IWt/U+Fm4Fq6VUOoFoQNWzRYtlzZUsr9gr+Uzsc=
X-Google-Smtp-Source: APXvYqxlJ4nr1ALVQf+7/s0+lWl9F+YOMbALAF5Gk3t3B6/fuqAbhj2tJ9gsmK1g2Og/A6YnHkKQCe0trRHF28BhW+0=
X-Received: by 2002:aca:cd92:: with SMTP id d140mr6258345oig.68.1575540790133; 
 Thu, 05 Dec 2019 02:13:10 -0800 (PST)
MIME-Version: 1.0
References: <cover.1575540224.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1575540224.git.leonard.crestez@nxp.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 5 Dec 2019 11:12:59 +0100
Message-ID: <CAJZ5v0jEuecAUS_BmxEWVdiMXEKh0ScxH1UW6udONxzqL+c3Vg@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] PM / devfreq: Add dev_pm_qos support
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_021311_915494_A506B0EB 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Linux PM <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 5, 2019 at 11:05 AM Leonard Crestez <leonard.crestez@nxp.com> wrote:
>
> Add dev_pm_qos notifiers to devfreq core in order to support frequency
> limits via dev_pm_qos_add_request.
>
> Unlike the rest of devfreq the dev_pm_qos frequency is measured in kHz,
> this is consistent with current dev_pm_qos usage for cpufreq and
> allows frequencies above 2Ghz (pm_qos expresses limits as s32).
>
> Like with cpufreq the handling of min_freq/max_freq is moved to the
> dev_pm_qos mechanism. Constraints from userspace are no longer clamped on
> store, instead all values can be written and we only check against OPPs in a
> new devfreq_get_freq_range function. This is consistent with the design of
> dev_pm_qos.
>
> Notifiers from pm_qos are executed under a single global dev_pm_qos_mtx and
> need to take devfreq->lock, this means that calls into dev_pm_qos while holding
> devfreq->lock are not allowed (lockdep warns about possible deadlocks).
>
> Fix this by only adding the qos request and notifiers after devfreq->lock is
> released inside devfreq_add_device. In theory this means sysfs writes
> are possible before the min/max requests are initialized so we guard
> against that explictly. The dev_pm_qos_update_request function would
> otherwise print a big WARN splat.
>
> This series depends on recently accepted series restoring
> DEV_PM_QOS_MIN/MAX_FREQUENCY inside the pm core:
>
>         https://patchwork.kernel.org/cover/11262633/
>
> It would be great for this to get into 5.5-rc1

Not at this point.  The earliest realistic target can be -rc2.

Does this still depend on anything which has not been included into
the Linus' tree to date?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
