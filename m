Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E52418E5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 01:29:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1E9njzifUbviYrVT2kAEsLNOBooOEOd2+fwzvgzKmts=; b=GlqobaqxhVCMxR
	cFzrmESYf3uLiTNm4zQo8oLSFPa8jggDESbKPGnL7hpzEAXFBnRbjrVIgHvB/Nks/II9XQWXj/Luf
	1zAkK32exqX8/AAFkzCos+QURyzQ4X04TV9gYDbt1k/gYiL1SRK8Kg+5CQFK626ppfgGEe8wCct8m
	cf3/p5oztYQQme/wGOJjP+xArfpNRLIwU534+yjak69BZwjMQ/lrWtnyDhnlFwqOwpLDErSxRaEk+
	LOmnYKqVvJs9n6FICQQd67oF16d4elB9AOPAAQWVdkCqoCdJSSfr9RbHTl+hRZTPQvuSyU3/HM1jd
	Ov5i2BYhzl5zB6aRYxCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haqCQ-0000cX-Tq; Tue, 11 Jun 2019 23:29:06 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haqCD-0000af-MW
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 23:28:54 +0000
Received: by mail-pf1-x442.google.com with SMTP id a186so8397359pfa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 16:28:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=+oMmkCfixuI/MqPYHub3W35V/q9CnrMMpoLjwoXjlsg=;
 b=heQKtZwm9AYpXp4xFj2WNqLeBV6TSqS+fbbwm3nUiGF0ueyGWMc5iH8uau3G+73CkY
 KJiIn0dJUCjTA1gUeYJv6Tao99oW/4d+ObEIOA+7kczKgDDaIccrv2xK51zkyjOKwlk4
 lyCeKfNvBqg9DctrZzfhfbAjN5WUeZtJjp3OmqUqf0CRhqHjFBFwmnJTp+GeRkc/inhZ
 3Mcm6Wp7bO17hqFK0m7LBS6GgOHYymrU01Sqbp7JriYcorZ/fp8vWhYcvPkz27Dut+lZ
 Dzm06Gd4m6aYSWzrZudV8U3FR0/iZUzyewsMF4yifXMvHHx9ym+jtX0ZdZsk8Cqk13as
 MVLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=+oMmkCfixuI/MqPYHub3W35V/q9CnrMMpoLjwoXjlsg=;
 b=s4QL+fNd96ONyyPeYQUpYcpNiv8tkd+06I/keOWasURoDmscLno9dvBCQ+HADbWmxS
 xa9CWrbpZKTkwm3HyewhLbIXtLoxE9IVD4LiroaiIv9drwbK8vR3FY+SUB+NsEknbqo4
 lg39qOjeKDpoeNbyKyFIoeODidtNj2+at9HqvWsPLBtIQUtJH2nGZvgLWnKYeXPUWjE8
 ROavmBLs7Tvo9D2BlL9zdL5Jotu/xXc+dyPzlanqMe53MGIp8CHNXnMAe6luLbSUc0yy
 gCckf2VtZOGdnH7GN5VQyyxsfi+HXPbr5/Ygia98qkJYQhu8Hpe1Ggr3mzfvqhf6i5ou
 k37A==
X-Gm-Message-State: APjAAAXLWe8t0heoa/scfxMVWJEKy5m5qyzxYsY4Dtp85rkBnugkjZ79
 tT/xb2nrKZSk7tDzaAgj/RMXzOSCImg=
X-Google-Smtp-Source: APXvYqyypyOI2ab62NriV/Ikw2ubSujEH42W7AEpYKg52+a33UKb21IRMffBKdbn2eKlFyi34SuhAg==
X-Received: by 2002:a62:58c4:: with SMTP id
 m187mr25340442pfb.147.1560295732812; 
 Tue, 11 Jun 2019 16:28:52 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id f11sm217738pjg.1.2019.06.11.16.28.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 11 Jun 2019 16:28:51 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 1/2] arm64: defconfig: enable Lima driver
In-Reply-To: <d3275b3d-7b1a-369c-11c5-e62553a383cf@baylibre.com>
References: <20190606085645.31642-1-narmstrong@baylibre.com>
 <d3275b3d-7b1a-369c-11c5-e62553a383cf@baylibre.com>
Date: Tue, 11 Jun 2019 16:28:51 -0700
Message-ID: <7hy3273dn0.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_162853_731816_EBEF2B46 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: arnd@arndb.de, linux-kernel@vger.kernel.org, arm@kernel.org, olof@lixom.net,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> On 06/06/2019 10:56, Neil Armstrong wrote:
>> A bunch of arm64 boards can now use the Lima driver, let's enable it
>> in defconfig, it will be useful to have it enabled for KernelCI
>> boot and runtime testing.
>> 
>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
>> ---
>>  arch/arm64/configs/defconfig | 1 +
>>  1 file changed, 1 insertion(+)
>> 
>> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
>> index d588ceb9aa3c..7e9d684332be 100644
>> --- a/arch/arm64/configs/defconfig
>> +++ b/arch/arm64/configs/defconfig
>> @@ -505,6 +505,7 @@ CONFIG_DRM_HISI_HIBMC=m
>>  CONFIG_DRM_HISI_KIRIN=m
>>  CONFIG_DRM_MESON=m
>>  CONFIG_DRM_PL111=m
>> +CONFIG_DRM_LIMA=m
>>  CONFIG_DRM_PANFROST=m
>>  CONFIG_FB=y
>>  CONFIG_FB_MODE_HELPERS=y
>> 
>
> Hi Kevin,
>
> Could you apply this changeset on the linux-amlogic tree ?
>

No, this should go through arm-soc (already cc'd)

Kevin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
