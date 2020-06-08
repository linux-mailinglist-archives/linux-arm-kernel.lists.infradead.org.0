Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F401F1A8F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 16:08:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ls+ZjZIlOHmCCdtd+0+DS0bYFMZ0fITabhHZocm7PhI=; b=lt56JZRjjddUsBimGbFPQOT8N
	k07FSYrLbjbUvUis9RZkHp9S9Xt4daJa8Tc3LTy6Wu3ZgJVQ9HbUSbRNfB2VlgBUO9pegWkaX4yiG
	EW+Vv7Brxkb8A/FHzcmn2Pe2Ub8m2+35ilv3q36GMAQEl/T+Fg/nFC/LvenNcOO4uQEeph5ep/e85
	AtUDIeEel4dyzgR1CY+gqIq3AgtryzsV6Bh/q9rYxzwtRLa0UXWHqS4DyYE98OvGecLN4tS6M9PA8
	poQS2Zv4+syVgYrAKtCi9K+FTlB/cJ5JD2oFkpKG7dijMYpR/jf1BOEwSnCp7IORsTlBVmVepC5ad
	52byo+gAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiIRS-0006Uq-3U; Mon, 08 Jun 2020 14:07:58 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiIRH-0006US-9s
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 14:07:50 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591625268; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=2lAq2rIQvCTa/HMObWUZHG77iDOvmKG/k0U9on+s/5c=;
 b=Ye48iH5q4fvbe98p/RjVV7wCWgtuOY+A78ETlM59YzgSX8t0GWXh0d3VQBGbhWGtZ5aWE3gd
 h3egPcNh8t0h9lr3QOiRl9rYNe9yWPkTFrchzSi/zY9osEXXF84k1h5yPBLmHqC3VO7Xa+yg
 k0tZ4W/BgzLr5V3I3jn4r15+W3s=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n13.prod.us-east-1.postgun.com with SMTP id
 5ede4631f9a707134586e162 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 08 Jun 2020 14:07:45
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 90DD3C4339C; Mon,  8 Jun 2020 14:07:44 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 05A65C433C6;
 Mon,  8 Jun 2020 14:07:44 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 08 Jun 2020 19:37:43 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>, Mike Leach
 <mike.leach@linaro.org>
Subject: Re: [PATCH 2/2] coresight: tmc: Add shutdown callback for TMC ETR/ETF
In-Reply-To: <da1fdf765ea29cfe7a44145b17431721@codeaurora.org>
References: <cover.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <28123d1e19f235f97555ee36a5ed8b52d20cbdea.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <20200601212858.GB24287@xps15>
 <6d759cc28628ea72767c1304883630eb@codeaurora.org>
 <CAJ9a7VhMbdqVBHxEXGYxFkgPnnQqNnDAz=wkHP3s7Ntw0iLmKA@mail.gmail.com>
 <f0357072de96970b641bbd0da98c1d61@codeaurora.org>
 <CAJ9a7Vj9STJw4jBxWU_9wHftj4Q7+k8o1nTc8tr21KjYi0RkpQ@mail.gmail.com>
 <4a09cd2e054836d85f2e024ca4435e91@codeaurora.org>
 <CAJ9a7VgCFeHNbY_9Gwvu6uT9MFBeY=_GCaN4N1dwmm+iNpfJOw@mail.gmail.com>
 <1a5a6a6d-b86d-df45-cf91-7081e70d88a3@arm.com>
 <20200603174426.GA23165@xps15>
 <da1fdf765ea29cfe7a44145b17431721@codeaurora.org>
Message-ID: <dfa6aa626f075f49d9ba1ae8ffa3d384@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_070748_638423_287B7225 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.27 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Will Deacon <will@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-msm@vger.kernel.org, Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu, Mike

On 2020-06-04 12:57, Sai Prakash Ranjan wrote:
> 

[...]

>> 
>> Robin has a point - user space is long gone at this time.  As such the 
>> first
>> question to ask is what kind of CS session was running at the time the 
>> system
>> was shutting down.  Was it a perf session of a sysfs session?
>> 
>> I'm guessing it was a sysfs session because user space has been blown 
>> away a
>> while back and part of that process should have killed all perf 
>> sessions.
> 
> I was enabling trace via sysfs.
> 
>> 
>> If I am correct then simply switching off the ETR HW in the shutdown() 
>> amba bus
>> callback should be fine - otherwise Mike's approach is mandatory.  
>> There is
>> also the exchange between Robin and Sai about removing the SMMU 
>> shutdown
>> callback, but that thread is still incomplete.
>> 
> 
> If Robin is hinting at removing SMMU shutdown callback, then I think 
> adding
> all these shutdown callbacks to all clients of SMMU can be avoided. Git 
> blaming
> the thing shows it was added to avoid some kexec memory corruption.
> 

I think I misread the cryptic hint from Robin and it is not right to 
remove
SMMU shutdown callback. For more details on why that was a bad idea and 
would
break kexec, please refer to [1].

As for the coresight, can I disable the ETR only in the tmc shutdown 
callback
or are we still concerned about the userspace coming into picture?

[1] https://lore.kernel.org/patchwork/patch/1253131/

Thanks,
Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
