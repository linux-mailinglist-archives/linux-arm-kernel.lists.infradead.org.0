Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F930986A0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 23:30:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DvjuIuvBfKOGXOKLYQKfleSWKJ/9XHvdZ86puTY/0dY=; b=MeAIoxnMwk4cW8
	ca710rRjc/EoOnfBfl5A9q1H4hstplWc3LC/v3V9QTQeyBBEyyl4be8NLcbKmn2woXFDsBPNn4Xzc
	mkWeT6Bp49EEEbZ+OFNhrp5tNRs6KuKs8rpLBuAHj1w4eSeIF/Jabf9hzu7h+WxkvrXbgA3Fowvkr
	famJEuHN+7YYl4O1oj9b7XRSPelNjS6g+QvxG6xRbNFT4sq3SiXlOVTdDtoVoLyGl7fjjKN/6kxhw
	R5sTTt9Gs7KDoSstKAsGj5dfDlgAq0pbkmWbmD/tvYVN3iWdINh1jVORUDVci21F0w0vOacoxAGkz
	FEDbxxIwMPYkioTNwrBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0YBY-0005hv-FO; Wed, 21 Aug 2019 21:30:28 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0YBP-0005gj-Fe
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 21:30:21 +0000
Received: by mail-pf1-x443.google.com with SMTP id w2so2305630pfi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 14:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=JamKzvdT5n0JRFMyDQS1FT/k6bVQThWvvzDjprEJ6CY=;
 b=iMJnFRHDKKfY2TVix6Kg7QyOZkDIj5MTwOzwwrn9Yh0Quv6TKjoaBAZkhZHd1kOHee
 LXYDawRhFHEgBNVxflMeMS/vKJFbK02GEskP/b6ppziRxRi71zF0RENhjAVb7LQCWOtV
 CHhrElk4aIvJMy7kf/RDsJ3S7caNHIVvHYd+xe2R1sU6oYZpkGVwZCAfBXtXXFTrXwvg
 AVFLU7xkUCQi9Uk9PR83GQaRgRbRYRgV+B9KFifQie13IcraLry4MNr3OCU0avrjxreC
 K2PcHaPYxhKddpS94bCbVgYQ2dv1df8KAJmlVi0wYxdGfp48vGlzZyybK6pyDqhS7qmA
 HZ4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=JamKzvdT5n0JRFMyDQS1FT/k6bVQThWvvzDjprEJ6CY=;
 b=WWzNxFaj33Xy6q6V2vncjXEGahBrVPqNmAo4MAO8KAspdFUCmFEYUVuaKlO421Vd1P
 L6Ck2yFes+kX4vsiu0vcqXYtewAacFY2wUuVrJ66F70eJgsYjqenO0b6JNyQKPgL/x6k
 HicGh7B9mGAizxslBOBqnD4FB2fZ2YPcz2KC8mE/NVuTeS7Z882Mr8yJgOp5ObWNXYDr
 hOC/dkjCvDZzJ14zxl5H3pvsnyRvlZEfVGvguhkUzZ+IJMjTECTg6209ahubInupnXv3
 IFgSPEnC0NdHB20h3klQXS3jsOyy13ITwmAiObePfYCJPxzsqxRE0204OGm6hmefvnQl
 LRdg==
X-Gm-Message-State: APjAAAVxbPTLounesqHFPocevpC7Gbu/zIG4FeuyJWsT/Qvlw+Erw7IF
 2IDciV5zTDNT7vNg3Nh7fVCrFw==
X-Google-Smtp-Source: APXvYqxJgS3AGYB65QX2eSGKbfHabg/mZAuaZCmr2wu/yKCdqUmPctixFz2Q12im4wy2hl85+1FtNA==
X-Received: by 2002:a63:5a4d:: with SMTP id k13mr30104074pgm.174.1566423018409; 
 Wed, 21 Aug 2019 14:30:18 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id a128sm24706235pfb.185.2019.08.21.14.30.17
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 21 Aug 2019 14:30:17 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Guillaume La Roque <glaroque@baylibre.com>, daniel.lezcano@linaro.org
Subject: Re: [PATCH v3 0/6] Add support of New Amlogic temperature sensor for
 G12 SoCs
In-Reply-To: <7hd0hd3mme.fsf@baylibre.com>
References: <20190806130506.8753-1-glaroque@baylibre.com>
 <7hd0hd3mme.fsf@baylibre.com>
Date: Wed, 21 Aug 2019 14:30:17 -0700
Message-ID: <7himqq9pg6.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_143019_527470_E03B14C5 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Kevin Hilman <khilman@baylibre.com> writes:

> Guillaume La Roque <glaroque@baylibre.com> writes:
>
>> This patchs series add support of New Amlogic temperature sensor and minimal
>> thermal zone for SEI510 and ODROID-N2 boards.
>>
>> First implementation was doing on IIO[1] but after comments i move on thermal framework.
>> Formulas and calibration values come from amlogic.
>>
>> Changes since v2:
>>   - fix yaml documention 
>>   - remove unneeded status variable for temperature-sensor node
>>   - rework driver after Martin review
>>   - add some information in commit message
>>
>> Changes since v1:
>>   - fix enum vs const in documentation
>>   - fix error with thermal-sensor-cells value set to 1 instead of 0
>>   - add some dependencies needed to add cooling-maps
>>
>> Dependencies :
>> - patch 3,4 & 5: depends on Neil's patch and series :
>>               - missing dwc2 phy-names[2]
>>               - patchsets to add DVFS on G12a[3] which have deps on [4] and [5]
>>
>> [1] https://lore.kernel.org/linux-amlogic/20190604144714.2009-1-glaroque@baylibre.com/
>> [2] https://lore.kernel.org/linux-amlogic/20190625123647.26117-1-narmstrong@baylibre.com/
>> [3] https://lore.kernel.org/linux-amlogic/20190729132622.7566-1-narmstrong@baylibre.com/
>> [4] https://lore.kernel.org/linux-amlogic/20190731084019.8451-5-narmstrong@baylibre.com/
>> [5] https://lore.kernel.org/linux-amlogic/20190729132622.7566-3-narmstrong@baylibre.com/
>
> Thank you for the detailed list of dependencies!  Much appreciated.
>
> With all the deps, I tested this on sei510 and odroid-n2, and basic
> functionality seems to work.
>
> As discussed off-list: it would be nice to have an example of how
> cpufreq could be used as a cooling device for hot temperatures.  The
> vendor kernel has some trip points that could be included as examples,
> or even included as extra patches.
>
> Also the driver patch is missing the two main thermal maintainers, so
> please resend at least the driver and bindings including them.

Forgot to add...

Tested-by: Kevin Hilman <khilman@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
