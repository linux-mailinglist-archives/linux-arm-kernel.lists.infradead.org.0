Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A892169807
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 15:08:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MrHN67KEYxeNMlAM4PpyHLToDRG4PL3cX+VilmkwjE4=; b=AhOBfV+5DPyhYWZRudgBERVwD
	GUBEoU+f2ABI4+4l2dndHEfDNiJ0D+cnmj0N2ztDs1ncjKxibi020TvbE2cFaDyLQNRVTIH6DJVP2
	2pDENZKyJgRStnVD66yt+vdSuqBXQsHwlXSLEawYpWPtb0Vxq2l/jCpVLqu0W18bVp27HOcO9WX6X
	KfP9ZFoe3/5uKhqieJ3ye1DEokbE0KRd5gR+BravWIy0SSnZew1EIfZ+Z5yT+ezOajoIL5xLQs5cM
	pxFPn8wu8zxngWKtUc2nAAA8HQMiT6UCfnD4dIOo4CsGShVnZe5KFjOoVO3W+42j1RIc1x43GQU5T
	i/nq3acWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5rvd-0005wx-AE; Sun, 23 Feb 2020 14:08:17 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5rvV-0005wc-Ms
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 14:08:11 +0000
Received: by mail-pl1-x642.google.com with SMTP id y8so2868858pll.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Feb 2020 06:08:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=XD21Leo6kLR5qlxiWjZstdOKlqxFlzQ6WlHQ2R8Sm0g=;
 b=VVCuNFRsY5ktZtLIbg4z3N8VwcmqYJBXpWys4vupuwKDJZlvbzDme9m7YEjlXPgiA9
 81UmvGYiq1GjTqCaZAxN3K2/jbxnvHqXhK1yMjGMh01Y09EhgWshlqZfWgZA7XUorjUL
 5OfNgTpl0eic4MB/ueEz/STh6MpbFRheO103tdYu9lqhRbp+ukkHvp5EkVzbK5RKDRWi
 R6nGaa3fh8ZOI7mOkNh6LNhI+Hq1+p4ukyvrxXrKv6dcsMGZPikHDBI/JH0XOyBg0oCC
 r3tNVn8xKnwJ17JhhE81csZ5xm5Ot8vJ2gYSK0fTsG0n5VAHokfCqQs68d7oGKklBoVJ
 7Okw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=XD21Leo6kLR5qlxiWjZstdOKlqxFlzQ6WlHQ2R8Sm0g=;
 b=M+QkrYAJlXvE159EpFNH32D1RW7SEhch0kDXBdVslPXPg4zorzD53n5wiQpgIoMRIl
 1fNSFa6BHp2cZSI0/GI8DpxJbUukmHPGO5PCMAQxM8s0xP+gE/4AcWENjCyt4/YFLlak
 MSUdY5hyGXU9EZrsf8cEWCD0Yeuzj3NSFqvozeVXfE4DnsoUiV9DjeyryxCBuJL7HdPy
 cPQ1/ROlszu47QgjsyFD9UNhSf4A06ywJkw8jp/NGSRIBSSmVjSUokawOIv0XTP3tHGg
 tozkjQqIvVgp3ayGB2/Cgz8iwz/4cl6/2Rzn2Ba4GLy5KZYgvMgGHxYlCPRVZB0/iRSI
 v3/A==
X-Gm-Message-State: APjAAAUeg1dbQbJgY//KW5n/9mRLOLvqEBs2z++ahJZv0DLIoWrcI/Qd
 pfEf2RFt2RZjin6m+7/vIVI=
X-Google-Smtp-Source: APXvYqynmSayN+effdTkIadEzkTXnzmsvurSXr0zsGFqccNp3FIydiJaZFYwNsYn2B/4oHoTAkLumg==
X-Received: by 2002:a17:902:8a8e:: with SMTP id
 p14mr45705255plo.28.1582466888756; 
 Sun, 23 Feb 2020 06:08:08 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 v8sm9132919pfn.172.2020.02.23.06.08.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 23 Feb 2020 06:08:07 -0800 (PST)
Subject: Re: [PATCH 3/3] watchdog: imx2_wdt: Remove unused include of init.h
To: Anson Huang <anson.huang@nxp.com>
References: <1582250430-8872-1-git-send-email-Anson.Huang@nxp.com>
 <1582250430-8872-3-git-send-email-Anson.Huang@nxp.com>
 <20200222160218.GA12740@roeck-us.net>
 <DB3PR0402MB3916C4CC9A79BFA49441EBEAF5EF0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <a45aeb79-7918-42e9-1c47-3cc631057a59@roeck-us.net>
Date: Sun, 23 Feb 2020 06:08:06 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <DB3PR0402MB3916C4CC9A79BFA49441EBEAF5EF0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_060809_772324_AC1BE045 
X-CRM114-Status: GOOD (  16.67  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/22/20 4:16 PM, Anson Huang wrote:
> Hi, Guenter
> 
>> Subject: Re: [PATCH 3/3] watchdog: imx2_wdt: Remove unused include of
>> init.h
>>
>> On Fri, Feb 21, 2020 at 10:00:30AM +0800, Anson Huang wrote:
>>> There is nothing in use from init.h, remove it.
>>>
>>
>> NACK, sorry; this driver uses __init and __exit_p.
> 
> Ah, yes, just notice them. But I don't understand why the .probe callback needs
> __init and .remove callback needs __exit_p? Should they need to be removed?
>   

That is not a matter of "needs". __init causes the code to be removed after
initialization. This is ok and desirable if it is known that the hardware is
built-in and will only ever be probed once.

exit_p causes the code to be removed if it is built into the kernel. This is
desirable and makes sense if the device is known to never be removed.

Having said that, what _is_ unnecessary is the remove function. Registration
could use devm_watchdog_register_device(), and the watchdog subsystem should
prevent removal if the watchdog is running. Plus, the removal function is
buggy: It doesn' call clk_disable_unprepare() (but that could be handled
with devm_add_action_or_reset() in the probe function). In my opinion,
fixing all that would be more valuable than trying to drop an include file.

Thanks,
Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
