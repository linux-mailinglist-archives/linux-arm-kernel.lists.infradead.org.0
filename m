Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8DEEBC2C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 04:02:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eB8M6J0GIM+y3eprX6cNlLjQKQUvPnA1fjul/Ai5YUc=; b=ic+qHqxzw5Lxux
	KU6OxKHBia7kCwvRDvPZzPK6jSapr4dDzcHGaFe2uixCf031Zo6e9bHcF/CWcLtzNwHHI9ayGLtzK
	XBVNvS8w+9+tYtPq7jdUzN/T296S055TzxLJaJhLmfoGdYt3GPQfuY5DpYIynnEVEuus7rOaKUveG
	i7P58y8lr+Ougitjqez5ZwWiqCELZX6WpwIMxWl9ESdMR2jHznRIREhXzFMgH1oy8YwnvhTmZ5jzP
	NIR4UlKN+JYH66IOksJcyfMXvd3wk/WamySglcOR+V3Zqv/CPsLCxy67bqlyqk5LExOqgdDeJ5pPi
	iS6LSmsYcg/5zCBLC05Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQNCX-000429-Vc; Fri, 01 Nov 2019 03:02:13 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQNCJ-00041W-QA
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 03:02:01 +0000
Received: by mail-wr1-x444.google.com with SMTP id q13so8348839wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 20:01:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=AtU1kcIARpsZYXt8D05gLXwGGsU/iHc+JrhYCZdJwC0=;
 b=GneZf/o2V/MVG9Y4gW4QtHWHdQ+5TyHeNJ6pnmDSc9izj4PKx/0ckMqh68G3njNTY3
 B6zpaMvF2XhdF8QbLHSpezdDujpNm7qJANAgttigs6Uvuwcocjg1APrm/FTkQ10ZixgB
 RLhPINajyl4A3vE0Z6gjMfiBaRj5a9uCTzEmC31NE62Trp5aJO/ilxOTixMUD95Xkx8j
 3z3BAwMOxzO85URhER8TKMkMhE/3PW7Xkqug9qWHxh22d80mrsPb/nUKwyFVP1hhW03M
 Jy7C2/DH3E8bOscdp9/IcGBfpSto8GNsWElGFZwfy0bBKUPYtypc7NNQretGfoZ7UZzX
 4BDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=AtU1kcIARpsZYXt8D05gLXwGGsU/iHc+JrhYCZdJwC0=;
 b=AkC5nHitgwtXDkk44+MHUEAW2wuHBKiHVc9psJN8KLjuaO+13LtQ5c+zX6MijkR06O
 qMwrC9Ud5D5cULQzYV5iJdKD7Yg9nXLkHpuHXfx648ykULum6vJ17IBvyWpHkdJpMXEE
 aytgeyHGi/s8ueNzjB8U9GKokSO4X3ifEjiT5NLA2O52y6yRAAyPh6O0PezGl/QsHama
 t0nQTx+CJyF8RtxGitG6rfSEpJpVVxVEF6nLQyyT5U3dUYYA07ufJuGE7Fn5GDZcRN2y
 SMscCHigZqe9bPITR2dJQG3sNkVm/44j4TSJTLYhdpowc9WUyO+qnVws062E4r/Y5O+L
 PTHw==
X-Gm-Message-State: APjAAAWtnpMJsQ8UCpqupHdQzks1k1OyHoWenLXhGScLbpupbPAeIYs3
 n9SD5SXGaiTVv0uCEqOSfpI=
X-Google-Smtp-Source: APXvYqx9jxVnR+WaWBKm9uhZse6CSdxQuKYSO3PVxNpyVBc4m7BoywFCNYX0uB8vasFwSxML0Wxlcg==
X-Received: by 2002:a5d:4ace:: with SMTP id y14mr4847999wrs.131.1572577316435; 
 Thu, 31 Oct 2019 20:01:56 -0700 (PDT)
Received: from [10.230.29.119] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id o1sm4445376wmc.38.2019.10.31.20.01.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 31 Oct 2019 20:01:55 -0700 (PDT)
Subject: Re: [PATCH] thermal: brcmstb: enable hwmon
To: Stefan Wahren <wahrenst@gmx.net>, Chen-Yu Tsai <wens@kernel.org>,
 Markus Mayer <mmayer@broadcom.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>
References: <20191030163807.17817-1-wens@kernel.org>
 <91017889-2ae7-d467-eed3-6d3b2bb130b9@gmx.net>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <a3345dbd-19c6-ab9d-a19c-b8ee0a703c17@gmail.com>
Date: Thu, 31 Oct 2019 20:01:51 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <91017889-2ae7-d467-eed3-6d3b2bb130b9@gmx.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_200159_874815_FFE35D71 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
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
Cc: Chen-Yu Tsai <wens@csie.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/31/2019 6:08 AM, Stefan Wahren wrote:
> Hi Chen-Yu,
> 
> Am 30.10.19 um 17:38 schrieb Chen-Yu Tsai:
>> From: Chen-Yu Tsai <wens@csie.org>
>>
>> By defaul of-based thermal driver do not have hwmon entries registered.
>>
>> Do this explicitly so users can use standard hwmon interfaces and tools
>> to read the temperature.
>>
>> This is based on similar changes for bcm2835_thermal in commit
>> d56c19d07e0b ("thermal: bcm2835: enable hwmon explicitly").
>>
>> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
>> ---
>>
>> This patch was only compile tested. A similar patch [1] was submitted to
>> the downstream kernel, which I did build and actually run on a Raspberry
>> Pi 4.
> 
> just a note: from my understanding [2] the brcmstb_thermal isn't the
> right driver for BCM2711. Please consider the current downstream
> solution for BCM2711 support as a quick hack to avoid writing a new
> thermal driver. But must confess that i didn't test Florian's recent
> changes yet.

The brcmstb_thermal driver is for chips with an AVS_TMON whereas the
2711 does not have it AFAICT, even if the registers are there, the
hardware is not present (or so have I been told).

The AVS_RO register you are being pointed out may work, although the
data is over 10 bits (not 11) and the valid bit is 10 (not 11). It looks
like you may have to check bit 16 as well for a measurement being done
or not.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
