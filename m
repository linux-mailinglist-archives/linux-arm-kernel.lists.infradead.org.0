Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D439F769F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 15:40:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tbmApCpPR7S4k4wgmWQJ5qmTq108pqs+zQjVpkLXeSE=; b=lF214nJ57mR3VE
	OSIopgDTTJ9srWn6SD4buOPlPmNUmZikthfWG44qyMWHt80gegyZP3/jp8bP2VOXoDsbMX1aMu9S2
	ZCZsA8vrG2nn5+u656ygwkEPBlbln55n92od0WnEmvCUSVieO1jtwhQqi0tyHUTL/PVlOn2KiZt3j
	dEzHwgzqk6k9tZyIwxgJP/RlLUSe3Y9nXEo6EgphOZf7JdGGfkYwWhD0KrPR38HsVDyfmAjbxQVy7
	fDuRXCm49U04eGtaeMLdMtULvItlAAG/x3u0+092+pTqClKUhvNf1v5q/a5BW6S1SnJqkR6MCwLni
	R6Jo+ygf4rmZvVWZQH2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUAro-000229-Be; Mon, 11 Nov 2019 14:40:32 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUArd-00021D-1F
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 14:40:22 +0000
Received: by mail-pf1-x444.google.com with SMTP id s5so10815025pfh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 06:40:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=HSZMQWzyEHnnHHGSgljiQy/rMe2MxTJvgjXJLTPB8Uw=;
 b=LAzanCohnqFWoF8gGT+BAns/rhQOt9zScUEdL2og/ftcWJRRiv37aXkm3RKjkwf2p+
 ALvBnZ0EdR41oJ1oipALK9HTNW3YLU06bdHqI2mCfXrRsOaH72lpnrDVj5qht22plo/I
 raY9u3gdnGyg9LrKuqIgdSuLbCkvJfvay3T8/j8RznOfP86n5uNku2uD8mRBWIFfzE+x
 G/+VqYJp/K+k64wGPG8tHH6inJ6Hd1ahzyAjEVin93HD7RgfQgN1EWHr0ZnCvNPTcbvR
 jqMd59qSv/jCqsbpiUag62bFCGY4vM8w9wV78ceO1YpZDuIddkh2Vm/IcPfH6F2kTCrD
 7hUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=HSZMQWzyEHnnHHGSgljiQy/rMe2MxTJvgjXJLTPB8Uw=;
 b=O3F4HIt3e3bwtM2/TtLmwrGV8AHOFpFK4rsu8E/sGUwU9IEyJrjPEtsjAviSfK2X0Y
 HOnXXF2xE2kXwcjm+2DzhKTkpnTdqWmrCpxuJCA84nftOdUJWUcGKhHZ3qb0iEFgo4xd
 yzAVQCGpPlKqo+DH+UD9SYZvv8sbs8ruKm1Dd7RV3y2XeZmBmFx+DjOZJmvj7HIJ3syP
 pDKCwLYcY0ekHluaRk2+uVqp/qIwcb47b62nBj0wupmAyb7+GUnaklEvVXEsSgX+/Qlh
 BaOuQs+t4Y19xPzSiTBDE9KOoDBbmYConNPUWwENqFAoEBlY8LFdHOpD9yJKChBOHEMe
 xKDw==
X-Gm-Message-State: APjAAAXUoTTsdS1xe8JKUIcLfueleLZGvoNgungtD6MX3aR4RQnQYtyL
 bk5wibXyMTaElhuOQrsG1gGYnQ==
X-Google-Smtp-Source: APXvYqzRF26meFYV5Haf+VOng2ZQhf2ivGmMtkGpcH5rhUWnKoKrEYEEDzl/1JLe7l1dj9g5OfIKpg==
X-Received: by 2002:a17:90b:110f:: with SMTP id
 gi15mr35797335pjb.128.1573483220407; 
 Mon, 11 Nov 2019 06:40:20 -0800 (PST)
Received: from localhost ([2601:602:9200:a1a5:dd5e:2cce:fe26:7bc6])
 by smtp.gmail.com with ESMTPSA id fz12sm13611195pjb.15.2019.11.11.06.40.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 11 Nov 2019 06:40:19 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Jianxin Pan <jianxin.pan@amlogic.com>, linux-amlogic@lists.infradead.org
Subject: Re: [PATCH v4 2/4] firmware: meson_sm: Add secure power domain support
In-Reply-To: <420073b1-0a3f-1bfd-4422-34f8cd7e0d2d@amlogic.com>
References: <1572868028-73076-1-git-send-email-jianxin.pan@amlogic.com>
 <1572868028-73076-3-git-send-email-jianxin.pan@amlogic.com>
 <7hk188stcy.fsf@baylibre.com>
 <420073b1-0a3f-1bfd-4422-34f8cd7e0d2d@amlogic.com>
Date: Mon, 11 Nov 2019 06:40:18 -0800
Message-ID: <7heeyecw8d.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_064021_102916_0C3B9AF6 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, linux-pm@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Jian Hu <jian.hu@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Jianxin Pan <jianxin.pan@amlogic.com> writes:

> Hi Kevin,
>
> Please see my comments below:
>
> On 2019/11/10 4:11, Kevin Hilman wrote:
>> Jianxin Pan <jianxin.pan@amlogic.com> writes:
>> 
>>> The Amlogic Meson A1/C1 Secure Monitor implements calls to control power
>>> domain.
>>>
>>> Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
>>> ---
>>>  drivers/firmware/meson/meson_sm.c       | 2 ++
>>>  include/linux/firmware/meson/meson_sm.h | 2 ++
>>>  2 files changed, 4 insertions(+)
>>>
> [...]
>>> diff --git a/include/linux/firmware/meson/meson_sm.h b/include/linux/firmware/meson/meson_sm.h
>>> index 6669e2a..4ed3989 100644
>>> --- a/include/linux/firmware/meson/meson_sm.h
>>> +++ b/include/linux/firmware/meson/meson_sm.h
>>> @@ -12,6 +12,8 @@ enum {
>>>  	SM_EFUSE_WRITE,
>>>  	SM_EFUSE_USER_MAX,
>>>  	SM_GET_CHIP_ID,
>>> +	SM_PWRC_SET,
>>> +	SM_PWRC_GET,
>> 
>> These new IDs are unique to the A1/C1 family.  Maybe we should add a
>> prefix to better indicate that.  Maybe:
>> 
>>        SM_A1_PWRC_SET,
>>        SM_A1_PWRC_GET,
>> 
>> Thoughts?
>
> I consulted with the internal VLSI team, and it's likely that the latter new SOC will follow A1/C1.
> And then it may become common function in the future.

OK, but it's not a common function for the past, so it's useful to mark
that distinction.

Just like in device-tree, we often have compatibles named for previous
SoC families (e.g. "gxbb") used on newer SoCs, but we use that to mean
"GXBB or newer".

Similarily here, we can use SM_A1_ prefix to mean "A1 or newer.

Kevin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
