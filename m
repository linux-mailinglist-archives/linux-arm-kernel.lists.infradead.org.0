Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C65EE1A4583
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 13:13:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:In-reply-to:Subject:To:
	From:References:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DP5aeeXtcAqN9euCvZmn5gFLx2liQ5Ma1M5wyOdbsFg=; b=rlKZA6Rwr+OScmf9LufrcWSK9
	jYawkv7/PM/g8UU5uA2D386p6B+uWN0BAyO2KrZ/UqGOkTjNaLvA/09yKotmDkSbplU5XyLIyt5Ie
	JXc8Am9u3HnA0uB4IYjnjQq/bsvjUkxNaFkg0BQHpa2EKIocRZttUkGEKukGYHUjF3czs9XwMHiol
	4BnKv3gMDH72IN9N03CQB4WMYzKQjD8saU7h4nbPQ19foZ7+rBZSkiIOZH/LDMiZ42axeYWJRxkgq
	sZoPx8vMTj6mpF6Xg1uxbCpOhld5aAKUVFzEp2DQrNHrnY52pBYl9Apk8NzbjwsxfWzjDSzNVcQaB
	cRr0fNEDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMraf-0002MI-Rl; Fri, 10 Apr 2020 11:12:53 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMraY-0002LR-Ov; Fri, 10 Apr 2020 11:12:48 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailnew.nyi.internal (Postfix) with ESMTP id D0C895808B7;
 Fri, 10 Apr 2020 07:12:42 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute7.internal (MEProxy); Fri, 10 Apr 2020 07:12:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=luisgerhorst.de;
 h=references:from:to:cc:subject:in-reply-to:date:message-id
 :mime-version:content-type; s=mesmtp; bh=1XCTRzA4r6t+aW/YmemVZF7
 K9mMd/HGoO3EIq2+dA90=; b=qIrPPVsbiwtiPCG914yDDwQbRVGekh653wn5tFg
 3OXdht3GDey5g1KxO9bQPKJBaZjXrLahuzs7uwHaDn1hha4c8tqr9U6h/enmMfmq
 axrVJWAkDeXqxnz5S/s0WX+23JNsmfvxG76MaCu5yoZ/10otB8aw6fJY8I0RJhAL
 UKCE=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=1XCTRz
 A4r6t+aW/YmemVZF7K9mMd/HGoO3EIq2+dA90=; b=W9Z+DKjhWSrSdyvjUXQWV0
 Ht2PBs1Ju8IyieMn6zSkkE0Ul7b4auQXJoekqKJj2FzKU9A+TGuBoFK1SeMMbtzb
 8oMu2rI+B4LzmSkiLSgoieRYIg+B8B0W2HubEz8VgtrlMAXtwwV8LwPnsaNl7ENf
 Hnjisw0YwgMkCsP9gyq9jSxPZWrZ9Ts2HPNybosCeGMKZtC5AH9R3c92CP8iSrSH
 gHS5Yf6zBUWVLj0ZbW7UWf0jF0G8RyBbIZtZRddWT5nYI7Y5ITHyhHNZMoDcYH6U
 Tdhl71Pqk4drxYS2/9BHw9I+ui37vmZMPZYDw+naFkx8jWWMgcUvkw4fFivbpqgw
 ==
X-ME-Sender: <xms:o1SQXtej93cVqf0lMq7BjSBnI80YT6WTnh_bM3bafOgyIiQWYNJntw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrvddvgdefjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpehffgfhvffujgffkfggtgesthdtredttdertdenucfhrhhomhepnfhuihhsucfi
 vghrhhhorhhsthcuoehlihhnuhigqdhkvghrnhgvlheslhhuihhsghgvrhhhohhrshhtrd
 guvgeqnecukfhppeelvddruddujedrudefiedrkeeknecuvehluhhsthgvrhfuihiivgep
 tdenucfrrghrrghmpehmrghilhhfrhhomheplhhinhhugidqkhgvrhhnvghlsehluhhish
 hgvghrhhhorhhsthdruggv
X-ME-Proxy: <xmx:o1SQXsJqEEpdAVlBBNOrPjECiypCvsioWJAkkkqB7OV1k6G1cJ037Q>
 <xmx:o1SQXm3GbM5jjQeq5Fw3vlWvqURZgDtwUCKygupmqpZPjSWL5fF5KQ>
 <xmx:o1SQXlY0lL6nr4XO4VhiScv6QkQfeTRa26Q3bZiNQCcnAlci-1NBaA>
 <xmx:qlSQXgnwI9ZSlZ3EtewA6ucmkah78uuNHQkFyCGi-HgqJe16QWXm_g>
Received: from luis-debian.fastmail.com (unknown [92.117.136.88])
 by mail.messagingengine.com (Postfix) with ESMTPA id DA33E3280060;
 Fri, 10 Apr 2020 07:12:29 -0400 (EDT)
References: <20200410084210.24932-1-lukasz.luba@arm.com>
 <20200410084210.24932-5-lukasz.luba@arm.com>
User-agent: mu4e 1.0; emacs 26.1
From: Luis Gerhorst <linux-kernel@luisgerhorst.de>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH v6 04/10] PM / EM: add support for other devices than CPUs
 in Energy Model
In-reply-to: <20200410084210.24932-5-lukasz.luba@arm.com>
Date: Fri, 10 Apr 2020 13:12:28 +0200
Message-ID: <87ftdboaqr.fsf@luis-debian.luis-debian-domain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_041247_130741_DA1554E8 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: nm@ti.com, juri.lelli@redhat.com, peterz@infradead.org,
 viresh.kumar@linaro.org, liviu.dudau@arm.com, dri-devel@lists.freedesktop.org,
 bjorn.andersson@linaro.org, bsegall@google.com,
 alyssa.rosenzweig@collabora.com, festevam@gmail.com, mka@chromium.org,
 robh@kernel.org, amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com,
 khilman@kernel.org, agross@kernel.org, daniel.lezcano@linaro.org,
 steven.price@arm.com, cw00.choi@samsung.com, mingo@redhat.com,
 linux-imx@nxp.com, rui.zhang@intel.com, mgorman@suse.de, orjan.eide@arm.com,
 daniel@ffwll.ch, linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-omap@vger.kernel.org, Dietmar.Eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie,
 tomeu.vizoso@collabora.com, qperret@google.com, sboyd@kernel.org,
 rdunlap@infradead.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 b.zolnierkie@samsung.com, kernel@pengutronix.de, sudeep.holla@arm.com,
 patrick.bellasi@matbug.net, shawnguo@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Lukasz Luba writes:

> +/**
> + * em_dev_unregister_perf_domain() - Unregister Energy Model 
> (EM) for a device
> + * @dev		: Device for which the EM is registered
> + *
> + * Try to unregister the EM for the specified device (it checks 
> current
> + * reference counter). The EM for CPUs will not be freed.
> + */
> +void em_dev_unregister_perf_domain(struct device *dev)
> +{
> +	struct em_device *em_dev, *tmp;
> +
> +	if (IS_ERR_OR_NULL(dev))
> +		return;
> +
> +	/* We don't support freeing CPU structures in hotplug */
> +	if (_is_cpu_device(dev)) {
> +		dev_dbg_once(dev, "EM: the structures are not going to be 
> removed\n");
> +		return;
> +	}
> +
> +	mutex_lock(&em_pd_mutex);
> +
> +	if (list_empty(&em_pd_dev_list)) {
> +		mutex_unlock(&em_pd_mutex);
> +		return;
> +	}
> +
> +	list_for_each_entry_safe(em_dev, tmp, &em_pd_dev_list, 
> em_dev_list) {
> +		if (em_dev->dev == dev) {
> +			kref_put(&em_dev->kref, _em_release);
> +			break;
> +		}
> +	}
> +
> +	mutex_unlock(&em_pd_mutex);
> +}
> +EXPORT_SYMBOL_GPL(em_dev_unregister_perf_domain);

Ok, so em_dev_unregister_perf_domain() does not support the CPU 
device
and a subsequent em_register_perf_domain() will fail with EEXIST.

Is there a way to unregister/change the CPU's energy model during
runtime without restarting the whole system?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
