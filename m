Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 654AA1DF744
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 14:34:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4hujo7tvmwBxUE6XnwQkU7kxmhHtD4bY46gtXCpdoU4=; b=ezC6cZCLQW99pu
	gOk+H2KhyyvegmRNySUkJUIBmeLwDUpfGYiIfCJrZ4+GavcCbdLMRgyFCzw7h+yZMGy1JM3OnjZ9t
	v/4sRHq6o0mNvrHdIaSUJdlfw5fb8NW3Crq1qXjOl1AS+nqeWvbRbAOy0vysiM2xsaaetnqTVDU9k
	FWaYDVFTeJSraUGgiJ/jlzAG1pWkfVQyStN9kYYyDEgUIeEbCbX8797SCZ+aYPJ9L2QPgUd6OZ1Tx
	fkPEw6ltrkUrz6GGx8/km7AKLGQiJwIRatnTP/TT0RtGQ+2bDfnmePBvVnDFrn2gPG6yOT+kinNye
	CWX5dweNVqmQZ506wUOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcTLf-0004gu-Mi; Sat, 23 May 2020 12:33:55 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcTLV-0004gM-2R
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 12:33:47 +0000
Received: by mail-wr1-x443.google.com with SMTP id y17so4498347wrn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 23 May 2020 05:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+ha2P0gI7/dhCR+x1uWrZGR8vEfMxTFQAnCpem5drIw=;
 b=m5pSwqzqb6HpOMNW5gFCyuwJNBY7jMuVL1za74VwCneV9k6X7R6QpHOUgqEQWRtNn4
 SvgCa954xVeXMD3Km6dpuNgUjmocnT70TzaK9JeGyXbRNIY1Sr3DsXl957oOAGywgQsi
 2XswZKMKCgiGNlyFjiExEZuBIglEdLs1Ps7G1cuh+GODhvIvW2hSCVJJbuKwtIEswduK
 Ca8K/X0yHehp9OEEpgRyIWdiOPMG3ADKIc0H9OYpSdEbduubihaEYZDKvrDe4Uq1g4Bu
 rygpkOerSD5lSVX2Re+Mx0lILNsyegxBIBaxW5W2xzgeXUfsn9fYw9sX273OQBRAf++1
 Wvvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+ha2P0gI7/dhCR+x1uWrZGR8vEfMxTFQAnCpem5drIw=;
 b=eSHYQQCZV2Oye8k+arxBlS8bPbGmUYRejTbU+K6jb2ekJ+ZEiHEzo4QGecgGl8GBBR
 Jx5anduWvzK3rryYb+AQMZxCRPJxPysdI/5YTSlQfNNSeosWUZ+YMnmj+H3Az+iz752B
 hGhug/UL6KqgE8/AkC1zQKqXZ+o1vyfw4LrhkAUrlH2YCNVWD02lBkZTqBZckqfyldzn
 oBV7xF5l3pYytaitr84K/DSb6xIAywwJaELO02aFFlZjQc+j562O9QTHZYa6pzQk64T0
 VFkJX8A4eUj4YOXNnQm2nFe+BeMWcVodH3lhheYV0E/bmHQI/5uSSaGoEhgscco1lcDa
 /jrQ==
X-Gm-Message-State: AOAM531b6p2MQTUAVCHSs1/QsjI9RsqZe0kUC1XPFtxtayymHnx1+gZs
 7fBqDgqp6pvt9SK7u/R3km9twQ==
X-Google-Smtp-Source: ABdhPJyL1mgbO/QqqFeAEHWsW/FnRQwYf9IXv1JuxdTJ0DWSLveRKUz+j5yAZUkxEzwjdUnPqh5o8Q==
X-Received: by 2002:adf:fec3:: with SMTP id q3mr1267150wrs.123.1590237222514; 
 Sat, 23 May 2020 05:33:42 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:c871:e070:f68d:a4f7?
 ([2a01:e34:ed2f:f020:c871:e070:f68d:a4f7])
 by smtp.googlemail.com with ESMTPSA id h1sm12875416wme.42.2020.05.23.05.33.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 23 May 2020 05:33:41 -0700 (PDT)
Subject: Re: [PATCH] thermal: imx8mm: Add get_trend ops
To: Anson Huang <anson.huang@nxp.com>,
 "rui.zhang@intel.com" <rui.zhang@intel.com>,
 "amit.kucheria@verdurent.com" <amit.kucheria@verdurent.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <1589338689-15700-1-git-send-email-Anson.Huang@nxp.com>
 <fccf4197-d0ca-f313-8f70-000ef4731033@linaro.org>
 <DB3PR0402MB3916B6D11328A036BD479D39F5B50@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <6a4d31e4-8a24-2e9f-aa49-bec8258ead4c@linaro.org>
Date: Sat, 23 May 2020 14:33:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <DB3PR0402MB3916B6D11328A036BD479D39F5B50@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_053345_182062_10F118A2 
X-CRM114-Status: GOOD (  18.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjMvMDUvMjAyMCAwMjozNSwgQW5zb24gSHVhbmcgd3JvdGU6Cj4gSGksIERhbmllbAo+IAo+
IAo+PiBTdWJqZWN0OiBSZTogW1BBVENIXSB0aGVybWFsOiBpbXg4bW06IEFkZCBnZXRfdHJlbmQg
b3BzCj4+Cj4+IE9uIDEzLzA1LzIwMjAgMDQ6NTgsIEFuc29uIEh1YW5nIHdyb3RlOgo+Pj4gQWRk
IGdldF90cmVuZCBvcHMgZm9yIGkuTVg4TU0gdGhlcm1hbCB0byBhcHBseSBmYXN0IGNvb2xpbmcg
bWVjaGFuaXNtLAo+Pj4gd2hlbiB0ZW1wZXJhdHVyZSBleGNlZWRzIHBhc3NpdmUgdHJpcCBwb2lu
dCwgdGhlIGhpZ2hlc3QgY29vbGluZwo+Pj4gYWN0aW9uIHdpbGwgYmUgYXBwbGllZCwgYW5kIHdo
ZW4gdGVtcGVyYXR1cmUgZHJvcHMgdG8gbG93ZXIgdGhhbiB0aGUKPj4+IG1hcmdpbiBiZWxvdyBw
YXNzaXZlIHRyaXAgcG9pbnQsIHRoZSBsb3dlc3QgY29vbGluZyBhY3Rpb24gd2lsbCBiZQo+Pj4g
YXBwbGllZC4KPj4KPj4gWW91IGFyZSBub3QgZGVzY3JpYmluZyB3aGF0IGlzIHRoZSBnb2FsIG9m
IHRoaXMgY2hhbmdlLgo+IAo+IFRoZSBnb2FsIG9mIHRoaXMgY2hhbmdlIGlzIHRvIG1ha2Ugc3Vy
ZSB3aGVuZXZlciB0ZW1wZXJhdHVyZSBleGNlZWRzIHBhc3NpdmUgdHJpcCBwb2ludCwKPiB0aGUg
aGlnaGVzdCBjb29saW5nIGFjdGlvbiB3aWxsIGJlIGFwcGxpZWQgaW1tZWRpYXRlbHksIGUuZy4s
IGlmIHRoZXJlIGFyZSBtYW55IGNwdWZyZXEgT1BQLAo+IHRoZSBkZWZhdWx0IGNvb2xpbmcgd2ls
bCBiZSBzdGVwIGJ5IHN0ZXAsIGl0IHdpbGwgdGFrZSBzb21lIG1vcmUgcm91bmRzIHRvIG1ha2Ug
Y3B1ZnJlcSBkcm9wCj4gdG8gbG93ZXN0IE9QUCwgd2hpbGUgb24gaS5NWCwgd2UgZXhwZWN0IHRo
ZSBjcHVmcmVxIGRyb3AgdG8gbG93ZXN0IE9QUCBpbW1lZGlhdGVseS4KCldoYXRldmVyIHRoZSBz
bG9wZSBvZiB0aGUgdGVtcGVyYXR1cmUgaW5jcmVhc2U/Cgo+PiBJSVVDLCB0aGUgcmVzdWx0aW5n
IGNoYW5nZSB3aWxsIGJlIGFuIG9uL29mZiBhY3Rpb24uIFRoZSB0aGVybWFsIHpvbmUgaXMKPj4g
bWl0aWdhdGVkIHdpdGggdGhlIGhpZ2hlc3QgY29vbGluZyBlZmZlY3QsIHNvIHRoZSBsb3dlc3Qg
T1BQLCB0aGVuIHRoZQo+PiB0ZW1wZXJhdHVyZSB0cmVuZCBpcyBzdGFibGUgdW50aWwgaXQgZ29l
cyBiZWxvdyB0aGUgdHJpcCAtIG1hcmdpbiB3aGVyZSB0aGUKPj4gbWl0aWdhdGlvbiBpcyBzdG9w
cGVkLgo+IAo+IFllcywgeW91ciB1bmRlcnN0YW5kaW5nIGlzIGNvcnJlY3RseSwgb25jZSB0aGUg
dGVtcGVyYXR1cmUgZXhjZWVkcyBwYXNzaXZlIHRyaXAgcG9pbnQsCj4gdGhlIGhpZ2hlc3QgY29v
bGluZyBhY3Rpb24gd2lsbCBiZSBhcHBsaWVkIGltbWVkaWF0ZWx5IGFuZCB0aGVuIGl0IHdpbGwg
YmUgc3RhYmxlIHRoZXJlCj4gdW50aWwgdGVtcGVyYXR1cmUgZHJvcCB0byB0cmlwIC0gbWFyZ2lu
LCB0aGVuIHRoZSBjb29saW5nIGFjdGlvbiB3aWxsIGJlIGNhbmNlbGxlZCwgdGhlCj4gbWFyZ2lu
IGlzIHRvIGF2b2lkIHRoZSBiYWNrIGFuZCBmb3J0aCBuZWFyIHRoZSBwYXNzaXZlIHRyaXAgcG9p
bnQuCj4gCj4+Cj4+IEV4Y2VwdCwgSSdtIG1pc3Npbmcgc29tZXRoaW5nLCBzZXR0aW5nIGEgdHJp
cCBwb2ludCB3aXRoIGEgMTAwMDAgaHlzdGVyZXNpcyBhbmQKPj4gYSBjb29saW5nIG1hcCBtaW4v
bWF4IHNldCB0byB0aGUgaGlnaGVzdCBvcHAgd2lsbCByZXN1bHQgb24gdGhlIHNhbWUuCj4gCj4g
WWVzIHNldHRpbmcgY29vbGluZyBtYXAgbWluL21heCBjb29saW5nIHN0YXRlIHRvIGhpZ2hlc3Qg
T1BQIHdpbGwgbWFrZSB0aGUgaGlnaGVzdAo+IGNvb2xpbmcgYWN0aW9uIGFwcGxpZWQgaW1tZWRp
YXRlbHksIGFuZCB0byBoYXZlIHRoZSBmdW5jdGlvbiBvZiBjb29saW5nIGFjdGlvbiBiZWluZwo+
IGNhbmNlbGxlZCB3aGVuIHRlbXBlcmF0dXJlIGRyb3BzIHRvIHRyaXAgLSBtYXJnaW4sIEkgaGF2
ZSB0byBkZWZpbmUgYW5vdGhlciB0cmlwIHBvaW50LAo+IHNheSBwYXNzaXZlIHRyaXAgcG9pbnQg
aXMgODUwMDAsIGFuZCBjb29saW5nIG1hcCBtaW4vbWF4IHNldCB0byBoaWdoZXN0IE9QUCBpbiBw
YXNzaXZlCj4gdHJpcCBwb2ludCB0aGVuIGFkZCBhbm90aGVyIHRyaXAgcG9pbnQgbmFtZWQgImFj
dGl2ZSIgd2l0aCA3NTAwMCwgYW5kIHdpdGhvdXQgYW55Cj4gY29vbGluZyBtYXAgaW4gaXQsIHJp
Z2h0PwoKTWF5IGJlIEkgbWlzdW5kZXJzdG9vZCBidXQgb25seSB0aGUgY2hhbmdlIGFzIGJlbG93
IGlzIG5lZWRlZC4gTm8gbmVlZAp0byBhZGQgYSB0cmlwIHBvaW50LCBlc3BlY2lhbGx5IGFuICdh
Y3RpdmUnIHRyaXAgd2hpY2ggaXMgYSBmb3IgYW4KYWN0aXZlIGNvb2xpbmcgZGV2aWNlIGxpa2Ug
YSBmYW4uCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1t
LmR0c2kKYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bW0uZHRzaQppbmRleCBj
YzcxNTJlY2VkZDkuLmJlYTI2M2JkMDZiNCAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0
cy9mcmVlc2NhbGUvaW14OG1tLmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2Nh
bGUvaW14OG1tLmR0c2kKQEAgLTIzMSwxMCArMjMxLDEwIEBAIGNvb2xpbmctbWFwcyB7CiAJCQkJ
bWFwMCB7CiAJCQkJCXRyaXAgPSA8JmNwdV9hbGVydDA+OwogCQkJCQljb29saW5nLWRldmljZSA9
Ci0JCQkJCQk8JkE1M18wIFRIRVJNQUxfTk9fTElNSVQgVEhFUk1BTF9OT19MSU1JVD4sCi0JCQkJ
CQk8JkE1M18xIFRIRVJNQUxfTk9fTElNSVQgVEhFUk1BTF9OT19MSU1JVD4sCi0JCQkJCQk8JkE1
M18yIFRIRVJNQUxfTk9fTElNSVQgVEhFUk1BTF9OT19MSU1JVD4sCi0JCQkJCQk8JkE1M18zIFRI
RVJNQUxfTk9fTElNSVQgVEhFUk1BTF9OT19MSU1JVD47CisJCQkJCQk8JkE1M18wIDIgMj4sCisJ
CQkJCQk8JkE1M18xIDIgMj4sCisJCQkJCQk8JkE1M18yIDIgMj4sCisJCQkJCQk8JkE1M18zIDIg
Mj4KIAkJCQl9OwogCQkJfTsKIAkJfTsKCgo+IElmIHllcywgdGhlbiBJIHRoaW5rIEkgY2FuIHRy
eSB0byBtYWtlIHRoZSBjaGFuZ2VzIGluIERUIGluc3RlYWQgb2YgdGhlcm1hbCBkcml2ZXIuIAoK
Ci0tIAo8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ug
c29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJv
b2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xp
bmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBC
bG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
