Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6030D104A4D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 06:32:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HG6//7/WnagFEs4iGUh9Phi3YqO+Jl0TZEyGlIy2j5Q=; b=JHduAJP8SPzQXN
	6R4MiQX0IPSHdwnIMF4ISPgK7IKyl7lP+pMSRSI9AN2VKuRrTpA+e8hkkreYhKYHzD5+899pz+Jct
	UhvMbEkTiFWbXcEvaI9lHvryaDut0lxU8ZraE/BU5QKxOBzJgDNipokol4n0Ghcz5Fo9ThRalSgQt
	Vt0gREDIV1jra81hYfqdAoNnlkSk8dWXMWl5Hwh8x0XvgK4jCjKamgGsyY6eF7TlcNS4JDWsgbGmG
	JBSDnxnUtER05i2evkx0A0bVjy8lH1PSzSlYpZwf5E8BPf10vrEHwkpzUYMz77Iw0nIizIQHhRFqz
	tuCUPmQisKYmfbXlPE7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXf4o-0007Ox-GY; Thu, 21 Nov 2019 05:32:22 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXf4g-0007Nz-7n
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 05:32:15 +0000
Received: by mail-pg1-x541.google.com with SMTP id e17so996076pgd.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 21:32:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=yE3H52ST3bCRAdHmUDzhL/7UmgqQkrfup+4Ir818ZIQ=;
 b=M7BBqQwbeIa8JPve1L1VxPnrWig2i9WY0ZyJQqNtb4XAMmkDMSCMWoXgsK/BUgwDUG
 +d9RoKdI2qyNSdaD+nSIAoT7F4oQIUqrWJd/nlez1kwBmCmhxwHQwABfxrJ5IP+wo2Np
 tAso4ANpMBRdhCbXYBWd9wpXO9r11KzHWL9BoyF9oNUi9p7j3jazmA2qZctVscY3YyDJ
 GWW/g07xgm2+CEP4ffmAH+DyewVtNhP/yJaOVzOJK5pztvZNrR1n9PqUzwRYF8FWjpFf
 +nQ0SA77fRXYfHhgPIg2TTZCDsMmEdFh0XpHNs3hB8UFqQTbHJ0EM/l3gY7KwLMyAD30
 cNtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yE3H52ST3bCRAdHmUDzhL/7UmgqQkrfup+4Ir818ZIQ=;
 b=b/HK5WP7gLNO4dslKx5c7If2yK5O0h9ogmV3ROF8pXJLOv8YkJCmYCRJTPcp2EUU1V
 JcPdLaX5AwQPrm5dswmPL+iXcDn0h2sFrvxSzeqcF+eNQkvFi9nvntOyVHJTVMn+rBmL
 d6BCv7oDlgZxXFprNx88lXgaVYCxKr3xFuYd06fV4fFoV193odUpGJlnXLCff3adh6p5
 0OHt69UvS9kMOpCSYt0YpMG2lA54z60zb0X3JZHBX3ln1E8Hc02lZWXQImA6D0d6UJ8V
 TmzSexHnXexRNjamKAkn2dx8uMShl0VRFQ37w22gWXJahnI8uk/l7fwdfbRUR0b6jmAt
 PT0Q==
X-Gm-Message-State: APjAAAXeE5UbwKFsXCa5f9ioxoxJ5pnyryWTNiTw368IsIV+UslLXrmE
 KGtN9grGcqRgNSBdkAw4kafiyg==
X-Google-Smtp-Source: APXvYqwNM9dZdansKs8pKoOeaen5b9vqImpjSGgtw89kbCl3/6894oiyg46ElaulgywEwwJJ0Y0fIQ==
X-Received: by 2002:aa7:8421:: with SMTP id q1mr8754271pfn.174.1574314333119; 
 Wed, 20 Nov 2019 21:32:13 -0800 (PST)
Received: from localhost ([223.226.74.76])
 by smtp.gmail.com with ESMTPSA id p16sm1083971pjp.31.2019.11.20.21.32.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 20 Nov 2019 21:32:12 -0800 (PST)
Date: Thu, 21 Nov 2019 11:02:07 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Amit Kucheria <amit.kucheria@linaro.org>
Subject: Re: [PATCH v2 08/11] thermal: samsung: Appease the kernel-doc deity
Message-ID: <20191121053207.gyulu3vb3caaituv@vireshk-i7>
References: <cover.1574242756.git.amit.kucheria@linaro.org>
 <1ded1697c6e5eff11b034b3302b9c79e88fa9c42.1574242756.git.amit.kucheria@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1ded1697c6e5eff11b034b3302b9c79e88fa9c42.1574242756.git.amit.kucheria@linaro.org>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_213214_305542_19BA1991 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Amit Kucheria <amit.kucheria@verdurent.com>,
 linux-samsung-soc@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 edubezval@gmail.com, Kukjin Kim <kgene@kernel.org>,
 Guillaume La Roque <glaroque@baylibre.com>, linux-pm@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>, Jun Nie <jun.nie@linaro.org>,
 Javi Merino <javi.merino@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-11-19, 21:15, Amit Kucheria wrote:
> Fix up the following warning when compiled with make W=1:
> 
> linux.git/drivers/thermal/samsung/exynos_tmu.c:141: warning: bad
> line:         driver
> linux.git/drivers/thermal/samsung/exynos_tmu.c:203: warning: Function
> parameter or member 'tzd' not described in 'exynos_tmu_data'
> linux.git/drivers/thermal/samsung/exynos_tmu.c:203: warning: Function
> parameter or member 'tmu_set_trip_temp' not described in
> 'exynos_tmu_data'
> linux.git/drivers/thermal/samsung/exynos_tmu.c:203: warning: Function
> parameter or member 'tmu_set_trip_hyst' not described in
> 'exynos_tmu_data'
> 
> Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
> ---
>  drivers/thermal/samsung/exynos_tmu.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Reviewed-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
