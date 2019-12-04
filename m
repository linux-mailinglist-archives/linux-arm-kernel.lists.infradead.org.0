Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3CC11297D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 11:46:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dYYCjFxQ5s9Og3V3SI3BF28RNfxz1M2HJ58IwH8q+38=; b=GNBWVY3MhNGgix
	2gJWYBd37BMQiDQHe6+qrYfO5ES3BbomqnxZrCMXUQFXBEArukcFGJwfnkIJRqq9DQJLnE6jOcvsM
	e9Sjpt+EPEKDOotkAPckiaV6GF9nxDvgW5SjJztquoL48eQpxd5ubCX3atZFIiivnQmwqjzxqIfCU
	P9Z2prsBvaFJXi7dU3jyQyZw5AtBmxZRASCwVRmw0cVxGnwLjeDIKpTt1brv85Jgq3CFabPfViAIW
	hyxaRvkV8NzqK6ZhOFH+Muvh2KMIpPTe9wC5jBKKOiI4cFhzgJrcY9lz/enJyuZP5JDhzErWqKVJ6
	yg3K1mCKzm66kJLRZKww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icSB5-00032X-3E; Wed, 04 Dec 2019 10:46:39 +0000
Received: from cloudserver094114.home.pl ([79.96.170.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icSAv-00031Q-V2
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 10:46:31 +0000
Received: from 79.184.254.100.ipv4.supernova.orange.pl (79.184.254.100) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.320)
 id 3362c46b8c575e9d; Wed, 4 Dec 2019 11:46:18 +0100
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH RFC 0/2] PM / devfreq: Add dev_pm_qos support with minimal
 changes
Date: Wed, 04 Dec 2019 11:46:17 +0100
Message-ID: <5794906.l6Fuony6qs@kreacher>
In-Reply-To: <cover.1574179738.git.leonard.crestez@nxp.com>
References: <cover.1574179738.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_024630_164803_721727BA 
X-CRM114-Status: GOOD (  19.44  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.5 PDS_BTC_ID             FP reduced Bitcoin ID
 1.0 PDS_BTC_MSGID          Bitcoin ID with T_MSGID_NOFQDN2
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
Cc: Artur =?utf-8?B?xZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Saravana Kannan <saravanak@google.com>,
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Alexandre Bailon <abailon@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tuesday, November 19, 2019 5:12:12 PM CET Leonard Crestez wrote:
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
> Alternatively devfreq initialization could be refactored to avoid taking
> devfreq->lock but that requires several intricate changes:
> 
> 	https://patchwork.kernel.org/cover/11242865/
> 
> I considered making dev_pm_qos call notifiers outside the lock but
> that's another complex refactoring and it's difficult to ensure
> correctness. If two identical qos requests are made in parallel then the
> second shouldn't return until all notifiers are completely executed for
> the first and QOS is enforced; otherwise it mostly defeats the purpose
> of making proactive requests.
> 
> This series implements the minimal changes in order to implement dev_pm_qos
> support for devfreq. It only costs a little defensive programming.
> 
> This series is also marked as [RFC] because it depends on restoring
> DEV_PM_QOS_MIN/MAX_FREQUENCY inside the pm core:
> 
> 	https://patchwork.kernel.org/cover/11250413/
> 
> ---
> Changes since "big version" v10:
> * Drop accepted cleanups
> * Work with current locking approach (split cleanups into other series)
> * Drop acks and deliberately relabel as a new series. It still incorporates
> most previous discussion but takes a different approach to locking.
> * Don't print errors if devfreq_dev_release is called on error cleanup from
> devfreq_add_device, just accept that requests and notifiers might not be
> registered yet. I wish dev_pm_qos cleanups behaved like standard "kfree" and
> silently did nothing when there's nothing to be done.
> Link to v10: https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=196443
> 
> Leonard Crestez (2):
>   PM / devfreq: Add PM QoS support
>   PM / devfreq: Use PM QoS for sysfs min/max_freq
> 
>  drivers/devfreq/devfreq.c | 151 ++++++++++++++++++++++++++++++++++----
>  include/linux/devfreq.h   |  14 +++-
>  2 files changed, 145 insertions(+), 20 deletions(-)

Please resend this series as non-RFC with the ACKs from Chanwoo included.

It may still be viable to push it for 5.5 during the -rc period.

Thanks!




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
