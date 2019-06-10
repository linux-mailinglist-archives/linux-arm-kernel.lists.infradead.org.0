Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5EE3B441
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 13:55:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UluW1S/n9Dmk26fBQwK2ecKKqPsbgqsicZ0dGYTUNxM=; b=Aucbl63Kwn7i/u
	IK2geRx6t2MDgcS3OJ88LqzNXiok97EuvpFTrmoWlG8xTC00+8KZY5ACLcCLj/B9I+xwDXtLbrSnx
	/7SuDlo+1lggkaqBrv264MPU01qigwDNi/uM1Q3mKWDm/Y41VutgtkSg/fnlC0/1PSppaOlN74+8C
	U3OkYBmHNXdN6lcDf8qkNhpfBrtPFqvl3GIrsNa1aBMeFkcoQTsUlerhQ8bql0adyOKMlIkRdBuH9
	hYDyj0dTqE561ctLT2sKa/3XBDAfShstxQLKO2AYNqcbHilRGZka9Tozt1qrZuj7jkN5v/rR/qBh6
	D7i2/lpIx5q/LChG3+Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haIt6-0003EB-4T; Mon, 10 Jun 2019 11:54:56 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haIss-00032c-EW
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 11:54:43 +0000
Received: by mail-lj1-x243.google.com with SMTP id s21so7657892lji.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 04:54:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=gs+dXo03iGSXIbvZumT3whB+zUNhpW1uB1X7IkDvdb0=;
 b=DXoQ672WRtOEEQeugKYzCuci1EVDXorH0W4sPdjohMTf/tDn7+XN0DiJLtuGXHLVrF
 2L4ocu9rBFntHMFL1rUq9tI83lUegzr6JrQ+Q2i5oOt3oYyCVD84kT7bt7Zvlb3HzvrV
 xplZLmOrgyZNoaWFzAgeT0Vn2qk1PlNMEBq0lOJxQ5EFVGYFoKQQBUZyvNM4hdEHefLB
 bFgldbZolk/QqxD6XCscfgON8hbsp+vJKrjO7YCe2sRCisOBUn1IswmaAIj/RBiUOB42
 GS/BYTyis0KOWtQllpD0YSXi7ui9sUd1n6ZZWdeWRezzBj9+5Rslm7nS4/P/nXdhPN3Y
 bTdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gs+dXo03iGSXIbvZumT3whB+zUNhpW1uB1X7IkDvdb0=;
 b=IlKO0TF+NHEJP0EWXkBT6SlpuRpjilg/HpObVSevEspXDwpe7rhkVdxIXW9DuxLNEl
 1zYj06WoVzVEhhVhVaP7rs9C0n2zgsmfqMI1WvyYHfPERZ63fqOcqiQTTMPW0g6G1B/x
 sW7nHAwFhpyiMZyySFeplD90Dve++BAr8DKiVkoiQH04JDybOXbqT2ltzH0EgT2Qt1ph
 1JQIFwiPoCryN7VxS56XMtXs/kKKxC4ro5q+PlQ9Cke5R5FUAHD494UfNRskXn/aNu2s
 9dXkHRjDo9nNhiw/TihWUyQ8afsDd0/YT6pVyW5HMps+13CI1slQ2v7vrl4Y8mshgz1K
 dQmw==
X-Gm-Message-State: APjAAAVuDVzTuIWLlx7mpqwHddQ3NGWZqsSoTE6Kzh+dd1zqChyWK1jt
 W1AvHTeCE42uOW72ZuRSLDY=
X-Google-Smtp-Source: APXvYqw+E63/QIjGRyPS5+iyhJUBCA93yR14aDpe6TUA4ON6HuwlLloOZxpGwwk0hQXDoWxjiy7r0Q==
X-Received: by 2002:a2e:5c88:: with SMTP id q130mr7199616ljb.176.1560167678633; 
 Mon, 10 Jun 2019 04:54:38 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-79-162-197.pppoe.mtu-net.ru.
 [91.79.162.197])
 by smtp.googlemail.com with ESMTPSA id i5sm1966626lfo.55.2019.06.10.04.54.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 04:54:37 -0700 (PDT)
Subject: Re: [PATCH V9 13/15] phy: tegra: Add PCIe PIPE2UPHY support
To: Vidya Sagar <vidyas@nvidia.com>, lorenzo.pieralisi@arm.com,
 bhelgaas@google.com, robh+dt@kernel.org, mark.rutland@arm.com,
 thierry.reding@gmail.com, jonathanh@nvidia.com, kishon@ti.com,
 catalin.marinas@arm.com, will.deacon@arm.com, jingoohan1@gmail.com,
 gustavo.pimentel@synopsys.com
References: <20190607144640.13427-1-vidyas@nvidia.com>
 <20190607144640.13427-14-vidyas@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <58349f3f-b9c2-2653-3a69-3bb5e836a9ef@gmail.com>
Date: Mon, 10 Jun 2019 14:54:36 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190607144640.13427-14-vidyas@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_045442_524861_AFBA5C38 
X-CRM114-Status: GOOD (  23.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, mperttunen@nvidia.com,
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 sagar.tv@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MDcuMDYuMjAxOSAxNzo0NiwgVmlkeWEgU2FnYXIg0L/QuNGI0LXRgjoKPiBTeW5vcHN5cyBEZXNp
Z25XYXJlIGNvcmUgYmFzZWQgUENJZSBjb250cm9sbGVycyBpbiBUZWdyYSAxOTQgU29DIGludGVy
ZmFjZQo+IHdpdGggVW5pdmVyc2FsIFBIWSAoVVBIWSkgbW9kdWxlIHRocm91Z2ggYSBQSVBFMlVQ
SFkgKFAyVSkgbW9kdWxlLgo+IEZvciBlYWNoIFBDSWUgbGFuZSBvZiBhIGNvbnRyb2xsZXIsIHRo
ZXJlIGlzIGEgUDJVIHVuaXQgaW5zdGFudGlhdGVkIGF0Cj4gaGFyZHdhcmUgbGV2ZWwuIFRoaXMg
ZHJpdmVyIHByb3ZpZGVzIHN1cHBvcnQgZm9yIHRoZSBwcm9ncmFtbWluZyByZXF1aXJlZAo+IGZv
ciBlYWNoIFAyVSB0aGF0IGlzIGdvaW5nIHRvIGJlIHVzZWQgZm9yIGEgUENJZSBjb250cm9sbGVy
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IFZpZHlhIFNhZ2FyIDx2aWR5YXNAbnZpZGlhLmNvbT4KPiAt
LS0KPiBDaGFuZ2VzIHNpbmNlIFt2OF06Cj4gKiBNYWRlIGl0IGRlcGVuZGVudCBvbiBBUkNIX1RF
R1JBXzE5NF9TT0MgZGlyZWN0bHkgaW5zdGVhZCBvZiBBUkNIX1RFR1JBCj4gCj4gQ2hhbmdlcyBz
aW5jZSBbdjddOgo+ICogQ2hhbmdlZCBQMlUgZHJpdmVyIGZpbGUgbmFtZSBmcm9tIHBjaWUtcDJ1
LXRlZ3JhMTk0LmMgdG8gcGh5LXRlZ3JhMTk0LXAydS5jCj4gCj4gQ2hhbmdlcyBzaW5jZSBbdjZd
Ogo+ICogTm9uZQo+IAo+IENoYW5nZXMgc2luY2UgW3Y1XToKPiAqIEFkZHJlc3NlZCByZXZpZXcg
Y29tbWVudHMgZnJvbSBUaGllcnJ5Cj4gCj4gQ2hhbmdlcyBzaW5jZSBbdjRdOgo+ICogTm9uZQo+
IAo+IENoYW5nZXMgc2luY2UgW3YzXToKPiAqIFJlYmFzZWQgb24gdG9wIG9mIGxpbnV4LW5leHQg
dG9wIG9mIHRoZSB0cmVlCj4gCj4gQ2hhbmdlcyBzaW5jZSBbdjJdOgo+ICogUmVwbGFjZWQgc3Bh
Y2VzIHdpdGggdGFicyBpbiBLY29uZmlnIGZpbGUKPiAqIFNvcnRlZCBoZWFkZXIgZmlsZSBpbmNs
dXNpb24gYWxwaGFiZXRpY2FsbHkKPiAKPiBDaGFuZ2VzIHNpbmNlIFt2MV06Cj4gKiBBZGRlZCBD
T01QSUxFX1RFU1QgaW4gS2NvbmZpZwo+ICogUmVtb3ZlZCBlbXB0eSBwaHlfb3BzIGltcGxlbWVu
dGF0aW9ucwo+ICogTW9kaWZpZWQgY29kZSBhY2NvcmRpbmcgdG8gRFQgZG9jdW1lbnRhdGlvbiBm
aWxlIG1vZGlmaWNhdGlvbnMKPiAKPiAgZHJpdmVycy9waHkvdGVncmEvS2NvbmZpZyAgICAgICAg
ICAgIHwgICA3ICsrCj4gIGRyaXZlcnMvcGh5L3RlZ3JhL01ha2VmaWxlICAgICAgICAgICB8ICAg
MSArCj4gIGRyaXZlcnMvcGh5L3RlZ3JhL3BoeS10ZWdyYTE5NC1wMnUuYyB8IDEwOSArKysrKysr
KysrKysrKysrKysrKysrKysrKysKPiAgMyBmaWxlcyBjaGFuZ2VkLCAxMTcgaW5zZXJ0aW9ucygr
KQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9waHkvdGVncmEvcGh5LXRlZ3JhMTk0LXAy
dS5jCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3RlZ3JhL0tjb25maWcgYi9kcml2ZXJz
L3BoeS90ZWdyYS9LY29uZmlnCj4gaW5kZXggZTUxNjk2N2Q2OTViLi5mOTgxN2MzYWU4NWYgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvdGVncmEvS2NvbmZpZwo+ICsrKyBiL2RyaXZlcnMvcGh5
L3RlZ3JhL0tjb25maWcKPiBAQCAtNywzICs3LDEwIEBAIGNvbmZpZyBQSFlfVEVHUkFfWFVTQgo+
ICAKPiAgCSAgVG8gY29tcGlsZSB0aGlzIGRyaXZlciBhcyBhIG1vZHVsZSwgY2hvb3NlIE0gaGVy
ZTogdGhlIG1vZHVsZSB3aWxsCj4gIAkgIGJlIGNhbGxlZCBwaHktdGVncmEteHVzYi4KPiArCj4g
K2NvbmZpZyBQSFlfVEVHUkExOTRfUDJVCj4gKwl0cmlzdGF0ZSAiTlZJRElBIFRlZ3JhMTk0IFBJ
UEUyVVBIWSBQSFkgZHJpdmVyIgo+ICsJZGVwZW5kcyBvbiBBUkNIX1RFR1JBXzE5NF9TT0MgfHwg
Q09NUElMRV9URVNUCj4gKwlzZWxlY3QgR0VORVJJQ19QSFkKPiArCWhlbHAKPiArCSAgRW5hYmxl
IHRoaXMgdG8gc3VwcG9ydCB0aGUgUDJVIChQSVBFIHRvIFVQSFkpIHRoYXQgaXMgcGFydCBvZiBU
ZWdyYSAxOXggU09Dcy4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvdGVncmEvTWFrZWZpbGUg
Yi9kcml2ZXJzL3BoeS90ZWdyYS9NYWtlZmlsZQo+IGluZGV4IDY0Y2NhZWFjYjYzMS4uMzIwZGQz
ODlmMzRkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3RlZ3JhL01ha2VmaWxlCj4gKysrIGIv
ZHJpdmVycy9waHkvdGVncmEvTWFrZWZpbGUKPiBAQCAtNiwzICs2LDQgQEAgcGh5LXRlZ3JhLXh1
c2ItJChDT05GSUdfQVJDSF9URUdSQV8xMjRfU09DKSArPSB4dXNiLXRlZ3JhMTI0Lm8KPiAgcGh5
LXRlZ3JhLXh1c2ItJChDT05GSUdfQVJDSF9URUdSQV8xMzJfU09DKSArPSB4dXNiLXRlZ3JhMTI0
Lm8KPiAgcGh5LXRlZ3JhLXh1c2ItJChDT05GSUdfQVJDSF9URUdSQV8yMTBfU09DKSArPSB4dXNi
LXRlZ3JhMjEwLm8KPiAgcGh5LXRlZ3JhLXh1c2ItJChDT05GSUdfQVJDSF9URUdSQV8xODZfU09D
KSArPSB4dXNiLXRlZ3JhMTg2Lm8KPiArb2JqLSQoQ09ORklHX1BIWV9URUdSQTE5NF9QMlUpICs9
IHBoeS10ZWdyYTE5NC1wMnUubwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS90ZWdyYS9waHkt
dGVncmExOTQtcDJ1LmMgYi9kcml2ZXJzL3BoeS90ZWdyYS9waHktdGVncmExOTQtcDJ1LmMKPiBu
ZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uN2I4NGI0YzU1ZTQzCj4g
LS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvcGh5L3RlZ3JhL3BoeS10ZWdyYTE5NC1wMnUu
Ywo+IEBAIC0wLDAgKzEsMTA5IEBACj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwt
Mi4wKwo+ICsvKgo+ICsgKiBQMlUgKFBJUEUgdG8gVVBIWSkgZHJpdmVyIGZvciBUZWdyYSBUMTk0
IFNvQwo+ICsgKgo+ICsgKiBDb3B5cmlnaHQgKEMpIDIwMTkgTlZJRElBIENvcnBvcmF0aW9uLgo+
ICsgKgo+ICsgKiBBdXRob3I6IFZpZHlhIFNhZ2FyIDx2aWR5YXNAbnZpZGlhLmNvbT4KPiArICov
Cj4gKwo+ICsjaW5jbHVkZSA8bGludXgvZXJyLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9pby5oPgo+
ICsjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9vZi5oPgo+ICsj
aW5jbHVkZSA8bGludXgvb2ZfcGxhdGZvcm0uaD4KPiArI2luY2x1ZGUgPGxpbnV4L3BoeS9waHku
aD4KPiArCj4gKyNkZWZpbmUgUDJVX1BFUklPRElDX0VRX0NUUkxfR0VOMwkweGMwCj4gKyNkZWZp
bmUgUDJVX1BFUklPRElDX0VRX0NUUkxfR0VOM19QRVJJT0RJQ19FUV9FTgkJQklUKDApCj4gKyNk
ZWZpbmUgUDJVX1BFUklPRElDX0VRX0NUUkxfR0VOM19JTklUX1BSRVNFVF9FUV9UUkFJTl9FTglC
SVQoMSkKPiArI2RlZmluZSBQMlVfUEVSSU9ESUNfRVFfQ1RSTF9HRU40CTB4YzQKPiArI2RlZmlu
ZSBQMlVfUEVSSU9ESUNfRVFfQ1RSTF9HRU40X0lOSVRfUFJFU0VUX0VRX1RSQUlOX0VOCUJJVCgx
KQo+ICsKPiArI2RlZmluZSBQMlVfUlhfREVCT1VOQ0VfVElNRQkJCQkweGE0Cj4gKyNkZWZpbmUg
UDJVX1JYX0RFQk9VTkNFX1RJTUVfREVCT1VOQ0VfVElNRVJfTUFTSwkweGZmZmYKPiArI2RlZmlu
ZSBQMlVfUlhfREVCT1VOQ0VfVElNRV9ERUJPVU5DRV9USU1FUl9WQUwJCTE2MAo+ICsKPiArc3Ry
dWN0IHRlZ3JhX3AydSB7Cj4gKwl2b2lkIF9faW9tZW0gKmJhc2U7Cj4gK307Cj4gKwo+ICtzdGF0
aWMgaW50IHRlZ3JhX3AydV9wb3dlcl9vbihzdHJ1Y3QgcGh5ICp4KQo+ICt7Cj4gKwlzdHJ1Y3Qg
dGVncmFfcDJ1ICpwaHkgPSBwaHlfZ2V0X2RydmRhdGEoeCk7Cj4gKwl1MzIgdmFsOwo+ICsKPiAr
CXZhbCA9IHJlYWRsKHBoeS0+YmFzZSArIFAyVV9QRVJJT0RJQ19FUV9DVFJMX0dFTjMpOwo+ICsJ
dmFsICY9IH5QMlVfUEVSSU9ESUNfRVFfQ1RSTF9HRU4zX1BFUklPRElDX0VRX0VOOwo+ICsJdmFs
IHw9IFAyVV9QRVJJT0RJQ19FUV9DVFJMX0dFTjNfSU5JVF9QUkVTRVRfRVFfVFJBSU5fRU47Cj4g
Kwl3cml0ZWwodmFsLCBwaHktPmJhc2UgKyBQMlVfUEVSSU9ESUNfRVFfQ1RSTF9HRU4zKTsKPiAr
Cj4gKwl2YWwgPSByZWFkbChwaHktPmJhc2UgKyBQMlVfUEVSSU9ESUNfRVFfQ1RSTF9HRU40KTsK
PiArCXZhbCB8PSBQMlVfUEVSSU9ESUNfRVFfQ1RSTF9HRU40X0lOSVRfUFJFU0VUX0VRX1RSQUlO
X0VOOwo+ICsJd3JpdGVsKHZhbCwgcGh5LT5iYXNlICsgUDJVX1BFUklPRElDX0VRX0NUUkxfR0VO
NCk7Cj4gKwo+ICsJdmFsID0gcmVhZGwocGh5LT5iYXNlICsgUDJVX1JYX0RFQk9VTkNFX1RJTUUp
Owo+ICsJdmFsICY9IH5QMlVfUlhfREVCT1VOQ0VfVElNRV9ERUJPVU5DRV9USU1FUl9NQVNLOwo+
ICsJdmFsIHw9IFAyVV9SWF9ERUJPVU5DRV9USU1FX0RFQk9VTkNFX1RJTUVSX1ZBTDsKPiArCXdy
aXRlbCh2YWwsIHBoeS0+YmFzZSArIFAyVV9SWF9ERUJPVU5DRV9USU1FKTsKCkknbSB3b25kZXJp
bmcgd2hldGhlciB5b3UncmUgcmVhbGx5IG5lZWQgdG8gaW5zZXJ0IG1lbW9yeSBiYXJyaWVycyBm
b3IKZWFjaCByZWFkbC93cml0ZWwsIGNhbid0IHRoZSByZWxheGVkIHZlcnNpb25zIGJlIHVzZWQg
aW5zdGVhZD8KClRoZSBzYW1lIGFwcGxpZXMgdG8gb3RoZXIgcGF0Y2hlcyBhcyB3ZWxsLgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
