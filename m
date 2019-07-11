Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B00765F89
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 20:36:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nel7gDo1Zywi73VkTDkUEnhSwk+4pPdJO2EU31vPK5c=; b=agt87ViD0q3UPA
	H1/N4qEj8KLl/nIYcO7SiHm+G2FJSs4a1F08bYzpb3VEoPig9OGv761+WjaMuvn5SPftjJF+uit23
	6GHBET5VBTNjYKL2DMnxZS+88+NpoZL3hbFjEFAjXbel4SKdMWY6cIGRD0Ln4rEp9IjOj0l8Hgu08
	e2SJTo6z3uj0HNk2hHNMOvEZ/DKgRkWGyBLACVXBCj7BW4ipfUR+Q4riZHjBn/CZmxXFYGjwK0z9a
	lZTmBhoSpgQe8gw/kaz+qG0CR6HZMcsVwYj4FMWp/33O4ITYhI4AdK0pKZtKRVpWOL6pQcsi7wrO5
	vv3e7E/EQqMAmN5rvKlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hldvA-0004im-K7; Thu, 11 Jul 2019 18:35:56 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hldut-0004hL-JT
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 18:35:41 +0000
Received: by mail-lf1-x141.google.com with SMTP id x3so4771317lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 11:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=wKMI5ifbIPZAJbFiPZeuzbDh42mNlq1JCxAaFNXFBZM=;
 b=lGRaSTp/kJmMQY4/UXQfzWQxN6kJ37RANV2EgmG5cyeA7hB9S5qJ9Qd+peZ1PkXaoC
 vpbuUibVs/kHzgURy5fDIC7k3opQL4RMEF/iBidMYYsy86PfYNsc/6QvxHJOjEQO47gm
 cMf7KkEQhOvUtQ5W+GJU0BB0iGzAOSkuVSs3yzs/RDQBTY19HTfu1AO9y90yNp5Sy+fe
 1JwYhPkIVp3/iRcOBuzOnUeRWmtt3HnuVsZC/LJdG9cs5FK40wDFJLQdEZtYmeDL2wST
 29sNSEOJyWgQPekEwCcgUcm0TXSE0mDLnIMBlWCnLYEoK4ie/544Q0pSfBKvE/3xnFfY
 70rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wKMI5ifbIPZAJbFiPZeuzbDh42mNlq1JCxAaFNXFBZM=;
 b=enscr52jw4Eu8ZtTDohdgOGS8FvMqyFg3pgy/9JUz/u1nU0eQdvH8FDfHHCR4vLLPY
 +IRzMQBL0peu3Q1+Z+Ph+gtcYRmIVKjJsoXYB7AifqeutwashR5M2I+IGP8L10s0JVLh
 Mf4p4DmzhQjbQbl4cIYeGUYWO1PiWq7rzgau/araENhDIv/+0P8qMXVsEob8T97sAy/D
 pqBu7/eh4Zzeblqab5GNgCjh0fcTwQ89TBaaRRadnSzz+wnYeL4gA4prf7zDebmMrGIY
 U8FA5xglnq5oXkEMRRg8UU4zf5WqOgsBhzDDjy9Dsaue0YtzqYImwijdqEVutrYJ3Gt3
 tZKQ==
X-Gm-Message-State: APjAAAXndhzbC2Rncb/GDSKRbtS2bJwTwa2ld6dqm+N7+oBDO8FhwmgB
 cy94nbPFqu14A3uzmZ0LYRI=
X-Google-Smtp-Source: APXvYqzQQCneYJZEHs5X7hJTQTW9sgutGejskcGUh3zXo27THqReH+bSYb5at7FsIE1521mVmsfXAA==
X-Received: by 2002:ac2:50cd:: with SMTP id h13mr2686090lfm.36.1562870137666; 
 Thu, 11 Jul 2019 11:35:37 -0700 (PDT)
Received: from [192.168.2.145] (ppp79-139-233-208.pppoe.spdop.ru.
 [79.139.233.208])
 by smtp.googlemail.com with ESMTPSA id n24sm1111590ljc.25.2019.07.11.11.35.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 11:35:36 -0700 (PDT)
Subject: Re: [PATCH v2 3/6] cpuidle: Add unified driver for NVIDIA Tegra SoCs
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
References: <20190711031312.10038-1-digetx@gmail.com>
 <20190711031312.10038-4-digetx@gmail.com>
Message-ID: <c54c43fd-9b11-4aa8-3acf-d2260d0fca4a@gmail.com>
Date: Thu, 11 Jul 2019 21:35:36 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190711031312.10038-4-digetx@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_113539_684767_EDFEAD59 
X-CRM114-Status: GOOD (  25.71  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTEuMDcuMjAxOSA2OjEzLCBEbWl0cnkgT3NpcGVua28g0L/QuNGI0LXRgjoKPiBUaGUgbmV3IGRy
aXZlciBpcyBiYXNlZCBvbiB0aGUgb2xkIENQVSBJZGxlIGRyaXZlcnMgdGhhdCBhcmUgcmVtb3Zl
ZCBub3cKPiBmcm9tIGFybS9hcmNoL21hY2gtdGVncmEvIGRpcmVjdG9yeS4gVGhvc2UgcmVtb3Zl
ZCBkcml2ZXJzIHdlcmUgcmV3b3JrZWQKPiBhbmQgc3F1YXNoZWQgaW50byBhIHNpbmdsZSB1bmlm
aWVkIGRyaXZlciB0aGF0IGNvdmVycyBtdWx0aXBsZSBoYXJkd2FyZQo+IGdlbmVyYXRpb25zLCBz
dGFydGluZyBmcm9tIFRlZ3JhMjAgYW5kIGVuZGluZyB3aXRoIFRlZ3JhMTI0Lgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IERtaXRyeSBPc2lwZW5rbyA8ZGlnZXR4QGdtYWlsLmNvbT4KPiAtLS0KPiAgYXJj
aC9hcm0vbWFjaC10ZWdyYS90ZWdyYS5jICAgICB8ICAgNCArCj4gIGRyaXZlcnMvY3B1aWRsZS9L
Y29uZmlnLmFybSAgICAgfCAgIDggKwo+ICBkcml2ZXJzL2NwdWlkbGUvTWFrZWZpbGUgICAgICAg
IHwgICAxICsKPiAgZHJpdmVycy9jcHVpZGxlL2NwdWlkbGUtdGVncmEuYyB8IDMwNCArKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKwo+ICBpbmNsdWRlL3NvYy90ZWdyYS9jcHVpZGxlLmgg
ICAgIHwgICA0ICsKPiAgNSBmaWxlcyBjaGFuZ2VkLCAzMjEgaW5zZXJ0aW9ucygrKQo+ICBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9jcHVpZGxlL2NwdWlkbGUtdGVncmEuYwo+IAo+IGRpZmYg
LS1naXQgYS9hcmNoL2FybS9tYWNoLXRlZ3JhL3RlZ3JhLmMgYi9hcmNoL2FybS9tYWNoLXRlZ3Jh
L3RlZ3JhLmMKPiBpbmRleCBkOTIzNzc2OWEzN2MuLmYxY2UyODU3YTI1MSAxMDA2NDQKPiAtLS0g
YS9hcmNoL2FybS9tYWNoLXRlZ3JhL3RlZ3JhLmMKPiArKysgYi9hcmNoL2FybS9tYWNoLXRlZ3Jh
L3RlZ3JhLmMKPiBAQCAtMzYsNiArMzYsNyBAQAo+ICAjaW5jbHVkZSA8YXNtL21hY2gvYXJjaC5o
Pgo+ICAjaW5jbHVkZSA8YXNtL21hY2gvdGltZS5oPgo+ICAjaW5jbHVkZSA8YXNtL21hY2gtdHlw
ZXMuaD4KPiArI2luY2x1ZGUgPGFzbS9wc2NpLmg+Cj4gICNpbmNsdWRlIDxhc20vc2V0dXAuaD4K
PiAgCj4gICNpbmNsdWRlICJib2FyZC5oIgo+IEBAIC05Miw2ICs5Myw5IEBAIHN0YXRpYyB2b2lk
IF9faW5pdCB0ZWdyYV9kdF9pbml0X2xhdGUodm9pZCkKPiAgCWlmIChJU19FTkFCTEVEKENPTkZJ
R19BUkNIX1RFR1JBXzJ4X1NPQykgJiYKPiAgCSAgICBvZl9tYWNoaW5lX2lzX2NvbXBhdGlibGUo
Im52aWRpYSx0ZWdyYTIwIikpCj4gIAkJcGxhdGZvcm1fZGV2aWNlX3JlZ2lzdGVyX3NpbXBsZSgi
dGVncmEyMC1jcHVmcmVxIiwgLTEsIE5VTEwsIDApOwo+ICsKPiArCWlmIChJU19FTkFCTEVEKENP
TkZJR19BUk1fVEVHUkFfQ1BVSURMRSkgJiYgIXBzY2lfc21wX2F2YWlsYWJsZSgpKQo+ICsJCXBs
YXRmb3JtX2RldmljZV9yZWdpc3Rlcl9zaW1wbGUoInRlZ3JhLWNwdWlkbGUiLCAtMSwgTlVMTCwg
MCk7Cj4gIH0KPiAgCj4gIHN0YXRpYyBjb25zdCBjaGFyICogY29uc3QgdGVncmFfZHRfYm9hcmRf
Y29tcGF0W10gPSB7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY3B1aWRsZS9LY29uZmlnLmFybSBi
L2RyaXZlcnMvY3B1aWRsZS9LY29uZmlnLmFybQo+IGluZGV4IDQ4Y2IzZDRiYjdkMS4uZDkwODYx
MzYxZjFkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvY3B1aWRsZS9LY29uZmlnLmFybQo+ICsrKyBi
L2RyaXZlcnMvY3B1aWRsZS9LY29uZmlnLmFybQo+IEBAIC03NiwzICs3NiwxMSBAQCBjb25maWcg
QVJNX01WRUJVX1Y3X0NQVUlETEUKPiAgCWRlcGVuZHMgb24gQVJDSF9NVkVCVSAmJiAhQVJNNjQK
PiAgCWhlbHAKPiAgCSAgU2VsZWN0IHRoaXMgdG8gZW5hYmxlIGNwdWlkbGUgb24gQXJtYWRhIDM3
MCwgMzh4IGFuZCBYUCBwcm9jZXNzb3JzLgo+ICsKPiArY29uZmlnIEFSTV9URUdSQV9DUFVJRExF
Cj4gKwlib29sICJDUFUgSWRsZSBEcml2ZXIgZm9yIE5WSURJQSBUZWdyYSBTb0NzIgo+ICsJZGVw
ZW5kcyBvbiBBUkNIX1RFR1JBICYmICFBUk02NAo+ICsJc2VsZWN0IEFSQ0hfTkVFRFNfQ1BVX0lE
TEVfQ09VUExFRCBpZiBTTVAKPiArCXNlbGVjdCBBUk1fQ1BVX1NVU1BFTkQKPiArCWhlbHAKPiAr
CSAgU2VsZWN0IHRoaXMgdG8gZW5hYmxlIGNwdWlkbGUgZm9yIE5WSURJQSBUZWdyYTIwLzMwLzEx
NC8xMjQgU29Dcy4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jcHVpZGxlL01ha2VmaWxlIGIvZHJp
dmVycy9jcHVpZGxlL01ha2VmaWxlCj4gaW5kZXggOWQ3MTc2Y2VlM2QzLi40NzBkMTdmYTg3NDYg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9jcHVpZGxlL01ha2VmaWxlCj4gKysrIGIvZHJpdmVycy9j
cHVpZGxlL01ha2VmaWxlCj4gQEAgLTIwLDYgKzIwLDcgQEAgb2JqLSQoQ09ORklHX0FSTV9VODUw
MF9DUFVJRExFKSAgICAgICAgICs9IGNwdWlkbGUtdXg1MDAubwo+ICBvYmotJChDT05GSUdfQVJN
X0FUOTFfQ1BVSURMRSkgICAgICAgICAgKz0gY3B1aWRsZS1hdDkxLm8KPiAgb2JqLSQoQ09ORklH
X0FSTV9FWFlOT1NfQ1BVSURMRSkgICAgICAgICs9IGNwdWlkbGUtZXh5bm9zLm8KPiAgb2JqLSQo
Q09ORklHX0FSTV9DUFVJRExFKQkJKz0gY3B1aWRsZS1hcm0ubwo+ICtvYmotJChDT05GSUdfQVJN
X1RFR1JBX0NQVUlETEUpCQkrPSBjcHVpZGxlLXRlZ3JhLm8KPiAgCj4gICMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMKPiAgIyBNSVBTIGRyaXZlcnMKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jcHVpZGxl
L2NwdWlkbGUtdGVncmEuYyBiL2RyaXZlcnMvY3B1aWRsZS9jcHVpZGxlLXRlZ3JhLmMKPiBuZXcg
ZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uNTQ5NzRjZDIyNTVmCj4gLS0t
IC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvY3B1aWRsZS9jcHVpZGxlLXRlZ3JhLmMKPiBAQCAt
MCwwICsxLDMwNCBAQAo+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5
Cj4gKy8qCj4gKyAqIENQVSBpZGxlIGRyaXZlciBmb3IgVGVncmEgQ1BVcwo+ICsgKgo+ICsgKiBD
b3B5cmlnaHQgKGMpIDIwMTAtMjAxMywgTlZJRElBIENvcnBvcmF0aW9uLgo+ICsgKiBDb3B5cmln
aHQgKGMpIDIwMTEgR29vZ2xlLCBJbmMuCj4gKyAqIEF1dGhvcjogQ29saW4gQ3Jvc3MgPGNjcm9z
c0BhbmRyb2lkLmNvbT4KPiArICogICAgICAgICBHYXJ5IEtpbmcgPGdraW5nQG52aWRpYS5jb20+
Cj4gKyAqCj4gKyAqIFJld29yayBmb3IgMy4zIGJ5IFBldGVyIERlIFNjaHJpanZlciA8cGRlc2No
cmlqdmVyQG52aWRpYS5jb20+Cj4gKyAqCj4gKyAqIFRlZ3JhMjAvMTI0IGRyaXZlciB1bmlmaWNh
dGlvbiBieSBEbWl0cnkgT3NpcGVua28gPGRpZ2V0eEBnbWFpbC5jb20+Cj4gKyAqLwo+ICsKPiAr
I2luY2x1ZGUgPGxpbnV4L2NwdWlkbGUuaD4KPiArI2luY2x1ZGUgPGxpbnV4L2NwdW1hc2suaD4K
PiArI2luY2x1ZGUgPGxpbnV4L2NwdV9wbS5oPgo+ICsjaW5jbHVkZSA8bGludXgvZXJybm8uaD4K
PiArI2luY2x1ZGUgPGxpbnV4L2t0aW1lLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9k
ZXZpY2UuaD4KPiArI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+Cj4gKwo+ICsjaW5jbHVkZSA8bGlu
dXgvY2xrL3RlZ3JhLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9maXJtd2FyZS90cnVzdGVkX2ZvdW5k
YXRpb25zLmg+Cj4gKwo+ICsjaW5jbHVkZSA8c29jL3RlZ3JhL2NwdWlkbGUuaD4KPiArI2luY2x1
ZGUgPHNvYy90ZWdyYS9mbG93Y3RybC5oPgo+ICsjaW5jbHVkZSA8c29jL3RlZ3JhL2Z1c2UuaD4K
PiArI2luY2x1ZGUgPHNvYy90ZWdyYS9wbS5oPgo+ICsKPiArI2luY2x1ZGUgPGFzbS9jcHVpZGxl
Lmg+Cj4gKyNpbmNsdWRlIDxhc20vZmlybXdhcmUuaD4KPiArI2luY2x1ZGUgPGFzbS9zbXBfcGxh
dC5oPgo+ICsjaW5jbHVkZSA8YXNtL3N1c3BlbmQuaD4KPiArCj4gKyNkZWZpbmUgVEVHUkFfQzEJ
CTAKPiArI2RlZmluZSBURUdSQV9DNwkJMQo+ICsjZGVmaW5lIFRFR1JBX0NDNgkJMgo+ICsKPiAr
c3RhdGljIGF0b21pY190IHRlZ3JhX2lkbGVfYmFycmllcjsKPiArCj4gK3N0YXRpYyBpbmxpbmUg
Ym9vbCB0ZWdyYV9jcHVpZGxlX3VzaW5nX2Zpcm13YXJlKHZvaWQpCj4gK3sKPiArCXJldHVybiBm
aXJtd2FyZV9vcHMtPnByZXBhcmVfaWRsZSAmJiBmaXJtd2FyZV9vcHMtPmRvX2lkbGU7Cj4gK30K
PiArCj4gK3N0YXRpYyBpbnQgdGVncmFfc2h1dGRvd25fc2Vjb25kYXJ5X2NwdSh1bnNpZ25lZCBs
b25nIGNwdSkKPiArewo+ICsJdGVncmFfY3B1X2RpZShjcHUpOwo+ICsKPiArCXJldHVybiAtRUlO
VkFMOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IHRlZ3JhX2F3YWl0X3NlY29uZGFyeV9jcHVzX3No
dXRkb3duKHZvaWQpCj4gK3sKPiArCWt0aW1lX3QgdGltZW91dCA9IGt0aW1lX2FkZF9tcyhrdGlt
ZV9nZXQoKSwgMSk7Cj4gKwo+ICsJLyoKPiArCSAqIFRoZSBib290IENQVSBzaGFsbCBhd2FpdCBm
b3IgdGhlIHNlY29uZGFyaWVzIHNodXRkb3duIGluIG9yZGVyCj4gKwkgKiB0byBwb3dlci1vZmYg
Q1BVJ3MgY2x1c3RlciBzYWZlbHkuCj4gKwkgKi8KPiArCWRvIHsKPiArCQlpZiAodGVncmFfY3B1
X3JhaWxfb2ZmX3JlYWR5KCkpCj4gKwkJCXJldHVybiAwOwo+ICsKPiArCX0gd2hpbGUgKGt0aW1l
X2NvbXBhcmUoa3RpbWVfZ2V0KCksIHRpbWVvdXQpIDwgMCk7Cj4gKwo+ICsJcmV0dXJuIC1FVElN
RURPVVQ7Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkIHRlZ3JhX3dha2VfdXBfc2Vjb25kYXJ5X2Nw
dXModm9pZCkKPiArewo+ICsJdW5zaWduZWQgaW50IGNwdSwgbGNwdTsKPiArCj4gKwlmb3JfZWFj
aF9jcHUobGNwdSwgY3B1X29ubGluZV9tYXNrKSB7Cj4gKwkJY3B1ID0gY3B1X2xvZ2ljYWxfbWFw
KGxjcHUpOwo+ICsKPiArCQlpZiAoY3B1ID4gMCkgewo+ICsJCQl0ZWdyYV9lbmFibGVfY3B1X2Ns
b2NrKGNwdSk7Cj4gKwkJCXRlZ3JhX2NwdV9vdXRfb2ZfcmVzZXQoY3B1KTsKPiArCQkJZmxvd2N0
cmxfd3JpdGVfY3B1X2hhbHQoY3B1LCAwKTsKPiArCQl9Cj4gKwl9Cj4gK30KPiArCj4gK3N0YXRp
YyBpbnQgdGVncmFfY3B1aWRsZV9jYzZfZW50ZXIodm9pZCkKPiArewo+ICsJaW50IGVycjsKPiAr
Cj4gKwllcnIgPSB0ZWdyYV9hd2FpdF9zZWNvbmRhcnlfY3B1c19zaHV0ZG93bigpOwo+ICsJaWYg
KGVycikKPiArCQlyZXR1cm4gZXJyOwo+ICsKPiArCWVyciA9IHRlZ3JhX2lkbGVfbHAyX2xhc3Qo
KTsKPiArCj4gKwl0ZWdyYV93YWtlX3VwX3NlY29uZGFyeV9jcHVzKCk7Cj4gKwo+ICsJcmV0dXJu
IGVycjsKPiArfQo+ICsKPiArc3RhdGljIGludCB0ZWdyYV9jcHVpZGxlX2M3X2VudGVyKHZvaWQp
Cj4gK3sKPiArCWludCBlcnI7Cj4gKwo+ICsJaWYgKHRlZ3JhX2NwdWlkbGVfdXNpbmdfZmlybXdh
cmUoKSkgewo+ICsJCWVyciA9IGNhbGxfZmlybXdhcmVfb3AocHJlcGFyZV9pZGxlLCBURl9QTV9N
T0RFX0xQMl9OT0ZMVVNIX0wyKTsKPiArCQlpZiAoZXJyKQo+ICsJCQlyZXR1cm4gZXJyOwo+ICsK
PiArCQlyZXR1cm4gY2FsbF9maXJtd2FyZV9vcChkb19pZGxlLCAwKTsKPiArCX0KPiArCj4gKwly
ZXR1cm4gY3B1X3N1c3BlbmQoMCwgdGVncmEzMF9zbGVlcF9jcHVfc2Vjb25kYXJ5X2ZpbmlzaCk7
Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQgdGVncmFfY3B1aWRsZV9lbnRlcihzdHJ1Y3QgY3B1aWRs
ZV9kZXZpY2UgKmRldiwKPiArCQkJICAgICAgIGludCBpbmRleCwgdW5zaWduZWQgaW50IGNwdSkK
PiArewo+ICsJaW50IGVycjsKPiArCj4gKwlsb2NhbF9maXFfZGlzYWJsZSgpOwo+ICsJdGVncmFf
c2V0X2NwdV9pbl9scDIoKTsKPiArCWNwdV9wbV9lbnRlcigpOwo+ICsKPiArCXN3aXRjaCAoaW5k
ZXgpIHsKPiArCWNhc2UgVEVHUkFfQzc6Cj4gKwkJZXJyID0gdGVncmFfY3B1aWRsZV9jN19lbnRl
cigpOwo+ICsJCWJyZWFrOwo+ICsJY2FzZSBURUdSQV9DQzY6Cj4gKwkJY3B1aWRsZV9jb3VwbGVk
X3BhcmFsbGVsX2JhcnJpZXIoZGV2LCAmdGVncmFfaWRsZV9iYXJyaWVyKTsKCkkgcmVhbGl6ZWQg
dGhhdCB0aGlzIGlzIG5vdCB2ZXJ5IGNvcnJlY3QuIFdlIHN0aWxsIG5lZWQgdG8gZG8gYSBwcm9w
ZXIKYmFycmllciB3aXRoIFNHSSBjaGVja2luZyBpbiBvcmRlciB0byBiYWlsIG91dCBpZiBvdGhl
ciBDUFUgc2VudCBJUEkKZHVyaW5nIG9mIHRoZSBhd2FpdGluZyBmb3IgYSBjb3VwbGVkIGJhcnJp
ZXIgdG8gYXZvaWQgdGhlIG92ZXJoZWFkIG9mCnVubmVjZXNzYXJ5IHBvd2VyLWdhdGluZy4gV2ls
bCBjb3JyZWN0IHRoYXQgaW4gdGhlIG5leHQgcmV2aXNpb24uCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
