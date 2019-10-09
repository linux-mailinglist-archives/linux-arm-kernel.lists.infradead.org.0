Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7116D1B23
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 23:43:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U6e0qak+HCs8jpFjiju+mxZhLzxl2JSWFooDAF6JaUQ=; b=migI7ddTKdQP5U
	6irUOPSnZ6xio/WEDhsnS8d0pCFlawMjnBegr90vBbwu0M3klb5lLk0dKiIMKK+mxu4GD9wObURXw
	JnCDnURSMn7suu60SbGVFHcASt5eMEomPBPZMhCwT4N4+bzXPlB4Pf2aZqw20llJwkzxRRIn0y+ux
	wn3C0ut2edtQNr17bRZifnCw1cOA0eVLc/5WsAhKCt1bTUEp+FC3Z+0ew5NH0eWq7g6AseY5NxI27
	qt41fYUp/r5tV9DYCVQuClgtVE5WM5zpIeHDhcf7MhmPNBd0OKcRLpRTVmUE1h0Nhe2t4ogdOuALN
	QpwmuH+SsTya2S5SCnkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIJjr-0002K3-J7; Wed, 09 Oct 2019 21:43:19 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIJjk-0002Je-6y
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 21:43:13 +0000
Received: by mail-wr1-x442.google.com with SMTP id y19so4960035wrd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 14:43:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JxXn52RmjLWCw4xeyAmS1iJdiMsWzbnLw4FLqKyxesQ=;
 b=C2EKTh9TBVlGXf7aRoBDi1XwWRRJL0ebHRcegYiVJPQuUEETwtgBQahm/NKK4tHeQh
 463WTMfhpzBVIuJfp6emit4RD+uZr33fcaCZSZRnILZHugzcEXxhVbHjnV62a+yodxcv
 iG2BfooPqxs+JnK2FwiiFkkZMJDHjHeyFnl5IlL1eIMEovtmXcGR2Eel90LzeYWFfrai
 nnJxfTjIcOkZgcTH6Y+fvzHgcFtIV5K8xH0pHJXNTIUOEm2Vd2Rfzcxbzs2YdfIPBdqO
 sWHo/L7kiEuP+du9tPZN+8GVSmggNLkT41Ig8nx7n2dbV8PUtyaP2J7DqcvzIvn4Uq+q
 IvQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=JxXn52RmjLWCw4xeyAmS1iJdiMsWzbnLw4FLqKyxesQ=;
 b=dzxvvEq8Nae0eq3vD3CXx1sabP0YyxB6cyuiDRdErWE3S9LC1RAgV3bZhoEvmseMiZ
 e2vX8/ULgwwtpZIeSQM8fypp12YOP1yJ4zlAceDxTSEhUdbRfemJZTCL4i2fyCqp22m6
 DJflbDri3xNnBodAdVxUM+kV6MmdYMk+6R4OI06uohV/J+Mdd6hP5TpUkemQaShqvYFP
 YNO+eitZy6olgD2sY+ZCyLXVu5h2cwMTdRPPt4kODE8LfI1JdSdEQP5Veckj4+rbB5Gf
 g/Zkos5UpdaXgkMpzNjX8DcKOET3+qxOHmyjeKBqnKCHAORHfTVbo/FvZUtOgu0yVM1d
 ACaA==
X-Gm-Message-State: APjAAAUINE4/1VOQTAVBDFGRuqnOyM+PJaoo7d5y7C+Y74QUoi5430sZ
 s66dnSAIMuLpQLH/8QtSkEg=
X-Google-Smtp-Source: APXvYqxRSE0Ompy8v5/Pma72p/bfeXutYUG1yOROcGWgnjDzx/oVdTas4gY69ojgbU+WuWPKiNUYjQ==
X-Received: by 2002:adf:f68f:: with SMTP id v15mr4601190wrp.234.1570657390161; 
 Wed, 09 Oct 2019 14:43:10 -0700 (PDT)
Received: from [10.67.50.53] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id f8sm3726689wmb.37.2019.10.09.14.43.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 09 Oct 2019 14:43:09 -0700 (PDT)
Subject: Re: [PATCH] Revert "ARM: bcm283x: Switch V3D over to using the PM
 driver instead of firmware."
To: Stefan Wahren <wahrenst@gmx.net>, Florian Fainelli
 <f.fainelli@gmail.com>, Eric Anholt <eric@anholt.net>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 boris.brezillon@bootlin.com
References: <1567957493-4567-1-git-send-email-wahrenst@gmx.net>
 <26e101ad-8b5b-edef-4437-778bc57ae81f@gmail.com>
 <077547f9-e0ec-29a6-6264-0281dac6b8c8@gmx.net>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <877621f0-2fbc-55d1-391e-b2ffbce186ac@gmail.com>
Date: Wed, 9 Oct 2019 14:42:59 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <077547f9-e0ec-29a6-6264-0281dac6b8c8@gmx.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_144312_249387_4485760B 
X-CRM114-Status: GOOD (  20.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: bcm-kernel-feedback-list@broadcom.com, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/9/19 2:33 PM, Stefan Wahren wrote:
> Hi Florian,
> 
> Am 23.09.19 um 20:56 schrieb Florian Fainelli:
>>
>> On 9/8/2019 8:44 AM, Stefan Wahren wrote:
>>> Since release of the new BCM2835 PM driver there has been several reports
>>> of V3D probing issues. This is caused by timeouts during powering-up the
>>> GRAFX PM domain:
>>>
>>>   bcm2835-power: Timeout waiting for grafx power OK
>>>
>>> I was able to reproduce this reliable on my Raspberry Pi 3B+ after setting
>>> force_turbo=1 in the firmware configuration. Since there are no issues
>>> using the firmware PM driver with the same setup, there must be an issue
>>> in the BCM2835 PM driver.
>>>
>>> Unfortunately there hasn't been much progress in identifying the root cause
>>> since June (mostly in the lack of documentation), so i decided to switch
>>> back until the issue in the BCM2835 PM driver is fixed.
>>>
>>> Link: https://github.com/raspberrypi/linux/issues/3046
>>> Fixes: e1dc2b2e1bef (" ARM: bcm283x: Switch V3D over to using the PM driver instead of firmware.")
>>> Cc: stable@vger.kernel.org
>>> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
>> Applied to devicetree/fixes, thanks!
> 
> i noticed that X hangs with recent Raspbian and Linux 5.4-rc2 after this
> revert has been applied.
> 
> Is there a chance to drop the revert?

I have not sent anything yet as I wanted to get some testing done on
other platforms, so yes, I can definitively drop that particular changes
from devicetree/fixes and not send it for a 5.4-rc3 pull request. Does
that work for you?
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
