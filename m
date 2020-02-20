Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B3616661A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 19:19:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IE3Ck455IG4Rhh3TG5TrSzyQ4EWkUGefo/9v2qAfx50=; b=jLDMetgasuUjQLQVRa71NKeqD
	rDgr3wDafl3CTnoUceYsAKsN28jXUEMyxB9OhyYj6eO/UJjgBpBsIumkLnyJsgkgfScvRTrtYFvMb
	WqrebFweM5NTFk9yguC6uiZawcf6TH1zdiTGd5fYLoQpkYMi8EO99eatkG/HC3rBtPSnXtRQ4fdq5
	Oev+71AuM0NKeBTeKyU7D4gjg7jH4Fy88qHS9ZK1Iv+ZH8dhF0Wlq8+xRrEqScxPfDUNjH/GpjQ8c
	dP4k9OijYDW3F//fHSAyMDWpJ7NneO4Xv4nL4pqyS9bYy4edrMMb5meUpXunSkSpiCEzU3HOx8Vl6
	vtJcFWCFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4qPx-0003sm-Bj; Thu, 20 Feb 2020 18:19:21 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4qPi-0003rs-7K
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 18:19:07 +0000
Received: by mail-lf1-x141.google.com with SMTP id s23so1895599lfs.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 10:19:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lebedev-lt.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=BMudXWRavzU8ncImx/aSRyw9UQtZ0RxHFgnxmYTgr/o=;
 b=Xj26QZhSq3ROB90ZKv65EPbntTSjJUf3ya+rYi7+K0z+zCwE2HDMhX6XR2ngsFAHrk
 WqseTzGt6xHvQJvJmqulNHCpJczepO4PqkrxTfihTZO2iq5t0TofG1ZTnI4uoRA7ufvL
 qskk6GiWl9zsd3upI1+AWYLf1LoNDh+dEFxaEfWRQuYAl7dYFxZN46AOnn2OtFxwXt+g
 5CbB0cbMdLH72cWILlpauiaDrf7+0Zk+frFtn8HCuzccfS1fxF5bKeLitpE7V23PVtEF
 BWNTIpUXt8oEvVgKoMo1Ycii4G0XS7B9lo4Wl/9WHMu9xDvuroOt5XWmNBsN7kEsIwsy
 763A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=BMudXWRavzU8ncImx/aSRyw9UQtZ0RxHFgnxmYTgr/o=;
 b=mxfJlHBOpEJhC9alZ8IWbS12m3X9c2NldHa+c0nBlXBilzOZDnES2j/VwITQQ0pMpn
 mLOb1YNsuMEON/Rv2ngZ35HZ17YM3Wn7/cCfvbTVaj9laz2/RU3xRHPE9LdFbNOS+ABc
 vqlESGzXLbcrcnDg2g99hH+XeC1L7tELcw+fmbX6NVwIltKR7Mm0Nk4KQIjJkLA67zuo
 TWCZyCTDs5j0hrwXrTr2o9pRVj8uJfVNqNhveMAZ4th6wLmSHR5O1XN52t4nfaPBEBzR
 mpxuVT/Yfr88XTEFjVa/cBGDqyv7IPke0CWv0l32qjH5rQEVK02hIce0GHezUdmz2/ar
 FvHw==
X-Gm-Message-State: APjAAAU24TvnvnRfdfnigMRJQMNsl3SBZr1vVCVED84Jngbpj6eHmLH0
 4+lYu85PsNizRjtQl2uOZdmatA==
X-Google-Smtp-Source: APXvYqwHMD7TjvA9qSHLAjro81EJY6e+tgA6JElGztVdIMsefhnoFuMqmbeC+l1pV9gnkOJ6fpFbKQ==
X-Received: by 2002:a19:97:: with SMTP id 145mr16976846lfa.98.1582222743500;
 Thu, 20 Feb 2020 10:19:03 -0800 (PST)
Received: from [192.168.1.108] ([5.20.204.163])
 by smtp.gmail.com with ESMTPSA id m21sm156300lfb.59.2020.02.20.10.19.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 20 Feb 2020 10:19:02 -0800 (PST)
Subject: Re: [PATCH 1/5] drm/sun4i: tcon: Introduce LVDS setup routine setting
To: Maxime Ripard <maxime@cerno.tech>,
 Andrey Lebedev <andrey.lebedev@gmail.com>
References: <20200210195633.GA21832@kedthinkpad>
 <20200219180858.4806-1-andrey.lebedev@gmail.com>
 <20200219180858.4806-2-andrey.lebedev@gmail.com>
 <20200220172154.22gw55s2mzyr45tj@gilmour.lan>
From: Andrey Lebedev <andrey@lebedev.lt>
Message-ID: <1002d964-28c9-ed69-64fe-6527418092bb@lebedev.lt>
Date: Thu, 20 Feb 2020 20:19:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200220172154.22gw55s2mzyr45tj@gilmour.lan>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_101906_324752_876811BC 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: airlied@linux.ie, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, wens@csie.org,
 daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/20/20 7:21 PM, Maxime Ripard wrote:
>> +	regmap_write_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
>> +			  SUN6I_TCON0_LVDS_ANA0_EN_DRVD(0xf),
>> +			  SUN6I_TCON0_LVDS_ANA0_EN_DRVD(val));
>> +
>> +}
>> +
> There's an extra blank line here that was reported by checkpatch. I've
> fixed it up while applying.

Weird, checkpatch didn't warn me about that:

./scripts/checkpatch.pl 
patches/0001-drm-sun4i-tcon-Introduce-LVDS-setup-routine-setting.patch
total: 0 errors, 0 warnings, 103 lines checked

patches/0001-drm-sun4i-tcon-Introduce-LVDS-setup-routine-setting.patch 
has no obvious style problems and is ready for submission.

In any case, thanks for correcting it!

-- 
Andrey Lebedev aka -.- . -.. -.. . .-.
Software engineer
Homepage: http://lebedev.lt/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
