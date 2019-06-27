Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC79D582B4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 14:36:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1hcYxJwFl4kVZR2xf5dHGnhg41tjjaZBd5pkjsubm+s=; b=sfgHFMaQH2mZeT
	swPYO0pixqkKWi0xo+jeNLlMQYFAXFeH4zP7P+K2sYOsNbhPcgzY2kcyfIR2cZ+jy1N0AisOq+Zvr
	zgUBFZ10zhklE+q1QSnwVsczjPq9BJFJ5RgVWyyyUOjN0MHR8kmeiVVzCSGA+vp1tyjRsFTaRiwHl
	5bpDG5Wt6Ej/LYfB1ThWD+twyd39NV3Twfr1EbzekyPJjsJzSNMmwvznGV9WH5OUZ2xOLaZ1RwR51
	8xoK6Q076HdIxh9KkRgs10GAbRpLk5e4Ad/cBxANIXvzNSjjP1+OX0uO+eELeTW2XM10n1SwHovki
	3j1BewVAVbM9HeAkebxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgTdt-0005Ry-Kl; Thu, 27 Jun 2019 12:36:45 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgTdg-0005Ra-3h
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 12:36:33 +0000
Received: by mail-wm1-x341.google.com with SMTP id s3so5570379wms.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 05:36:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HQt9xcezUjM0stYy6KiMkuO+FrzjFtkuvLSYyVmAZO8=;
 b=TrWm1PpNk0C03PauH3dpCqBpGeisjwQ8Kz0ZavHQ69arstN89a9etm0A8lOoS8S3sJ
 FkaUxUG+DvN6PCIx+4ujI/pOYW2/9mefbg/RTuE3RBJLg/fJmoJR5UvK78Xk4OCubQMu
 s2puTlMDyhp3lEhYQlZx5+KKUoQAV58s4ncITHX6G5lJn8iFbGw1T36bxBGffu0nYkmJ
 b6ZjGJbohJ32f29cW+AxuAMUcF6C7SCHIMKP4FfU/ppBefmj0eoBY83tbhCqPhMl7LVJ
 PNDlsLCNoYpm0VpnhdTAR3FeQb0XDUVQmCCJdTOGdX6wddHQPpYTomPzcJgU52oR2BbU
 MD0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=HQt9xcezUjM0stYy6KiMkuO+FrzjFtkuvLSYyVmAZO8=;
 b=HJ/OdRJ3wyV7NJl9J9CLwUBnwQLHQwuuw1RjNm6SSGmu3nAc86AS6d5Mbajkib5J3l
 MnWAaesgb7Sfy2cAGeHYuXuuh/jB/1PvD5ztOAyegGfTY1IqX7LM34NlCbCFyQryJp3x
 gSDa11F9rzP6J/ixhR6UChOzOXUBCv0ER4SgbjwnGRBVlIHLwA3rFHYDIDgPH8A7CtET
 lDKpq9B0lwfnflkK5LXh0k/YdEGjFFPsYU72zrkJpNiVrk5gdsP+9y/tSLjVeUQrX0b8
 EHao46C1wQ/ou0mm9aid9OOpGz1kSk3ef8f+B8Dbb6UEn/HF0pNJDlzJtFyDxHnMGB/0
 KnHg==
X-Gm-Message-State: APjAAAV0KZ2nBkgXroGJ27tMrfE3jNjvscsLxO44DYey2DrpIjJJLPA+
 AQA5IdF0NSQwtF0rnERSfECEgA==
X-Google-Smtp-Source: APXvYqyOKyOoJMuE/ftKS/0HopULDieCfWTmDoM30kC6fi+nszutcBvsFXfJXU3MDK59EWrlDHDJZw==
X-Received: by 2002:a1c:8049:: with SMTP id b70mr3012220wmd.33.1561638989679; 
 Thu, 27 Jun 2019 05:36:29 -0700 (PDT)
Received: from [192.168.0.41] (113.102.130.77.rev.sfr.net. [77.130.102.113])
 by smtp.googlemail.com with ESMTPSA id o20sm5210388wrh.8.2019.06.27.05.36.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 05:36:28 -0700 (PDT)
Subject: Re: [PATCH RESEND V2 2/3] clocksource: imx-sysctr: Make timer work
 with clock driver using platform driver model
To: Anson.Huang@nxp.com, tglx@linutronix.de, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, l.stach@pengutronix.de,
 abel.vesa@nxp.com, ccaione@baylibre.com, angus@akkea.ca,
 andrew.smirnov@gmail.com, agx@sigxcpu.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20190623123850.22584-1-Anson.Huang@nxp.com>
 <20190623123850.22584-2-Anson.Huang@nxp.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <41ab1a50-f431-ec73-8444-11ecca1412d8@linaro.org>
Date: Thu, 27 Jun 2019 14:36:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190623123850.22584-2-Anson.Huang@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_053632_186713_4B6FC159 
X-CRM114-Status: GOOD (  22.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjMvMDYvMjAxOSAxNDozOCwgQW5zb24uSHVhbmdAbnhwLmNvbSB3cm90ZToKPiBGcm9tOiBB
bnNvbiBIdWFuZyA8QW5zb24uSHVhbmdAbnhwLmNvbT4KPiAKPiBPbiBzb21lIGkuTVg4TSBwbGF0
Zm9ybXMsIGNsb2NrIGRyaXZlciB1c2VzIHBsYXRmb3JtIGRyaXZlcgo+IG1vZGVsIGFuZCBpdCBp
cyBOT1QgcmVhZHkgZHVyaW5nIHRpbWVyIGluaXRpYWxpemF0aW9uIHBoYXNlLAo+IHRoZSBjbG9j
ayBvcGVyYXRpb25zIHdpbGwgZmFpbCBhbmQgc3lzdGVtIGNvdW50ZXIgZHJpdmVyIHdpbGwKPiBm
YWlsIHRvby4gQXMgYWxsIHRoZSBpLk1YOE0gcGxhdGZvcm1zJyBzeXN0ZW0gY291bnRlciBjbG9j
awo+IGFyZSBmcm9tIE9TQyB3aGljaCBpcyBhbHdheXMgZW5hYmxlZCwgc28gaXQgaXMgbm8gbmVl
ZCB0byBlbmFibGUKPiBjbG9jayBmb3Igc3lzdGVtIGNvdW50ZXIgZHJpdmVyLCB0aGUgT05MWSB0
aGluZyBpcyB0byBwYXNzCj4gY2xvY2sgZnJlcXVlbmNlIHRvIGRyaXZlci4KPiAKPiBUbyBtYWtl
IHN5c3RlbSBjb3VudGVyIGRyaXZlciB3b3JrIGZvciB1cHBlciBzY2VuYXJpbywgYWRkIGFuCj4g
b3B0aW9uIG9mIHNraXBwaW5nIG9mX2NsayBvcGVyYXRpb24gZm9yIHN5c3RlbSBjb3VudGVyIGRy
aXZlciwKPiBhbiBvcHRpb25hbCBwcm9wZXJ0eSAiY2xvY2stZnJlcXVlbmN5IiBpcyBpbnRyb2R1
Y2VkIHRvIHBhc3MKPiB0aGUgZnJlcXVlbmN5IHZhbHVlIHRvIHN5c3RlbSBjb3VudGVyIGRyaXZl
ciBhbmQgaW5kaWNhdGUgZHJpdmVyCj4gdG8gc2tpcCBvZl9jbGsgb3BlcmF0aW9ucy4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBBbnNvbiBIdWFuZyA8QW5zb24uSHVhbmdAbnhwLmNvbT4KPiAtLS0KPiBD
aGFuZ2VzIHNpbmNlIFYxOgo+IAktIGltcHJvdmUgY29tbWl0IGxvZywgbm8gY29udGVudCBjaGFu
Z2UuCj4gLS0tCj4gIGRyaXZlcnMvY2xvY2tzb3VyY2UvdGltZXItaW14LXN5c2N0ci5jIHwgOCAr
KysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvY2xvY2tzb3VyY2UvdGltZXItaW14LXN5c2N0ci5jIGIvZHJpdmVycy9jbG9j
a3NvdXJjZS90aW1lci1pbXgtc3lzY3RyLmMKPiBpbmRleCBmZDdkNjgwLi44ZmYzZDdlIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvY2xvY2tzb3VyY2UvdGltZXItaW14LXN5c2N0ci5jCj4gKysrIGIv
ZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci1pbXgtc3lzY3RyLmMKPiBAQCAtMTI5LDYgKzEyOSwx
NCBAQCBzdGF0aWMgdm9pZCBfX2luaXQgc3lzY3RyX2Nsb2NrZXZlbnRfaW5pdCh2b2lkKQo+ICBz
dGF0aWMgaW50IF9faW5pdCBzeXNjdHJfdGltZXJfaW5pdChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5w
KQo+ICB7Cj4gIAlpbnQgcmV0ID0gMDsKPiArCXUzMiByYXRlOwo+ICsKPiArCWlmICghb2ZfcHJv
cGVydHlfcmVhZF91MzIobnAsICJjbG9jay1mcmVxdWVuY3kiLAo+ICsJCQkJICAmcmF0ZSkpIHsK
PiArCQl0b19zeXNjdHIub2ZfY2xrLnJhdGUgPSByYXRlOwo+ICsJCXRvX3N5c2N0ci5vZl9jbGsu
cGVyaW9kID0gRElWX1JPVU5EX1VQKHJhdGUsIEhaKTsKPiArCQl0b19zeXNjdHIuZmxhZ3MgJj0g
flRJTUVSX09GX0NMT0NLOwo+ICsJfQoKUGxlYXNlIHRha2UgdGhlIG9wcG9ydHVuaXR5IHRvIGFk
ZCB0aGUgVElNRVJfT0ZfQ0xPQ0tfRlJFUVVFTkNZIGZsYWcgaW4KdGltZXItb2YgYW5kIHRoZSBj
b3JyZXNwb25kaW5nIGNvZGUgYWJvdmUuCgpUaGVuIGNoZWNrIHRoZSBjbG9jay1mcmVxdWVuY3kg
cHJlc2VuY2UgYW5kIGFkZCBUSU1FUl9PRl9DTE9DSyBvcgpUSU1FUl9PRl9DTE9DS19GUkVRVUVO
Q1kgZmxhZyB0byB0aGUgdGltZXItb2Ygc3RydWN0dXJlLgoKZWc6CgogICAgdG9fc3lzY3RyLmZs
YWdzIHw9IG9mX2ZpbmRfcHJvcGVydHkobnAsICJjbG9jay1mcmVxdWVuY3kiLCBOVUxMKSA/CgkJ
VElNRVJfT0ZfQ0xPQ0tfRlJFUVVFTkNZIDogVElNRVJfT0ZfQ0xPQ0s7CgkKCgoKPiAgCXJldCA9
IHRpbWVyX29mX2luaXQobnAsICZ0b19zeXNjdHIpOwo+ICAJaWYgKHJldCkKPiAKCgotLSAKIDxo
dHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2Fy
ZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20v
cGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3Jn
PiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
