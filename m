Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF92B11828
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 13:31:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dI+y6bpAwaloBNZ80gdQNF6NuGD0nzNdvbgFQn/NKDA=; b=LQYNrjJMMG8P2z
	ZqaN8ykBhPDtt5nXXdQzIu9eGOHC0EVPf5vc77B+ErNB9hDYD5/fRu0uvrXocmR1fHW9cwy+EFNZn
	LiaWgVs89S4VDul8qfOrowtgC9M594Ooomk6FVLfZREudUHDozE4T5+S6OgqDWqBxS/bllU1mO6dp
	OW9FkGzL8iBMANsfNnTzqmsh3NnvRvpb6q39zNB5N8ALU6f/FHsTVqHieHYoerpMMdurJBrs72VIK
	BPw1Trq5W/NwA54zGTmE8eJARBjP+KsGwx08hi9KjSGgAhY5ukbXAC7VFSGAH2s4H7tziKl8owWUj
	+IY+fGuwZhJEIEwRd/2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM9vW-0002cY-Fr; Thu, 02 May 2019 11:30:58 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM9vQ-0002cB-60
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 11:30:53 +0000
Received: by mail-wr1-x442.google.com with SMTP id h4so2832069wre.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 04:30:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=DXweF0jQ0QB/k/rGJN+kfbonyACUsE7waASKG6bvRoQ=;
 b=bbEOY3UBWHA9nrQiL1gJZ2/gGVMCmQ6IF+6rrt9NByakcOnI7qfP0GyEywuponu8xB
 Dv2Bb3Jc64sYLe+fXZr2qbenmUgi8hnFHldZqseiduLJ2q/YlmgBNbXjTURjAkHNn3Ou
 pa1yF34FYttPcROYRQITT0SEDMbW+CZAzXOI/p89sIqxq5rKvuW+VXXOxJ66KwyR+Qn+
 M1ynLwYzCUjoYIHrm2VcbjzjSyM1NRBx8z49mmDG7tTys2sFTZL1nL8QX5xPGWDR427+
 uq5L3RbwTSfeZVFJ9fWZOpBY7qyLSOJIVHGVM7VPRC0Z7yd1BZH8a9qefylcyFkJST8K
 KBVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DXweF0jQ0QB/k/rGJN+kfbonyACUsE7waASKG6bvRoQ=;
 b=er1/N35BO5rlwif60C16C+YnQNyoi4WfLUX5DMpGOBbhvxE/4LS38vLctGUnqTlj51
 dLoQOCM5m8R853DIN3MizloeSVwDbKSnntr4f/vgIot4LoBxNwRi//tCu2dHrK9kosZg
 h+a1nFl4CfY3bwhnC2chfhGweYe/5O4pby15b20e6N0//FTw1TEpQ5UKO9Q2rcdMyPCW
 Vsv2nGkEHfT5N91RbaGbylgaTAaG2q30OlmjG3sQ1pJImzDML+jCWsuOd5rsNS/S8D43
 SNPoyt5kmaAsdBYfmefiS4MjkN9nPvm54An2br4l7DjfIBlzYm6b6stN78iWDJYMj7Dz
 jAww==
X-Gm-Message-State: APjAAAWhEWz3iGLyGsc61osc4zlwkKzIwtliivvEK+LJgn2I2ArLfUzE
 k32v0691FK7E00VL4dtGzSuE3A==
X-Google-Smtp-Source: APXvYqxu8aql4ZZQg5YXmNj8g7st+xGNdi3S5rbgFkkYK/EFDweHigpikBPQV/f0CEJTqIh4taQtQA==
X-Received: by 2002:adf:c748:: with SMTP id b8mr2404630wrh.292.1556796650078; 
 Thu, 02 May 2019 04:30:50 -0700 (PDT)
Received: from [192.168.1.2] (200.red-83-34-200.dynamicip.rima-tde.net.
 [83.34.200.200])
 by smtp.gmail.com with ESMTPSA id k16sm844785wrd.17.2019.05.02.04.30.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 04:30:49 -0700 (PDT)
Subject: Re: [PATCH 2/3] drivers: regulator: qcom: add PMS405 SPMI regulator
To: Mark Brown <broonie@kernel.org>
References: <a3c281d5-d30e-294f-71ab-957decde2ba0@linaro.org>
 <20190502023316.GS14916@sirena.org.uk>
From: Jorge Ramirez <jorge.ramirez-ortiz@linaro.org>
Message-ID: <dd15d784-f2a1-78c6-3543-69bbcc1143c4@linaro.org>
Date: Thu, 2 May 2019 13:30:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20190502023316.GS14916@sirena.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_043052_280653_15911323 
X-CRM114-Status: GOOD (  25.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On 5/2/19 04:33, Mark Brown wrote:
> On Mon, Apr 29, 2019 at 02:31:55PM +0200, Jorge Ramirez wrote:
>> On 4/27/19 20:21, Mark Brown wrote:
> 
>>> Since the point of this change is AFAICT that this regulator only has a
>>> single linear range it seems like it should just be able to use the
>>> existing generic functions shouldn't it?  
> 
>> yes that would have been ideal but it does not seem to be the case for
>> this hardware.
> 
>> The register that stores the voltage range for all other SPMI regulators
>> (SPMI_COMMON_REG_VOLTAGE_RANGE 0x40) is used by something else in the
>> HFS430: SPMI_HFS430_REG_VOLTAGE_LB 0x40 stores the voltage level in two
>> bytes 0x40 and 0x41;
> 
>> This overlap really what is creating the pain: HFS430 cant use 0x40 to
>> store the range (even if it is only one)
> 
>> so yeah, most of the changes in the patch are working around this fact.
> 
> I'm not sure I follow here, sorry - I can see that the driver needs a
> custom get/set selector operation but shouldn't it be able to use the
> standard list and map operations for linear ranges?

I agree it should, but unfortunately that is not the case; when I first
posted the patch I was concerned that for a regulator to be supported by
this driver it should obey to the driver's internals (ie: comply with
all of the spmi_common_regulator_registers definitions).

However, since there was just a single range to support, the
modifications I had to do to support this SPMI regulator were minimal -
hence why I opted for the changes under discussion instead of writing a
new driver (which IMO it is an overkill).

what do you think?

> 
>>
>> enum spmi_common_regulator_registers {
>> 	SPMI_COMMON_REG_DIG_MAJOR_REV		= 0x01,
>> 	SPMI_COMMON_REG_TYPE			= 0x04,
>> 	SPMI_COMMON_REG_SUBTYPE			= 0x05,
>> 	SPMI_COMMON_REG_VOLTAGE_RANGE		= 0x40, ******
>> 	SPMI_COMMON_REG_VOLTAGE_SET		= 0x41,
>> 	SPMI_COMMON_REG_MODE			= 0x45,
>> 	SPMI_COMMON_REG_ENABLE			= 0x46,
>> 	SPMI_COMMON_REG_PULL_DOWN		= 0x48,
>> 	SPMI_COMMON_REG_SOFT_START		= 0x4c,
>> 	SPMI_COMMON_REG_STEP_CTRL		= 0x61,
>> };
>>
>> enum spmi_hfs430_registers {
>> 	SPMI_HFS430_REG_VOLTAGE_LB		= 0x40, *******
>> 	SPMI_HFS430_REG_VOLTAGE_VALID_LB	= 0x42,

ah, this definition I can remove and use the common one above. I'll do that.
>> 	SPMI_HFS430_REG_MODE			= 0x45,


>> };
>>
>> It just needs it's own
>>> set/get_voltage_sel() operations.  As far as I can see the main thing
>>> the driver is doing with the custom stuff is handling the fact that
>>> there's multiple ranges but that's not an issue for this regulator.
>>> It's possible I'm missing something there but that was the main thing
>>> (and we do have some generic support for multiple linear ranges in the
>>> helper code already, can't remember why this driver isn't using that -
>>> the ranges overlap IIRC?).
>>>
>>> TBH looking at the uses of find_range() I'm not sure they're 100%
>>> sensible as they are - the existing _time_sel() is assuming we only need
>>> to work out the ramp time between voltages in the same range which is
>>> going to have trouble.
>>>
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
