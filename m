Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D5E5E775
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 17:09:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=czchGGT7TCNbFeMO5xzk0Ps+x8QAKjp/T1Xet6RsMcA=; b=IOwB194/A+h/gz
	yi06NHpqEGuIVT8aUtlYvmic55uXe3Z8TpSBgHb+flATxOaAt774Yz8MBVJo1OOOEVhqiaPVbt9MV
	aqsW/BHV8eaJgr8V0PYc21pQxF6JNFgqI3MdkFQstDBXi3w9QFhff7JHXHT10/GQvUiMjLza4pWLR
	LaZjls6xAw++BOZRYqFRh/E0OEqQ9LG/fHoFTEiLCfu7p07/FryDLVqk7S/RZL+UETEEDRFKnbL/1
	fVSL8muMaa5RP6UyfEhSGgFAZL9wA8ybXGXrexrnfhBTnOf5LnErtyWX1HfpVRHvsfVDtdCFkdgYk
	N0FGwj1EmjqLRFf7Vkvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1higsp-0001Hv-2y; Wed, 03 Jul 2019 15:09:19 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1higsb-0001Gv-CG
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 15:09:06 +0000
Received: by mail-io1-xd44.google.com with SMTP id u19so5553267ior.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 08:09:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=aw5rLTOGHVOuWpYtoQJzQDQQgJgAlYekgr7JwjSCTt4=;
 b=PzY9C3Nt2MIKEZNxYLjxFAW+9SjQY8TUYm3Ms5POWyhTT2ApqoPbKFQ+Huyjq362ba
 xHD5+bbNMJ44ZGBQEcQnRc++AwHkwyWrGkF44qTJ+LHDqL/BP8BA9QJc07DoauOkqhxA
 llBHa2jdVUepqJR1eBXUIgC4FhdpNVATbqohNl3nujVWrD3h3dAsNnB+ty+BVONWXeqo
 18smc6JQii8rSR2Y3ZUNGs1w5YgcMZPEiOvzoDGdLb/Shl5ciZSeIF2sUYjp5vpw1oL+
 zidqZ1jJ7lqsGxAuGBO6IKcNjw6v9iChWJkhSnadVtiWogEw10vPbfdFmsDp4XCHWMiw
 IQaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=aw5rLTOGHVOuWpYtoQJzQDQQgJgAlYekgr7JwjSCTt4=;
 b=PN0V/4/AX3xusJ2Qzb3NazWt2NETTyT90fqLUf0JKPD5X7GCerbV5CyuToF6O2FQz0
 9ocJgjmWSoIZJUd4h1mFE0A+PAVdihIHJJ0qYG/gcsF4lbeDi8pT8INydaIO5l/CbKbv
 idKzDyGEw/jS5JltBBmShVLi7r7mvkcv+2srR5zUtWH9goO7FfimOWMt5b71ZxnHpthp
 0ivWwoEJAnlILkSnIsn/Xv8jJH9HKbbOCwhVUgC5SFQUgaBfHAyE8XU5Dh7/1vfE63T8
 abSTKb/6oKdCd/ZUGHRlBvWGjIlxksofW9bCyvyJxYx1ZzPcjBmzuhIMKUZYXo7UKkrV
 RqEg==
X-Gm-Message-State: APjAAAUbiBoju62jYwuJUaTywcbqBsWkQY6gEOeqr/g2a+lL1wgBPGXU
 6N4jx/acsANQ/AuWZQBmZd3uoA==
X-Google-Smtp-Source: APXvYqylDJ9H/znMIYSM76cME/p8SyRkZWaMigsqEugGbrfBUtutBbJz5lC5zaZVFp89G+a78FlD6Q==
X-Received: by 2002:a6b:c915:: with SMTP id z21mr13020446iof.182.1562166543298; 
 Wed, 03 Jul 2019 08:09:03 -0700 (PDT)
Received: from [172.22.22.26] (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.googlemail.com with ESMTPSA id f4sm2434872iok.56.2019.07.03.08.09.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 08:09:02 -0700 (PDT)
Subject: Re: [PATCH v2 02/17] dt-bindings: soc: qcom: add IPA bindings
To: Alex Elder <elder@ieee.org>, Rob Herring <robh+dt@kernel.org>
References: <20190531035348.7194-1-elder@linaro.org>
 <20190531035348.7194-3-elder@linaro.org>
 <CAL_JsqLFk3=YN+V=RVxq9xWQTrPA9_0zW+eFrdXkGkCnM_sBkA@mail.gmail.com>
 <bcb7f599-3c22-da27-c92b-4c1903a5ea06@ieee.org>
From: Alex Elder <elder@linaro.org>
Message-ID: <76c1db4f-20b7-4b4b-541c-aa8baa12e7cc@linaro.org>
Date: Wed, 3 Jul 2019 10:09:01 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <bcb7f599-3c22-da27-c92b-4c1903a5ea06@ieee.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_080905_427459_9CDD0405 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 syadagir@codeaurora.org, Eric Caruso <ejcaruso@google.com>,
 Arnd Bergmann <arnd@arndb.de>, netdev <netdev@vger.kernel.org>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Evan Green <evgreen@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, abhishek.esse@gmail.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, subashab@codeaurora.org,
 "open list:ARM/QUALCOMM SUPPORT" <linux-soc@vger.kernel.org>,
 David Miller <davem@davemloft.net>, cpratapa@codeaurora.org,
 Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/10/19 9:11 PM, Alex Elder wrote:
> On 6/10/19 5:08 PM, Rob Herring wrote:
>> On Thu, May 30, 2019 at 9:53 PM Alex Elder <elder@linaro.org> wrote:
>>>
>>> Add the binding definitions for the "qcom,ipa" device tree node.
>>>
>>> Signed-off-by: Alex Elder <elder@linaro.org>
>>> ---
>>>  .../devicetree/bindings/net/qcom,ipa.yaml     | 180 ++++++++++++++++++
>>>  1 file changed, 180 insertions(+)
>>>  create mode 100644 Documentation/devicetree/bindings/net/qcom,ipa.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/net/qcom,ipa.yaml b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
>>> new file mode 100644
>>> index 000000000000..0037fc278a61
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
>>> @@ -0,0 +1,180 @@
>>> +# SPDX-License-Identifier: GPL-2.0
>>
>> New bindings are preferred to be dual GPL-2.0 and BSD-2-Clause. But
>> that's really a decision for the submitter.
> 
> Thanks Rob.  I'll ask Qualcomm if there's any problem
> with doing that; I presume not.  If I re-submit this
> with dual copyright, I will include your Reviewed-by
> despite the change, OK?

FYI I have the go-ahead to use dual GPL-2.0 and BSD-2-Clause
bindings on this, and will mark it that way whenever I next
post this code for review.

I will also be updating other Qualcomm bindings to have a
dual copyright (in a separate series).  We'll want to
get an ack from appropriate Code Aurora developers on
those (I'll provide more detail at the time those get
posted).

					-Alex

> 					-Alex
> 
>>
>> Reviewed-by: Rob Herring <robh@kernel.org>
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
