Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F3A3C12B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 04:12:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tgWyHNB6xz7+JAKF7rS9E1/Cwu1mnhxJcuF1qbfMX0o=; b=MRTOQv34DO7dAb
	ZIB3IJU6tOOquijDLnFwKdy6f8mvS9qGc9shCNrtpiOxCRsSF+6frLwozqFN8y3Pbhy92+X25ZV29
	Rl+jBSYukqPeZoupnfVNZG1AK5xOKNp7od5HF083BdAfh3rkZ4dzbrbPmxLSK+xfqSbgBAUWdsbRM
	wFICu/8XkSpHHZIrD6zguF3xHViPaYdcRPNXfYFITtaeV3yCsVvxM4JI0+LnWrEEVCj5DJqHn/Gfw
	kNZ6IpLgiPBSTjqy0oWY9Y3C/qkEO+4kcAMmQ9/8jnRRJ+MrMtwHkhZcbCOsGc6H8WMlqwd630BH/
	aJGhpe/3cPfGfWiaP/Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haWGT-0000of-Ie; Tue, 11 Jun 2019 02:11:57 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haWGI-0000o5-01
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 02:11:47 +0000
Received: by mail-it1-x141.google.com with SMTP id l21so2346553ita.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 19:11:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ieee.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=8RcJD0etSUKCdAftUVogv11bxbo5C0KdF/jhN26WyyA=;
 b=OHXgU7noh57Sp/hq02aCQk7Iwul4QOdcr6UViwgqqgDaoPRzDl52iiE0cD1hek0we8
 3IKvO+lUENBcxzsHodJAZnTuabLcoZmMcyQ9lslSwB3speirTQXPv14ltLT3sMs93Mo7
 sDeAhjdXkOwS9iJmOSINgqPbTWdBBDqiFERi0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8RcJD0etSUKCdAftUVogv11bxbo5C0KdF/jhN26WyyA=;
 b=YqdHQLhUBEnhpyKJ/tcxdpu0/EfiqxVnBHjx0GeZnHB8I/9sp0VrhgrQf0uyQ/7fBg
 FZbrvgpyRAT3PzQoMLGbBbYyiu5fT63LoEO17bMJ7+Pd6VXUCye0PF7lNmN5FsdPKyka
 vZ8rueGV8EFOaD7rAMtXQ980HdBx5MsvFSzM+b1iQulMOhTHLieVrsYYtfUUPXpTotgC
 J310ohtkj93X75dcMwNuhfE24JdY+1UWDYUcUW7sGBX0IacRgSOXU/In+zqoyhRvSgun
 J6a6X7P6yj5K107epasWTp80OTUADHlMdEMQv3C5yVf/bBFmhsUDOmbUMhApjY/PT6KP
 uxkg==
X-Gm-Message-State: APjAAAWHuq5rQiTK3MVztvhtSe2oRtSJVXG48DGAM/WqhtyVM3qfB1FW
 mv+jbbnXKWjOR2krzA1mUV+n7A==
X-Google-Smtp-Source: APXvYqzXNReWPcWQtoTC/Q7rrGPSPe4wVuVRroQKGCnjVJi4KH9bhqO038VqJ1HbXbKZCJDyQffZMQ==
X-Received: by 2002:a24:c384:: with SMTP id s126mr15705942itg.1.1560219102350; 
 Mon, 10 Jun 2019 19:11:42 -0700 (PDT)
Received: from [172.22.22.26] (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.googlemail.com with ESMTPSA id c23sm4403415iod.11.2019.06.10.19.11.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 19:11:41 -0700 (PDT)
Subject: Re: [PATCH v2 02/17] dt-bindings: soc: qcom: add IPA bindings
To: Rob Herring <robh+dt@kernel.org>, Alex Elder <elder@linaro.org>
References: <20190531035348.7194-1-elder@linaro.org>
 <20190531035348.7194-3-elder@linaro.org>
 <CAL_JsqLFk3=YN+V=RVxq9xWQTrPA9_0zW+eFrdXkGkCnM_sBkA@mail.gmail.com>
From: Alex Elder <elder@ieee.org>
Message-ID: <bcb7f599-3c22-da27-c92b-4c1903a5ea06@ieee.org>
Date: Mon, 10 Jun 2019 21:11:38 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqLFk3=YN+V=RVxq9xWQTrPA9_0zW+eFrdXkGkCnM_sBkA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_191146_044225_F051E1A1 
X-CRM114-Status: GOOD (  15.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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

On 6/10/19 5:08 PM, Rob Herring wrote:
> On Thu, May 30, 2019 at 9:53 PM Alex Elder <elder@linaro.org> wrote:
>>
>> Add the binding definitions for the "qcom,ipa" device tree node.
>>
>> Signed-off-by: Alex Elder <elder@linaro.org>
>> ---
>>  .../devicetree/bindings/net/qcom,ipa.yaml     | 180 ++++++++++++++++++
>>  1 file changed, 180 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/net/qcom,ipa.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/net/qcom,ipa.yaml b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
>> new file mode 100644
>> index 000000000000..0037fc278a61
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
>> @@ -0,0 +1,180 @@
>> +# SPDX-License-Identifier: GPL-2.0
> 
> New bindings are preferred to be dual GPL-2.0 and BSD-2-Clause. But
> that's really a decision for the submitter.

Thanks Rob.  I'll ask Qualcomm if there's any problem
with doing that; I presume not.  If I re-submit this
with dual copyright, I will include your Reviewed-by
despite the change, OK?

					-Alex

> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
