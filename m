Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FB91BE4CB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 19:08:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i/MBDuZF/RLOo2Fo3WxP6qiEHw6Az9VBJj1lEkE5/w4=; b=tMqhP49ftVzp2a
	QoiRQxgZUIQo2JdDOgOtQs159sea4gXZ+RFE9CNHXmCvkqKyrv3FO0M+GF9rMok8d91doJWTsatpS
	VZ/L1CUQ4qOmyEDlCthvEr1ZPLzwNlgP9zYivC+qNao9DSIqttgRnju5h6BAybWk5CZ7xLV2QTYfR
	32+9w9WgpGeeqvyyC1pDDEIW6FyGQyAukk7IExA5TpCeWPWv/lidq/kx9c/FBMzeaoMVYG5EwwYOH
	anEAqD5+egMWcnCjuN+pOkBPXU3UUzvqo9fuqbEAX4SvMFbH0KMgTe68ORDYElD4qZkKl9uwNU+pU
	9ooHoP4mjiF+c9P0imcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTqCN-0000Da-1n; Wed, 29 Apr 2020 17:08:39 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTqCD-0000C7-3R
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 17:08:30 +0000
Received: by mail-lj1-x241.google.com with SMTP id u15so3451874ljd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 10:08:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2F/GGX+E0c0+b/vD1LG0X0Imv+S43d6dDOK/FkPT3g8=;
 b=jNkYpc6S0ZAt1d7I3WBLADvu8AvAoumyVfy15MqXYeffwC+o4Cob9YDhPtMZ8QWvH+
 NIwdCDYO3Ztb8zQ3NlSssEXDT66TreFG8fQZFp2Sf/GUZvt3pdbYSGtLKGnxRX+tQTcQ
 zb1kabUEdqdEgPGAX3PG8+MATiYMctEl87v0wIV8vw6cs9cJg5IaVwlKG6Zfiv5akn75
 jDsY1e2YbK6YsNoc8BmOCB3Kw7UeY8zYQ1iUdKYUGLuug2TQemrSwaCGKE4Xe4nS9V9P
 WBX0kvYhtVFlazgSsG0wd6v0mt1vwy7k9/83/pCmG6nJkn1eoGUkQmSC02Cnl2AeuK8+
 nCzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2F/GGX+E0c0+b/vD1LG0X0Imv+S43d6dDOK/FkPT3g8=;
 b=L5E8A1Bylh55KUEbpf2Ji9ozllrm6MgLZcPjcAbH5WDmroNNAK3pbkLWXaBFk2b7pU
 x1DeKasA8/enUpKoaogJH8/ZfAA59FJQwip5f05LneOa92bxyrzv6ufk6DX4Z+/UGA7K
 0y6cfeInsfFGJzYzH9tWAAjnxotWl4mIelIC7jXZPZBsL/cNyyzHEgqFfok9akCV96sO
 wdfeCFTw3SJhc0cMTsQkNfgE6lBSLjtOjFVDk2zefHjZFBfVmErGtZSVqsBlgoR4KbBM
 1798awmFpm1YwiGxjVl1JGfHLljM9QFTpnGrKi2mTIaRPyr6DhMjSq+REaZzwJS9PtNv
 xtJg==
X-Gm-Message-State: AGi0PubJD0LHI4/HF79RkxsbKYmzYpekth5zAoWpJJuIKmJkM0Tz0vT0
 RaaOg8BEMrgethEI5QYGz5f8WkmoLj/wKEnU+sdSJQ==
X-Google-Smtp-Source: APiQypI/p8hMCfeSVM1tpb+Hmphas9b6HroclmJaxP7F1hxtSeUvsqPKT++NGG1tH/H5GveF7lU55+kiTYZblxp87+I=
X-Received: by 2002:a2e:8046:: with SMTP id p6mr20607906ljg.21.1588180106288; 
 Wed, 29 Apr 2020 10:08:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200424114058.21199-1-benjamin.gaignard@st.com>
 <7657495.QyJl4BcWH5@kreacher>
In-Reply-To: <7657495.QyJl4BcWH5@kreacher>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Wed, 29 Apr 2020 19:08:14 +0200
Message-ID: <CAKfTPtBNH8x=83RVQajgK859qQGjMTyvEdP4GioMONEZp9t-NA@mail.gmail.com>
Subject: Re: [RFC 0/3] Introduce cpufreq minimum load QoS
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_100829_143755_CCCFC1A4 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Len Brown <len.brown@intel.com>, Alexandre TORGUE <alexandre.torgue@st.com>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Pavel Machek <pavel@ucw.cz>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Patrick Bellasi <patrick.bellasi@arm.com>, linux-media@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, hugues.fruchet@st.com,
 mchehab@kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 LAK <linux-arm-kernel@lists.infradead.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 29 Apr 2020 at 17:50, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
>
> On Friday, April 24, 2020 1:40:55 PM CEST Benjamin Gaignard wrote:
> > When start streaming from the sensor the CPU load could remain very low
> > because almost all the capture pipeline is done in hardware (i.e. without
> > using the CPU) and let believe to cpufreq governor that it could use lower
> > frequencies. If the governor decides to use a too low frequency that
> > becomes a problem when we need to acknowledge the interrupt during the
> > blanking time.
> > The delay to ack the interrupt and perform all the other actions before
> > the next frame is very short and doesn't allow to the cpufreq governor to
> > provide the required burst of power. That led to drop the half of the frames.
> >
> > To avoid this problem, DCMI driver informs the cpufreq governors by adding
> > a cpufreq minimum load QoS resquest.
>
> This seems to be addressing a use case that can be addressed with the help of
> utilization clamps with less power overhead.

Can't freq_qos_update_request() be also used if you don't have cgroup
enabled on your system ?

>
> Thanks!
>
>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
