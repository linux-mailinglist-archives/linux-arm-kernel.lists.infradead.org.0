Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8404184E9E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 16:21:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ro4kJ72j4KmK50CjMx3imUssGiHkqKiBs6Rr/c1C3Bk=; b=s/kxGBlQZMGQWF
	9st+wm/7nKwrK5C4TdGag01bvQ0VV5g07YQChzKgVHeVI0Xx1xX2cOOzk+Y6PdaZmEVM8//0A8X7N
	wG8RcHWT004MTC/rpfwo93ypjJyJLLm/+rZ13AF7HQbZbA5vZA2b6XvtALO7tPJ1+hJmDEZPwxVlZ
	SvlHsuDcnb/ahvrnuk8i69xCE2ehjBk1uWVP/MbRmfjuwz5QtlAlaK/5I59mndqpfyq0WSXkW8tS0
	meie/HoTT07nAF+SJJ7NWfKItHk/LBr2WJutc2KOYW83nMPFU7JLHan9FE+7Q4OOMYgSF/TbiJacx
	Y8aw2R1sG2dQ/fqF/3ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvMox-0002CL-QI; Wed, 07 Aug 2019 14:21:44 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvMoc-00026c-CK
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 14:21:23 +0000
Received: by mail-lj1-x241.google.com with SMTP id m23so85577047lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 07:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ym3TWnNJEGFgpteRuO2hxD/LdHQA3MDsH07HbJofTfQ=;
 b=INI+HycjT3+g4qBx9Ko5IoZjmKKYITZXt33h42PGL4N4OFmj4XRfzycycphtJLGrEr
 hvhZ40Ag3dRe6Zqw6qglZV/I0D1HMs6W3oiJtQbJunhuUcivoYQpQRF7Io1n2yFLn4er
 VDv+j3c2O6IruavHGhCEIEfI48WfWSLFarEAh3qELg1H3kYJVBE0O37FORW3scp+WAkx
 gg0qVrUYF56BxCuDfSZgHcS6n0K/yUvYiSnTs8NfqRTxo3d+JOevUhhq4DH7ecvcHzzq
 W1OLejawnQSEzC2/hozP0ETdmb+t3rCSzwOpHHXkdVO5KDQ4LTcWwzTNbhROzi8PjiGN
 VY5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ym3TWnNJEGFgpteRuO2hxD/LdHQA3MDsH07HbJofTfQ=;
 b=j26PKxBta7cT/4kllo5SWgOTOMLsRG4G5JW+bn4nfd7E6nE0wQ6N91qrhs8vilEbN0
 eXbS8JIqWuPIavt7SEqTwuFXejIQZPFNTKWjsshvchDugne9J6qXj7+hBhOgZNaxBFCw
 +d2llI0PEcBIU75aEecWpd5N0af+paiiCcwxvCBgu9sd/a8N8iABNRONzNC3ceBlMvyr
 mzK6Rlf/XOtOtTFfEEBVU76aSYQ2Eycb/DvoE+Im/uco+aCjQShWOpJJGqHG7CQXUjji
 JN3mQkciTc+IFam3mq2HlKS16hBggzOEk0Md7+GR26TI/4Ux+w6iXpylUUPHDt1des9N
 TVdQ==
X-Gm-Message-State: APjAAAV4PVb5MI6IeIkCYcWXW6QOjVIXcpdUNc5E5SMVlhAmGjK+n76x
 TBMZco40QZb9/NO1nRE6cIOsBw==
X-Google-Smtp-Source: APXvYqxcQ5lxNvBv2pxpv7dxod4WchOzutIsq7iwKp5scxXoeS4ecQlLYFiSdRaDVQjZg8kQ68gzuA==
X-Received: by 2002:a2e:65ca:: with SMTP id e71mr5113463ljf.61.1565187679266; 
 Wed, 07 Aug 2019 07:21:19 -0700 (PDT)
Received: from [10.44.66.8] ([212.45.67.2])
 by smtp.googlemail.com with ESMTPSA id q17sm3417148lfa.82.2019.08.07.07.21.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 07 Aug 2019 07:21:18 -0700 (PDT)
Subject: Re: [RFC PATCH 09/11] devfreq: exynos-bus: Add interconnect
 functionality to exynos-bus
To: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
References: <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <CGME20190723122028eucas1p2eb75f35b810e71d6c590370aaff0997b@eucas1p2.samsung.com>
 <20190723122016.30279-10-a.swigon@partner.samsung.com>
 <6e8b2081-2fb3-9ab8-37d1-8b5fe5fd8e11@linaro.org>
 <62557522be4924a01d3822d4734c30f2965c608b.camel@partner.samsung.com>
From: Georgi Djakov <georgi.djakov@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=georgi.djakov@linaro.org; prefer-encrypt=mutual; keydata=
 mQINBFjTuRcBEACyAOVzghvyN19Sa/Nit4LPBWkICi5W20p6bwiZvdjhtuh50H5q4ktyxJtp
 1+s8dMSa/j58hAWhrc2SNL3fttOCo+MM1bQWwe8uMBQJP4swgXf5ZUYkSssQlXxGKqBSbWLB
 uFHOOBTzaQBaNgsdXo+mQ1h8UCgM0zQOmbs2ort8aHnH2i65oLs5/Xgv/Qivde/FcFtvEFaL
 0TZ7odM67u+M32VetH5nBVPESmnEDjRBPw/DOPhFBPXtal53ZFiiRr6Bm1qKVu3dOEYXHHDt
 nF13gB+vBZ6x5pjl02NUEucSHQiuCc2Aaavo6xnuBc3lnd4z/xk6GLBqFP3P/eJ56eJv4d0B
 0LLgQ7c1T3fU4/5NDRRCnyk6HJ5+HSxD4KVuluj0jnXW4CKzFkKaTxOp7jE6ZD/9Sh74DM8v
 etN8uwDjtYsM07I3Szlh/I+iThxe/4zVtUQsvgXjwuoOOBWWc4m4KKg+W4zm8bSCqrd1DUgL
 f67WiEZgvN7tPXEzi84zT1PiUOM98dOnmREIamSpKOKFereIrKX2IcnZn8jyycE12zMkk+Sc
 ASMfXhfywB0tXRNmzsywdxQFcJ6jblPNxscnGMh2VlY2rezmqJdcK4G4Lprkc0jOHotV/6oJ
 mj9h95Ouvbq5TDHx+ERn8uytPygDBR67kNHs18LkvrEex/Z1cQARAQABtChHZW9yZ2kgRGph
 a292IDxnZW9yZ2kuZGpha292QGxpbmFyby5vcmc+iQI+BBMBAgAoBQJY07kXAhsDBQkHhM4A
 BgsJCAcDAgYVCAIJCgsEFgIDAQIeAQIXgAAKCRCyi/eZcnWWUuvsD/4miikUeAO6fU2Xy3fT
 l7RUCeb2Uuh1/nxYoE1vtXcow6SyAvIVTD32kHXucJJfYy2zFzptWpvD6Sa0Sc58qe4iLY4j
 M54ugOYK7XeRKkQHFqqR2T3g/toVG1BOLS2atooXEU+8OFbpLkBXbIdItqJ1M1SEw8YgKmmr
 JlLAaKMq3hMb5bDQx9erq7PqEKOB/Va0nNu17IL58q+Q5Om7S1x54Oj6LiG/9kNOxQTklOQZ
 t61oW1Ewjbl325fW0/Lk0QzmfLCrmGXXiedFEMRLCJbVImXVKdIt/Ubk6SAAUrA5dFVNBzm2
 L8r+HxJcfDeEpdOZJzuwRyFnH96u1Xz+7X2V26zMU6Wl2+lhvr2Tj7spxjppR+nuFiybQq7k
 MIwyEF0mb75RLhW33sdGStCZ/nBsXIGAUS7OBj+a5fm47vQKv6ekg60oRTHWysFSJm1mlRyq
 exhI6GwUo5GM/vE36rIPSJFRRgkt6nynoba/1c4VXxfhok2rkP0x3CApJ5RimbvITTnINY0o
 CU6f1ng1I0A1UTi2YcLjFq/gmCdOHExT4huywfu1DDf0p1xDyPA1FJaii/gJ32bBP3zK53hM
 dj5S7miqN7F6ZpvGSGXgahQzkGyYpBR5pda0m0k8drV2IQn+0W8Qwh4XZ6/YdfI81+xyFlXc
 CJjljqsMCJW6PdgEH7kCDQRY07kXARAAvupGd4Jdd8zRRiF+jMpv6ZGz8L55Di1fl1YRth6m
 lIxYTLwGf0/p0oDLIRldKswena3fbWh5bbTMkJmRiOQ/hffhPSNSyyh+WQeLY2kzl6geiHxD
 zbw37e2hd3rWAEfVFEXOLnmenaUeJFyhA3Wd8OLdRMuoV+RaLhNfeHctiEn1YGy2gLCq4VNb
 4Wj5hEzABGO7+LZ14hdw3hJIEGKtQC65Jh/vTayGD+qdwedhINnIqslk9tCQ33a+jPrCjXLW
 X29rcgqigzsLHH7iVHWA9R5Aq7pCy5hSFsl4NBn1uV6UHlyOBUuiHBDVwTIAUnZ4S8EQiwgv
 WQxEkXEWLM850V+G6R593yZndTr3yydPgYv0xEDACd6GcNLR/x8mawmHKzNmnRJoOh6Rkfw2
 fSiVGesGo83+iYq0NZASrXHAjWgtZXO1YwjW9gCQ2jYu9RGuQM8zIPY1VDpQ6wJtjO/KaOLm
 NehSR2R6tgBJK7XD9it79LdbPKDKoFSqxaAvXwWgXBj0Oz+Y0BqfClnAbxx3kYlSwfPHDFYc
 R/ppSgnbR5j0Rjz/N6Lua3S42MDhQGoTlVkgAi1btbdV3qpFE6jglJsJUDlqnEnwf03EgjdJ
 6KEh0z57lyVcy5F/EUKfTAMZweBnkPo+BF2LBYn3Qd+CS6haZAWaG7vzVJu4W/mPQzsAEQEA
 AYkCJQQYAQIADwUCWNO5FwIbDAUJB4TOAAAKCRCyi/eZcnWWUhlHD/0VE/2x6lKh2FGP+QHH
 UTKmiiwtMurYKJsSJlQx0T+j/1f+zYkY3MDX+gXa0d0xb4eFv8WNlEjkcpSPFr+pQ7CiAI33
 99kAVMQEip/MwoTYvM9NXSMTpyRJ/asnLeqa0WU6l6Z9mQ41lLzPFBAJ21/ddT4xeBDv0dxM
 GqaH2C6bSnJkhSfSja9OxBe+F6LIAZgCFzlogbmSWmUdLBg+sh3K6aiBDAdZPUMvGHzHK3fj
 gHK4GqGCFK76bFrHQYgiBOrcR4GDklj4Gk9osIfdXIAkBvRGw8zg1zzUYwMYk+A6v40gBn00
 OOB13qJe9zyKpReWMAhg7BYPBKIm/qSr82aIQc4+FlDX2Ot6T/4tGUDr9MAHaBKFtVyIqXBO
 xOf0vQEokkUGRKWBE0uA3zFVRfLiT6NUjDQ0vdphTnsdA7h01MliZLQ2lLL2Mt5lsqU+6sup
 Tfql1omgEpjnFsPsyFebzcKGbdEr6vySGa3Cof+miX06hQXKe99a5+eHNhtZJcMAIO89wZmj
 7ayYJIXFqjl/X0KBcCbiAl4vbdBw1bqFnO4zd1lMXKVoa29UHqby4MPbQhjWNVv9kqp8A39+
 E9xw890l1xdERkjVKX6IEJu2hf7X3MMl9tOjBK6MvdOUxvh1bNNmXh7OlBL1MpJYY/ydIm3B
 KEmKjLDvB0pePJkdTw==
Message-ID: <4155482f-8f8f-a659-63ba-25701540b2c5@linaro.org>
Date: Wed, 7 Aug 2019 17:21:15 +0300
MIME-Version: 1.0
In-Reply-To: <62557522be4924a01d3822d4734c30f2965c608b.camel@partner.samsung.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_072122_425124_DDEDABE4 
X-CRM114-Status: GOOD (  23.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?UTF-8?Q?Bart=c5=82omiej_=c5=bbo=c5=82nierkiewicz?=
 <b.zolnierkie@samsung.com>, sw0312.kim@samsung.com, krzk@kernel.org,
 inki.dae@samsung.com, cw00.choi@samsung.com, myungjoo.ham@samsung.com,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQXJ0dXIsCgpPbiA4LzEvMTkgMTA6NTksIEFydHVyIMWad2lnb8WEIHdyb3RlOgo+IEhpIEdl
b3JnaSwKPiAKPiBPbiBGcmksIDIwMTktMDctMjYgYXQgMTE6MDUgKzAzMDAsIEdlb3JnaSBEamFr
b3Ygd3JvdGU6Cj4+IEhpIEFydHVyLAo+Pgo+PiBPbiA3LzIzLzE5IDE1OjIwLCBBcnR1ciDFmndp
Z2/FhCB3cm90ZToKPj4+IFRoaXMgcGF0Y2ggYWRkcyBpbnRlcmNvbm5lY3QgZnVuY3Rpb25hbGl0
eSB0byB0aGUgZXh5bm9zLWJ1cyBkZXZmcmVxCj4+PiBkcml2ZXIuCj4+Pgo+Pj4gVGhlIFNvQyB0
b3BvbG9neSBpcyBhIGdyYXBoIChvciwgbW9yZSBzcGVjaWZpY2FsbHksIGEgdHJlZSkgYW5kIG1v
c3Qgb2YgaXRzCj4+PiBlZGdlcyBhcmUgdGFrZW4gZnJvbSB0aGUgZGV2ZnJlcSBwYXJlbnQtY2hp
bGQgaGllcmFyY2h5IChjZi4KPj4+IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9k
ZXZmcmVxL2V4eW5vcy1idXMudHh0KS4gVGhlIHByZXZpb3VzCj4+PiBwYXRjaCBhZGRzIG1pc3Np
bmcgZWRnZXMgdG8gdGhlIERUICh1bmRlciB0aGUgbmFtZSAncGFyZW50JykuIER1ZSB0bwo+Pj4g
dW5zcGVjaWZpZWQgcmVsYXRpdmUgcHJvYmluZyBvcmRlciwgLUVQUk9CRV9ERUZFUiBtYXkgYmUg
cHJvcGFnYXRlZCB0bwo+Pj4gZ3VhcmFudGVlIHRoYXQgYSBjaGlsZCBpcyBwcm9iZWQgYmVmb3Jl
IGl0cyBwYXJlbnQuCj4+Pgo+Pj4gRWFjaCBidXMgaXMgbm93IGFuIGludGVyY29ubmVjdCBwcm92
aWRlciBhbmQgYW4gaW50ZXJjb25uZWN0IG5vZGUgYXMgd2VsbAo+Pj4gKGNmLiBEb2N1bWVudGF0
aW9uL2ludGVyY29ubmVjdC9pbnRlcmNvbm5lY3QucnN0KSwgaS5lLiBldmVyeSBidXMgcmVnaXN0
ZXJzCj4+PiBpdHNlbGYgYXMgYSBub2RlLiBOb2RlIElEcyBhcmUgbm90IGhhcmRjb2RlZCBidXQg
cmF0aGVyIGFzc2lnbmVkIGF0Cj4+PiBydW50aW1lLCBpbiBwcm9iaW5nIG9yZGVyIChzdWJqZWN0
IHRvIHRoZSBhYm92ZS1tZW50aW9uZWQgZXhjZXB0aW9uCj4+PiByZWdhcmRpbmcgcmVsYXRpdmUg
b3JkZXIpLiBUaGlzIGFwcHJvYWNoIGFsbG93cyBmb3IgdXNpbmcgdGhpcyBkcml2ZXIgd2l0aAo+
Pj4gdmFyaW91cyBFeHlub3MgU29Dcy4KPj4KPj4gSSBhbSBub3QgZmFtaWxpYXIgd2l0aCB0aGUg
RXh5bm9zIGJ1cyB0b3BvbG9neSwgYnV0IGl0IHNlZW1zIHRvIG1lIHRoYXQgaXQncyBub3QKPj4g
cmVwcmVzZW50ZWQgY29ycmVjdGx5LiBBbiBpbnRlcmNvbm5lY3QgcHJvdmlkZXIgd2l0aCBqdXN0
IGEgc2luZ2xlIG5vZGUgKHBvcnQpCj4+IGlzIG9kZC4gSSB3b3VsZCBleHBlY3QgdGhhdCBlYWNo
IHByb3ZpZGVyIGNvbnNpc3RzIG9mIG11bHRpcGxlIG1hc3RlciBhbmQgc2xhdmUKPj4gbm9kZXMu
IFRoaXMgZGF0YSB3b3VsZCBiZSB1c2VkIGJ5IGEgZnJhbWV3b3JrIHRvIHVuZGVyc3RhbmQgd2hh
dCBhcmUgdGhlIGxpbmtzCj4+IGFuZCBob3cgdGhlIHRyYWZmaWMgZmxvd3MgYmV0d2VlbiB0aGUg
SVAgYmxvY2tzIGFuZCB0aHJvdWdoIHdoaWNoIGJ1c2VzLgo+IAo+IFRvIHN1bW1hcml6ZSB0aGUg
ZXh5bm9zLWJ1cyB0b3BvbG9neVsxXSB1c2VkIGJ5IHRoZSBkZXZmcmVxIGRyaXZlcjogVGhlcmUg
YXJlCj4gbWFueSBkYXRhIGJ1c2VzIGZvciBkYXRhIHRyYW5zZmVyIGluIFNhbXN1bmcgRXh5bm9z
IFNvQy4gRXZlcnkgYnVzIGhhcyBpdHMgb3duCj4gY2xvY2suIEJ1c2VzIG9mdGVuIHNoYXJlIHBv
d2VyIGxpbmVzLCBpbiB3aGljaCBjYXNlIG9uZSBvZiB0aGUgYnVzZXMgb24gdGhlCj4gcG93ZXIg
bGluZSBpcyByZWZlcnJlZCB0byBhcyAncGFyZW50JyAob3IgYXMgJ2RldmZyZXEnIGluIHRoZSBE
VCkuIEluIHRoZQo+IHBhcnRpY3VsYXIgY2FzZSBvZiBFeHlub3M0NDEyWzFdWzJdLCB0aGUgdG9w
b2xvZ3kgY2FuIGJlIGV4cHJlc3NlZCBhcyBmb2xsb3dzOgo+IAo+IGJ1c19kbWMKPiAtLSBidXNf
YWNwCj4gLS0gYnVzX2MyYwo+IAo+IGJ1c19sZWZ0YnVzCj4gLS0gYnVzX3JpZ2h0YnVzCj4gLS0g
YnVzX2Rpc3BsYXkKPiAtLSBidXNfZnN5cwo+IC0tIGJ1c19wZXJpCj4gLS0gYnVzX21mYwo+IAo+
IFdoZXJlIGJ1c19kbWMgYW5kIGJ1c19sZWZ0YnVzIHByb2JhYmx5IGNvdWxkIGJlIHJlZmVycmVk
IHRvIGFzIG1hc3RlcnMsIGFuZCB0aGUKPiBmb2xsb3dpbmcgaW5kZW50ZWQgbm9kZXMgYXMgc2xh
dmVzLiBQYXRjaCAwOC8xMSBvZiB0aGlzIFJGQyBhZGRpdGlvbmFsbHkgYWRkcwo+IHRoZSBmb2xs
b3dpbmcgdG8gdGhlIERUOgo+IAo+IGJ1c19kbWMKPiAtLSBidXNfbGVmdGJ1cwo+IAo+IFdoaWNo
IG1ha2VzIHRoZSB0b3BvbG9neSBhIHZhbGlkIHRyZWUuCj4gCj4gVGhlIGV4eW5vcy1idXMgY29u
Y2VwdCBpbiBkZXZmcmVxWzNdIGlzIGRlc2lnbmVkIGluIHN1Y2ggYSB3YXkgdGhhdCBldmVyeSBi
dXMgaXMKPiBwcm9iZWQgc2VwYXJhdGVseSBhcyBhIHBsYXRmb3JtIGRldmljZSwgYW5kIGlzIGEg
bGFyZ2VseSBpbmRlcGVuZGVudCBlbnRpdHkuCj4KPiBUaGlzIFJGQyBwcm9wb3NlcyBhbiBleHRl
bnNpb24gdG8gdGhlIGV4aXN0aW5nIGRldmZyZXEgZHJpdmVyIHRoYXQgYmFzaWNhbGx5Cj4gcHJv
dmlkZXMgYSBzaW1wbGUgUW9TIHRvIGVuc3VyZSBtaW5pbXVtIGNsb2NrIGZyZXF1ZW5jeSBmb3Ig
c2VsZWN0ZWQgYnVzZXMKPiAocG9zc2libHkgb3ZlcnJpZGluZyBkZXZmcmVxIGdvdmVybm9yIGNh
bGN1bGF0aW9ucykgdXNpbmcgdGhlIGludGVyY29ubmVjdAo+IGZyYW1ld29yay4KPiAKPiBUaGUg
aGllcmFyY2h5IGlzIG1vZGVsbGVkIGluIHN1Y2ggYSB3YXkgdGhhdCBldmVyeSBidXMgaXMgYW4g
aW50ZXJjb25uZWN0IG5vZGUuCj4gT24gdGhlIG90aGVyIGhhbmQsIHdoYXQgaXMgY29uc2lkZXJl
ZCBhbiBpbnRlcmNvbm5lY3QgcHJvdmlkZXIgaGVyZSBpcyBxdWl0ZQo+IGFyYml0cmFyeSwgYnV0
IGZvciB0aGUgcmVhc29ucyBtZW50aW9uZWQgaW4gdGhlIGFib3ZlIHBhcmFncmFwaCwgdGhpcyBS
RkMKPiBhc3N1bWVzIHRoYXQgZXZlcnkgYnVzIGlzIGEgcHJvdmlkZXIgb2YgaXRzZWxmIGFzIGEg
bm9kZS4gVXNpbmcgYW4gYWx0ZXJuYXRpdmUKCklJVUMsIGluIGNhc2Ugd2Ugd2FudCB0byB0cmFu
c2ZlciBkYXRhIGJldHdlZW4gdGhlIGRpc3BsYXkgYW5kIHRoZSBtZW1vcnkKY29udHJvbGxlciwg
dGhlIHBhdGggd291bGQgbG9vayBsaWtlIHRoaXM6CgpkaXNwbGF5IC0tPiBidXNfZGlzcGxheSAt
LT4gYnVzX2xlZnRidXMgLS0+IGJ1c19kbWMgLS0+IG1lbW9yeQoKQnV0IHRoZSBidXNfZGlzcGxh
eSBmb3IgZXhhbXBsZSB3b3VsZCBoYXZlIG5vdCBvbmUsIGJ1dCB0d28gbm9kZXMgKHBvcnRzKSwK
cmlnaHQ/ICBPbmUgcmVwcmVzZW50aW5nIHRoZSBsaW5rIHRvIHRoZSBkaXNwbGF5IGNvbnRyb2xs
ZXIgYW5kIGFub3RoZXIgb25lCnJlcHJlc2VudGluZyB0aGUgbGluayB0byBidXNfbGVmdGJ1cz8g
U28gaSB0aGluayB0aGF0IGFsbCB0aGUgYnVzZXMgc2hvdWxkCmhhdmUgYXQgbGVhc3QgdHdvIG5v
ZGVzLCB0byByZXByZXNlbnQgZWFjaCBlbmQgb2YgdGhlIHdpcmUuCgo+IHNpbmdsZXRvbiBwcm92
aWRlciBhcHByb2FjaCB3YXMgZGVlbWVkIG1vcmUgY29tcGxpY2F0ZWQgc2luY2UgdGhlICdkZXYn
IGZpZWxkIGluCj4gJ3N0cnVjdCBpY2NfcHJvdmlkZXInIGhhcyB0byBiZSBzZXQgdG8gc29tZXRo
aW5nIG1lYW5pbmdmdWwgYW5kIHdlIGFyZSB0aWVkIHRvCj4gdGhlICdzYW1zdW5nLGV4eW5vcy1i
dXMnIGNvbXBhdGlibGUgc3RyaW5nIGluIHRoZSBkcml2ZXIgKGFuZCBtdWx0aXBsZSBpbnN0YW5j
ZXMKPiBvZiBleHlub3MtYnVzIHByb2JlZCBpbiBpbmRldGVybWluYXRlIHJlbGF0aXZlIG9yZGVy
KS4KPiAKClN1cmUsIHRoZSByZXN0IG1ha2VzIHNlbnNlIHRvIG1lLgoKVGhhbmtzLApHZW9yZ2kK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
