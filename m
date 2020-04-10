Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A63D41A4768
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 16:28:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cwWtzo5HWe9zCdXspuGwsDoNRw2JdzOtBrNpjcqlEuI=; b=tkUheltdgpRgU3
	F/8z7GdL+ibcsFJRWyj8+n9hrrAi8y8bzyGBCylMQhDwaGuV9nbIZfWlTOraPvireWodtfPMySBWH
	Lr+WOcLLgqQvQ3cd3k5vm+MOVDkEwfV7ZSPEP+vPQP1M1s4ao/7fbgk1fkfVP4R6aVjum2qhIqcFJ
	uZezWci8z4C0lqcC/Hxf0x2BV55AtL8Jfw+gxwJlkTGjbiUFjm42Dii/VWjdvKzQfrnxghNgViKOw
	g+9rg2E8UHQ58S+fHhHtiReA9ax0vEAP3cb1/WfpLY2Qrk6klJ3F+LROF+QJHNGzsZgmA+j6xj8zt
	c3R6ClI/GourvTacPz2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMueB-0008Gj-LN; Fri, 10 Apr 2020 14:28:43 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMue4-0008GD-7h
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 14:28:37 +0000
Received: by mail-lf1-x142.google.com with SMTP id u10so323647lfo.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 07:28:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=114DepywJbkKU/kNK8ifxFxs4xFQzPNOTcqxhW01gig=;
 b=vb+IEAC9JkmoBHpGwKsz0ASSJblQcwkss5tbEZrtPTg9+AUTqKOuJ45fe1+AnyMYL5
 Tc0TT8YjluJfHOZk6aHSWSIt6J2lwEFAzns+Z26BNdGZo50LlLEy+nte46mBQYq9XlR4
 Erh2NVUxmWuLIlA0WGNEuKx4P7G1fWFKNUAwxZHaaqMddS9wt29OKkwNuBQlqLab9W2K
 AJzFosMzctfnHY0/kJpgNgKU8VniE0FScHP4SPYJX9l8R5a5qBdjtJrHaPNY7u9Q6f1O
 4PiwFumFlLTF/S43L+8hGL2dmZqHy00kHSed3woKNhL12tlGBRDCEaTqqhwyWkeIOkl+
 n36A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=114DepywJbkKU/kNK8ifxFxs4xFQzPNOTcqxhW01gig=;
 b=Uyf/A1iY267ICfZbYBWQ00OVF1/a5KJ5cdlLt+CUmyM28/a0rXWRS1JR90s3jnp9jp
 ISBVw+ZwV4qeHhw87us1QenU3lZgrGIuXSMb6dEWAg6DrfLrdnROyMe1O7JIn2X+2fyQ
 t3bLKgZZysVxXTGVUx9qQmB9ELzHabldCFeXsQvRQ7KzbWQsldfVnyu2SDkKrIpv9OZ3
 OwVqLSwspFr8ouJLHSkL7+W9JmUAXD3RGZoYpbou4OCCdVcGpEn0FsdB4wlSS9CGPyDi
 p85hanLvtbY4K2Awli3Nnu4X8jANCHx0VIvJX4b8+OtXYU5yqM8bSBThByuOCqymoNgk
 /x4Q==
X-Gm-Message-State: AGi0PuZ4Sh7kY+QLBe6mFQzonvtQ9319BSwyJOuFNRvQgsnnzvlE8NR/
 Le71AYkE9qFu6/g6ARb2hXQjdQiU
X-Google-Smtp-Source: APiQypK+DeCHy8Q90LIm8WJtFHRQdsbxGiBMPZhDXTTciugISnAqkYYnxNBFX0eNC3l+386WkJSWwA==
X-Received: by 2002:a19:d84:: with SMTP id 126mr2840495lfn.35.1586528904234;
 Fri, 10 Apr 2020 07:28:24 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.googlemail.com with ESMTPSA id k4sm1351793lfo.47.2020.04.10.07.28.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Apr 2020 07:28:23 -0700 (PDT)
Subject: Re: [PATCH v6 11/14] memory: tegra: Support derated timings on
 Tegra210
To: Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh+dt@kernel.org>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-12-thierry.reding@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <937a1aa6-473a-f6c5-729a-4f34e4ee3abb@gmail.com>
Date: Fri, 10 Apr 2020 17:28:22 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200409175238.3586487-12-thierry.reding@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_072836_271916_6459A43D 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MDkuMDQuMjAyMCAyMDo1MiwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKPiAtZW51bSB0ZWdy
YTIxMF9lbWNfZHJhbV9vdmVyX3RlbXBfc3RhdGUgewo+IC0JVEVHUkEyMTBfRU1DX0RSQU1fT1ZF
Ul9URU1QX05PTkUgPSAwLAo+IC0JVEVHUkEyMTBfRU1DX0RSQU1fT1ZFUl9URU1QX1JFRlJFU0hf
WDIsCj4gLQlURUdSQTIxMF9FTUNfRFJBTV9PVkVSX1RFTVBfUkVGUkVTSF9YNCwKPiAtCVRFR1JB
MjEwX0VNQ19EUkFNX09WRVJfVEVNUF9USFJPVFRMRSwgLyogNHggUmVmcmVzaCArIGRlcmF0aW5n
LiAqLwo+ICtlbnVtIHRlZ3JhMjEwX2VtY19yZWZyZXNoIHsKPiArCVRFR1JBMjEwX0VNQ19SRUZS
RVNIX05PTUlOQUwgPSAwLAo+ICsJVEVHUkEyMTBfRU1DX1JFRlJFU0hfMlgsCj4gKwlURUdSQTIx
MF9FTUNfUkVGUkVTSF80WCwKPiArCVRFR1JBMjEwX0VNQ19SRUZSRVNIX1RIUk9UVExFLCAvKiA0
eCBSZWZyZXNoICsgZGVyYXRpbmcuICovCj4gIH07CgpXaGF0IGFib3V0IHRvIGF2b2lkIGFsbCB0
aGUgdW5uZWNlc3NhcnkgcmVuYW1pbmdzPwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
