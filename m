Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2136D17CED
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 17:15:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FKmPFrBrHfVyitEFn4ygOMkZ5nxclRUN12olY3vGdPM=; b=kakm/yxcESlgHJ
	UCqy0TVQGU91dv6webHzh0cpHgiqHmkQI9CkAZKv3uLM6GxAu+3v0gq5/za24SQu2TWSjA3rrHKve
	W0qTeR1thh+tV4+dxRy+PUzmTf3f3SlExBXIVu0GZP6fpgLnhIzIK1bL+v0v+sV7xBIzwkczEOpGh
	fwu+2GD22PcQaqJVH1C6us/rSiFHLFrbqpLgelx0fYY9oLqT0puZl5Bh9Cq/IicYT/mZjxZE42I6f
	08+OvJZKTPQALgAazKcW/yJ6I/3fwTg6eSHT+ef526GzkfYOo95Nk1oFkgrl6HBIatUbm8VI3XblW
	6dMnonW9p3uFfEMdao5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOOI8-0000pw-KC; Wed, 08 May 2019 15:15:32 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOOI0-0000nk-9E
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 15:15:25 +0000
Received: by mail-io1-xd43.google.com with SMTP id a17so9241807iot.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 08:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+JvC1TwFB/yeFp3szSBzEe5PaSFdNgPtLmVR0CVhzV0=;
 b=P520ai87ain/12F06dWOpKLegIs9pHmj77TJiLVqWBksGuwmnPQ9oHIcIZkCTzgAYb
 yNm1ZULEFwZbwyb2HZJily30k7XvqR6MFsA+kxux4sros9GHsvowioklLxW7axy7P7dq
 pJZp8Utphzr3M/MpDWIWA4FrqVjB54/fOd0UzqEP60pU3PtVXv0fLongNxylqw7T6Eok
 TBVSz10u6hfEKibtFv/WqbWC29L3TFuznnev4IKeKgkRD1X/O9lvn6cFdBy7Y0CEuMHX
 3pTjaPeJ4fv5KxL5fQujz3kBfpZkT300C/OAe1s3XdFNxn/EbkdKkw3xpU6IbdYVf9dG
 iEfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+JvC1TwFB/yeFp3szSBzEe5PaSFdNgPtLmVR0CVhzV0=;
 b=ePmhbJg/2eavXDTZS+QmXkRIudRm/azwRJ/EIpa3wBpm3am8S5AN/NjGRFx8rQWAx7
 LuYdEfrZAdbZohVltaRfLUoFcO9u8G/A/Zx8qaEoF0X+e+go6wigxeryZYWWRiGNB9Xd
 dYRpLOQU44IGXMUKs8BTTDkqKiOSxtv97nySgGHMI9a9IVj12nPRb/waox9t5ZiRYkbo
 iOsM5m6B5oC43vwkCwi9UMHDCQi6gqt98SWLmi1Px4tKiTd5zjV1GZmSypcNk+4U8/0d
 M+H0aYyCgK/RWXK6WXhzE+EIlVDnBMWUiK+ODruZUDGathazh7aJncoTKf7+qXgyCs0O
 dvPg==
X-Gm-Message-State: APjAAAXMkFHB8pzR9i7YknSjmv5yKsZG18nIy1c5k+ei+GES9uroFDP2
 QIGoC5u7XfEc596GYIrTYOaRjBBC
X-Google-Smtp-Source: APXvYqyRBRQRNRoAgWDbktnpSDjj6gYnZ8joNI/amECzhKI8MWPpKHG0KCjghyCQaRwWnHb5TZWcQQ==
X-Received: by 2002:a05:6602:2247:: with SMTP id
 o7mr665200ioo.156.1557328522424; 
 Wed, 08 May 2019 08:15:22 -0700 (PDT)
Received: from [192.168.2.145] (ppp94-29-35-107.pppoe.spdop.ru. [94.29.35.107])
 by smtp.googlemail.com with ESMTPSA id 81sm1298939itv.23.2019.05.08.08.15.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 08:15:21 -0700 (PDT)
Subject: Re: [PATCH 2/8] soc: tegra: fuse: Change to the correct
 __dma_request_channel() prototype
To: Baolin Wang <baolin.wang@linaro.org>, dan.j.williams@intel.com,
 vkoul@kernel.org
References: <cover.1557206859.git.baolin.wang@linaro.org>
 <1ddb1abe8722154dd546d265d5c4536480a24a87.1557206859.git.baolin.wang@linaro.org>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <8746a913-0014-7036-7fab-4e0dfab04e1b@gmail.com>
Date: Wed, 8 May 2019 18:15:17 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1ddb1abe8722154dd546d265d5c4536480a24a87.1557206859.git.baolin.wang@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_081524_351300_4439B36C 
X-CRM114-Status: GOOD (  16.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: jroedel@suse.de, vincent.guittot@linaro.org, Zubair.Kakakhel@imgtec.com,
 dmaengine@vger.kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 wsa+renesas@sang-engineering.com, thierry.reding@gmail.com, linux-imx@nxp.com,
 kernel@pengutronix.de, linux-tegra@vger.kernel.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MDcuMDUuMjAxOSA5OjA5LCBCYW9saW4gV2FuZyDQv9C40YjQtdGCOgo+IFNpbmNlIHdlJ3ZlIGlu
dHJvZHVjZWQgb25lIGRldmljZSBub2RlIHBhcmFtZXRlciBmb3IgX19kbWFfcmVxdWVzdF9jaGFu
bmVsKCksCj4gdGh1cyBjaGFuZ2UgdG8gdGhlIGNvcnJlY3QgZnVuY3Rpb24gcHJvdG90eXBlLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IEJhb2xpbiBXYW5nIDxiYW9saW4ud2FuZ0BsaW5hcm8ub3JnPgo+
IC0tLQo+ICBkcml2ZXJzL3NvYy90ZWdyYS9mdXNlL2Z1c2UtdGVncmEyMC5jIHwgICAgMiArLQo+
ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9zb2MvdGVncmEvZnVzZS9mdXNlLXRlZ3JhMjAuYyBiL2RyaXZlcnMv
c29jL3RlZ3JhL2Z1c2UvZnVzZS10ZWdyYTIwLmMKPiBpbmRleCA0OWZmMDE3Li5lMjU3MWI2IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvc29jL3RlZ3JhL2Z1c2UvZnVzZS10ZWdyYTIwLmMKPiArKysg
Yi9kcml2ZXJzL3NvYy90ZWdyYS9mdXNlL2Z1c2UtdGVncmEyMC5jCj4gQEAgLTExMCw3ICsxMTAs
NyBAQCBzdGF0aWMgaW50IHRlZ3JhMjBfZnVzZV9wcm9iZShzdHJ1Y3QgdGVncmFfZnVzZSAqZnVz
ZSkKPiAgCWRtYV9jYXBfemVybyhtYXNrKTsKPiAgCWRtYV9jYXBfc2V0KERNQV9TTEFWRSwgbWFz
ayk7Cj4gIAo+IC0JZnVzZS0+YXBiZG1hLmNoYW4gPSBfX2RtYV9yZXF1ZXN0X2NoYW5uZWwoJm1h
c2ssIGRtYV9maWx0ZXIsIE5VTEwpOwo+ICsJZnVzZS0+YXBiZG1hLmNoYW4gPSBfX2RtYV9yZXF1
ZXN0X2NoYW5uZWwoJm1hc2ssIGRtYV9maWx0ZXIsIE5VTEwsIE5VTEwpOwo+ICAJaWYgKCFmdXNl
LT5hcGJkbWEuY2hhbikKPiAgCQlyZXR1cm4gLUVQUk9CRV9ERUZFUjsKPiAgCj4gCgoxKSBLZXJu
ZWwgc2hvdWxkIGJlIGtlcHQgYmlzZWN0J2FibGUgYnkgbm90IGhhdmluZyBpbnRlcm1lZGlhdGUg
cGF0Y2hlcwp0aGF0IGJyZWFrIGNvbXBpbGF0aW9uLiBIZW5jZSB5b3Ugc2hvdWxkIHNxdWFzaCB0
aGUgY2hhbmdlcyBpbnRvIGEKc2luZ2xlIHBhdGNoLgoKMikgQmV0dGVyIHRvIHJlcGxhY2UgX19k
bWFfcmVxdWVzdF9jaGFubmVsKCkgd2l0aCBkbWFfcmVxdWVzdF9jaGFubmVsKCkKc2luY2UgdGhl
eSBhcmUgZXF1YWwuCgotLSAKRG1pdHJ5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
