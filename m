Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 240AF8A05E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 16:08:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7W3GRtTOqCb4bj91Y32gfPLnhgPswxazddXirKLrxvE=; b=NenLJekMaKopZa8dDpm4YIyOK
	zqwCmaWhTm2sKMwvdXU1IHVBBPekq0nIxLHPuzBUAetHc63pViAAaSKXOUK/dzPkWJL69v0VWSfaw
	SiP020D9ISGP0uCzHaR3fGEYYvuiFgJ1VP4qMXsAZmhFV2B0ZGf+PPzHxDCjywmyglenLOvItrub5
	KA76bcsgI0J3puSjS2qNcvdMQ1lk3CD3+LMh3TjPyYZAcvuyJ9Y8o5nhgFHnQ3+wEJeB/C+o2I7iw
	AYZ2+jKkJJ1ZcDOETu1qBDiMHi95qCiEJ4ru/WSCoOct67p6oHKr5qDi/F3GMqS3k607OHqSvTaFA
	eNCWk09wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxB04-0004VR-LG; Mon, 12 Aug 2019 14:08:40 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxAzT-0004J2-6e
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 14:08:04 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id E74E560A24; Mon, 12 Aug 2019 14:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1565618879;
 bh=fw94u81eThzgsYjSU+Z+n8fIRd2urq/T8GikyE6yGe8=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=k/90Q60fihwdPr79qce5GK9eZ4A+kMWVrODU6BZhwMQdTH3BNr0PtGmQE6VOSM7n1
 I8EZt7nHl6ARtj1UFUcqtsBiP9V1Z/r5yeFhzgmdBcpnoZuh4sMmNiH9T1mZJq34s2
 XqWj6yRBEBm+AlqWEXYPC+d2CWMDmVzAo8o/LX8w=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [10.226.58.28] (i-global254.qualcomm.com [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: jhugo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 7BE5C60709;
 Mon, 12 Aug 2019 14:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1565618879;
 bh=fw94u81eThzgsYjSU+Z+n8fIRd2urq/T8GikyE6yGe8=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=k/90Q60fihwdPr79qce5GK9eZ4A+kMWVrODU6BZhwMQdTH3BNr0PtGmQE6VOSM7n1
 I8EZt7nHl6ARtj1UFUcqtsBiP9V1Z/r5yeFhzgmdBcpnoZuh4sMmNiH9T1mZJq34s2
 XqWj6yRBEBm+AlqWEXYPC+d2CWMDmVzAo8o/LX8w=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 7BE5C60709
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=jhugo@codeaurora.org
Subject: Re: next/master boot: 265 boots: 17 failed, 184 passed with 64
 offline (next-20190730)
To: Linus Walleij <linus.walleij@linaro.org>, Timur Tabi <timur@kernel.org>
References: <5d403574.1c69fb81.14163.65d3@mx.google.com>
 <20190730134115.GE4264@sirena.org.uk>
 <CACRpkdYevQiwW8iED8_qBo5yCcj5yCGrM76Lu3MyrU6Vy4HoNg@mail.gmail.com>
 <5d41b01a.1c69fb81.84578.a0bc@mx.google.com>
 <cbbe381e-a154-ced1-fbcb-9db2135e4e5b@codeaurora.org>
 <e974aa7e-98d4-1594-755b-6f57ab852cd7@kernel.org>
 <CACRpkdZ7TCvF-EE0Bvjz5Upi_e+CMHqhrkyxn2An8jJKj_g6cw@mail.gmail.com>
From: Jeffrey Hugo <jhugo@codeaurora.org>
Message-ID: <0afc2e55-5346-9925-8e4d-d4485f1d3898@codeaurora.org>
Date: Mon, 12 Aug 2019 08:07:57 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CACRpkdZ7TCvF-EE0Bvjz5Upi_e+CMHqhrkyxn2An8jJKj_g6cw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_070803_416088_877DC21C 
X-CRM114-Status: GOOD (  16.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kernel Build Reports Mailman List <kernel-build-reports@lists.linaro.org>,
 Lina Iyer <ilina@codeaurora.org>, Stephen Boyd <swboyd@chromium.org>,
 Mark Brown <broonie@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Lee Jones <lee.jones@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/3/2019 2:42 AM, Linus Walleij wrote:
> On Fri, Aug 2, 2019 at 4:51 AM Timur Tabi <timur@kernel.org> wrote:
>> On 7/31/19 12:58 PM, Jeffrey Hugo wrote:
>>>
>>> static int gpiochip_alloc_valid_mask(struct gpio_chip *gc)
>>> {
>>>        if (IS_ENABLED(CONFIG_OF_GPIO))
>>>            gc->need_valid_mask = of_gpio_need_valid_mask(gc);
>>>        if (!gc->need_valid_mask)
>>>            return 0;
>>
>> So this seems wrong on a system with OF and ACPI.  It assumes that OF
>> takes priority over ACPI if both are enabled, and that's not true in
>> general.  If anything, it's the other way around.
>>
>> IS_ENABLED(CONFIG_OF_GPIO) is not the correct test to see if OF should
>> be used.  I think this should be replaced with the OF equivalent of
>> has_acpi_companion(), but even that might not be enough.  Basically,
>> of_gpio_need_valid_mask() should return three values, 0 = don't need it,
>> 1 = does need it, -1 = gpio info is not in OF.
> 
> You're absolutely right.
> 
> Sboyd hacked up a patch to that effect and I applied it.
> 
> I haven't heard if QDF2400 is working again but I'd love to know!
> 

Sorry, was on vacation.  Per kernelci[1], looks like things are working.

[1] https://kernelci.org/boot/qcom-qdf2400/

-- 
Jeffrey Hugo
Qualcomm Technologies, Inc. is a member of the
Code Aurora Forum, a Linux Foundation Collaborative Project.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
