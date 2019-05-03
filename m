Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D34129EA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 10:30:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8rwog2SSfLW+QqafUEqFUc1RojRqp3X2lPLCcVDsHgM=; b=eW0sOaXSjDkRgw
	/qcRNVnLlCGJukTY6Fo1tQpj+GIv6wJq4WoKohQ60irh0zMME3I53XGKfPWer0n6pRYJRHLiA9XXl
	R0AIVelQPmnQBq+b/uFN6jlFldRV/dzatfDFoD78izq6k+JwEcTf2CRDWb8Hnjgj/8mvGbAENbF+k
	sBTplccodMBpkd0gQXfajRZ4tOz9dRMKAN8VdTAzdcYpEUyRnsA9kJTrwhM3NoZEbE0i6OveDxh9v
	V2MmJuGMe+gre8c9u0skifXAsNXn2KY2SeNPbKaeEPyL9lhn8izYiw07eQA47Kv5Gn5vwQfu7y9eF
	l6CqOTr6YXkcIWCguYig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMTZw-0005u2-Pf; Fri, 03 May 2019 08:30:00 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMTZn-0005sg-Sz
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 08:29:53 +0000
Received: by mail-wm1-x344.google.com with SMTP id h11so5645264wmb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 01:29:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=9BWo4wrOMB7S6ZNUaQSd5jSdL7ORd90HoRUjKXASCiQ=;
 b=HHKoFlguUqMrYs86X0mAjpTHbiYUGjBZBnQY2FzIfEE8KKRzBWHZ8eb57oRe4+Bfp8
 yFXtFxpH7T9X0bXnNj6+VYMnbGFBJ+4kxQmuf9ONuGaS/9yK2/vEzUQPPu8dYC21rhr4
 jdAvNAqaDu5WTi2WjZnyXaDS1H1aQ40jn8LY/rfrD27yN2DWrmsUSaTOXMeE6ioKxmtr
 S4WT3GtCL6xcU7/RgBWqRVN/VdlcdySBgBvnKbzSEIY7pyPXuHbjlgWdX627m1slu3ma
 7GZaoBTOsBUMqkvmPxY/XA93MIZHMWOviSdD8ui/CJX7qRwAudIKteETxeZxnLVntxmo
 26eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9BWo4wrOMB7S6ZNUaQSd5jSdL7ORd90HoRUjKXASCiQ=;
 b=uJ9F6okdEm8HFvQfdMvl9H/y4b46RHARwEVfMdHk2oDjU0YoEcQ5kVUDHoQvCcQm0I
 B8g2BPBWV7S5PmCBRjlZFrhCbbU8XJlsvwHSLwNeBX39webfeGHGXL3+nXGU385hRcf/
 tiyTZEMgMKAhLx9ZnFf36dZsbmeU3hj8wCIZwJ+eosVwkjvaIFmUuJTP9s73IHI4mrBh
 ajMKUQRBgF2W08NFXFhPc81LgGb1V0dMBo2EQlGK/f5Pv8Wx9glm0ffM9UGRLfwk1wzk
 NA7O7yqMtwoQ0td3Qvt+/WLsjVOrzrq1T/IcqjEbQcbJezDqwW3dAAbEhUMH5P8gODhQ
 yq2A==
X-Gm-Message-State: APjAAAX4RMFx9HXjmgtfAhfAh/PyBvo4zPCAXv/uxo6UEDzfEK3cgagY
 ExyP7m1QZnu5tpLt2HszhEdEFg==
X-Google-Smtp-Source: APXvYqyVCwBwURKCdJNbafReM5dEKW0CL0LzHWCrcu7tg33cbbP2AxeFXU3xXgXEccvg/l0jXNBytw==
X-Received: by 2002:a1c:ce:: with SMTP id 197mr5168760wma.105.1556872184621;
 Fri, 03 May 2019 01:29:44 -0700 (PDT)
Received: from [192.168.1.2] (200.red-83-34-200.dynamicip.rima-tde.net.
 [83.34.200.200])
 by smtp.gmail.com with ESMTPSA id n4sm1714792wmk.24.2019.05.03.01.29.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 01:29:43 -0700 (PDT)
Subject: Re: [PATCH 2/3] drivers: regulator: qcom: add PMS405 SPMI regulator
To: Mark Brown <broonie@kernel.org>
References: <a3c281d5-d30e-294f-71ab-957decde2ba0@linaro.org>
 <20190502023316.GS14916@sirena.org.uk>
 <dd15d784-f2a1-78c6-3543-69bbcc1143c4@linaro.org>
 <20190503062626.GE14916@sirena.org.uk>
From: Jorge Ramirez <jorge.ramirez-ortiz@linaro.org>
Message-ID: <229823c4-f5d4-4821-ded1-cc046dd0bd20@linaro.org>
Date: Fri, 3 May 2019 10:29:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20190503062626.GE14916@sirena.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_012951_939533_6E5AEB63 
X-CRM114-Status: GOOD (  24.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, vinod.koul@linaro.org,
 linux-kernel@vger.kernel.org, khasim.mohammed@linaro.org, lgirdwood@gmail.com,
 bjorn.andersson@linaro.org, robh+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 niklas.cassel@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/3/19 08:26, Mark Brown wrote:
> On Thu, May 02, 2019 at 01:30:48PM +0200, Jorge Ramirez wrote:
>> On 5/2/19 04:33, Mark Brown wrote:
> 
>>> I'm not sure I follow here, sorry - I can see that the driver needs a
>>> custom get/set selector operation but shouldn't it be able to use the
>>> standard list and map operations for linear ranges?
> 
>> I agree it should, but unfortunately that is not the case; when I first
>> posted the patch I was concerned that for a regulator to be supported by
>> this driver it should obey to the driver's internals (ie: comply with
>> all of the spmi_common_regulator_registers definitions).
> 
> That's not a requirement that I'd particularly expect - it's not unusual
> for devices to have multiple different styles of regulators in a single
> chip (eg, DCDCs often have quite different register maps to LDOs).
> 
>> However, since there was just a single range to support, the
>> modifications I had to do to support this SPMI regulator were minimal -
>> hence why I opted for the changes under discussion instead of writing a
>> new driver (which IMO it is an overkill).
> 
>> what do you think?
> 
> It seems a bit of a jump to add a new driver - it's just another
> descriptor and ops structure isn't it?  Though as ever with the Qualcomm
> stuff this driver is pretty baroque which doesn't entirely help though I
> think it's just another regulator type which there's already some
> handling for.
> 

So how do we move this forward?

To sum up his regulator needs to be able to bypass accesses to
SPMI_COMMON_REG_VOLTAGE_RANGE and provide the range in some other way
hence the change below

I can't find a simpler solution than this since the function does now
what is supposed to do for all the regulator types supported in the driver

 @@ -653,6 +708,10 @@ spmi_regulator_find_range(struct spmi_regulator *vreg)
  	range = vreg->set_points->range;
  	end = range + vreg->set_points->count;

 +	/* we know we only have one range for this type */
 +	if (vreg->logical_type == SPMI_REGULATOR_LOGICAL_TYPE_HFS430)
 +		return range;
 +
  	spmi_vreg_read(vreg, SPMI_COMMON_REG_VOLTAGE_RANGE, &range_sel, 1);

  	for (; range < end; range++)




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
