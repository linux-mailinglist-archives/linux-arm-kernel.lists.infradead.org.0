Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A08101425EB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 09:39:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sqp1giEWRgcwQJhgaOimPVg7yxxdfOZOlUta0TZkmhA=; b=mBuBA2Ij6fDP8S
	9fP8TdFzSn/CZTQvhNeqjLnOGMOcZ/N1Ofi7eRgTlvd9LTZ0TjobR3LHug/VKsJIkJJ0jFr76Olxr
	jO+aYhaVa7CPwP9fjs25z0ptVVkHzF1UszZL0EWfTjjjRG2+z0cYDAfk40Iwa1chVoh9e9gEPIRif
	wgz8qOF62YpBXB1580EjTs8wgL9IeghHgdEOIfp+sO2YjMsse8WsZ5Ztqm9YW8brDZICtQwye6pzx
	NaaicatoksS3nKcMP4bNOIAqg3v2aWEA26ueCuAQAsLmT6sNS890UMeHg2i5zGWjXe+hV3Abzl/OH
	gUIUCWARsmlJVV4KVYrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itSb2-0006R1-6c; Mon, 20 Jan 2020 08:39:44 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itSao-0006Q4-DJ
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 08:39:34 +0000
Received: by mail-wm1-x341.google.com with SMTP id p9so13539281wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Jan 2020 00:39:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=N6VJsg9JGv0fWHa76rwtqQjIJNMz7B1e6cCi7vAeucA=;
 b=PwUeFiFN8eOJcQnhMLJYdsdPj3CeRSd/gW5H86PcPvm1KR4SfbDZUB6/AQX94a0/5D
 ysX2N/IqhLZcndErFds2W27uTP6ySMYUghJA0BVtdLud3IHwTN+OxKTTs+LW0KzpdlXa
 w1zilTyN3Es0wz8+yg0U6xx3pI4MyBsDhpDPGx8cp+OjR5IpClecxVFTN25RvQ3AbHsB
 wtK653Bl/lx7QSDRKzMQ2lSyt6IO07uJ0fATmCLktwkPjIY2nPJR6FjR6zh7Y+phaYIp
 VhAlnNaLnadKcrV0qAmVesq+3qqQKRTLEjjn6A3hI0YMGG1c6XOUKcD+I82pleShTrrG
 tJCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=N6VJsg9JGv0fWHa76rwtqQjIJNMz7B1e6cCi7vAeucA=;
 b=UVnTofDK3u2Ke2YySgdP0hS73bL09iMW6puEKdS3esI7VNZkqGw3eE3R7kAZnL2rcu
 qVRd4wyFdvRWu8M/5qfY5/RaxmfK/rlZYk8E55N9JPwoCGo+v2XWJj6pUFM7YMHinftA
 bbGpacZBaHg40I/YxMRZTdvEK/jlWSI+AA/Y9Siguu5jn8DGyf6099sQEk99R5VnyCVF
 /MyGtB3GUAXPo86R9ON4O0be+9oJNhIXAynRKuQARxxe8whyhcGk2v2G71uS+e/tOW4b
 p7ZFOAQZESULGaCHi98XTNaOFxHNDjY45krIQfwsfJ6yzXBwAbvh7d6rjc+NCZ205xgH
 rbqA==
X-Gm-Message-State: APjAAAWv5xgEFgl36hsj9EjBXNMQs9aeLsdKp9NVYRwheuk1gO8Iwobh
 P2gJYMXfkGvT8iCcXVTW9d4mJQ==
X-Google-Smtp-Source: APXvYqwBiZckfKEkp4aViCq3tFu0Cz1H/cPbVVqcv9Qv0c5leul2EQuYFA96NpchRLKeNAJc/p99+g==
X-Received: by 2002:a05:600c:1007:: with SMTP id
 c7mr17644273wmc.158.1579509566950; 
 Mon, 20 Jan 2020 00:39:26 -0800 (PST)
Received: from dell ([2.27.35.227])
 by smtp.gmail.com with ESMTPSA id s1sm22441787wmc.23.2020.01.20.00.39.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Jan 2020 00:39:26 -0800 (PST)
Date: Mon, 20 Jan 2020 08:39:42 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH v5 2/2] dt-bindings: atmel-usart: add
 microchip,sam9x60-{usart, dbgu}
Message-ID: <20200120083942.GU15507@dell>
References: <1579262309-6542-1-git-send-email-claudiu.beznea@microchip.com>
 <1579262309-6542-3-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579262309-6542-3-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_003930_448163_A16C5612 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 alexandre.belloni@bootlin.com, richard.genoud@gmail.com,
 linux-kernel@vger.kernel.org, radu_nicolae.pirea@upb.ro,
 linux-spi@vger.kernel.org, ludovic.desroches@microchip.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAxNyBKYW4gMjAyMCwgQ2xhdWRpdSBCZXpuZWEgd3JvdGU6Cgo+IEFkZCBtaWNyb2No
aXAsc2FtOXg2MC11c2FydCBhbmQgYWRkIG1pY3JvY2hpcCxzYW05eDYwLWRiZ3UgdG8gRFQKPiBi
aW5kaW5ncyBkb2N1bWVudGF0aW9uLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENsYXVkaXUgQmV6bmVh
IDxjbGF1ZGl1LmJlem5lYUBtaWNyb2NoaXAuY29tPgo+IEFja2VkLWZvci1NRkQtYnk6IExlZSBK
b25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Cj4gLS0tCj4gCj4gSGkgTGVlLAo+IAo+IEJldHdl
ZW4gdmVyc2lvbiAzICh0aGF0IHlvdSBBY2tlZC1mb3ItTUZELWJ5KSBhbmQgdGhpcyBvbmUsIHRo
ZXJlIGlzIGEKPiBuZXcgbGluZSBpbnRyb2R1Y2VkIGluIHRoaXMgcGF0Y2g6Cj4gCj4gKyAgICAg
ICAtICJtaWNyb2NoaXAsc2FtOXg2MC11c2FydCIKPiAKPiBJIGtlcHQgeW91ciBBY2tlZC1mb3It
TUZELWJ5IGluIHRoaXMgdmVyc2lvbiAod2l0aCB0aGUgZXh0cmEgbGluZSkuCj4gVGVsbCBtZSBp
ZiB5b3UgY29uc2lkZXIgb3RoZXJ3aXNlLgo+IAo+IFRoYW5rIHlvdSwKPiBDbGF1ZGl1IEJlem5l
YQo+IAo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL2F0bWVsLXVzYXJ0
LnR4dCB8IDIgKysKPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKQXBwbGllZCwg
dGhhbmtzLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5p
Y2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0Nz
CkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
