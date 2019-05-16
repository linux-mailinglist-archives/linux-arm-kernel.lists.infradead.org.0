Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BAB209E7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 16:39:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L93yJiVBSteqv3MxSdBzmE1bpm1IZaG4LJjSC0HyLgA=; b=BEkmyhAnG4b+eL
	Xo7jO5m4uA1EdvGXCcxsqAq//pQntjrHU9qqF2mE7aJi1LiECV5weOxdPUGFYcBiI4stWr23OSYYs
	VkrtNYnj8W1RSJsWWodk48r9CX43QFvEOHuiHYvEbNvx7K4DnQiTN8iHhQgIEQLUx771juYpaTi5A
	0U1+o+cX95JS5AnoULm6pOour+ODlyuYaZpQ0JZXHLM41/2bxZYRWT22Q0TJ8GcQys45U8KkKt900
	BLpQs4k5nzyWiuBGZYVQZACmUsUqkNcqJSb7eTUPLA3WLJc7QhzulTK2KcdYSgD0TaLLsvgfeI4Ka
	NcHnpx4k75irUtWddbVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRHXX-0006Gj-M1; Thu, 16 May 2019 14:39:23 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRHXK-00069k-HS
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 14:39:13 +0000
Received: by mail-it1-x143.google.com with SMTP id m3so2733301itl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 07:39:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=xjgQ/5X3nhrZ86421UVwW1lVuND3Gcl5hfZAZ30U0CU=;
 b=IdxVHb24lDGecKqfp1SzFkQQ8z3y8s7JBR4btUXPBetSjyhmnwGj9u+fdTmj1arlyU
 A45G5b/Pd2oMh1t/Uy+Vo2DigWlaGNmCNsHIttoRjTYo9xABusepfHDoX/M0k7oqtod0
 k1HgH5Qk78gkg4tD06vO9v/9vyn4PpvB0OQwc4Xlssy6TLpSQIOT9CQ7T0mez+tAAvzv
 /Tg317ygwAG5GUDn2Vr6mR1qTZgEnFJBsaE/sbVNL5JDqF1k0rrRe8bFtIdYHoYaG4Wx
 beF9+dr0iqKJrtP3O3ZQ8dlfwc6SsRhfCoA7SYaOdoE67SerAZiW+KhxjB5tayWtjDIz
 IKvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xjgQ/5X3nhrZ86421UVwW1lVuND3Gcl5hfZAZ30U0CU=;
 b=nP1EztqQcXXHkibg03HFlo/Xah91oImSMOloSYwNXhVj8dHfQRNbmoWK8j9JOUGOfr
 DHjizaFcC95eyFs84c0IWc6pstheCu/yvNtdzh2Lw9a4x33Mz3GwzmGw5WyUvdUXnFDG
 nkV9lYYk+QHuxe1jZrB6YdmwITEG0gAguvEJkWF4qz7cHY0n9Ohx1pCh57zbgblzH7SZ
 akLkAxiWDozrROwqUFYGYY8/+DZSEI3zcnVUbUTw10yKMUSpl02maGy2Kh/lRs/kYkR/
 KhkAKpWvBq9u4PgoPI74+9OqxCP2MRoysWKqAjQBgg/63dyEpRDl3Wi5oFSzhmcPaUZu
 cuug==
X-Gm-Message-State: APjAAAWVeSjg7Cso+wqSkTKmMzk08g54JorJeFbgmLf4QhvWLRiIoJJu
 9AVH8KrOJbJUZC5bsMsp0WpeOsWt
X-Google-Smtp-Source: APXvYqxzHgxzhYqjIbY6HnOMlBWoOVhZoq+onDurYBO0wD4B5R9FAHkMnoXc4RXRRabsenlpzpo35g==
X-Received: by 2002:a24:3f85:: with SMTP id d127mr12911999ita.38.1558017549373; 
 Thu, 16 May 2019 07:39:09 -0700 (PDT)
Received: from [192.168.2.145] (ppp94-29-35-107.pppoe.spdop.ru. [94.29.35.107])
 by smtp.googlemail.com with ESMTPSA id j81sm1942592itj.26.2019.05.16.07.39.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 07:39:08 -0700 (PDT)
Subject: Re: [PATCH V3 1/8] dt-bindings: memory: tegra: Add external memory
 controller binding for Tegra210
To: Joseph Lo <josephl@nvidia.com>, Thierry Reding
 <thierry.reding@gmail.com>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
References: <20190510084719.18902-1-josephl@nvidia.com>
 <20190510084719.18902-2-josephl@nvidia.com>
 <fd68f906-79b4-6eda-b1fa-abaf3b4c6a12@gmail.com>
 <63360b18-6a17-ab3f-6c54-6e11e24885d0@nvidia.com>
 <c3909c66-5aa4-161b-98d4-02ad20e02c88@gmail.com>
 <f1e4ab1e-11b9-ba65-20b8-35c6459d2410@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <1a5b539a-03bb-c326-8ba2-56ea8de97237@gmail.com>
Date: Thu, 16 May 2019 17:39:05 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <f1e4ab1e-11b9-ba65-20b8-35c6459d2410@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_073910_593575_6EED90F4 
X-CRM114-Status: GOOD (  20.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTYuMDUuMjAxOSAxMjowMSwgSm9zZXBoIExvINC/0LjRiNC10YI6Cj4gT24gNS8xNS8xOSA5OjUw
IFBNLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+IDE1LjA1LjIwMTkgMTA6MTcsIEpvc2VwaCBM
byDQv9C40YjQtdGCOgo+Pj4gT24gNS8xNS8xOSAxMjoyOCBBTSwgRG1pdHJ5IE9zaXBlbmtvIHdy
b3RlOgo+Pj4+IDEwLjA1LjIwMTkgMTE6NDcsIEpvc2VwaCBMbyDQv9C40YjQtdGCOgo+Pj4+PiBB
ZGQgdGhlIGJpbmRpbmcgZG9jdW1lbnQgZm9yIHRoZSBleHRlcm5hbCBtZW1vcnkgY29udHJvbGxl
ciAoRU1DKQo+Pj4+PiB3aGljaAo+Pj4+PiBjb21tdW5pY2F0ZXMgd2l0aCBleHRlcm5hbCBMUERE
UjQgZGV2aWNlcy4gSXQgaW5jbHVkZXMgdGhlIGJpbmRpbmdzIG9mCj4+Pj4+IHRoZSBFTUMgbm9k
ZSBhbmQgYSBzdWItbm9kZSBvZiBFTUMgdGFibGUgd2hpY2ggdW5kZXIgdGhlIHJlc2VydmVkCj4+
Pj4+IG1lbW9yeQo+Pj4+PiBub2RlLiBUaGUgRU1DIHRhYmxlIGNvbnRhaW5zIHRoZSBkYXRhIG9m
IHRoZSByYXRlcyB0aGF0IEVNQyBzdXBwb3J0ZWQuCj4+Pj4+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6
IEpvc2VwaCBMbyA8am9zZXBobEBudmlkaWEuY29tPgo+Pj4+PiAtLS0KPj4+Pj4gdjM6Cj4+Pj4+
IC0gZHJvcCB0aGUgYmluZGluZ3Mgb2YgRU1DIHRhYmxlCj4+Pj4+IC0gYWRkIG1lbW9yeS1yZWdp
b24gYW5kIHJlc2VydmVkLW1lbW9yeSBub2RlIGZvciBFTUMgdGFibGUKPj4+Pj4gLS0tCj4+Pj4+
IMKgwqAgLi4uL252aWRpYSx0ZWdyYTIxMC1lbWMudHh0wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHwgNTUKPj4+Pj4gKysrKysrKysrKysrKysrKysrKwo+Pj4+PiDCoMKgIDEg
ZmlsZSBjaGFuZ2VkLCA1NSBpbnNlcnRpb25zKCspCj4+Pj4+IMKgwqAgY3JlYXRlIG1vZGUgMTAw
NjQ0Cj4+Pj4+IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZW1vcnktY29udHJv
bGxlcnMvbnZpZGlhLHRlZ3JhMjEwLWVtYy50eHQKPj4+Pj4KPj4+Pj4KPj4+Pj4KPj4+Pj4gZGlm
ZiAtLWdpdAo+Pj4+PiBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZW1vcnkt
Y29udHJvbGxlcnMvbnZpZGlhLHRlZ3JhMjEwLWVtYy50eHQKPj4+Pj4KPj4+Pj4gYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVtb3J5LWNvbnRyb2xsZXJzL252aWRpYSx0ZWdy
YTIxMC1lbWMudHh0Cj4+Pj4+Cj4+Pj4+Cj4+Pj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+Pj4+
IGluZGV4IDAwMDAwMDAwMDAwMC4uZDY1YWVlZjIzMjljCj4+Pj4+IC0tLSAvZGV2L251bGwKPj4+
Pj4gKysrCj4+Pj4+IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lbW9yeS1j
b250cm9sbGVycy9udmlkaWEsdGVncmEyMTAtZW1jLnR4dAo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBAQCAt
MCwwICsxLDU1IEBACj4+Pj4+ICtOVklESUEgVGVncmEyMTAgU29DIEVNQyAoZXh0ZXJuYWwgbWVt
b3J5IGNvbnRyb2xsZXIpCj4+Pj4+ICs9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09Cj4+Pj4+ICsKPj4+Pj4gK0RldmljZSBub2RlCj4+Pj4+ICs9PT09
PT09PT09PQo+Pj4+PiArUmVxdWlyZWQgcHJvcGVydGllcyA6Cj4+Pj4+ICstIGNvbXBhdGlibGUg
OiBzaG91bGQgYmUgIm52aWRpYSx0ZWdyYTIxMC1lbWMiLgo+Pj4+PiArLSByZWcgOiBwaHlzaWNh
bCBiYXNlIGFkZHJlc3MgYW5kIGxlbmd0aCBvZiB0aGUgY29udHJvbGxlcidzCj4+Pj4+IHJlZ2lz
dGVycy4KPj4+Pj4gKy0gY2xvY2tzIDogcGhhbmRsZXMgb2YgdGhlIHBvc3NpYmxlIHNvdXJjZSBj
bG9ja3MuCj4+Pj4+ICstIGNsb2NrLW5hbWVzIDogbmFtZXMgb2YgdGhlIHBvc3NpYmxlIHNvdXJj
ZSBjbG9ja3MuCj4+Pj4+ICstIGludGVycnVwdHMgOiBTaG91bGQgY29udGFpbiB0aGUgRU1DIGdl
bmVyYWwgaW50ZXJydXB0Lgo+Pj4+PiArLSBtZW1vcnktcmVnaW9uIDogcGhhbmRsZSB0byB0aGUg
cmVzZXJ2ZWQgbWVtb3J5IChzZWUKPj4+Pj4gKwo+Pj4+PiBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcmVzZXJ2ZWQtbWVtb3J5L3Jlc2VydmVkLW1lbW9yeS50eHQpCj4+Pj4+IHdo
aWNoCj4+Pj4+Cj4+Pj4+ICvCoCBjb250YWlucyBhIHN1Yi1ub2RlIG9mIEVNQyB0YWJsZS4KPj4+
Pj4gKy0gbnZpZGlhLG1lbW9yeS1jb250cm9sbGVyIDogcGhhbmRsZSBvZiB0aGUgbWVtb3J5IGNv
bnRyb2xsZXIuCj4+Pj4+ICsKPj4+Pj4gK1Jlc2VydmVkIG1lbW9yeSBub2RlCj4+Pj4+ICs9PT09
PT09PT09PT09PT09PT09PQo+Pj4+PiArU2hvdWxkIGNvbnRhaW4gYSBzdWItbm9kZSBvZiBFTUMg
dGFibGUgd2l0aCByZXF1aXJlZCBwcm9wZXJ0aWVzOgo+Pj4+PiArLSBjb21wYXRpYmxlIDogc2hv
dWxkIGJlICJudmlkaWEsdGVncmEyMTAtZW1jLXRhYmxlIi4KPj4+Pj4gKy0gcmVnIDogcGh5c2lj
YWwgYWRkcmVzcyBhbmQgbGVuZ3RoIG9mIHRoZSBsb2NhdGlvbiBvZiBFTUMgdGFibGUuCj4+Pj4+
ICsKPj4+Pj4gK0V4YW1wbGU6Cj4+Pj4+ICvCoMKgwqAgcmVzZXJ2ZWQtbWVtb3J5IHsKPj4+Pj4g
K8KgwqDCoMKgwqDCoMKgICNhZGRyZXNzLWNlbGxzID0gPDI+Owo+Pj4+PiArwqDCoMKgwqDCoMKg
wqAgI3NpemUtY2VsbHMgPSA8Mj47Cj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCByYW5nZXM7Cj4+Pj4+
ICsKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGVtY190YWJsZTogZW1jLXRhYmxlQDhiZTAwMDAwIHsK
Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJudmlkaWEsdGVncmEy
MTAtZW1jLXRhYmxlIjsKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gPDB4MCAw
eDhiZTAwMDAwIDB4MCAweDEwMDAwPjsKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3Rh
dHVzID0gIm9rYXkiOwo+Pj4+PiArwqDCoMKgwqDCoMKgwqAgfTsKPj4+Pgo+Pj4+IFlvdSBlc3Nl
bnRpYWxseSBtb3ZlZCB0aGUgdjEgYmluZGluZyBpbnRvIG9ic2N1cmUgYW5kIHVuZG9jdW1lbnRl
ZAo+Pj4+IGJsb2IsCj4+Pj4gaWdub3JpbmcgcHJldmlvdXMgcmV2aWV3IGNvbW1lbnRzLiBUaGlz
IGlzIGEgdmVyeSBvZGQgbW92ZS4uLiBwbGVhc2UKPj4+PiBleHBsYWluIHdoYXQgaXMgZ29pbmcg
b24uCj4+Pj4KPj4+Cj4+PiBEaXNjdXNzZWQgd2l0aCBUaGllcnJ5IG9mZmxpbmUgd2hpY2ggd2F5
IHdlIHByZWZlciB0byBwYXNzIHRoZSBFTUMgdGFibGUKPj4+IHRvIHRoZSBrZXJuZWwuIFNvbWUg
cmVhc29ucyBiZWxvdyB3ZSBkZWNpZGUgdG8gY2hvc2UgdGhpcyBvbmUgKHZpYQo+Pj4gYmluYXJ5
IGJsb2IpLgo+Pj4KPj4+IC0gVGhlIEVNQyB0YWJsZSBpcyBtdWNoIGJpZ2dlciB0aGFuIHRoZSBw
cmV2aW91cyBUZWdyYSBnZW5lcmF0aW9ucwo+Pj4gKExQRERSNCB2LnMuIExQRERSMi8zKS4gSXQn
cyBoYXJkZXIgdG8gc2V0dGxlIGluIHRoZSByZXZpZXcgcHJvY2Vzcy4gQW5kCj4+PiBpZiB0aGVy
ZSBpcyBhIG5ldyBmaXggb2YgdGhlIHRhYmxlIGluIHRoZSBmdXR1cmUsIHdlJ2xsIG5lZWQgdG8g
Z28KPj4+IHRocm91Z2ggdGhhdCBhZ2Fpbi4KPj4KPj4gSSBkb24ndCB0aGluayB0aGF0IHRoaXMg
YSB2ZXJ5IGdvb2QgZXhjdXNlIGZvciBub3QgZG9jdW1lbnRpbmcgdGhlCj4+IGJsb2IncyBzdHJ1
Y3R1cmUuCj4gCj4gVGhlIGJsb2IncyBzdHJ1Y3R1cmUgaXMgaW4gcGF0Y2ggNCBub3cgdGhhdCB3
ZSBvcmlnaW5hbGx5IHdhbnRlZCB0bwo+IGRlc2NyaWJlIGJlbG93LiBCYXNpY2FsbHksIHRoZSBj
b250ZW50IGlzIHRoZSBzYW1lLgo+IGh0dHA6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wYXRjaC8x
MDg0NDY3Lwo+IGh0dHA6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wYXRjaC8xMDYzODc5LwoKSSdt
IG5vdCBhc2tpbmcgYWJvdXQgd2hhdCBleGFjdGx5IGl0IGlzLCBidXQgc2F5aW5nIHRoYXQgZXZl
cnkgc3VwcG9ydGVkCmJsb2Igc3RydWN0dXJlIHZlcnNpb24gc2hvdWxkIGJlIGRvY3VtZW50ZWQg
aW4gbXkgb3Bpbmlvbiwgb3RoZXJ3aXNlIHRoZQpkb2N1bWVudGF0aW9uIGlzIG5vdCByZWFsbHkg
dXNlZnVsLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
