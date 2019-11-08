Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB334F580C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 21:08:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:Date:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bue2Pt27I8hdAc+FhtiWJNsKiFSjC8mjdPmEneW1vFM=; b=MZjq3izQjIVJ5s/OvZ51AIB+n
	jvZ4ouNBb2yTU3hhTEJ2IEA+9cHSYbGxyWRBR49eB4f2oDP/8PCpsLv4dqz5XMul+VYHyx9E9lTOi
	BY47U7uTUBbBQyFk1vPJsX2HMZBzneY2njQfmRqHsgr3HtkjL8uR+aNupF2YjA0VttNtTw2PWt/Hj
	4Y0ekaeQP0cMu4B1s4PrdZP1KZxJNHB5nSe3VtdYjbNhGxzXBx+IEGPansFBQlGXqyaNIlJPaeTyP
	obsMUCDD7iCEGKr62Tpexf1J6VMtU9xzYGamPiqu5x+107HmJYOYAv/7wCPzxJ8dn1dSkOt+rwrwY
	ErWzySGtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTAYC-0000MG-JB; Fri, 08 Nov 2019 20:08:08 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTAY2-0000Le-5p; Fri, 08 Nov 2019 20:07:59 +0000
Received: by mail-wm1-x344.google.com with SMTP id z26so7379189wmi.4;
 Fri, 08 Nov 2019 12:07:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=gwf03HQCJcAeKeVV6CDOtpVEM+58xqWFoXIO9s1VR2c=;
 b=NhDzQyPS3minpgWDPizoGqVOo5LUY7O8ofGjJhFjcBBc0tuZyxmovgfXtvEDtqm6kt
 mAbUOvYMvXf6r2wubPDvUB5Yy3AuG+0bILmDhgKGK5M2SBO6rwpXTQ7ANTanZxpnp9lY
 shWw618Egw0M0qmXLUzqP+VotL72Rbxwo6IsH2N98Kyn3NkwIvaMArjnlkWRPdhIxNzn
 5oSRjKXnIf9Y/nBgd1/K/sQHSg84VlklYgJ8zAs0ELzIRHZ4z1bHMUutqq9VixeCCrKU
 jlUpsfARXvnewUQy2MH2twYVu5srqi8+rErn3h1EFc/y6nouyas0WjWayb5/VMAHwpDi
 gLdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:date:to:cc:subject:in-reply-to
 :message-id:references:user-agent:mime-version;
 bh=gwf03HQCJcAeKeVV6CDOtpVEM+58xqWFoXIO9s1VR2c=;
 b=UiExlKkMa5z0aq5CRAWsxabrxSEJToR3hXDTWw6JO7R6d5iKiuUcoi9b+d+p89yIhi
 jmAUd1yMz0qjYhHuq0YwO6VidVBqb0cbr2ZsYWAefMcfdDddATTbRgjHYTNtXclaMM0G
 IFwTE4mbQG3IdeDA5l8VGda4TR8FpVPT/btom0TwOOhg+XtjqRz2Ok10QuCxVtyoD9+5
 JLsk81SmBua3OhEd8g9f6wuw84krimnKE3Sr/hfadK38bDaSbbnGL6gcDNA/XXotNqjE
 vedPAqKSrQ/jhMizvck95HNNM0IY9OxDxlPa+mrrzdOL3qMcJxZ1mmCBTOvK2jeN0sgc
 /3EQ==
X-Gm-Message-State: APjAAAUO0EvSMT4U2i1aF2PXpPzxVDMlnDxghf07GkuY65S+PqBgsP3v
 Ai/OfFkx2/G/ZxWgEomuxYc=
X-Google-Smtp-Source: APXvYqwl9KXzZZqdsQGTX5vggm4+Gvse6h9VoWpyn33lsaQWOqOG4teXB3ND+xZvvQYUQa2fmHTr9A==
X-Received: by 2002:a1c:b1c3:: with SMTP id a186mr10052449wmf.10.1573243675924; 
 Fri, 08 Nov 2019 12:07:55 -0800 (PST)
Received: from wambui.local ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id f13sm6612474wrq.96.2019.11.08.12.07.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 12:07:55 -0800 (PST)
From: Wambui Karuga <wambui@karuga.xyz>
X-Google-Original-From: Wambui Karuga <wambui@wambui>
Date: Fri, 8 Nov 2019 23:07:44 +0300 (EAT)
To: Sean Paul <sean@poorly.run>
Subject: Re: [PATCH] drm/rockchip: use DRM_DEV_ERROR for log output
In-Reply-To: <20191108160602.GG63329@art_vandelay>
Message-ID: <alpine.LNX.2.21.99999.375.1911082306460.13123@wambui>
References: <20191107092945.15513-1-wambui.karugax@gmail.com>
 <20191107133851.GF63329@art_vandelay> <20191108124630.GA10207@wambui>
 <4996186.DxzAFJqeGu@diego> <20191108160602.GG63329@art_vandelay>
User-Agent: Alpine 2.21.99999 (LNX 375 2019-10-29)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1284482943-1573243675=:13123"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_120758_219171_671BB9F6 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wambui.karugax[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org] 0.5 FROM_SUSPICIOUS_NTLD   From abused NTLD
 1.3 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: =?ISO-8859-15?Q?Heiko_St=FCbner?= <heiko@sntech.de>, airlied@linux.ie,
 hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org,
 Wambui Karuga <wambui.karugax@gmail.com>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1284482943-1573243675=:13123
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Transfer-Encoding: 8BIT



On Fri, 8 Nov 2019, Sean Paul wrote:

> On Fri, Nov 08, 2019 at 03:06:44PM +0100, Heiko Stübner wrote:
>> Hi,
>>
>> [it seems your Reply-To mail header is set strangely as
>> Reply-To: 20191107133851.GF63329@art_vandelay
>> which confuses my MTA]
>>
>> Am Freitag, 8. November 2019, 13:46:30 CET schrieb Wambui Karuga:
>>> On Thu, Nov 07, 2019 at 08:38:51AM -0500, Sean Paul wrote:
>>>> On Thu, Nov 07, 2019 at 01:54:22AM -0800, Joe Perches wrote:
>>>>> On Thu, 2019-11-07 at 12:29 +0300, Wambui Karuga wrote:
>>>>>> Replace the use of the dev_err macro with the DRM_DEV_ERROR
>>>>>> DRM helper macro.
>>>>>
>>>>> The commit message should show the reason _why_ you are doing
>>>>> this instead of just stating that you are doing this.
>>>>>
>>>>> It's not that dev_err is uncommon in drivers/gpu/drm.
>>>>>
>>>>
>>>> It is uncommon (this is the sole instance) in rockchip, however. So it makes
>>>> sense to convert the dev_* prints in rockchip to DRM_DEV for consistency.
>>>>
>>>> Wambui, could you also please convert the dev_warn instance as well?
>>>>
>>> Hey, Sean.
>>> Trying to convert this dev_warn instance, but the corresponding DRM_WARN
>>> macro does not take the dev parameter which seems to be useful in the
>>> original output.
>>> Should I still convert it to DRM_WARN without the hdmi->dev parameter?
>>
>> There exists DRM_DEV_ERROR, DRM_DEV_INFO and DRM_DEV_DEBUG to
>> handle actual devices. Interestingly there is no DRM_DEV_WARN though.
>>
>> So depending on what Sean suggest another option would be to add the
>> missing DRM_DEV_WARN and then use it to replace the dev_warn.
>
> Yep, this sounds good to me me.
>
> Sean
>
Okay, I can add DRM_DEV_WARN and replace it there.

wambui
>>
>>
>> Heiko
>>
>>
>>
>>>
>>> Thanks,
>>> wambui
>>>> I'll apply this to drm-misc-next and expand on the commit message a bit.
>>>>
>>>> Thanks,
>>>>
>>>> Sean
>>>>
>>>>> $ git grep -w dev_err drivers/gpu/drm | wc -l
>>>>> 1950
>>>>> $ git grep -w DRM_DEV_ERROR drivers/gpu/drm | wc -l
>>>>> 756
>>>>>
>>>>>> diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
>>>>> []
>>>>>> @@ -916,7 +916,7 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
>>>>>>  	}
>>>>>>
>>>>>>  	if (!dsi->cdata) {
>>>>>> -		dev_err(dev, "no dsi-config for %s node\n", np->name);
>>>>>> +		DRM_DEV_ERROR(dev, "no dsi-config for %s node\n", np->name);
>>>>>>  		return -EINVAL;
>>>>>>  	}
>>>>>
>>>>>
>>>>>
>>>>> _______________________________________________
>>>>> dri-devel mailing list
>>>>> dri-devel@lists.freedesktop.org
>>>>> https://lists.freedesktop.org/mailman/listinfo/dri-devel
>>>>
>>>
>>
>>
>>
>>
>
> -- 
> Sean Paul, Software Engineer, Google / Chromium OS
>
--8323329-1284482943-1573243675=:13123
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--8323329-1284482943-1573243675=:13123--

