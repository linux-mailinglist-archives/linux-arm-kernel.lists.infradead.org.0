Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D357810CDB6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 18:21:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t/FwzhOKjdCDYrzqgd3hQXxeCgmjleBwkKwxgzna9B4=; b=qbwST8i/RY4HCX
	YI0gcx0+iSF5xYpgxKT3dZDoHJAyN/gT3nyr3wSd+3AGRweubSpRAlZAuXFuzN9TsBIIbimmCqO+F
	7xcbcBEzk4PjuUWYe4rWPhrTtSju6KqIJqri8rNO0fKWbB1VH80aV5FAXf6I1oSFCmRw1M7HzStAn
	hU2q1Vo6uI4OE+4TDvYJZevly8cgIlXs/2VG+J+cnZfXQisSCRFAnmViIE8WFv+zEqVZbKl9pDjYN
	UfPKdVdUXoFS6U4uMB0zpRin44MGrrMcav4IDls0bBk9UCk7kKYwAFb79bIrPCJry2tmKCLaVthdg
	529TZ+NeCpsMj15eYKZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaNUH-0004fe-2x; Thu, 28 Nov 2019 17:21:53 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaNU5-0004f3-VZ
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 17:21:43 +0000
Received: by mail-ua1-x941.google.com with SMTP id a13so8423775uaq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 09:21:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jWkZvzbR/ZCBOrIAXP6oks1/eAZlhWE0zqLBZ2M7SMQ=;
 b=W7UDV4c14mrLGdwXUV3VoqTwJpaneaRNFmFy1VATFsdnCSCAulu4QwYp4RjIE/e7JM
 GN46LWMlA6UAie8zMpuPYDWPG6ULVAcd0HciOad4dQ4sJkG7Vt0RHZhBJ1Pk1zzejrzv
 l29MYkqpwLmImsYg2NbH3UjIqv2tpsXl9UGxly4b5aFY3DWK/JlSo+6wyzMZPJgSdgp7
 n5RJiDEVmvvda5B1e5zxk0HWG14uoKstjsjp4tY39lA8SewBGUsbzd/TlSdL8eeWYtYh
 zf8XbelUETKTkMPfY94sq2yA2GbVXJ4VuLD+JUrzM4lndZlXdi1aiFDdwcm6lOUskK+A
 W6bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jWkZvzbR/ZCBOrIAXP6oks1/eAZlhWE0zqLBZ2M7SMQ=;
 b=VJwDCsfYm5glES7/nIsD6z5tJtML3Mnc4V8U6Deu3JqcLr0hjM/47jR+lWFqJx9boQ
 eFSliNqH5rSQtEtwhNXY0U13sP7wDa3fX6q1TVWfc+z5Hqo54eaSfi92tR7sTuau8d1b
 7HiZ+0Uby01LeIrUDpeKWpwbkJFgo6hMd+2pacJJoMWP2/UTkYpkMLr0reg47R0WJ/7n
 2A87v7Sm6dlzcj8faz/zPpEVfa7QvWEo3Ld0YqKhxEbrA/OTCgEo5KhbrnyV/RKPGjGy
 N2s7Zt30i3MwxWme16CfYw2G9Kfgt9uIWgl+yHwamGR/yzU1IOrUl3sL6eZnyQi5WuZA
 xunA==
X-Gm-Message-State: APjAAAU8F6l22CuYJBJAMW/fZcOouKIoDGENAqxkjdWFRNuKZF6qN2zt
 hIH/0SyLzjhG+qfdMQBKq+iXN43svzeJiPZex5rJHw==
X-Google-Smtp-Source: APXvYqzFtMI/TaLzyv+05fJQrBZJzoCKp1k35HT7uhgJP/uJmSW4zO/ZIlZYzh1OEUl2NOO2zPDyUA5n1fUHYdvCgww=
X-Received: by 2002:ab0:2042:: with SMTP id g2mr7289164ual.19.1574961700051;
 Thu, 28 Nov 2019 09:21:40 -0800 (PST)
MIME-Version: 1.0
References: <20191127102914.18729-1-ulf.hansson@linaro.org>
 <20191127102914.18729-9-ulf.hansson@linaro.org>
 <20191128141443.GA31123@e121166-lin.cambridge.arm.com>
In-Reply-To: <20191128141443.GA31123@e121166-lin.cambridge.arm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 28 Nov 2019 18:21:03 +0100
Message-ID: <CAPDyKFr1GTAkNyTmLvvC1ovm4yOtMGLOVWA-e-wjGJz2ENdN1g@mail.gmail.com>
Subject: Re: [PATCH v3 08/13] cpuidle: psci: Add a helper to attach a CPU to
 its PM domain
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_092142_026740_D216EB99 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Linux PM <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 28 Nov 2019 at 15:15, Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Wed, Nov 27, 2019 at 11:29:09AM +0100, Ulf Hansson wrote:
>
> [...]
>
> > +struct device *psci_dt_attach_cpu(int cpu)
> > +{
> > +     struct device *dev;
> > +
> > +     /* Currently limit the hierarchical topology to be used in OSI mode. */
> > +     if (!psci_has_osi_support())
> > +             return NULL;
> > +
> > +     dev = dev_pm_domain_attach_by_name(get_cpu_device(cpu), "psci");
> > +     if (IS_ERR_OR_NULL(dev))
> > +             return dev;
> > +
> > +     pm_runtime_irq_safe(dev);
> > +     if (cpu_online(cpu))
>
> It is unclear to me how we handle (or rather we don't) CPU hotplug
> with this series - it does not look OK unless genpd code manages
> that automatically.

The series doesn't handle CPU hotplug at the moment, simply because I
am targeting to get the basic support, upstream first.

For a functionality point of view, this isn't a problem in my opinion.
Simply because the consequence is only that the idle states for the
"cluster" will not be reached if there is a CPU brought offline.

As we talked about at LPC and as also told Sudeep for the v2 series,
CPU hotplug is going to be implemented by using a CPU HP notifier.
That should be fine, right?

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
