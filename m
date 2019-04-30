Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F676F53B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 13:16:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XPaOydf54MSdjG/NeGpgtOmUF+fFnhUqjzm9Qi5d2fU=; b=H2JetqDSnnweJQ
	kMX4is3Q7h54lTvf7h/Avq6QOSHaK3aDy4MiIZ3bmLE6fQ/l5htkPqd4+D5N9RYcjD3/DVmO/IZzX
	q+qCLs1nU7ip1S25G5dcaIIKkJ/+pQWvMxaIMoETOaTGpfe3ipGrL1akfhYad/HhVCZ5CkWHreX7b
	Ea6j9gcdTme9o1jIyXp/72GEjeIRnBkMcA/pW1d6iAmmTMnfMcnkfeDV09SAe+FUYqGgXrBHH2sFZ
	ZoI/2EIdVku1USC5YwKuhkj1eh0hEt3W0MmmoHJuXck5rvO3oWbHhUihpZzXv/YWDOPZ8a8ctjvOn
	oUuv3mcorGYG7tS/a9rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLQjn-0007QU-Qc; Tue, 30 Apr 2019 11:15:51 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLQjg-0007Q5-DE
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 11:15:45 +0000
Received: by mail-vs1-xe44.google.com with SMTP id y196so1621269vsc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 04:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wSBbwzwwF7jNGcnQ7AVNOQW/kFea/OR3OycjgcD+M5c=;
 b=rqr36y92aNmQTYvCTP0FbjlLcgvOVgOIBDQwTiV31lnCFvvEh8wCoUcO64jDLLDEVY
 erRc/duAARlv2giV0RtYCNNtSSCmqITwLtB+L4/D0ucYfJzTeOIB89fcC/J2ZOZAffia
 JrkKLpnlC9Wp/ICfZhlxo3jAJq+YRQRtDZQ/0aafaMj3L3tH3gTwA8JMsEShNcWpEvbU
 AF/x1vC/l7cxkkQSdkJlKbiNVILNcykOjHmE2vL8rr2FlwozHnQquuhJRRpBH0lh71t+
 6oQhOCuBTEy9fGKd3IkepvbwFpy3ufl0kWCdkGv4N7yE8fF1UMT07z7o1d6//HstvPZ0
 CCsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wSBbwzwwF7jNGcnQ7AVNOQW/kFea/OR3OycjgcD+M5c=;
 b=k/AeaS+kfU9j4jQBwYNvd6CucCznqsv0V5giwrtLfmLWrwWesiXeFBSHlLOP2/mhd5
 hbx56DQ9u73J17d8DVy6jSeDkBK9nJJDcWxL/9e2I271m/jX8nnVjQW/MLOOFCaY5sby
 AD22U7YPwceWdDF8qo1kTEUvhfE4vHmuwVNATl25uZDyn7/HSRurWHuwFgi1LW3EuJCm
 L/1Ns9g9u4KnkHGXIQXoGyG1J5JXyh/Br0eHvUux/GJ8iWyRWWdlQHl0bk8Q+uhl/5gE
 H09DDq3jVR2me6zijSlhI9HWUSonh1baN6ivd8VAp54H8tey53RSjJO1Yf0axBq40tbl
 0VQQ==
X-Gm-Message-State: APjAAAW6Y1ZhvkG4aAHdXyoXEu5D4iY1OC38oC2g71uPFH+10csb8hAE
 CxLZB6bykmO5G0ECZ3FANM8ao+Z3WAt4G7luFuj9Pg==
X-Google-Smtp-Source: APXvYqwIlfZlHtUketaXOMujjHfd/qGbL3oe7HXJ7joLacYaYzlaaHb9SIRBw0nNzNuiizbcbBYifZAmFXX0o+LqXyk=
X-Received: by 2002:a67:8155:: with SMTP id c82mr5940813vsd.200.1556622943522; 
 Tue, 30 Apr 2019 04:15:43 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1556313614.git.leonard.crestez@nxp.com>
 <68ccb5a90d1d2a596e7ed94ba3245171f013c781.1556313614.git.leonard.crestez@nxp.com>
 <CAPDyKFpCCapBfNbsR1Q+nyg8aenVJWxj9qmTCCCfmONZR3t1sg@mail.gmail.com>
 <AM0PR04MB6434B2BBECCA6B2644CDF044EE390@AM0PR04MB6434.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB6434B2BBECCA6B2644CDF044EE390@AM0PR04MB6434.eurprd04.prod.outlook.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 30 Apr 2019 13:15:07 +0200
Message-ID: <CAPDyKFr_CsHBTjAXC+g7Oxnz9WhhyhyW3BGJkr=dqkJECvsyRw@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] PM / Domains: Add GENPD_FLAG_NO_RUNTIME_OFF flag
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_041544_453899_F13688A9 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, dl-linux-imx <linux-imx@nxp.com>,
 Arulpandiyan Vadivel <Arulpandiyan_Vadivel@mentor.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Robin Gong <yibin.gong@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 29 Apr 2019 at 16:39, Leonard Crestez <leonard.crestez@nxp.com> wrote:
>
> On 4/29/2019 12:11 PM, Ulf Hansson wrote:
> > On Fri, 26 Apr 2019 at 23:38, Leonard Crestez <leonard.crestez@nxp.com> wrote:
> >>
> >> This is for power domains which can only be powered off for suspend but
> >> not as part of runtime PM.
> >>
> >> @@ -126,10 +126,11 @@ static const struct genpd_lock_ops genpd_spin_ops = {
> >>   #define genpd_status_on(genpd)         (genpd->status == GPD_STATE_ACTIVE)
> >>   #define genpd_is_irq_safe(genpd)       (genpd->flags & GENPD_FLAG_IRQ_SAFE)
> >>   #define genpd_is_always_on(genpd)      (genpd->flags & GENPD_FLAG_ALWAYS_ON)
> >>   #define genpd_is_active_wakeup(genpd)  (genpd->flags & GENPD_FLAG_ACTIVE_WAKEUP)
> >>   #define genpd_is_cpu_domain(genpd)     (genpd->flags & GENPD_FLAG_CPU_DOMAIN)
> >> +#define genpd_is_no_runtime_off(genpd) (genpd->flags & GENPD_FLAG_NO_RUNTIME_OFF) >
> > May I suggest to switch the name to, GENPD_FLAG_RUNTIME_ON.
> >
> > Other than that, this looks good to me!
>
> Then it's easy to confuse genpd_status_on with genpd_is_runtime_on. How
> about genpd_is_rpm_always_on?

Even better, let's take that.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
