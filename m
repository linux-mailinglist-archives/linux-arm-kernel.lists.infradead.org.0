Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF8617D9BA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 08:21:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kibxfKD2ldjfsFGnm7B0jonEolVrrbUhn5HVPbJ5CDg=; b=Fro8xgokTsMlyd
	c3SPZI+TB3V3u4aGhsEqQrV3m7YE36lihOOj/8clRcwl9vz2q7anRmjBoX/ppy4nT7ZWe3Gx/918p
	R1Za75A3LXts7TuRZ9QuVwDeeqnFSM386Kr4K/XaW9Dt7rIt2lbcXOYCRsaehQlGk4vGCc1FsEjms
	FqYtsP2o1iRdAwErMC2d0/f/RozhIGg28bD8FeXIsnbTNBiof3Gl3OFCKesho5PbZohBnCU2cdZSC
	YXKTmiVp+hfSJI1qW74/ucSw6Zp+qTN0tGkdBAyRX4JXVEEbUYGRAGtrZRKLnxsieoDgOaxTRu7Rc
	p2EDtMXd9LNmWgAEmLGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBCiz-0006yM-0D; Mon, 09 Mar 2020 07:21:17 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBCiq-0006xy-T8
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 07:21:10 +0000
Received: by mail-vs1-xe43.google.com with SMTP id k188so5358289vsc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 00:21:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cx8KWbTHQ8LVzU6900j9HApFPF1eqQzLKFHLGTZF4y0=;
 b=sKkAdJB3LOgh7uFGimPxZ1gscSPejE14N0ra+Uo9OGDnSXFaEa29o/yH8kmvA/0+af
 L91vjnpfMtG/vRV1AvYZw8yddtPFMoWS8U+7x0UDkBnNHv9Nrjc/09urq98ILN10NW0j
 uVSB02cPuy+AoAuc1cg6aDLYWgKM1aIttbYKdIIWgep9FqQV+WwXkMHbAAPICU1Diejp
 gK/1Z6ksxYbK4KL+azFIhLQRjIJOV5ktGG8KReU40dwdG74cgOdCrvIQrYHaAVyMAVi6
 hQvVE3Wu29ID8RDnxkl1d+li5KQmn1IutPI078Uk+Wu+4KvNkZJ+8KPoJroOMhVzBaQ8
 JxSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cx8KWbTHQ8LVzU6900j9HApFPF1eqQzLKFHLGTZF4y0=;
 b=OtpoBr7ItT/fyyfL34q0yh1qk8wcbbb4rMjlbwHF0oKQZ0QSXKEncfxvGu8Wa4PsMq
 615G6Om+LIR6LwcMBucZvFIXD/yjf6mLHPkFR05oGrTL31oXIFmp2dRZGCqFM3mbXm45
 m8ekrJ/Yqj159lWhimeit6HvVmjfzeO125QEbwNpoUXJabIlRbP7asTOgFjPgwXi/X29
 hx0ILEa7psGu9w1m8ZN4K6Kh4fSSPsxyioJHNu6QypLeAhwtiCZcDhLZFTg5N3G5QLnn
 Hfg9EFMdjdPTFxO4EVIbIn2Nm04hoaJ0VQ3wB8EmtUH62cFaP43JFTsiSHZ28z9/yY/V
 60Pw==
X-Gm-Message-State: ANhLgQ3jcDoVuGamF4nscImG+1mi9QGN8uh352rI+cWbrlZtymS32H3I
 Fe81pt6zbhn1d+PV9rFVbyTm+Q6Z5xHAkGyIK2h5Vw==
X-Google-Smtp-Source: ADFU+vsipqnmPJKju+fI9s8qcy9nJN3Z2moHXTZB8kl5l1YvdCh22HDbFpOdttDtAC+ifLbUQd9pkjzFTaIybbc7PBc=
X-Received: by 2002:a05:6102:4af:: with SMTP id
 r15mr8677756vsa.35.1583738467802; 
 Mon, 09 Mar 2020 00:21:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200303203559.23995-1-ulf.hansson@linaro.org>
 <CAJZ5v0j86N5WgEJhCD6a7K2NG7NoK-wqG5h-vbc-Z7qH4fkySQ@mail.gmail.com>
In-Reply-To: <CAJZ5v0j86N5WgEJhCD6a7K2NG7NoK-wqG5h-vbc-Z7qH4fkySQ@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 9 Mar 2020 08:20:31 +0100
Message-ID: <CAPDyKFo3o6k8kiXTG337_4OkcunQn9T1FgPM-PngO3t9Sg9eBw@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] cpuidle: psci: Some fixes when using the
 hierarchical layout
To: "Rafael J. Wysocki" <rafael@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_002108_970719_CC856E6F 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Tue, 3 Mar 2020 at 23:28, Rafael J. Wysocki <rafael@kernel.org> wrote:
>
> On Tue, Mar 3, 2020 at 9:36 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
> >
> > Changes in v2:
> >         - Small changes to patch 3 and 4, see their changelogs.
> >
> > While collaborating with Benjamin Gaignard to deploy the hierarchical layout
> > for an ST SoC, it has turned that I have clearly missed to test a couple of
> > corner cases in recently added support to the cpuidle-psci driver.
> >
> > This series are fixing the issues we have found.
>
> I can apply the whole series, but I'd need an ACK from the PSCI driver
> maintainers for that.

Patch 1 and patch 3 is ready to go. Although, patch 3 don't need the
fixes tag and can be queued for v5.17 instead.

Do you want me to resend or can you pick them from the series?

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
