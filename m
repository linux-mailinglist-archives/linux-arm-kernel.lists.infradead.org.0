Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBDC38CF3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 16:26:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b4QjrCT3LLqFZ7cSDr7d5aI1yTRbDEQeloGzRjKFmZI=; b=AYjywnVJPg3CsC
	T4GLzxgIZaEL8eRduKlYmt3Uj9Zl72CXb0i8Z7h1DnJEepeUBsN9uDv4CyY7mbWdxaZuwIYpWFoTB
	yv53Lqy835xX6Is+enh4jlo7SsPOEbbr0tqsvTYlynFx+zqzpfOqaXzUe3SoiEHdKWwRwKrqNRlwp
	04ZR365DCvcWtH5RH5os0qkTL5JJ/bG5qbr9WWhpGlMjnrgGY8yfUbLJ0WTb9QnjOWbXeIsjcpvnk
	BJlZG+GpcQ78Witzom23si8qLS8DCIYH8H8OTLXHDvSlmD3xd32pFJdU8MoBst6uBMgySVXSckuUN
	uSjPXpbTdQbDK5JTLaPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZFpN-0007Qq-Qk; Fri, 07 Jun 2019 14:26:45 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZFpE-0007Q4-29
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 14:26:37 +0000
Received: by mail-lj1-x243.google.com with SMTP id v29so1949279ljv.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 07:26:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=72tWwa0dcIt8Xo0+smV7Jx5Ec2g3rCWEBlAObPTLz0U=;
 b=Quyw9qOD7tAC7+vKO/Ti/b8U2aQSuAwV62sUcW/dxj8F1IM/XPq4mdt6iLlo66b0uZ
 xJAzrC7jTHmIFyk1FjpnwfvVEmArng0fsymszNKfJmiZM6asd2NtB1/StM59cv20Zqk7
 cT1CC7BaCq9aZ3puiuC0oMBVVOg/3ti81TnYMIN8+jawBMsv4yw3oStaUpddRvlojaP+
 U/Rhh6E+N6PgKoV2lPwAzS5N3fPrkMaGoHLjplrfTsZTCfBeSMo7sblg/A6ip3R5fre+
 u1jEc9kwEWwm0xPBCQ1wM1+Y0p+HkUV5W7hL5SF/GVk9EOvI/kr2BVtRCNaKrQW2nfb0
 3Jlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=72tWwa0dcIt8Xo0+smV7Jx5Ec2g3rCWEBlAObPTLz0U=;
 b=jgdv51tCGmvtMRZmQ8eCBDjbN31RSsdt7FzM2cMHjElxb5KfW/PJeh0SvNC1MACAm6
 9TximNbM7C8EYVm1UQfLpniPaxuPAhI0Z/4yhoVpDx7S9ugsGJPGrUsNiOXRjs3rPjeQ
 D4mnkEie+lromBf/kRJQZQtDN1KZbK1Jh/42oSTWhecVfrsEpvd2g232Pe7MaFzwfqvo
 s/DDYBLt/dUSVaJowgDdKtBBDJ4Lzq/lpOLy7uKyG7TWyMjJjbJywkAojzS2eWrqEl9r
 zsoHV7jcooT6zA9r7uChivR+A9d8IurhYYlKMoST0346tVcOPNFpLV8sz6UcT8CRi6e6
 G20g==
X-Gm-Message-State: APjAAAWGL6y+63jqdd9RTjh42cLaJZ8LAIZ5GenxdPzDdyRTczZ6to51
 cEnwzUy0losU1obATXIN6FM=
X-Google-Smtp-Source: APXvYqw/4TOOoHDJgr7Ck0jOuvFeItX6JbVqu4ZEiItCsTrasrIybscN26Wy76qCrzC8ZZgwwAmqSw==
X-Received: by 2002:a2e:864e:: with SMTP id i14mr28055127ljj.141.1559917594310; 
 Fri, 07 Jun 2019 07:26:34 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-76-170-54.pppoe.mtu-net.ru.
 [91.76.170.54])
 by smtp.googlemail.com with ESMTPSA id u13sm434946lfl.61.2019.06.07.07.26.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Jun 2019 07:26:33 -0700 (PDT)
Subject: Re: [PATCH V8 14/15] PCI: tegra: Add Tegra194 PCIe support
To: Vidya Sagar <vidyas@nvidia.com>, lorenzo.pieralisi@arm.com,
 bhelgaas@google.com, robh+dt@kernel.org, mark.rutland@arm.com,
 thierry.reding@gmail.com, jonathanh@nvidia.com, kishon@ti.com,
 catalin.marinas@arm.com, will.deacon@arm.com, jingoohan1@gmail.com,
 gustavo.pimentel@synopsys.com
References: <20190526043751.12729-1-vidyas@nvidia.com>
 <20190526043751.12729-15-vidyas@nvidia.com>
 <f30e7fc6-3f64-d321-c32c-5e273115a869@gmail.com>
 <cbdac43f-32f7-c992-832b-ed40bef2375b@gmail.com>
 <06f2f74e-d618-8688-14ae-beb4920bcbf6@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <2a51622f-7bd8-2c6c-b3c5-8b87c2b5be0c@gmail.com>
Date: Fri, 7 Jun 2019 17:26:32 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <06f2f74e-d618-8688-14ae-beb4920bcbf6@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_072636_125803_835A050A 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, mperttunen@nvidia.com,
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 sagar.tv@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MDcuMDYuMjAxOSAxNzoxMCwgVmlkeWEgU2FnYXIg0L/QuNGI0LXRgjoKPiBPbiA2LzcvMjAxOSAx
MjoyMiBBTSwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOgo+PiAwNi4wNi4yMDE5IDE5OjM1LCBEbWl0
cnkgT3NpcGVua28g0L/QuNGI0LXRgjoKPj4+IDI2LjA1LjIwMTkgNzozNywgVmlkeWEgU2FnYXIg
0L/QuNGI0LXRgjoKPj4+PiBBZGQgc3VwcG9ydCBmb3IgU3lub3BzeXMgRGVzaWduV2FyZSBjb3Jl
IElQIGJhc2VkIFBDSWUgaG9zdCBjb250cm9sbGVyCj4+Pj4gcHJlc2VudCBpbiBUZWdyYTE5NCBT
b0MuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBWaWR5YSBTYWdhciA8dmlkeWFzQG52aWRpYS5j
b20+Cj4+Pj4gLS0tCj4+Pj4gQ2hhbmdlcyBzaW5jZSBbdjddOgo+Pj4+ICogQWRkcmVzc2VkIHJl
dmlldyBjb21tZW50cyBmcm9tIFRoaWVycnkKPj4+Pgo+Pj4+IENoYW5nZXMgc2luY2UgW3Y2XToK
Pj4+PiAqIFJlbW92ZWQgY29kZSBhcm91bmQgIm52aWRpYSxkaXNhYmxlLWFzcG0tc3RhdGVzIiBE
VCBwcm9wZXJ0eQo+Pj4+ICogUmVmYWN0b3JlZCBjb2RlIHRvIHJlbW92ZSBjb2RlIGR1cGxpY2F0
aW9uCj4+Pj4KPj4+PiBDaGFuZ2VzIHNpbmNlIFt2NV06Cj4+Pj4gKiBBZGRyZXNzZWQgcmV2aWV3
IGNvbW1lbnRzIGZyb20gVGhpZXJyeQo+Pj4+Cj4+Pj4gQ2hhbmdlcyBzaW5jZSBbdjRdOgo+Pj4+
ICogTm9uZQo+Pj4+Cj4+Pj4gQ2hhbmdlcyBzaW5jZSBbdjNdOgo+Pj4+ICogTm9uZQo+Pj4+Cj4+
Pj4gQ2hhbmdlcyBzaW5jZSBbdjJdOgo+Pj4+ICogQ2hhbmdlZCAnbnZpZGlhLGluaXQtc3BlZWQn
IHRvICdudmlkaWEsaW5pdC1saW5rLXNwZWVkJwo+Pj4+ICogQ2hhbmdlZCAnbnZpZGlhLHBleC13
YWtlJyB0byAnbnZpZGlhLHdha2UtZ3Bpb3MnCj4+Pj4gKiBSZW1vdmVkIC5ydW50aW1lX3N1c3Bl
bmQoKSAmIC5ydW50aW1lX3Jlc3VtZSgpIGltcGxlbWVudGF0aW9ucwo+Pj4+Cj4+Pj4gQ2hhbmdl
cyBzaW5jZSBbdjFdOgo+Pj4+ICogTWFkZSBDT05GSUdfUENJRV9URUdSQTE5NCBhcyAnbScgYnkg
ZGVmYXVsdCBmcm9tIGl0cyBwcmV2aW91cyAneScKPj4+PiBzdGF0ZQo+Pj4+ICogTW9kaWZpZWQg
Y29kZSBhcyBwZXIgY2hhbmdlcyBtYWRlIHRvIERUIGRvY3VtZW50YXRpb24KPj4+PiAqIFJlZmFj
dG9yZWQgY29kZSB0byBhZGRyZXNzIEJqb3JuICYgVGhpZXJyeSdzIHJldmlldyBjb21tZW50cwo+
Pj4+ICogQWRkZWQgZ290byB0byBhdm9pZCByZWN1cnNpb24gaW4gdGVncmFfcGNpZV9kd19ob3N0
X2luaXQoKSBBUEkKPj4+PiAqIE1lcmdlZCAuc2Nhbl9idXMoKSBvZiBkd19wY2llX2hvc3Rfb3Bz
IGltcGxlbWVudGF0aW9uIHRvCj4+Pj4gdGVncmFfcGNpZV9kd19ob3N0X2luaXQoKSBBUEkKPj4+
Pgo+Pj4+IMKgIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL0tjb25maWfCoMKgwqDCoMKgwqDC
oMKgIHzCoMKgIDEwICsKPj4+PiDCoCBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9NYWtlZmls
ZcKgwqDCoMKgwqDCoMKgIHzCoMKgwqAgMSArCj4+Pj4gwqAgZHJpdmVycy9wY2kvY29udHJvbGxl
ci9kd2MvcGNpZS10ZWdyYTE5NC5jIHwgMTYyMQo+Pj4+ICsrKysrKysrKysrKysrKysrKysrCj4+
Pj4gwqAgMyBmaWxlcyBjaGFuZ2VkLCAxNjMyIGluc2VydGlvbnMoKykKPj4+PiDCoCBjcmVhdGUg
bW9kZSAxMDA2NDQgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS10ZWdyYTE5NC5jCj4+
Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvS2NvbmZpZwo+
Pj4+IGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvS2NvbmZpZwo+Pj4+IGluZGV4IGE2Y2Ux
ZWU1MWI0Yy4uODg0MTEyYWZjMTFiIDEwMDY0NAo+Pj4+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvZHdjL0tjb25maWcKPj4+PiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9L
Y29uZmlnCj4+Pj4gQEAgLTIyMCw2ICsyMjAsMTYgQEAgY29uZmlnIFBDSV9NRVNPTgo+Pj4+IMKg
wqDCoMKgwqDCoMKgIGFuZCB0aGVyZWZvcmUgdGhlIGRyaXZlciByZS11c2VzIHRoZSBEZXNpZ25X
YXJlIGNvcmUKPj4+PiBmdW5jdGlvbnMgdG8KPj4+PiDCoMKgwqDCoMKgwqDCoCBpbXBsZW1lbnQg
dGhlIGRyaXZlci4KPj4+PiDCoCArY29uZmlnIFBDSUVfVEVHUkExOTQKPj4+PiArwqDCoMKgIHRy
aXN0YXRlICJOVklESUEgVGVncmExOTQgKGFuZCBsYXRlcikgUENJZSBjb250cm9sbGVyIgo+Pj4+
ICvCoMKgwqAgZGVwZW5kcyBvbiAoVEVHUkFfQlBNUCAmJiBBUkNIX1RFR1JBKSB8fCBDT01QSUxF
X1RFU1QKPj4+Cj4+PiBURUdSQV9CUE1QIHdpbGwgYmUgZW5vdWdoIGhlcmUgYXMgaXQgZGVwZW5k
cyBvbiBvdGhlciByZWxldmFudCBvcHRpb25zLgo+Pj4KPj4+IEhlbmNlIEkgbWVhbjoKPj4+Cj4+
PiDCoMKgwqDCoGRlcGVuZHMgb24gVEVHUkFfQlBNUCB8fCBDT01QSUxFX1RFU1QKPj4KPj4gTWF5
YmUgaXQncyB3b3J0aCB0byBldmVuIGNoYW5nZSBURUdSQV9CUE1QIHRvIEFSQ0hfVEVHUkFfMTk0
X1NPQy4KPj4gQWx0aG91Z2ggdGhlbiB5b3UnbGwgaGF2ZSB0byBleHRlbmQgaXQgd2l0aCBvdGhl
ciBwbGF0Zm9ybXMgbGF0ZXIgb24sCj4+IGJ1dCBwcm9iYWJseSB0aGF0J3MgZmluZS4KPiBJIHJl
Y2VpdmVkIGFuIGV4cGxpY2l0IGNvbW1lbnQgcHJldmlvdXNseSB0byBtYWtlIHRoaXMgZGVwZW5k
ZW50IG9uCj4gVEVHUkFfQlBNUAo+IGFzIHRoZSBkcml2ZXIgaXMgdXNpbmcgQVBJcyB0byBnZXQg
Y2VydGFpbiBqb2JzIGRvbmUgYnkgQlBNUC1GVy4gQnV0LCBzaW5jZQo+IHdlIGNhbid0IGJvb3Qg
a2VybmVsIGluIHRoZSBmaXJzdCBwbGFjZSB3aXRob3V0IGhhdmluZyBCUE1QLUZXIGluIHBsYWNl
LAo+IEkgdGhpbmsKPiBpdCBzaG91bGQgYmUgZmluZSB0byBtYWtlIGl0IGRlcGVuZGVudCBvbiBB
UkNIX1RFR1JBXzE5NF9TT0MgZGlyZWN0bHkuCgpBUkNIX1RFR1JBXzE5NF9TT0Mgc2VsZWN0cyBC
UE1QIGJ5IGl0c2VsZiAoc2VlCmRyaXZlcnMvc29jL3RlZ3JhL0tjb25maWcpLCBzbyBpdCdzIGlu
ZGVlZCBhYnNvbHV0ZWx5IGZpbmUuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
