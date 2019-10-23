Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BD8E20AC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 18:35:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uJzxw/9CTNJ9oMdMM2l1+rs1OqdD+XJjtZFTu759tFc=; b=WhjdedWUWopAoj
	L5ZlqmJrAUlgxcYebl0oDsYZBNSO4pMLWx/CiNGsZuh5XyMf/hFrF+ax/lsuNg0HuDrsh/Ab1yTz/
	HXl/060rRR3H3OJRs74PkM93AhDSvwmi1QgkDFiV3q0uvGW25Bf5/iBAqYDXmraqSj5w+CoHj6No5
	C1S5Y84e3ebMNSKdNzyDyAH1zvqENEZDiDQVrN4gPiCWPX9r2zw1V5pcOW0qo3sfnaEHTwPObXfPP
	OnSdia2OV3de0KBtT+Kcc6FE2Ff94wceB1vTWtKLtprYDLRvQQ1j8tlGNSlhkG9gTav26Q/BkmzHO
	tFOrlWh4rutvHDjkqEHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNJb8-0005xv-4E; Wed, 23 Oct 2019 16:34:58 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNJaz-0005xL-C6
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 16:34:51 +0000
Received: by mail-pf1-x442.google.com with SMTP id q21so13248789pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 09:34:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=paPdYBXe5hK/GYcbyHZ3o8VhlBG4zpUjueSHGzqxOcw=;
 b=hL7oV31HeaaokV5onhoHXnelV7EXkShP1PTMImFwFcCmZRzw3QzjCJI3sKb2cN1HeW
 t+saI0fIKR/GzRtB/SWqlyyEcPYEe4zUTl2Z0yKY6UUVmMfAkrvCBGu/54VbqXl/njgS
 kyKWidz6I9gjuQz3OwMDOH9tUt0pLCHdkUdVA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=paPdYBXe5hK/GYcbyHZ3o8VhlBG4zpUjueSHGzqxOcw=;
 b=qS3X5r4HCqUZ1YzLBY0k2iRMnYYNetwQSkKjR8zc+g9iieaqaWcGdjahh4cFjBZvma
 pSaHyBkwELt6uJxQrJaCw7i0Ld4iI5n2eT72PSX20br86m+VnoTVy1yiOCyywjPQN37J
 2acEsr3VxVb0c2i2BQJ00uhh4x7gRiwLe6gi5qV7Uyzy9zVhzJ68Az+SA98yZYqZF+kz
 QnJuH5uinvtOALH84Y0mr/22lI6qjK2aB+XKmCq8xWb3rpN9U6nIxtkPLSJBKAPdjlig
 W860SlMBWArINsEXLzl2RooGmoENSyk3E3hw75n5bXc/v+/rjPKq9/GCvvmSlqgDsGMC
 8jrQ==
X-Gm-Message-State: APjAAAUkVtG+os0W1mNVhKQrPG4H9Me8yKstYDEo3KJAUk5rkAg7JEUr
 VygXKRt6GWKtDCaKR466ywgkiw==
X-Google-Smtp-Source: APXvYqwZIgz3OSWqkjl9lNVx6+2HhR+fhss+RDALlGtSQClpt7KyQtClkAnIiRy0al2MmdwbKZ1kXA==
X-Received: by 2002:a63:7c03:: with SMTP id x3mr11274903pgc.382.1571848487957; 
 Wed, 23 Oct 2019 09:34:47 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
 by smtp.gmail.com with ESMTPSA id c62sm24239590pfa.92.2019.10.23.09.34.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Oct 2019 09:34:45 -0700 (PDT)
Date: Wed, 23 Oct 2019 09:34:43 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v9 0/8] PM / devfreq: Add dev_pm_qos support
Message-ID: <20191023163443.GL20212@google.com>
References: <cover.1570044052.git.leonard.crestez@nxp.com>
 <AM7PR04MB70154D3BA0D6402A9C9BE6A0EE6B0@AM7PR04MB7015.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM7PR04MB70154D3BA0D6402A9C9BE6A0EE6B0@AM7PR04MB7015.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_093449_437763_6DD7E764 
X-CRM114-Status: GOOD (  25.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 02:06:40PM +0000, Leonard Crestez wrote:
> On 2019-10-02 10:25 PM, Leonard Crestez wrote:
> > Add dev_pm_qos notifiers to devfreq core in order to support frequency
> > limits via dev_pm_qos_add_request.
> > 
> > Unlike the rest of devfreq the dev_pm_qos frequency is measured in Khz,
> > this is consistent with current dev_pm_qos usage for cpufreq and
> > allows frequencies above 2Ghz (pm_qos expresses limits as s32).
> > 
> > Like with cpufreq the handling of min_freq/max_freq is moved to the
> > dev_pm_qos mechanism. Constraints from userspace are no longer clamped on
> > store, instead all values can be written and we only check against OPPs in a
> > new devfreq_get_freq_range function. This is consistent with the design of
> > dev_pm_qos.
> > 
> > Notifiers from pm_qos are executed under a single global dev_pm_qos_mtx and
> > need to take devfreq->lock. Notifier registration takes the same dev_pm_qos_mtx
> > so in order to prevent lockdep warnings it must be done outside devfreq->lock.
> > Current devfreq_add_device does all initialization under devfreq->lock and that
> > needs to be relaxed.
> > 
> > Some of first patches in the series are bugfixes and cleanups, they could be
> > applied separately.
> 
> Hello,
> 
> This series was posted a few ago and all patches have been 
> reviewed/tested-by multiple people. Possible minor hangups:
> 
> 1) Matthias found it confusing that min/max_freq in sysfs changes 
> on-the-fly. This is not a behavior change and I believe a decent 
> workaround would be to implement separate user_min/max_freq files from 
> which userspace will always read back the contraints it has written.

As you said, it isn't a behavioral change, so it shouldn't be an issue
for this series.

Regarding the workaround I think it would be clearer to have new
xyx_min/max_freq files for the aggregate values. min/max_freq are the
interface userspace uses to specify the limits, it would be strange to
use different files to read them out.

In any case the aggregate values seem to be of little practical value,
except perhaps for monitoring, since they could be stale right after
userspace read them out. We could start with not providing them, and add
them if it turns out that they are actually needed.

> 2) There was an objection to removing devm from two allocs in PATCH 4. I 
> believe current solution is acceptable but a possible alternative would 
> be to split device_register into device_initialize and device_add: this 
> should allow devm sooner.
> Link: https://patchwork.kernel.org/patch/11158385/#22902151
> 
> Let me know if you think I should implement the options above and resend.
> 
> The bigger problem is that DEV_PM_QOS_MIN/MAX_FREQUENCY was removed from 
> pm core because only user (cpufreq) was refactored to use a new 
> interface on top of cpufreq_policy. Links to discussion:
>      https://patchwork.kernel.org/cover/11193021/
>  
> https://lore.kernel.org/linux-pm/VI1PR04MB7023DF47D046AEADB4E051EBEE680@VI1PR04MB7023.eurprd04.prod.outlook.com/T/#u
> 
> I believe there is still significant value in supporting min/max 
> frequency requests on a per-target-device basis. This makes much more 
> sense for devfreq that for cpufreq because the whole point of devfreq is 
> scaling arbitrary independent devices.

Agreed.

It seems Rafael would be ok with reverting the patch that removes
DEV_PM_QOS_MIN/MAX_FREQUENCY, IIUC he just doesn't want to keep it around
at this time because with the rest of his series there remain no in-tree
users.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
