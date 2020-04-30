Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D08741BF3B3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 11:04:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fi0p+dTudkTqBK3TN0ZkzAKXLJfAh2JxjRodXN/1qC8=; b=rgnjpvBVXZGERS
	shRX4T4vr6+/fvaGuI7+SZYD9u/hnd6t/UHRpHimEx0O2NL/DR9Hl/XrdQERA8uPI6+LagDI3p99H
	Y+BK0GaUUt35z6l9Tchv/NBiH5yRI/T3BPszTZ9JbyjI5CSXfug7KxVzatXg7ALT/LvnzTpRP0jvd
	c7XHN5Jn482ZDF1M8XR/Ecpt+V3ME+q+BkRReltRUO3jriqyd/3K9ne03DQjvXOs4llFmNU1k4V/D
	WgzN9QHyKriRB8kDbxZ4SMx5OnB4AgiexIGVLwFDkG6EMrYX9N16HlijTzLq8elsiRKNcQwgR0a7h
	I3/C5v7F9fGsKOr976xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU57F-0002w2-Pu; Thu, 30 Apr 2020 09:04:21 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU570-0002vh-QS
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 09:04:08 +0000
Received: by mail-oi1-f194.google.com with SMTP id r66so4603553oie.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 02:04:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IPIctqtbjHbN+c6WsGMnZ4aDcQr0Dn9FvwQoBcXdb4k=;
 b=opBDBb0QLQnmX5Ur6nvtTT7GxqPGMMBeVkf10FerLVPPvriWMbY3WRs163xgRVKmyw
 /WuNnxijh/W1FVHsCoJ3ybVsX/4WeTaH1cOpLiFIjZgLqjW2PwaNTA3h9Hhme9M186K4
 JQPW76WH74uo3vubyZ1SCnedBk0Q8CnoR7nq5ZNXPnSOOx2XsgfYjYwie1mNVCMTC4j2
 /ChkBeheHLbNzAw65v+fMdXR44BEX+Ve76JF9ZYIITXCz76yZJ0+8vdhpYUQ3wgv0Ixv
 ASlhQB28kNqRtAs+RGmRzEFvJJpOZ/phONXB0USecDI2tz3PceEgDQioQX2qm4NQBv+s
 efzA==
X-Gm-Message-State: AGi0Pua9l9vNVs0ng7OZUMfD7Kc7idIo2RutTVKiw4l4MS9pN3UdTTqu
 2jbdD6QaV/sOqN9alJTdvdgD4Z+hzRkytB9MLcQ=
X-Google-Smtp-Source: APiQypJD2+GdHPcXAjdJ2otz/vhbS/df9CkF9oCL8wWT9gqhtZ1UAebHm6B/NCfiC2qhRAGhImTD5b2woCc+kgQvvjQ=
X-Received: by 2002:aca:aa8c:: with SMTP id t134mr1027807oie.103.1588237445928; 
 Thu, 30 Apr 2020 02:04:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200424114058.21199-1-benjamin.gaignard@st.com>
 <7657495.QyJl4BcWH5@kreacher> <30cdecf9-703a-eb2b-7c2b-f1e21c805add@st.com>
 <70e743cf-b88e-346a-5114-939b8724c83d@arm.com>
 <6b5cde14-58b3-045d-9413-223e66b87bf0@st.com>
In-Reply-To: <6b5cde14-58b3-045d-9413-223e66b87bf0@st.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 30 Apr 2020 11:03:54 +0200
Message-ID: <CAJZ5v0h6t6perZiibCWhEh1_V0pSXqFe-z22TFqH7KTFXYmqpQ@mail.gmail.com>
Subject: Re: [RFC 0/3] Introduce cpufreq minimum load QoS
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_020406_862894_B5807A19 
X-CRM114-Status: GOOD (  18.59  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rjwysocki[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: "len.brown@intel.com" <len.brown@intel.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "pavel@ucw.cz" <pavel@ucw.cz>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Patrick Bellasi <patrick.bellasi@arm.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 Hugues FRUCHET <hugues.fruchet@st.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 9:53 AM Benjamin GAIGNARD
<benjamin.gaignard@st.com> wrote:
>
>
>
> On 4/29/20 6:12 PM, Valentin Schneider wrote:
> > On 29/04/2020 16:57, Benjamin GAIGNARD wrote:
> >>
> >> On 4/29/20 5:50 PM, Rafael J. Wysocki wrote:
> >>> On Friday, April 24, 2020 1:40:55 PM CEST Benjamin Gaignard wrote:
> >>>> When start streaming from the sensor the CPU load could remain very low
> >>>> because almost all the capture pipeline is done in hardware (i.e. without
> >>>> using the CPU) and let believe to cpufreq governor that it could use lower
> >>>> frequencies. If the governor decides to use a too low frequency that
> >>>> becomes a problem when we need to acknowledge the interrupt during the
> >>>> blanking time.
> >>>> The delay to ack the interrupt and perform all the other actions before
> >>>> the next frame is very short and doesn't allow to the cpufreq governor to
> >>>> provide the required burst of power. That led to drop the half of the frames.
> >>>>
> >>>> To avoid this problem, DCMI driver informs the cpufreq governors by adding
> >>>> a cpufreq minimum load QoS resquest.
> >>> This seems to be addressing a use case that can be addressed with the help of
> >>> utilization clamps with less power overhead.
> >> Do mean clamping the policy frequencies ? I may have miss the API to do
> >> that...
> > IIUC Rafael is referring to uclamp, i.e. scheduler utilization clamping, see:
> >
> >    https://www.kernel.org/doc/html/latest/admin-guide/cgroup-v2.html#cpu
> >
> > The above describes the cgroup interface, note that you can also set clamps
> > per task (via sched_setattr()).
> >
> > One thing that comes to mind however is that schedutil only "sees" the clamps
> > of runnable tasks, and from reading your changelog you may not have moments
> > without any (i.e. gears are grinding in HW). You'd have to try boosting
> > (setting a high uclamp.min) whatever tasks you have on the software side and
> > see how it all behaves.
>
> Relying on userland side means that various applications need to be aware
> of this specific hardware case and fix it. I was hoping to find a
> solution in side the kernel
> to not impact the software side.

That's not what I meant.

I suppose that the interrupt processing in question takes place in
process context and so you may set the lower clamp on the utilization
of the task carrying that out.

Alternatively, that task may be a deadline one.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
