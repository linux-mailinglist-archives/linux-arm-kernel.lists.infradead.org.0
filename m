Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7D01BF3A3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 11:00:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zXLJWPiKDziMTqq9DuDQbVJ+k7gTMwvrTUsKVbP8Ui8=; b=KC/S95rCjR4rWT
	vNkcJOkOQ0OeF8mXTP9dIiOS73uvWqvX4OjbWbNAt2+WOrScp66jFOKX1ypeRqjoFZkJ7SipwOhu5
	IWJXK5IcqoY9V8hcrTRPZQRXzobIGE/h/fT6gScL0nSuOgzd12BrkVNRcjGdBHNltQwNmsC+5SwJh
	XLUWkDye3iwifk0vqGWmG5WnBjV4vM5BUjAYAUQh0Fc0FAGx7Re2URjOpf0mkxMXZOZBG4rzwx2mW
	4JlYrU3dUpoR5eT5FvoNYA4omz5IY4zVtJHOI5Z+u6ldP6gJKZIWuN/h69zy6vaHdj0H5/4s5aoZn
	0xoVEd2lpfuh4udWsA4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU53c-0001lv-An; Thu, 30 Apr 2020 09:00:36 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU53L-0001X6-BD
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 09:00:21 +0000
Received: by mail-ot1-f67.google.com with SMTP id g14so4264724otg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 02:00:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6KQACPLN/GZpi+FYGmYG62Ze5DkTEi4wV710+OZY2aQ=;
 b=s/OMhGiTcYvpKELdiWFG7pZX3x73Oh1dmlETSEHso4vWYROTgbLBTYxV+ID6yLHU93
 qkEa0NifxFFJQPXJRJUMLRMfmeN+l4Y3Y21htUj/1R+z1ZF9n2ZmzQJDa6dYuMotvmp/
 CodA93EsD7Mr67rfIGRe09s3SStNrqzICkRNM9FxEDZbRPUYC34rNTI77pF1UGpM0mn8
 hQjPRTV1y+EcBkEzSNO3HYXgu9tPQTiwBPY0hmhHatvx87NbbCdrv2m3rK3a4l9pWKg9
 XoGdyTr2YJEtMOyPTK1n390nr75kzROFx6OsjdyEph1mHyhOln6Zj8SEf7yxlHrn8b3s
 Oi+Q==
X-Gm-Message-State: AGi0PuZd0C7dsldZ/uuvz21XZBo50jiOyP8ZK+tfuLculu/rXJDYvW9Q
 pOxlqJt1xxQJhL/a1bhBRNdC2JYfiUAlog5ckYY=
X-Google-Smtp-Source: APiQypION7scbqEm7NDh6Gggg+1C2ij+NE18vee8aBc9XS9X5f4dFoPNeOl0elV99+hw6k1aQNEtvFSivkjKAlKGNyw=
X-Received: by 2002:a9d:112:: with SMTP id 18mr1274967otu.167.1588237217674;
 Thu, 30 Apr 2020 02:00:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200424114058.21199-1-benjamin.gaignard@st.com>
 <7657495.QyJl4BcWH5@kreacher>
 <CAKfTPtBNH8x=83RVQajgK859qQGjMTyvEdP4GioMONEZp9t-NA@mail.gmail.com>
In-Reply-To: <CAKfTPtBNH8x=83RVQajgK859qQGjMTyvEdP4GioMONEZp9t-NA@mail.gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 30 Apr 2020 11:00:05 +0200
Message-ID: <CAJZ5v0g+9DYuGS8URoXYecOxcnu5-kC-D=gvYTuMvxMZbYXR9w@mail.gmail.com>
Subject: Re: [RFC 0/3] Introduce cpufreq minimum load QoS
To: Vincent Guittot <vincent.guittot@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_020019_395677_ECB78269 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rjwysocki[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Len Brown <len.brown@intel.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Pavel Machek <pavel@ucw.cz>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Patrick Bellasi <patrick.bellasi@arm.com>, linux-media@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, hugues.fruchet@st.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 LAK <linux-arm-kernel@lists.infradead.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 7:08 PM Vincent Guittot
<vincent.guittot@linaro.org> wrote:
>
> On Wed, 29 Apr 2020 at 17:50, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
> >
> > On Friday, April 24, 2020 1:40:55 PM CEST Benjamin Gaignard wrote:
> > > When start streaming from the sensor the CPU load could remain very low
> > > because almost all the capture pipeline is done in hardware (i.e. without
> > > using the CPU) and let believe to cpufreq governor that it could use lower
> > > frequencies. If the governor decides to use a too low frequency that
> > > becomes a problem when we need to acknowledge the interrupt during the
> > > blanking time.
> > > The delay to ack the interrupt and perform all the other actions before
> > > the next frame is very short and doesn't allow to the cpufreq governor to
> > > provide the required burst of power. That led to drop the half of the frames.
> > >
> > > To avoid this problem, DCMI driver informs the cpufreq governors by adding
> > > a cpufreq minimum load QoS resquest.
> >
> > This seems to be addressing a use case that can be addressed with the help of
> > utilization clamps with less power overhead.
>
> Can't freq_qos_update_request() be also used if you don't have cgroup
> enabled on your system ?

It can.

The problem here is that imposing a global minimum frequency limit
generally causes the power draw of the system to increase regardless
of what is going on, including the CPUs that are not involved in the
handling of the interrupt in question.

That seems a bit excessive ...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
