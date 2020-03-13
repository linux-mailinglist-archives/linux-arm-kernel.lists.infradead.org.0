Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA35184CFD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 17:52:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v5VY06+tg5UusZmJZD+ZEsK7i5jLPvFSrHNZGtPU2OI=; b=rMOVXFlrC1te7ORqt32fOZM+G
	nMalX7F1RIN59g2SeoXMxCQk8Kbr0vLqdQyHEWRJpFjdRd2hzojlpfLfHR9Bl3vrFZWU+pLXodccP
	BlRERpMuOz4HfMWFU4bOUh9mzgHsr6PhlPeRPEncRUX41uJcVedETNv5NCoZnN2jHZ7DHeL9v9501
	toovdR3j/Hzv6e6cl3+5dVM5Dp9CaHH1+9/0Qs5/T6djOEChik6F8kHJ0T552zR3SREqVbeHEJLUV
	AdnLcXLNocZpzHr3/VP4VvQSLLylOVvmPR7F2kal6hl0uHqGepJSH/HLugw/x5own/HKiOMm25fL8
	HYHtDPApQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCnXe-0006We-MB; Fri, 13 Mar 2020 16:52:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCnXU-0006Vz-Om; Fri, 13 Mar 2020 16:52:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5818631B;
 Fri, 13 Mar 2020 09:52:00 -0700 (PDT)
Received: from [10.37.12.40] (unknown [10.37.12.40])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 019813F534;
 Fri, 13 Mar 2020 09:51:49 -0700 (PDT)
Subject: Re: [PATCH v4 4/4] drm/panfrost: Register devfreq cooling and attempt
 to add Energy Model
To: Steven Price <steven.price@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>
References: <20200309134117.2331-1-lukasz.luba@arm.com>
 <20200309134117.2331-5-lukasz.luba@arm.com>
 <9747ca5c-ba4c-521f-11c1-45ee6a5018e3@arm.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <c7453e1e-cb23-8e2a-d209-c618da9ffbbd@arm.com>
Date: Fri, 13 Mar 2020 16:51:48 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <9747ca5c-ba4c-521f-11c1-45ee6a5018e3@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_095201_778297_5DECCE1B 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "nm@ti.com" <nm@ti.com>, "juri.lelli@redhat.com" <juri.lelli@redhat.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 Liviu Dudau <Liviu.Dudau@arm.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "bsegall@google.com" <bsegall@google.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 Morten Rasmussen <Morten.Rasmussen@arm.com>,
 "robh@kernel.org" <robh@kernel.org>,
 "amit.kucheria@verdurent.com" <amit.kucheria@verdurent.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 "khilman@kernel.org" <khilman@kernel.org>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 Javi Merino Cacho <Javi.MerinoCacho@arm.com>,
 "cw00.choi@samsung.com" <cw00.choi@samsung.com>,
 "mingo@redhat.com" <mingo@redhat.com>, "mgorman@suse.de" <mgorman@suse.de>,
 "rui.zhang@intel.com" <rui.zhang@intel.com>,
 "alyssa.rosenzweig@collabora.com" <alyssa.rosenzweig@collabora.com>,
 =?UTF-8?Q?=c3=98rjan_Eide?= <Orjan.Eide@arm.com>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>,
 "b.zolnierkie@samsung.com" <b.zolnierkie@samsung.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 Dietmar Eggemann <Dietmar.Eggemann@arm.com>,
 "airlied@linux.ie" <airlied@linux.ie>,
 "tomeu.vizoso@collabora.com" <tomeu.vizoso@collabora.com>,
 "qperret@google.com" <qperret@google.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "rdunlap@infradead.org" <rdunlap@infradead.org>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "agross@kernel.org" <agross@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Sudeep Holla <Sudeep.Holla@arm.com>,
 "patrick.bellasi@matbug.net" <patrick.bellasi@matbug.net>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 3/9/20 2:15 PM, Steven Price wrote:
> On 09/03/2020 13:41, Lukasz Luba wrote:
>> Register devfreq cooling device and attempt to register Energy Model. This
>> will add the devfreq device to the Energy Model framework. It will create
>> a dedicated and unified data structures used i.e. in thermal framework.
>> The last NULL parameter indicates that the power model is simplified and
>> created based on DT 'dynamic-power-coefficient', voltage and frequency.
>>
>> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
> 
> LGTM!
> 
> Reviewed-by: Steven Price <steven.price@arm.com>

Thank you Steven. I will collect it for v5.

Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
