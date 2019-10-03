Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82CEAC98FE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 09:27:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZAG9benarXkKPkvXRiCRhxgGVmFDsyz592CLCY6H07g=; b=DXlIM7FmG2wLXJ
	Grm75HwRkLfBuq2RfEXBW/QijWaDPw5BSlv9WJgxfoIhDRVlKxOo5qoDKtoiCKhk71PakcYRt5i2X
	OGTfSfS9caHCqQYWiGrAxHDpAtoJPRbB3GP/XryDGjZ0ma37ceLaEQF/2N4Zm9hqg7IjQLFpaVXIt
	x6maEPScjvKNXzd0dQ72aVsZ5BlkaHoN7NQNePa6A2RbaZuoSNSdLGYgY5XxxHWQwE/ZaAqSP+yBc
	2LjJsu2OHMlXBE1rvH4eDrCeM9/9qdBdhvHFMN5gLj1YiUBxD4Lhb1FzckU3ox0vNbBj0s8B4/Ejt
	U9lsiVk1XLpNXYlqF8Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFvW0-0004TZ-RC; Thu, 03 Oct 2019 07:27:08 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFvVs-0004Sl-W4
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 07:27:02 +0000
Received: by mail-pf1-x442.google.com with SMTP id y22so1166860pfr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 00:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:user-agent:in-reply-to:references:mime-version
 :content-transfer-encoding:subject:to:cc:from:message-id;
 bh=IVr7iCQ0cHeNyNwPRuU5jCxRdkEqJuzZ+TVTYQ7Mnp4=;
 b=KJOoeEVbMXRr2W1fgcNTlyDaex0VQ3Ba2U2xe2RMUPXgiwzZU02fevNV0NSR5ZnC1K
 sjB4AJxqFFvCEPCJhEI6BooZ5yl6/Q6EvhMyblDp4qmbFuNAKMuzllOpMhooEGzHMssh
 Ur0d98VTS+WXGooohEQRDLI88ewpGWZSDH6bX9i7v/WSolJkadOHFEF1p7X59TE4DYmz
 Ec6yRLbsnCRXuRC+avSoRUlcDpzIWO8LM5Q7EV6ppA/dXZiCeLeYYxP0q6ZBNK6OjFIn
 iYE0KOBw3k4jHM8PgDAT+lARJhCsSYN8VyDEiOP7eL8Q/SCn+UhsNp6VeGbeYrCsXrbN
 VICQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:user-agent:in-reply-to:references
 :mime-version:content-transfer-encoding:subject:to:cc:from
 :message-id;
 bh=IVr7iCQ0cHeNyNwPRuU5jCxRdkEqJuzZ+TVTYQ7Mnp4=;
 b=H9iUpoxvy7lgYijEdeiP69VVsBTDF8cmnKJyw184LwbP/fWCLpisjB2aK8/seircbe
 vxS/1P4lLMXT9rxRxq746SOeW/8qOZWhBpV+7SrwP9kPsAVag+jt4F1bzgvzXCRVpQw4
 1yBYy8rmhYGVQ7pSSk0/+xcmvk0uRjpOJi1jw52gJj1lqNNiHtYwjgtrkAOrbkoX9DzW
 MVPgzDirFnBd6UPBJEn6jLuT5MVoZTikCOu/8DWMcNXzgE3zHPfiaGSnUQUby3lJU1q9
 pB/mF2RoswjehgpBAhrJvBK4iVUZTUHcHw0LajERV+g+mqaP0FaVcrBqP/S6VLKnAruL
 HCSQ==
X-Gm-Message-State: APjAAAUZpliT8kiPhlD1O9uOELPDAss6tN1lptNQSehqjYi+no6FopYg
 L1jef7EzpzLtfvdvXoYU+rLs
X-Google-Smtp-Source: APXvYqybPBUNXzjIAvdhsZUlz4yV8jJBXb+GFM9eK9pzjSoe7b60QfMcTAatnjNLj9/2jmJS/axrCw==
X-Received: by 2002:a63:fe56:: with SMTP id x22mr5720985pgj.423.1570087618720; 
 Thu, 03 Oct 2019 00:26:58 -0700 (PDT)
Received: from ?IPv6:2405:204:7341:7bd7:48be:62db:2019:7e4d?
 ([2405:204:7341:7bd7:48be:62db:2019:7e4d])
 by smtp.gmail.com with ESMTPSA id e9sm1377846pgs.86.2019.10.03.00.26.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 03 Oct 2019 00:26:58 -0700 (PDT)
Date: Thu, 03 Oct 2019 12:56:48 +0530
User-Agent: K-9 Mail for Android
In-Reply-To: <20191003071646.GZ896@valkosipuli.retiisi.org.uk>
References: <20190830091943.22646-1-manivannan.sadhasivam@linaro.org>
 <20190830091943.22646-3-manivannan.sadhasivam@linaro.org>
 <20190923092209.GL5525@valkosipuli.retiisi.org.uk>
 <20191001184200.GA7739@Mani-XPS-13-9360>
 <20191002103715.GR896@valkosipuli.retiisi.org.uk>
 <20191003053338.GA7868@Mani-XPS-13-9360>
 <20191003071646.GZ896@valkosipuli.retiisi.org.uk>
MIME-Version: 1.0
Subject: Re: [PATCH v3 2/3] media: i2c: Add IMX290 CMOS image sensor driver
To: Sakari Ailus <sakari.ailus@iki.fi>
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Message-ID: <3FAB5E91-9FD2-4052-881B-E4B18D44D33B@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_002701_037430_9DEB1C8B 
X-CRM114-Status: GOOD (  24.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, robh+dt@kernel.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sakari, 

On 3 October 2019 12:46:46 PM IST, Sakari Ailus <sakari.ailus@iki.fi> wrote:
>Hi Manivannan,
>
>On Thu, Oct 03, 2019 at 11:03:38AM +0530, Manivannan Sadhasivam wrote:
>....
>> > > > > +static int imx290_set_gain(struct imx290 *imx290, u32 value)
>> > > > > +{
>> > > > > +	int ret;
>> > > > > +
>> > > > > +	u32 adjusted_value = (value * 10) / 3;
>> > > > 
>> > > > What's the purpose of this? Why not to use the value directly?
>> > > > 
>> > > 
>> > > The gain register accepts the value 10/3 of the actual gain
>required. Hence,
>> > > we need to manually do the calculation before updating the value.
>I can
>> > > add a comment here to clarify.
>> > 
>> > It's better to use the register value directly. Otherwise the
>granularity
>> > won't be available to the user space.
>> > 
>> 
>> The sensor datasheet clearly defines that the 10/3'rd of the expected
>gain
>> should be set to this register. So, IMO we should be setting the
>value as
>
>The unit of that gain is decibels, but the controls do not have a unit.
>Register value is really preferred here.
>

Hmm, okay. Will just pass the value directly. 

>> mentioned in the datasheet. I agree that we are missing the userspace
>> granularity here but sticking to the device limitation shouldn't be a
>problem.
>> As I said, I'll add a comment here to clarify.
>
>The comment isn't visible in the uAPI.
>

Yes. It would be good to have the units passed onto the userspace somehow like it is done in IIO. Then we don't need to fiddle in the driver for mismatch. Something consider in future... 

>> 
>> > > 
>> > > > > +
>> > > > > +	ret = imx290_write_buffered_reg(imx290, IMX290_GAIN, 1,
>adjusted_value);
>> > > > > +	if (ret)
>> > > > > +		dev_err(imx290->dev, "Unable to write gain\n");
>> > > > > +
>> > > > > +	return ret;
>> > > > > +}
>> > > > > +
>> > > > > +static int imx290_set_power_on(struct imx290 *imx290)
>> > > > > +{
>> > > > > +	int ret;
>> > > > > +
>> > > > > +	ret = clk_prepare_enable(imx290->xclk);
>> > > > 
>> > > > Please move the code from this function to the runtime PM
>runtime suspend
>> > > > callback. The same for imx290_set_power_off().
>> > > > 
>> > > 
>> > > May I know why? I think since this is being used only once,
>you're suggesting
>> > > to move to the callback function itself but please see the
>comment below. I
>> > > will reuse this function to power on the device during probe.
>> > 
>> > Yes, you can call the same function from probe, even if it's used
>as a
>> > runtime PM callback.
>> > 
>> > There's no need to have a function that acts as a wrapper for
>calling it
>> > with a different type of an argument.
>> > 
>> 
>> You mean directly calling imx290_runtime_resume() from probe is fine?
>
>Yes. Feel free to call it e.g. imx290_power_on or something.

Okay. 

Thanks, 
Mani

-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
