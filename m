Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C23BEC3549
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 15:15:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=h36T4Zj5/62W2ivI1vmRdyfqOXNxmDsHXmkHt3aXmE0=; b=MBzauq1rMSCXJ/C6tz7SATWbD0
	wYQHvi3z9zCQfnA3f42QyJUxAos8xgx/atpVyw6ueV7+bD/zQJz7cC7lM9WCCCnN72iijP/1jzDEG
	Zgx0IccJfTCHVIqQDSS7L/rhTBt0h2Ix4/4gbeMiQRTxYqRXzEkoMwuwGLocn9ENsidvxWWx9CMRO
	kpHAHMXKfXcFNDC+otSChiO0HTPFzfRAA3FvV5b3PgjXBGmrWUVAxvVfMo+p/ZoKYAYvnMcSzDvJh
	EdW0NVfnDVYGpsGw6uAcAIwbygbttSMoF+LTwsyiaCYgXWGah6BMl1M5/KayK4hPn8nG4fkmmVHcn
	dRu9J/zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFHzt-0000Yw-GJ; Tue, 01 Oct 2019 13:15:21 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFHzm-0000Xs-EJ
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 13:15:16 +0000
Received: by mail-wm1-x343.google.com with SMTP id p7so3342318wmp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 06:15:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=DGm+jAKzcyF9jL/nAhZEw01gpHilyJv1iBgg1UwcO5I=;
 b=rTsyBF4vLm99v9d1KGwh8d1rbKgIWDAaHB6/bpo+pUKuKNfi/Hkwd2ektAhOZAG9h8
 i1pJgrjhTedbVbq9/Rdz07hnxeVdepDGKcfpLSPBTGLR31jsL21Ptrtab6OSTLuFUFTX
 1QK+WmbtXbF2rCTbs606Z8SBkuF12Qy0ikh3cdpi6DONpUfuMWyeGaRf5KXWVLgY3JIl
 TUG2EGpzQrzKvxohcBNO8bAQHC4ELBFciyoeOhjnmQ9kvmj8iGinr0lBUZCYWbv/s3Jc
 eZqzaTM1o90YA6e5QOy3RcBybGGAin5YjmQFT00wQyK9t+k2XYKXr8zBqCG5E1Q1kjEz
 e7pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=DGm+jAKzcyF9jL/nAhZEw01gpHilyJv1iBgg1UwcO5I=;
 b=qIf5+3X19l/gZwEeCjRKArd3NyCuIRH9Z3S0nt9ukqkHgvnMh2/t4Hos+35AoUxluU
 N15PL0TkpmmdfcLF+tLyHjSF4YD76GTe5UnnknnDCBrzdkK565M4bUWmU3a/kUhZWEvv
 VtnEBh7ThUvloJrVT+Jyh3lzYUH5CJLIoCh9rvK+8Zz8cfXOFcqiqA4dqwKl6b2fM30Z
 i4HfJjrOOEALuc14i8hzLG5UAV78FF/uJRwWTYoxVw37q0ChhwqJTNUlcaJm2NS4PBMg
 9J9JXrpoCBsUVvn6893tk45mhIYziHSbKbbMuh/t7Zl0Z0UU0pylA3J9mUYU6UWDONNl
 j5sQ==
X-Gm-Message-State: APjAAAUGOpN27Wm3XQAMrXZ+p19sba/EDTXRT09eClq9tFliscGUKz9x
 JDc640+cSi9JHRVIckWKxluTrg==
X-Google-Smtp-Source: APXvYqy9u48k/I0891LpeWRVLsDnw8XWv4XSzhE2JT0unm7u7wxQCSBojPGSF2V8pa6KZeJmjxKotw==
X-Received: by 2002:a7b:cb91:: with SMTP id m17mr3681665wmi.151.1569935712186; 
 Tue, 01 Oct 2019 06:15:12 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id y186sm5172875wmd.26.2019.10.01.06.15.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 06:15:11 -0700 (PDT)
References: <20190921150411.767290-1-martin.blumenstingl@googlemail.com>
User-agent: mu4e 1.3.3; emacs 26.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH 1/1] clk: meson: gxbb: let sar_adc_clk_div set the parent
 clock rate
In-reply-to: <20190921150411.767290-1-martin.blumenstingl@googlemail.com>
Date: Tue, 01 Oct 2019 15:15:10 +0200
Message-ID: <1jimp8r4ip.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_061514_511417_B0DA32FD 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 narmstrong@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Sat 21 Sep 2019 at 17:04, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:

> The meson-saradc driver manually sets the input clock for
> sar_adc_clk_sel. Update the GXBB clock driver (which is used on GXBB,
> GXL and GXM) so the rate settings on sar_adc_clk_div are propagated up
> to sar_adc_clk_sel which will let the common clock framework select the
> best matching parent clock if we want that.
>
> This makes sar_adc_clk_div consistent with the axg-aoclk and g12a-aoclk
> drivers, which both also specify CLK_SET_RATE_PARENT.
>
> Fixes: 33d0fcdfe0e870 ("clk: gxbb: add the SAR ADC clocks and expose them")
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Applied, Thx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
