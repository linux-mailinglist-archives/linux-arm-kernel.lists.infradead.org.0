Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C0417BAB8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 11:46:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SebqZ7y/Wk0TkaDuIoKHOEDObXB3qIyNxRBdHm4Rwo4=; b=mukfq4qmK4X10kmm7ZH2oE5vG
	MYW7yecqJiQTdM34NaKlGBJhyt+qU89CMjw7TQNfQh/q1nOScpiyVBOa2whPDCknptSditrjc4tst
	uyT299YKiDV5fOZ9lypSQz6ww9scIpJte4dzw/mUuba3eK5DwrP8YsaYKNr/28Gt9PxP6MYa3G9nU
	x/YPkSz/fVhAH4ohZnS5aRhlR733RqZbsglNjGWg5yV+z1Biuo0uOORy6KjksPUMHMPxsCydUOTYD
	VXIEBZ1+ZNX4SrLPkBHaVpbDj6libr8wezzO0NMwAXOzWmmpFnW905KdpDRPzgrpd99tq3mp0LhVH
	dAOeYC8Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAAUo-0006We-8d; Fri, 06 Mar 2020 10:46:22 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAAUg-0006Vq-Ij
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 10:46:15 +0000
Received: by mail-wm1-x343.google.com with SMTP id u9so1839883wml.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 02:46:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=d9hiWNQ6J5n3j61Fv/V6tZE2JLkQSqjWYDVkkP/+6yE=;
 b=eHClCP1d12t4vlxl6n7r39rqsL2C7OiH/LXFAM/DgTnYYvZJm3QDPnuKZyuXrv15/V
 0TW0q676MD43QFcX8P/UcUVTRGV3T2Dtc0k8eM8NGh/bvFz779Bc0F3UfQAg51D8Jd/v
 B7QPKgFmd3ebbKD0/xYQGeR/udzkH+4t+LCRBlP9neskFizDKLBfssG9HJdF9ktIGDfo
 7ZSGzm+GfTPaFH97ubJ67Xi+EUBSqOsgEtSm8upPNm6C5h5Oa8EDidDycVKzMouwn0fF
 mYD1G9KXWU8g5yG/xmlhn+lZ8A6mrcVhSlqCcCdC/aA1X5dHF7wG8mBOFoNi6KzafVrC
 K1Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=d9hiWNQ6J5n3j61Fv/V6tZE2JLkQSqjWYDVkkP/+6yE=;
 b=A8kbX0UhsQ+qEXzpKNS0JJQyPuV+5sS7hs4nOD2iXpbh2vg5FslMnSq/VR8kHzGr1D
 mrXNnMATUdUvToEaCmvi2K+fekaRi+TloVI2Q5cDBxjJGebSNGxOmapOFs/1ZrjhBNJ0
 87hySal2bmCcVKGyQwIp9j9eikYVplvYB2m0K+ZrEJ/7dzNugIKJbkllU4x4DIn7aZLL
 4wVC1AN4QE0mlksXzAl9mpdNgVNyYUIEgbsW9nCcs5bH38kkuJJ7jeg9hSdOLb8MJ3I+
 Oy/RkjKPtf/4K5aVyoYP37wAJ6hHGrB69O3rDEAThVhyHUiyw1NR6eAfrjfcxzPvzec5
 7HMg==
X-Gm-Message-State: ANhLgQ0OZmI3FDoAyToFm0qz68hQjAMdhbbH95VqWccwU9Kp7nQcXlqR
 vmPbHfda60naY5Wc2MYAN6az9g==
X-Google-Smtp-Source: ADFU+vtyuUNlJMUe6+PBiy69yoy09fo5sBeHo942glDD+YgiDtuy/FwybcSRvw5ZFgPFJU/dlDmHzg==
X-Received: by 2002:a1c:4681:: with SMTP id t123mr3509384wma.86.1583491571878; 
 Fri, 06 Mar 2020 02:46:11 -0800 (PST)
Received: from ?IPv6:2a00:1098:3142:14:3ca7:8f7d:279:5ab9?
 ([2a00:1098:3142:14:3ca7:8f7d:279:5ab9])
 by smtp.gmail.com with ESMTPSA id i14sm972437wmb.25.2020.03.06.02.46.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Mar 2020 02:46:11 -0800 (PST)
Subject: Re: [PATCH 00/10] Raspberry Pi vmmc regulator support
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-mmc@vger.kernel.org
References: <20200306103857.23962-1-nsaenzjulienne@suse.de>
From: Phil Elwell <phil@raspberrypi.com>
Message-ID: <b33aadf7-d481-10db-c290-6e53b696b2d4@raspberrypi.com>
Date: Fri, 6 Mar 2020 10:46:10 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200306103857.23962-1-nsaenzjulienne@suse.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_024614_660688_12BBA8E0 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: ulf.hansson@linaro.org, f.fainelli@gmail.com, adrian.hunter@intel.com,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

On 06/03/2020 10:38, Nicolas Saenz Julienne wrote:
> The series snowballed into adding a new quirk, as I reliased
> sdhci-iproc's behaviour is not that uncommon.
> 
> Based on Phil Elwell's work in the downstream Raspberry Pi kernel.

There are a few typos in the commit messages ("reliased" -> "realised",
"trough" -> "through"), but otherwise:

Reviewed-by: Phil Elwell <phil@raspberrypi.com>

Phil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
