Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 929B9DB15A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 17:44:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dB2oedXwZBMoaPC9BiM0sYG5ey0RIbAHJ5lqK0kfk1Q=; b=X+O1/6MA8qv+/s
	nj7YnEp/pviZonMpuVoXAYdrGo1reHpUnzZ3uwKirxgKQOpV+TLVU5h3I/DMGqQdIDPV0h9u/Ed0n
	x7ZSilLlpCy2Hjbdfn9navByZ+deMLGM0fA78enW5Ud0+O/ZQSr7ZoVcMOqikaAoAGJCGwiK+9wRP
	uJOLqoiuehERC5khW/ngtFGuxs/QQsk86fySsiil0P12MTf5nWAK2MsmHOmXye6d+o7MgT/MZIeLe
	LP1yKox/MKLFD7cH7dpTsSXLWTstsPBlCjNaJHPvItYC7eA+p8/wR2ueOXBTQhJa0NR6DsvAAomfv
	Qx5bEvy+OC5Z6P9Jq1tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL7wT-0005O3-Vi; Thu, 17 Oct 2019 15:43:57 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL7wF-0005M3-SE
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 15:43:45 +0000
Received: by mail-pg1-x52b.google.com with SMTP id p30so1595973pgl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 08:43:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=VOvV2/r2ynt55cnuM6fNik0rL8EihZtai79HG+PQGYs=;
 b=epCRTxPcIzW1JK1hav0kYxQFV4/KtoeRzGuJPSEcPwm+07F5s+hclMNoXvQqf4/Xn1
 PHRKmwonpyafnqMNOi9dcJPoPWnD3ya7CTnu9Qry/TzAB4HpaKOrbK0R0qaDDbOiEQuc
 NAMjpGaz/LGOeUnEU04tjxWY9G5Za9Eys1QYmuHKt94WBRAaXPRhFZjOql8+NYkH3ors
 UfFt5ENN2F9lK41nMVEmg+Mu/70pL+aDZgePCLsFDjUW2Ci+iy3EgWg4J7mRQpCA0hge
 OOvt2UsggArcB7npbmFQA0cehGx67F4L0qjr14Beidi0Rt1MqMZm6SjLMBOoC32THmyd
 CsDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=VOvV2/r2ynt55cnuM6fNik0rL8EihZtai79HG+PQGYs=;
 b=YEabF31855RG+YFvi4CvzjWE76WVZavOmKEtsJokFmKej6xZiQcw0kfghj3KGs0m5Y
 GVbDq+5z5cV7Q3diO0VkeOKNwURDZ1Gewhs2R8YhYPJLeZmxQTAv4hc77/LZRgOMpiFB
 dx+D9Rfoi5Jc3w/N2JC3IIxxt1HR6829FbVmdirmqA6kxPULZHR/+JZDXGzCZc+XY9Mo
 AJQZG9b5zE6v0xjr/wBDACerR68wQB6UexJtncMuxJpEMokWcW8aD0FSIwuOBgu5VVGY
 aqsh6K7QnArPSxY0AYx4gS7thwhZi8GRHpA1hD7iNK2sY2hxUQHjVIdBmMe7yj9ta5yR
 yePA==
X-Gm-Message-State: APjAAAWaCfw+P5GGSTbMz0jX4qVU2UJpQJdYQemLUw8AzQezOgEOiMuQ
 zuF1J5ioehOpc8W1X1I1aTEcyg==
X-Google-Smtp-Source: APXvYqwBC3rv9yHdPPniodMnf3ve5F6d/VBydNViIQXvnFmqx0IoTgB6MJOo2TPQ1KZma6BcLkaNWA==
X-Received: by 2002:a17:90a:3608:: with SMTP id
 s8mr5226930pjb.44.1571327022410; 
 Thu, 17 Oct 2019 08:43:42 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:d8f2:392e:5b44:157d])
 by smtp.gmail.com with ESMTPSA id f14sm3987624pfq.187.2019.10.17.08.43.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 17 Oct 2019 08:43:41 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, edubezval@gmail.com
Subject: Re: [PATCH v7 0/7] Add support of New Amlogic temperature sensor for
 G12 SoCs
In-Reply-To: <9ade0e3e-1bd7-c49b-44b1-2361f1e3a7b1@linaro.org>
References: <20191004090114.30694-1-glaroque@baylibre.com>
 <7hwod4fxwb.fsf@baylibre.com>
 <9ade0e3e-1bd7-c49b-44b1-2361f1e3a7b1@linaro.org>
Date: Thu, 17 Oct 2019 08:43:41 -0700
Message-ID: <7h36frcr82.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_084343_911832_9DA9B31B 
X-CRM114-Status: UNSURE (   7.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52b listed in]
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, amit.kucheria@linaro.org,
 Guillaume La Roque <glaroque@baylibre.com>, linux-amlogic@lists.infradead.org,
 rui.zhang@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Daniel,

Daniel Lezcano <daniel.lezcano@linaro.org> writes:

> On 16/10/2019 18:39, Kevin Hilman wrote:
>> Eduardo,
>> 
>> Guillaume La Roque <glaroque@baylibre.com> writes:
>> 
>>> This patchs series add support of New Amlogic temperature sensor and minimal
>>> thermal zone for SEI510 and ODROID-N2 boards.
>> 
>> [...]
>> 
>>> Guillaume La Roque (7):
>>>   dt-bindings: thermal: Add DT bindings documentation for Amlogic
>>>     Thermal
>>>   thermal: amlogic: Add thermal driver to support G12 SoCs
>>>   arm64: dts: amlogic: g12: add temperature sensor
>>>   arm64: dts: meson: g12: Add minimal thermal zone
>>>   arm64: dts: amlogic: g12a: add cooling properties
>>>   arm64: dts: amlogic: g12b: add cooling properties
>>>   MAINTAINERS: add entry for Amlogic Thermal driver
>> 
>> This has now been thorougly reviewed/tested.
>> 
>> I've queued all the "arm64: dts:" patches via my amlogic tree for v5.5.
>> Can you please queue up the driver, bindings and MAINTAINERS patch?
>
> 1, 2, 7 right?

Correct.

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
