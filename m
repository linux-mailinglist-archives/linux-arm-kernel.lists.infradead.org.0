Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96831159BD0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 22:58:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PInUZpwCYhIYHZ6b/tMAQItMG++aSJUJy5tYn9RyV9w=; b=LLsN9er09K5wig402cFIMTkYN
	fgvC3vLTa9MT30x4J+z2vfcRQeY8X8he3OOfqeFqSDEbV3NBpugB/P9Pz/p97Oy/GZiBJxAAicGSS
	U4oZoiIG/W4Wnb04jxLSSGV788jETQ+1WazMVeKX5WX7vNnDHrAfSuuQOHUs3Y6p+mejdrSbxLQ/j
	UTKdW80a948NT5L7IP6i9UGJbDDDkVM4nhZ9YSkXIwaTmKUxJMBSb+aITXqOP9N/DJEzT1oPmLeYZ
	obsXJlgTBLBEAbC/ZOT1LL7dsToQxQ5DZLbUEbEGfExSAxl1+qOe4seF/u5BG78CzUUxO2HPIoMxd
	A/9b7ORFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1dXW-0005c2-8k; Tue, 11 Feb 2020 21:57:54 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1dXN-0005az-GW
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 21:57:47 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1581458263; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=jWU1cgqaUBb34RjRYJOYQVzFk/Z6wfMiJoxum7QsqVU=;
 b=CgMPscwmldN2g7uaV1VfzMjqNT4jzeY0PbHqR2ZQXWRSsla2/X1DMmX4mG5ldG4Q00F1iFkw
 D/eDBcsgZx6veczyYYQo3n3h44N/KBy6C7P02Gaa3llnmyKQkZy+NnUms1uDSrcc2Ad1aVD+
 0LSLroxvoxClxb4rUMlgIgax7Y4=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e43234e.7fa0c32c7538-smtp-out-n01;
 Tue, 11 Feb 2020 21:57:34 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 8B915C447A0; Tue, 11 Feb 2020 21:57:33 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 28EA1C43383;
 Tue, 11 Feb 2020 21:57:32 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 12 Feb 2020 03:27:32 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCHv2 2/2] dt-bindings: watchdog: Add compatible for QCS404,
 SC7180, SDM845, SM8150
In-Reply-To: <CAL_JsqKeytW=k5efjcfcuK6vbGggdO9nVdwq7YGNtMpzPQHWMg@mail.gmail.com>
References: <cover.1580570160.git.saiprakash.ranjan@codeaurora.org>
 <ff71077aa09c489b2b072c6f5605dccb96f60051.1580570160.git.saiprakash.ranjan@codeaurora.org>
 <20200206183808.GA5019@bogus>
 <f26464226f74dffe2db0583b9482a489@codeaurora.org>
 <CAL_JsqKeytW=k5efjcfcuK6vbGggdO9nVdwq7YGNtMpzPQHWMg@mail.gmail.com>
Message-ID: <a48fc9fd93826b63777bad71d9b2d7c4@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_135745_611362_2099A46A 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, devicetree-owner@vger.kernel.org,
 linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Stephen Boyd <swboyd@chromium.org>, Andy Gross <agross@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Matthias Kaehlcke <mka@chromium.org>, Guenter Roeck <linux@roeck-us.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-11 23:54, Rob Herring wrote:
> On Fri, Feb 7, 2020 at 12:10 AM Sai Prakash Ranjan
> <saiprakash.ranjan@codeaurora.org> wrote:
>> 
>> Hi Rob,
>> 
>> On 2020-02-07 00:08, Rob Herring wrote:
>> > On Sat, Feb 01, 2020 at 08:59:49PM +0530, Sai Prakash Ranjan wrote:
>> >> Add missing compatible for watchdog timer on QCS404,
>> >> SC7180, SDM845 and SM8150 SoCs.
>> >
>> > That's not what the commit does. You are changing what's valid.
>> >
>> > One string was valid, now 2 are required.
>> >
>> 
>> Does this look good?
> 
> No. First of all, what's the base for the diff? It's not what you
> originally had nor incremental on top of this patch.
> 

It was an incremental on top of this patch.

> Second, a value of 'qcom,kpss-timer' or 'qcom,kpss-wdt' or
> 'qcom,scss-timer' will fail validation because 2 clauses of 'oneOf'
> will be true.
> 

I will just remove oneOf and add the missing compatibles to the enum.

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
