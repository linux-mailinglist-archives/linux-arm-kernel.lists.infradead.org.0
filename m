Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACCDD19F234
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 11:13:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w/ONToJt0FgjgY9HWW8VR4DTsxzYZl8NBg/7zKP8uZI=; b=GA11yc75Jqc4rx
	xzwYS4PJh1U4gJjVoO94YoNCDp2sWKphsnBZblbX6MHhwFJL74kvQGP5jgwyDOxnKHTJRxznyK7QU
	EyD8sOCTBDObNgfvLjDtAWd/zLYdPYoiYTkzczQRQshlh0s2ScfcwUyNmOEy6eCm19upAnAPkWQdF
	7g+5789Ei1e79NL2PMEBIHtCtoPmKJ5PrXBd0fiAl54kl+pCBKqN20s1aLtAhmvJ03FhIvYm1A74q
	pOxfmIpc4QLT7LF9sJhZm25RU7Bkh8/qYN3w7yhN1W2SH+eWgK7Kl3bej/+zHUaHjOvxJPSIuKnxb
	bjmcOZaDTAEAl9iD8TpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLNoT-000736-5X; Mon, 06 Apr 2020 09:13:01 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLNoN-00071y-C7; Mon, 06 Apr 2020 09:12:56 +0000
X-UUID: 52699fc215cb48768708dacf3125b146-20200406
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=clVE+7JOIo3PBS3e/XDVaE20LgQxAZYkiBOn5CGZopM=; 
 b=WbmuFdQFPQ9M9LQBYItoJVqk6cWwQHgWlfvmEDuw0UqHNcbWnFw+wkQe6EvFYJSYQjy4ksBBzG+3zZRUPrlYarjDQwLR1ZMO3+8Uqwo57fIO49eH8k18mSb5vuE4IyTk4LhIUNlK5bwvqCGpLMkmnw80eavpwN59/4CNRMYIUx0=;
X-UUID: 52699fc215cb48768708dacf3125b146-20200406
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1168555970; Mon, 06 Apr 2020 01:12:52 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 6 Apr 2020 02:12:46 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 6 Apr 2020 17:12:46 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 6 Apr 2020 17:12:44 +0800
Message-ID: <1586164366.5015.6.camel@mtksdaap41>
Subject: Re: [v5, PATCH 4/5] cpufreq: mediatek: add opp notification for SVS
 support
From: andrew-sh.cheng <andrew-sh.cheng@mediatek.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Date: Mon, 6 Apr 2020 17:12:46 +0800
In-Reply-To: <20200313091038.q7q7exiowoah4nk4@vireshk-i7>
References: <1574769046-28449-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <1574769046-28449-5-git-send-email-andrew-sh.cheng@mediatek.com>
 <20191127083619.etocnhpyyut3hzwq@vireshk-i7>
 <1575874588.13494.4.camel@mtksdaap41>
 <20191210064319.f4ksrxozp3gv4xry@vireshk-i7>
 <1583827865.4840.1.camel@mtksdaap41>
 <20200311060616.62nh7sfwtjwvrjfr@vireshk-i7>
 <1584084154.7753.3.camel@mtksdaap41>
 <20200313091038.q7q7exiowoah4nk4@vireshk-i7>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: B4990598AEB233FDEC0585B013D8D27A16190BD69A58CD56856C23922C3611EF2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_021255_417477_F9C5978B 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Chanwoo
 Choi <cw00.choi@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Fan Chen =?UTF-8?Q?=28=E9=99=B3=E5=87=A1=29?= <fan.chen@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-03-13 at 14:40 +0530, Viresh Kumar wrote:
> On 13-03-20, 15:22, andrew-sh.cheng wrote:
> > I have something want to consult you.
> > For your previous comment, you suggest use read-write lock to replace
> > mutex lock.
> > Will it be more efficiently even when all are write lock?
> > (all lock region are "setting VProc voltage")
> 
> The data to be protected here isn't the VProc voltage but the list of
> valid OPPs. My idea was if we can make the target() routine run a bit
> faster as it really matters as it is called from scheduler hot path.
> 
> It won't be wrong to use the mutex the way you have used it right now,
> but I think the read lock is much faster, though the read/write lock
> is more beneficial in case where there are multiple readers and fewer
> writers. The target() routine gets called multiple times here, not
> in parallel, and the OPP change notifier won't be called so often.
> 
Hi Viresh,

I will use regulator in the locked region.
And regulator will use mutex_lock.

I use read_lock/write_lock, and there will be below run time error,
Is it due to read_lock/write_lock using spin lock?
write_lock() => _raw_write_lock() @ spinlock.c
Please give me some advices.
Thank you.


[   28.109082] BUG: sleeping function called from invalid context at
kernel/locking/mutex.c:254
[   28.117710] in_atomic(): 1, irqs_disabled(): 0, pid: 1855, name:
sugov:0
[   28.124788] CPU: 0 PID: 1855 Comm: sugov:0 Tainted: G        W
4.19.107 #51
[   28.132440] Hardware name: MediaTek krane sku176 board (DT)
[   28.138006] Call trace:
[   28.140461]  dump_backtrace+0x0/0x17c
[   28.144121]  show_stack+0x20/0x2c
[   28.147432]  dump_stack+0xd4/0x10c
[   28.150831]  ___might_sleep+0x108/0x118
[   28.154659]  __might_sleep+0x50/0x84
[   28.158230]  mutex_lock+0x28/0x60
[   28.161541]  regulator_lock_dependent+0x3c/0x10c
[   28.166152]  regulator_set_voltage+0x48/0xa0
[   28.170417]  mtk_cpufreq_set_voltage+0x16c/0x324
[   28.175046]  mtk_cpufreq_set_target+0x13c/0x2c8
[   28.179574]  __cpufreq_driver_target+0x424/0x4c4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
