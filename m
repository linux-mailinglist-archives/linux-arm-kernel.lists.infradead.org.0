Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2FAA9B92
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 09:19:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y25QGN1r+Ar/C04oQiUoRIl8zmSxFvhi2UnETTgBgxc=; b=BgGjaKCMkUB3/7
	3zpkZpxMPMyTEQGFFc3ySxDKOe1pcL9wELQmwn3vD80p6/Y6Vxes3qXs4yFtfq7pHEd3aTdjF9eUd
	8aGRPUzn6a2DAWnIYnlc8fL0kxCHN7vLVkn5f29YBkWWYuMfd816aupf2I0FEs1Gl/e3QEU8Q+ERs
	DhGCbfGH3pwWRpSzt3nvZUFk1tXMfxt7pjNK8GKGyw2+uQRhpXApSSHSblu51aFGptQBDyMmS65ti
	hfr9Ulu6FP3xSEBH+BrCjyGiZwOaRIVDKAil1PIiescimbinvcwnYVM+wAgZ1L5DErDzpPvOP/C5n
	yk3IccoMM4urxA9YCcDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5m38-0008Rt-7V; Thu, 05 Sep 2019 07:19:22 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5m2p-0008RA-Da
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 07:19:05 +0000
Received: by mail-wm1-x342.google.com with SMTP id n10so1529637wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 00:19:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=RISrkcVh8Fqvuvvt7yP9o+S9VLGHZzFUmgTqhMvQtG4=;
 b=w7Zmcb2XHj5Ual1LSZm+t0kJNSCVahdatsM8lQ8zM5/0XphUQGigOEZRdvZliz5F7j
 dTOzp1F2X1FK+JJ8JkIDl6QVq2bfU7DCzXQszMmKfo7XBWdMk4nmgxs4gMRkxLdF5r2j
 VbRnn9mzydneTR+bIb6Px14j6S4wj6+m1JsP8Vn655oOOERrxdJKjkeSzRLlSfrQlH/Y
 OlHS0j8ol1x3MVPU8IRwkf3nBWfWajGfxubTqgnUgkK25Lcr0aim/Sgtox3Z4X29O1ii
 RpppqP6TLKmH1q+INQmghSvW23w8gQQixjJ8ULuOFaTTQEWt7VCPeWNuquvj7ezWjCu7
 RyQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RISrkcVh8Fqvuvvt7yP9o+S9VLGHZzFUmgTqhMvQtG4=;
 b=Vn7HwxiGl5C0c31uxEit5hmJEIrZGfiMfiKYj7ofcbbK3UUVvDnb4aJwKhbXEkpw6f
 IM+UEBHKBZwKA83qMtTXX+M0T/S9j9m+QMBep+Nl6IdkaAbsHaeXg4XJP2A2BiF9zm9V
 QMRJq/bq2B2jycUATOzkWZgN/Aur+KHZFMVkSVVloR/tBiAoD6cm+nzCw2RjbfaxggGG
 E48GZtS4aQ2Uc9YXUi+sEEsoIo4Gyx/skyM4sYA4cjv799oww3WHEmEGdW5maJzshwan
 xB2BfcC90vPqZj1WShIr7+KvQ59TKdYQY6taZT8dKaPum2HvIXqNSbw+p6jSVh6Ats95
 LFxA==
X-Gm-Message-State: APjAAAVtWi0MDR1mm5xxTAEORAxXWHWvzYMgdJJVVi/Ir6g1WkPpM+iA
 aXpxRLe06smfTPJ07wRkx+IQAQ==
X-Google-Smtp-Source: APXvYqwb3qPb+oOBBzHjG4sQtkXniSl2iyH54hj1GZDHlTP9lhKhJx6lcOSlYOQbGhBanmLEg10BaA==
X-Received: by 2002:a7b:cf25:: with SMTP id m5mr1591920wmg.25.1567667939170;
 Thu, 05 Sep 2019 00:18:59 -0700 (PDT)
Received: from [192.168.1.6] (124.red-83-36-179.dynamicip.rima-tde.net.
 [83.36.179.124])
 by smtp.gmail.com with ESMTPSA id b194sm1755057wmg.46.2019.09.05.00.18.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Sep 2019 00:18:58 -0700 (PDT)
Subject: Re: [PATCH v4 3/4] dt-bindings: Add Qualcomm USB SuperSpeed PHY
 bindings
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Stephen Boyd <swboyd@chromium.org>
References: <20190207111734.24171-1-jorge.ramirez-ortiz@linaro.org>
 <20190207111734.24171-4-jorge.ramirez-ortiz@linaro.org>
 <20190223165218.GB572@tuxbook-pro>
 <6dc0957d-5806-7643-4454-966015865d38@linaro.org>
 <5d694878.1c69fb81.5f13b.ec4f@mx.google.com>
 <20190830164520.GK26807@tuxbook-pro>
 <5d696ad2.1c69fb81.977ea.39e5@mx.google.com>
 <f3584f38-dabc-7e7a-d1cb-84c80ed26215@linaro.org>
 <20190903173924.GB9754@jackp-linux.qualcomm.com>
 <5d6edee5.1c69fb81.a3896.1d05@mx.google.com>
 <20190903233410.GQ26807@tuxbook-pro>
From: Jorge Ramirez <jorge.ramirez-ortiz@linaro.org>
Message-ID: <c9481b7d-4805-25c6-f40f-9cbfc40afc93@linaro.org>
Date: Thu, 5 Sep 2019 09:18:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190903233410.GQ26807@tuxbook-pro>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_001903_526249_E29D8A1A 
X-CRM114-Status: GOOD (  29.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, robh@kernel.org, Jack Pham <jackp@codeaurora.org>,
 devicetree@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, khasim.mohammed@linaro.org,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-arm-msm@vger.kernel.org,
 andy.gross@linaro.org, shawn.guo@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/4/19 01:34, Bjorn Andersson wrote:
> On Tue 03 Sep 14:45 PDT 2019, Stephen Boyd wrote:
> 
>> Quoting Jack Pham (2019-09-03 10:39:24)
>>> On Mon, Sep 02, 2019 at 08:23:04AM +0200, Jorge Ramirez wrote:
>>>> On 8/30/19 20:28, Stephen Boyd wrote:
>>>>> Quoting Bjorn Andersson (2019-08-30 09:45:20)
>>>>>> On Fri 30 Aug 09:01 PDT 2019, Stephen Boyd wrote:
>>>>>>
>>>>>>>>>
>>>>>>>>> The USB-C connector is attached both to the HS and SS PHYs, so I think
>>>>>>>>> you should represent this external to this node and use of_graph to
>>>>>>>>> query it.
>>>>>>>>
>>>>>>>> but AFAICS we wont be able to retrieve the vbux-supply from an external
>>>>>>>> node (that interface does not exist).
>>>>>>>>
>>>>>>>> rob, do you have a suggestion?
>>>>>>>
>>>>>>> Shouldn't the vbus supply be in the phy? Or is this a situation where
>>>>>>> the phy itself doesn't have the vbus supply going to it because the PMIC
>>>>>>> gets in the way and handles the vbus for the connector by having the SoC
>>>>>>> communicate with the PMIC about when to turn the vbus on and off, etc?
>>>>>>>
>>>>>>
>>>>>> That's correct, the VBUS comes out of the PMIC and goes directly to the
>>>>>> connector.
>>>>>>
>>>>>> The additional complicating factor here is that the connector is wired
>>>>>> to a USB2 phy as well, so we need to wire up detection and vbus control
>>>>>> to both of them - but I think this will be fine, if we can only figure
>>>>>> out a sane way of getting hold of the vbus-supply.
>>>>>>
>>>>>
>>>>> Does it really matter to describe this situation though? Maybe it's
>>>>> simpler to throw the vbus supply into the phy and control it from the
>>>>> phy driver, even if it never really goes there. Or put it into the
>>>>> toplevel usb controller?
>>>>>
>>>> that would work for me - the connector definition seemed a better way to
>>>> explain the connectivity but since we cant retrieve the supply from the
>>>> external node is not of much functional use.
>>>>
>>>> but please let me know how to proceed. shall I add the supply back to
>>>> the phy?
>>
>> So does the vbus actually go to the phy? I thought it never went there
>> and the power for the phy was different (and possibly lower in voltage).
>>
> 
> No, the PHYs use different - lower voltage - supplies to operate. VBUS
> is coming from a 5V supply straight to the connector and plug-detect
> logic (which is passive in this design).
> 
>>>
>>> Putting it in the toplevel usb node makes sense to me, since that's
>>> usually the driver that knows when it's switching into host mode and
>>> needs to turn on VBUS. The dwc3-qcom driver & bindings currently don't 
>>> do this but there's precedent in a couple of the other dwc3 "glues"--see
>>> Documentation/devicetree/bindings/usb/{amlogic\,dwc3,omap-usb}.txt
>>>
>>> One exception is if the PMIC is also USB-PD capable and can do power
>>> role swap, in which case the VBUS control needs to be done by the TCPM,
>>> so that'd be a case where having vbus-supply in the connector node might
>>> make more sense.
>>>
>>
>> The other way is to implement the code to get the vbus supply out of a
>> connector. Then any driver can do the work if it knows it needs to and
>> we don't have to care that the vbus isn't going somewhere. I suppose
>> that would need an of_regulator_get() sort of API that can get the
>> regulator out of there? Or to make the connector into a struct device
>> that can get the regulator out per some generic connector driver and
>> then pass it through to the USB controller when it asks for it. Maybe
>> try to prototype that out?
>>
> 
> The examples given in the DT bindings describes the connector as a child
> of a PMIC, with of_graph somehow tying it to the various inputs. But in
> these examples vbus is handled by implicitly inside the MFD, where
> extcon is informed about the plug event they toggle vbus as well.
> 
> In our case we have a extcon-usb-gpio to detect mode, which per Jorge's
> proposal will trickle down to the PHY and become a regulator calls on
> either some external regulator or more typically one of the chargers in
> the system.
> 
> 
> So if we come up with a struct device for the connector and some API for
> toggling the vbus we're going to have to fairly abstract entities
> representing pretty much the same thing - and in a design with a mux we
> would have a different setup.

I am a bit unclear - not sure if we have gone full circle on this
subject. what is then the direction to get this merged?

I did have look last week and the level of effort to support regulators
on external nodes is not neglectable meaning that I might not have the
time to deliver that feature (perhaps someone else wishes to take over?)

> 
> Regards,
> Bjorn
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
