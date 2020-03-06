Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5392C17BBC5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 12:36:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0fzeMUBWEP28QMLgO+xnPe60EKLKNUxbV+JMkav0M0I=; b=ZJmfGJuNkYn9KvAl8UhyJ91wl
	JZl+P43mpEGLDp4AQOCH26abWXFB4TQOQGIPlpQzO3HJBhoJl6nifrNA+86D5VzdqjVkjt4KEM4Ab
	uj6tSR+W2cPXmAWT0XC57S0g1kGgzaMzabzTppWqE1DFO3tCqyOmTSBU621C+xLMcPC+i7y9DGbhn
	3MhRIvc2PzmpRfbfSo+q5GkKQ8tWF017jWyMjgwfTK6vT/gt7n0o4kX+qQQLPzjoBab7E7qnhP1o5
	BbVML11N6MwSSal3Z/VyLRbe/KUKZn4+mhrScmXKoBUdFRVzKYhUY2BCHZSlfwBTTRTT3Gw+3yNMs
	7lrd6FtGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jABGk-0002DB-8g; Fri, 06 Mar 2020 11:35:54 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jABGc-0002Bu-1M
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 11:35:47 +0000
Received: by mail-wm1-x342.google.com with SMTP id 6so2003611wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 03:35:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=YwwwLNX1CXOU0ZBHV3s8PDBeUJoPf7oJHgRV74rJjRQ=;
 b=Jrlh2wICT5K5yhllPkFqI8nn/DvghAuGDmSj+88Z7Aa6urAm3LbbNc/+hMQVmZXSPS
 NxxHP1UeQBTlypxj4gSDNgNYdU39JFSR8U6JxfipijIKpaJsLQbG1MKHgCc7y0sqx3bB
 ivpXtFammEqcKh/d/KN/KiBgMsF0zt7Hs7pZu/2UptrxuvgQ0HR0dNk+us1H6BF/93OR
 Kog68o3hYLqFv2Fy3wC31opvE/I6zPa0qT/SOSG0DXNPBXET7I+ZnM6IJ1tKXPpRl4Io
 chyzuPo5DTHb5li2ynkuf5GKs8dPb8PruzQbgJ1Tcokg9m0fKSFGXYBjefuKqgyG1A+y
 vmYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YwwwLNX1CXOU0ZBHV3s8PDBeUJoPf7oJHgRV74rJjRQ=;
 b=uCNXwFcXBLh8ldQs3YyZLb8olK7up2yEbp+fMC0AS24Cb4vQiYk9E8Q4glOegPVwMX
 J1xOi3mO6+6aJ3PaqPefXhdTtm4ZQ5tIvoZaG6WA+XeewLPOEWQmuJvYpgE+uAgDA7GM
 pkw/VFlyF/17KhZAttyyw+L/nC59J3SLk5XXHFsc3j3ufIWyMG6GnNZUBDwgpyWYGnty
 P31DSYYyGCw0dnEn1OWCGiE1w1qGrA3KkbtR30PtBX64eeIrd6+S+DvJOppfSRubyYKv
 NOhF+puow2YqMsxZjbtYvl6zLt0zRIJSJqhPV2tt8dazPBp2jObl0oHjv5qTPUBopLc6
 trMA==
X-Gm-Message-State: ANhLgQ2bpYVZd1nITrJ8izDPS1F+ckvPxNZ9Kv+WLTvHHQmZB0ZSlTNc
 XLpnCr71Owi4lQJQ+ZBbGYTstw==
X-Google-Smtp-Source: ADFU+vtajALTunRI9+k7Dx/6W5obCkqH7zM/5zlzYGwA7WqVEvNK3wjhMdZ71xpQPhSmqHFk3unyug==
X-Received: by 2002:a1c:c2c5:: with SMTP id s188mr3535597wmf.162.1583494544504; 
 Fri, 06 Mar 2020 03:35:44 -0800 (PST)
Received: from ?IPv6:2a00:1098:3142:14:3ca7:8f7d:279:5ab9?
 ([2a00:1098:3142:14:3ca7:8f7d:279:5ab9])
 by smtp.gmail.com with ESMTPSA id u11sm600875wrb.10.2020.03.06.03.35.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Mar 2020 03:35:44 -0800 (PST)
Subject: Re: [PATCH 10/10] ARM: dts: bcm2711: Add vmmc regulator in emmc2
To: Stefan Wahren <stefan.wahren@i2se.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, devicetree@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-mmc@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>
References: <20200306103857.23962-1-nsaenzjulienne@suse.de>
 <20200306103857.23962-11-nsaenzjulienne@suse.de>
 <408aa93f-b5c8-c4b3-384b-c8d018a8d549@i2se.com>
From: Phil Elwell <phil@raspberrypi.com>
Message-ID: <714c41ef-85ea-da2b-1701-9132703a832c@raspberrypi.com>
Date: Fri, 6 Mar 2020 11:35:43 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <408aa93f-b5c8-c4b3-384b-c8d018a8d549@i2se.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_033546_122831_7C04C40D 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: ulf.hansson@linaro.org, f.fainelli@gmail.com, phil@raspberrypi.org,
 adrian.hunter@intel.com, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Nicolas, Stefan,

On 06/03/2020 11:07, Stefan Wahren wrote:
> Hi Nicolas,
> 
> On 06.03.20 11:38, Nicolas Saenz Julienne wrote:
>> The SD card power can be controlled trough a pin routed into the board's
>> external GPIO expander. Turn that into a regulator and provide it to
>> emmc2.
>>
>> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>> ---
>>   arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 11 +++++++++++
>>   1 file changed, 11 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
>> index e26ea9006378..8e98e917f9f4 100644
>> --- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
>> +++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
>> @@ -56,6 +56,16 @@ sd_io_1v8_reg: sd_io_1v8_reg {
>>   			  3300000 0x0>;
>>   		status = "okay";
>>   	};
>> +
>> +	sd_vcc_reg: sd_vcc_reg {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vcc-sd";
>> +		regulator-min-microvolt = <3300000>;
>> +		regulator-max-microvolt = <3300000>;
>> +		regulator-boot-on;
>> +		enable-active-high;
>> +		gpio = <&expgpio 6 GPIO_ACTIVE_HIGH>;
> this new GPIO has an empty GPIO label, please add it.

The correct name would be "SD_PWR_ON".

>> +	};
>>   };
>>   
>>   &firmware {
>> @@ -174,6 +184,7 @@ brcmf: wifi@1 {
>>   /* EMMC2 is used to drive the SD card */
>>   &emmc2 {
>>   	vqmmc-supply = <&sd_io_1v8_reg>;
>> +	vmmc-supply = <&sd_vcc_reg>;
>>   	broken-cd;
>>   	status = "okay";
>>   };

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
