Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0CE17BE7E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 14:30:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LFDLUj5NJ9RzyInr8XPRPCcodFZe3oDRyECLqtgjcgw=; b=VR58ONrbEicaiV
	D4jOjygcMs2vHTWgpNpdxUP3fCAX5LeH/9KkRPR+BBZ4nx8BmZby5+he3ag8SRFbModlqDSCGHnr2
	CxPMxLV779Jbc+zbBTlT+8K2aDhAk/5+jgIQtlZB+5yP12wolkVrVWL8kJ47Xda9HACEWmh2KBdyC
	K6EBtQCn8rmNudItC9gp3IS8ljnGOBsTipFHenPm/EVudIdjBcprGRmRf8uZQA3ZtKGuAckqslUEg
	5IP6KDoHIyoGWdRBP54qQFNyIySwBheVkfVgMepnxJCxIwR7RGJBBcckWd98sSRwnYXHQa+I3MNwS
	dZicqWiwLQ79OI5P2/LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAD3e-0003cs-ET; Fri, 06 Mar 2020 13:30:30 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAD3R-0003c4-2M
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 13:30:19 +0000
Received: by mail-il1-x143.google.com with SMTP id x2so2010016ila.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 05:30:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Pg0E53f1mAa6g/1NYUXksaRgV81W69zTft5+Yoc7gDE=;
 b=Kg8VgctwJ9sl2bTG3rzATydWCYvJWQCE+ermdWX2W6/tL1d4ooTTXJuxucMeR5HrSO
 1VngudrsPSy6SvXBIf+Y/JC/ayTGHJ6fpURzkse7qM0P31kiOutuJ53gCTgm/4fdXO2/
 ZK+7UJ0oJ/wyIe0y/TWHPMUsTI7K+WDqulCZDNtCBHys0966gt2n/kZXpPgrDhE1Gfvo
 87Sp3W/lmVrl6Us1lh/ZORqWtpxOgMOSPZkKnPn6LSXxHmrLaIOR6aGQRitSaxpWzlV7
 H9ejUcou5Kg7KhqSbUzlR6JhKfG+b3GJnyRWoC6D1Z6JI/nPhmrbV+jmjMERQGj372X0
 Pt8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Pg0E53f1mAa6g/1NYUXksaRgV81W69zTft5+Yoc7gDE=;
 b=FbDM7VPk1CtIzort0dzeoCZd/Z+2briLhzc/4dmkB5jvQ4GE2LcFV3EpyBtoqgltpP
 NBC0lD+DxABctOiCHFpV0+9tDUBfwJ24ASKqdCyZnOuZGPS4wQ/h2GERalL6jmWWBoSI
 8x+RIRK4YY/sv7jOQIYNvZyYm7VKkcJBbpu0QAoOIqLT/xm4eZF7NNhInLwent6G00w2
 PeI6qMgeHahzFC8R7efrthFUFWZ/JFuMJwzWM6Re8yhpNxvbMoSkWqsMo4lI5AKKBudo
 oSjlGPJXcVh/684mG0UkqM8qH5D3/bDZl4nbftCWHMPkTy7kUpDczDM5fhGUyzfnZ3tf
 uhBw==
X-Gm-Message-State: ANhLgQ3giyQsD/htPtYxQhEhgLMXfrLQ04Cqsgi6fSdP8ko9vsfQ89cB
 GAQpqpUavAy3qFDkuo4HswOPOg==
X-Google-Smtp-Source: ADFU+vtF7Sgabzn4gBNF+Q1WL6hlfCT9H3OiBs3TKH16d/VuIJCgyEsSlOKmaSfuT4a7s2taCKtlBw==
X-Received: by 2002:a92:d9c4:: with SMTP id n4mr3077709ilq.124.1583501415806; 
 Fri, 06 Mar 2020 05:30:15 -0800 (PST)
Received: from [172.22.22.26] (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.googlemail.com with ESMTPSA id x6sm7019573ilg.42.2020.03.06.05.30.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Mar 2020 05:30:15 -0800 (PST)
Subject: Re: [PATCH v2 01/17] remoteproc: add IPA notification to q6v5 driver
To: Leon Romanovsky <leon@kernel.org>
References: <20200306042831.17827-1-elder@linaro.org>
 <20200306042831.17827-2-elder@linaro.org> <20200306114941.GO184088@unreal>
From: Alex Elder <elder@linaro.org>
Message-ID: <5548579d-179d-b099-afa9-6b76e9fa5a89@linaro.org>
Date: Fri, 6 Mar 2020 07:29:23 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200306114941.GO184088@unreal>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_053017_175691_927C920A 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Mark Rutland <mark.rutland@arm.com>,
 Susheel Yadav Yadagiri <syadagir@codeaurora.org>,
 Eric Caruso <ejcaruso@google.com>, Arnd Bergmann <arnd@arndb.de>,
 devicetree@vger.kernel.org, Dan Williams <dcbw@redhat.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Siddharth Gupta <sidgup@codeaurora.org>, Andy Gross <agross@kernel.org>,
 Evan Green <evgreen@google.com>, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 Johannes Berg <johannes@sipsolutions.net>, linux-soc@vger.kernel.org,
 David Miller <davem@davemloft.net>,
 Chaitanya Pratapa <cpratapa@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/6/20 5:49 AM, Leon Romanovsky wrote:
> On Thu, Mar 05, 2020 at 10:28:15PM -0600, Alex Elder wrote:
>> Set up a subdev in the q6v5 modem remoteproc driver that generates
>> event notifications for the IPA driver to use for initialization and
>> recovery following a modem shutdown or crash.

. . .

>> diff --git a/include/linux/remoteproc/qcom_q6v5_ipa_notify.h b/include/linux/remoteproc/qcom_q6v5_ipa_notify.h
>> new file mode 100644
>> index 000000000000..0820edc0ab7d
>> --- /dev/null
>> +++ b/include/linux/remoteproc/qcom_q6v5_ipa_notify.h
>> @@ -0,0 +1,82 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +
>> +/* Copyright (C) 2019 Linaro Ltd. */
>> +
>> +#ifndef __QCOM_Q6V5_IPA_NOTIFY_H__
>> +#define __QCOM_Q6V5_IPA_NOTIFY_H__
>> +
>> +#if IS_ENABLED(CONFIG_QCOM_Q6V5_IPA_NOTIFY)
> 
> Why don't you put this guard in the places where such include is called?
> Or the best variant is to ensure that this include is compiled in only
> in CONFIG_QCOM_Q6V5_IPA_NOTIFY flows.

I did it this way so the no-op definitions resided in the same header
file if the config option is not enabled.  And the no-ops were there
so the calling code didn't have to use #ifdef.

I have no objection to what you suggest.  I did a quick scan for other
examples like this for guidance and found lots of examples of doing it
the way I did.

So I'm happy to change it, but would like an additional request to do
so before I do that work.

Thanks.

					-Alex

> That is more common way to guard internal header files.
> 
> Thanks
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
