Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD3F82DA4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 10:23:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KE1ym/y0M5x+PdRlSLi5s47qNAkGF4dLNcO+EI0eAvk=; b=juXYUFH6tsSMi2sd99KD7PERp
	r4IPzxwAYkVlBX4AAPFItRGS6tGhodZzsFtFRYV5HV+OsBDDIa2V0+XbTNjdsYSkDyHKxrvcgobCL
	RzROw7zHxsO8pzB9tuJ0ap0AyfiQ3pYHO1jsRAW8gccxdcZmAm0AQby+DxNlgtl/1zf/ZTxEPihW7
	QmjBTWILN1ZRSujnKhdn5SBjZVVuJU+BWsKVg/V1k8P0puKnxlbUjsCScg4T1a9QgYCK8o2/jhb2o
	DdzH12FvNsJd2sDcw3ho69LXwTerZu2Gyo55rGl3paWTF4fPILJtA0iHLKzz9jXi3A7AxTDF/SVEs
	bQu7dBSmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huukv-0007sI-Sv; Tue, 06 Aug 2019 08:23:42 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huuki-0007rd-6m
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 08:23:29 +0000
Received: by mail-wr1-x441.google.com with SMTP id n4so87026457wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 01:23:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=RD9sOS7gT6ZlegeX1a0xUUJ7DdLDwuMR+Ckv3pGMllA=;
 b=h6pXcG7oNroWrnIk3CnKhwqgBwBR4Dv1+eoadyOR5J4QSWAhMOhwSXXeTtVm0LrCZx
 SYXqTmoOWEG41ioVPQTLIgR8e0soGHWPQhaXt0KrIaNH/04LaCFeRYRgrfXmQmiZH6cy
 Rk5n3VkaZ18aYQzy3I2Yx/oY3qrowQWCYDMKD2P8wkjG4mb0z0JqthxBsQs/s11o1keh
 CccZYfl1Krr3BJqTGqusotx3coT7DG/m997Kmch4NlU3jX0HbjqIWbhpD+OnGyM2OTKY
 06lD0qBw5hWs8QtxcxXYd7hVkOWYrEtiZnFjFXjOqEDT/uuz/KvGPggSeEXe1j91GNW/
 q5Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RD9sOS7gT6ZlegeX1a0xUUJ7DdLDwuMR+Ckv3pGMllA=;
 b=h3rO4kPSg5y+eC3YWt+j4CsC19fPKchBuDNlwLFPy4QKuroo5T7BeEQz2DJlfnV6ni
 02EdgQ47MB96+UzcFITytlxy9U4KoarHuPKe9hO4zUoGBVz9sEb6mLNn2sEWQQt2sNMB
 kpFJ20XN+cmuUHDEw6uajwtX7CW9tn/nzH7mdIUl6LzuncJilImqYPjEVF75g5s854e/
 HvrZG4H8Hq9psq6R0iWC67viQoAr9Pbnlc1giJ/MRv9girkZZJQ03Wl76ZLS9+qgc9T6
 bY3kObStcgzQPBj5vVdgMX23mhqqXe7k+R4ROt948shJGhEE18SfwwuD+5Gqduj4Nhh+
 VQ7Q==
X-Gm-Message-State: APjAAAWq+ZrYCuYaBxCDK4z8oHuMf5BAxog8XqkVTf41Fvhu2U5JJ4Bk
 Xuqi0DTMSJKQM7lTscYbj7AFOQ==
X-Google-Smtp-Source: APXvYqwdUng/sQOPDCg+WzY/aqTQBtLKU0Ijopke9iG1HFvl2OQSdFnJfqvRpH9W3B1gMsvLdUL86A==
X-Received: by 2002:adf:c003:: with SMTP id z3mr3290757wre.243.1565079806121; 
 Tue, 06 Aug 2019 01:23:26 -0700 (PDT)
Received: from [192.168.86.34]
 (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
 by smtp.googlemail.com with ESMTPSA id c1sm198509779wrh.1.2019.08.06.01.23.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 06 Aug 2019 01:23:25 -0700 (PDT)
Subject: Re: [PATCH v2 4/4] firmware: meson_sm: Rework driver as a proper
 platform driver
To: Carlo Caione <ccaione@baylibre.com>, khilman@baylibre.com,
 narmstrong@baylibre.com, robh+dt@kernel.org, tglx@linutronix.de,
 jbrunet@baylibre.com, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
References: <20190731082339.20163-1-ccaione@baylibre.com>
 <20190731082339.20163-5-ccaione@baylibre.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <0a4f48fa-0110-78b5-75d9-091849ab4691@linaro.org>
Date: Tue, 6 Aug 2019 09:23:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190731082339.20163-5-ccaione@baylibre.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_012328_257536_3B42CB8B 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 31/07/2019 09:23, Carlo Caione wrote:
> The secure monitor driver is currently a frankenstein driver which is
> registered as a platform driver but its functionality goes through a
> global struct accessed by the consumer drivers using exported helper
> functions.
> 
> Try to tidy up the driver moving the firmware struct into the driver
> data and make the consumer drivers referencing the secure-monitor using
> a new property in the DT.
> 
> Currently only the nvmem driver is using this API so we can fix it in
> the same commit.
> 
> Reviewed-by: Jerome Brunet <jbrunet@baylibre.com>
> Signed-off-by: Carlo Caione <ccaione@baylibre.com>
> ---
>   drivers/firmware/meson/meson_sm.c       | 94 +++++++++++++++++--------
>   drivers/nvmem/meson-efuse.c             | 24 ++++++-

Acked-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
