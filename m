Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 373D84DDBF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 01:24:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=itN/I21Kuif7k+b8RnE1WJwWvepDh0DOpG2121Qqck0=; b=Gg2/STcI+V9L9G
	jjEYu8bnZXG5xg8WxA9e0OhmmmTBlizt8uO3xUJrKBuWEbsVhOaMldlp8KQQ/ja018joMMJZw2ZrF
	hKHgg5HT0zK+PTTPvyjGnLSxPcVwY7Y9QxdcfzesXPT5WF9DiXaKntKElyk7MP+IkbrcuP0S5rMmG
	fAzA55vHLF2uAsbHUMgXpopn6dn2daJYxV7vOHoSJ95rwB4xgox6dnB/zK3uVRO6qsiAC9q4Pdsgi
	XYVCPOcRGuAQrmgScuWMIGe0HHIS0c8osWNElu4JmWa0A5sxdFOKDJXS2DW8om5tS7CQQZTJAD3xh
	kbniJPbtPkXzuqlgwRiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he6PZ-0001uW-FE; Thu, 20 Jun 2019 23:24:09 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he6PN-0001ty-O5
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 23:23:59 +0000
Received: by mail-qk1-x742.google.com with SMTP id g18so3176541qkl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 16:23:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=h9qTubrFsHxwka7s4Nz2tnPYRZy8y37haq3OlAy2woE=;
 b=XLLAH1Vd65bfOd3AfIZsRrDTHdaL0Dw5iHCncpIJQYZxohsGn0XmDttLlumtyiqRdu
 AEJS+DHwXdDE6qaRxOp59LIbaPP/qUKVTKKp5WfDns9mVJKRnxcBnNE2M/8jXljqHUqY
 tfHOp7r7UyWwJ6njac9rkhOJNm4+6NOWv9JEFjQocWUzo3XJhHL1xfpAgkDt8/pOmqNV
 3F5cmNr+hADF+uLLl2sRjcO1eIbKbBVGIWagbqveOUzU7jzl8nrlOPXMp/4pynjAJniU
 SKvBGYmUd2DK2P28Nj+79i+LUel85MgN293MR7kGf0jci0AEe4AP3vmuMxIJDewJaLUs
 xEkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=h9qTubrFsHxwka7s4Nz2tnPYRZy8y37haq3OlAy2woE=;
 b=ILn3lqt8TXfOXfO6yiFFUZYRARjVt6v1KqocFPBZ7rb4Wp8TIKbaqjxTAmReWuZM2r
 WZD2s6Q2SMNRPOlelAQo6g1xUS9m8XaQqWHBSokkAsaFQANqXR/MBFcTbIFDQW3Ff1/W
 aCb09GAcRoz7b0RS30hXVSe5HgNEK9xonNx5tQSpws3ZNKR5EWrlviAFfCUASy+Wp9w/
 k5yOtf9JSjrNO/JVym0tKyx2YI+4P1La3tNW1WJYoLeq/yZB7mHN/9B/UDDVazuvPHpx
 S8IGNok5GKfGgdFC+UYHHXotlOvJSFzx/KEzUpdT8SZh7fhnel/McLziizCWmlTr6lrI
 ENCA==
X-Gm-Message-State: APjAAAUNaagaYMFTfy8LtB/a7yR2MxoXI+ng6lA/QuzI7v7yM4R65nl7
 FWyHNdtDk+Uvz7Z6RdVp5rs=
X-Google-Smtp-Source: APXvYqznxoKCk0MsdIJbUPwVdLJszPgir1NRXAC2N9XlcKzjFfQ4pI3Xzy7Xbfi5KZ/mZscjbK+RqA==
X-Received: by 2002:ae9:ea09:: with SMTP id f9mr3296530qkg.379.1561073036252; 
 Thu, 20 Jun 2019 16:23:56 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-79-162-197.pppoe.mtu-net.ru.
 [91.79.162.197])
 by smtp.googlemail.com with ESMTPSA id d141sm494000qke.3.2019.06.20.16.23.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 16:23:55 -0700 (PDT)
Subject: Re: [PATCH V10 13/15] phy: tegra: Add PCIe PIPE2UPHY support
To: Kishon Vijay Abraham I <kishon@ti.com>, Vidya Sagar <vidyas@nvidia.com>,
 lorenzo.pieralisi@arm.com, bhelgaas@google.com, robh+dt@kernel.org,
 mark.rutland@arm.com, thierry.reding@gmail.com, jonathanh@nvidia.com,
 catalin.marinas@arm.com, will.deacon@arm.com, jingoohan1@gmail.com,
 gustavo.pimentel@synopsys.com
References: <20190612095339.20118-1-vidyas@nvidia.com>
 <20190612095339.20118-14-vidyas@nvidia.com>
 <9e699085-ef5e-f7be-e27c-23907ba92c82@ti.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <68a6579b-af28-ed7e-35f8-d857638368ba@gmail.com>
Date: Fri, 21 Jun 2019 02:23:50 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <9e699085-ef5e-f7be-e27c-23907ba92c82@ti.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_162357_839050_3F67DFAE 
X-CRM114-Status: GOOD (  22.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
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

MjAuMDYuMjAxOSAxMDoyNCwgS2lzaG9uIFZpamF5IEFicmFoYW0gSSDQv9C40YjQtdGCOgo+IAo+
IAo+IE9uIDEyLzA2LzE5IDM6MjMgUE0sIFZpZHlhIFNhZ2FyIHdyb3RlOgo+PiBTeW5vcHN5cyBE
ZXNpZ25XYXJlIGNvcmUgYmFzZWQgUENJZSBjb250cm9sbGVycyBpbiBUZWdyYSAxOTQgU29DIGlu
dGVyZmFjZQo+PiB3aXRoIFVuaXZlcnNhbCBQSFkgKFVQSFkpIG1vZHVsZSB0aHJvdWdoIGEgUElQ
RTJVUEhZIChQMlUpIG1vZHVsZS4KPj4gRm9yIGVhY2ggUENJZSBsYW5lIG9mIGEgY29udHJvbGxl
ciwgdGhlcmUgaXMgYSBQMlUgdW5pdCBpbnN0YW50aWF0ZWQgYXQKPj4gaGFyZHdhcmUgbGV2ZWwu
IFRoaXMgZHJpdmVyIHByb3ZpZGVzIHN1cHBvcnQgZm9yIHRoZSBwcm9ncmFtbWluZyByZXF1aXJl
ZAo+PiBmb3IgZWFjaCBQMlUgdGhhdCBpcyBnb2luZyB0byBiZSB1c2VkIGZvciBhIFBDSWUgY29u
dHJvbGxlci4KPiAKPiBPbmUgbWlub3IgY29tbWVudCBiZWxvdy4gV2l0aCB0aGF0IGZpeGVkCj4g
Cj4gQWNrZWQtYnk6IEtpc2hvbiBWaWpheSBBYnJhaGFtIEkgPGtpc2hvbkB0aS5jb20+Cj4+Cj4+
IFNpZ25lZC1vZmYtYnk6IFZpZHlhIFNhZ2FyIDx2aWR5YXNAbnZpZGlhLmNvbT4KPj4gLS0tCj4+
IENoYW5nZXMgc2luY2UgW3Y5XToKPj4gKiBVc2VkIF9yZWxheGVkKCkgdmVyc2lvbnMgb2YgcmVh
ZGwoKSAmIHdyaXRlbCgpCj4+Cj4+IENoYW5nZXMgc2luY2UgW3Y4XToKPj4gKiBNYWRlIGl0IGRl
cGVuZGVudCBvbiBBUkNIX1RFR1JBXzE5NF9TT0MgZGlyZWN0bHkgaW5zdGVhZCBvZiBBUkNIX1RF
R1JBCj4+Cj4+IENoYW5nZXMgc2luY2UgW3Y3XToKPj4gKiBDaGFuZ2VkIFAyVSBkcml2ZXIgZmls
ZSBuYW1lIGZyb20gcGNpZS1wMnUtdGVncmExOTQuYyB0byBwaHktdGVncmExOTQtcDJ1LmMKPj4K
Pj4gQ2hhbmdlcyBzaW5jZSBbdjZdOgo+PiAqIE5vbmUKPj4KPj4gQ2hhbmdlcyBzaW5jZSBbdjVd
Ogo+PiAqIEFkZHJlc3NlZCByZXZpZXcgY29tbWVudHMgZnJvbSBUaGllcnJ5Cj4+Cj4+IENoYW5n
ZXMgc2luY2UgW3Y0XToKPj4gKiBOb25lCj4+Cj4+IENoYW5nZXMgc2luY2UgW3YzXToKPj4gKiBS
ZWJhc2VkIG9uIHRvcCBvZiBsaW51eC1uZXh0IHRvcCBvZiB0aGUgdHJlZQo+Pgo+PiBDaGFuZ2Vz
IHNpbmNlIFt2Ml06Cj4+ICogUmVwbGFjZWQgc3BhY2VzIHdpdGggdGFicyBpbiBLY29uZmlnIGZp
bGUKPj4gKiBTb3J0ZWQgaGVhZGVyIGZpbGUgaW5jbHVzaW9uIGFscGhhYmV0aWNhbGx5Cj4+Cj4+
IENoYW5nZXMgc2luY2UgW3YxXToKPj4gKiBBZGRlZCBDT01QSUxFX1RFU1QgaW4gS2NvbmZpZwo+
PiAqIFJlbW92ZWQgZW1wdHkgcGh5X29wcyBpbXBsZW1lbnRhdGlvbnMKPj4gKiBNb2RpZmllZCBj
b2RlIGFjY29yZGluZyB0byBEVCBkb2N1bWVudGF0aW9uIGZpbGUgbW9kaWZpY2F0aW9ucwo+Pgo+
PiAgZHJpdmVycy9waHkvdGVncmEvS2NvbmZpZyAgICAgICAgICAgIHwgICA3ICsrCj4+ICBkcml2
ZXJzL3BoeS90ZWdyYS9NYWtlZmlsZSAgICAgICAgICAgfCAgIDEgKwo+PiAgZHJpdmVycy9waHkv
dGVncmEvcGh5LXRlZ3JhMTk0LXAydS5jIHwgMTIwICsrKysrKysrKysrKysrKysrKysrKysrKysr
Kwo+PiAgMyBmaWxlcyBjaGFuZ2VkLCAxMjggaW5zZXJ0aW9ucygrKQo+PiAgY3JlYXRlIG1vZGUg
MTAwNjQ0IGRyaXZlcnMvcGh5L3RlZ3JhL3BoeS10ZWdyYTE5NC1wMnUuYwo+Pgo+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9waHkvdGVncmEvS2NvbmZpZyBiL2RyaXZlcnMvcGh5L3RlZ3JhL0tjb25m
aWcKPj4gaW5kZXggZTUxNjk2N2Q2OTViLi5mOTgxN2MzYWU4NWYgMTAwNjQ0Cj4+IC0tLSBhL2Ry
aXZlcnMvcGh5L3RlZ3JhL0tjb25maWcKPj4gKysrIGIvZHJpdmVycy9waHkvdGVncmEvS2NvbmZp
Zwo+PiBAQCAtNywzICs3LDEwIEBAIGNvbmZpZyBQSFlfVEVHUkFfWFVTQgo+PiAgCj4+ICAJICBU
byBjb21waWxlIHRoaXMgZHJpdmVyIGFzIGEgbW9kdWxlLCBjaG9vc2UgTSBoZXJlOiB0aGUgbW9k
dWxlIHdpbGwKPj4gIAkgIGJlIGNhbGxlZCBwaHktdGVncmEteHVzYi4KPj4gKwo+PiArY29uZmln
IFBIWV9URUdSQTE5NF9QMlUKPj4gKwl0cmlzdGF0ZSAiTlZJRElBIFRlZ3JhMTk0IFBJUEUyVVBI
WSBQSFkgZHJpdmVyIgo+PiArCWRlcGVuZHMgb24gQVJDSF9URUdSQV8xOTRfU09DIHx8IENPTVBJ
TEVfVEVTVAo+PiArCXNlbGVjdCBHRU5FUklDX1BIWQo+PiArCWhlbHAKPj4gKwkgIEVuYWJsZSB0
aGlzIHRvIHN1cHBvcnQgdGhlIFAyVSAoUElQRSB0byBVUEhZKSB0aGF0IGlzIHBhcnQgb2YgVGVn
cmEgMTl4IFNPQ3MuCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS90ZWdyYS9NYWtlZmlsZSBi
L2RyaXZlcnMvcGh5L3RlZ3JhL01ha2VmaWxlCj4+IGluZGV4IDY0Y2NhZWFjYjYzMS4uMzIwZGQz
ODlmMzRkIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3BoeS90ZWdyYS9NYWtlZmlsZQo+PiArKysg
Yi9kcml2ZXJzL3BoeS90ZWdyYS9NYWtlZmlsZQo+PiBAQCAtNiwzICs2LDQgQEAgcGh5LXRlZ3Jh
LXh1c2ItJChDT05GSUdfQVJDSF9URUdSQV8xMjRfU09DKSArPSB4dXNiLXRlZ3JhMTI0Lm8KPj4g
IHBoeS10ZWdyYS14dXNiLSQoQ09ORklHX0FSQ0hfVEVHUkFfMTMyX1NPQykgKz0geHVzYi10ZWdy
YTEyNC5vCj4+ICBwaHktdGVncmEteHVzYi0kKENPTkZJR19BUkNIX1RFR1JBXzIxMF9TT0MpICs9
IHh1c2ItdGVncmEyMTAubwo+PiAgcGh5LXRlZ3JhLXh1c2ItJChDT05GSUdfQVJDSF9URUdSQV8x
ODZfU09DKSArPSB4dXNiLXRlZ3JhMTg2Lm8KPj4gK29iai0kKENPTkZJR19QSFlfVEVHUkExOTRf
UDJVKSArPSBwaHktdGVncmExOTQtcDJ1Lm8KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3Rl
Z3JhL3BoeS10ZWdyYTE5NC1wMnUuYyBiL2RyaXZlcnMvcGh5L3RlZ3JhL3BoeS10ZWdyYTE5NC1w
MnUuYwo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiBpbmRleCAwMDAwMDAwMDAwMDAuLmRmMDA5
YWJkMjQ4Mgo+PiAtLS0gL2Rldi9udWxsCj4+ICsrKyBiL2RyaXZlcnMvcGh5L3RlZ3JhL3BoeS10
ZWdyYTE5NC1wMnUuYwo+PiBAQCAtMCwwICsxLDEyMCBAQAo+PiArLy8gU1BEWC1MaWNlbnNlLUlk
ZW50aWZpZXI6IEdQTC0yLjArCj4+ICsvKgo+PiArICogUDJVIChQSVBFIHRvIFVQSFkpIGRyaXZl
ciBmb3IgVGVncmEgVDE5NCBTb0MKPj4gKyAqCj4+ICsgKiBDb3B5cmlnaHQgKEMpIDIwMTkgTlZJ
RElBIENvcnBvcmF0aW9uLgo+PiArICoKPj4gKyAqIEF1dGhvcjogVmlkeWEgU2FnYXIgPHZpZHlh
c0BudmlkaWEuY29tPgo+PiArICovCj4+ICsKPj4gKyNpbmNsdWRlIDxsaW51eC9lcnIuaD4KPj4g
KyNpbmNsdWRlIDxsaW51eC9pby5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgo+PiAr
I2luY2x1ZGUgPGxpbnV4L29mLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvb2ZfcGxhdGZvcm0uaD4K
Pj4gKyNpbmNsdWRlIDxsaW51eC9waHkvcGh5Lmg+Cj4+ICsKPj4gKyNkZWZpbmUgUDJVX1BFUklP
RElDX0VRX0NUUkxfR0VOMwkweGMwCj4+ICsjZGVmaW5lIFAyVV9QRVJJT0RJQ19FUV9DVFJMX0dF
TjNfUEVSSU9ESUNfRVFfRU4JCUJJVCgwKQo+PiArI2RlZmluZSBQMlVfUEVSSU9ESUNfRVFfQ1RS
TF9HRU4zX0lOSVRfUFJFU0VUX0VRX1RSQUlOX0VOCUJJVCgxKQo+PiArI2RlZmluZSBQMlVfUEVS
SU9ESUNfRVFfQ1RSTF9HRU40CTB4YzQKPj4gKyNkZWZpbmUgUDJVX1BFUklPRElDX0VRX0NUUkxf
R0VONF9JTklUX1BSRVNFVF9FUV9UUkFJTl9FTglCSVQoMSkKPj4gKwo+PiArI2RlZmluZSBQMlVf
UlhfREVCT1VOQ0VfVElNRQkJCQkweGE0Cj4+ICsjZGVmaW5lIFAyVV9SWF9ERUJPVU5DRV9USU1F
X0RFQk9VTkNFX1RJTUVSX01BU0sJMHhmZmZmCj4+ICsjZGVmaW5lIFAyVV9SWF9ERUJPVU5DRV9U
SU1FX0RFQk9VTkNFX1RJTUVSX1ZBTAkJMTYwCj4+ICsKPj4gK3N0cnVjdCB0ZWdyYV9wMnUgewo+
PiArCXZvaWQgX19pb21lbSAqYmFzZTsKPj4gK307Cj4+ICsKPj4gK3N0YXRpYyBpbmxpbmUgdm9p
ZCBwMnVfd3JpdGVsKHN0cnVjdCB0ZWdyYV9wMnUgKnBoeSwgY29uc3QgdTMyIHZhbHVlLAo+PiAr
CQkJICAgICAgY29uc3QgdTMyIHJlZykKPj4gK3sKPj4gKwl3cml0ZWxfcmVsYXhlZCh2YWx1ZSwg
cGh5LT5iYXNlICsgcmVnKTsKPj4gK30KPj4gKwo+PiArc3RhdGljIGlubGluZSB1MzIgcDJ1X3Jl
YWRsKHN0cnVjdCB0ZWdyYV9wMnUgKnBoeSwgY29uc3QgdTMyIHJlZykKPj4gK3sKPj4gKwlyZXR1
cm4gcmVhZGxfcmVsYXhlZChwaHktPmJhc2UgKyByZWcpOwo+PiArfQo+PiArCj4+ICtzdGF0aWMg
aW50IHRlZ3JhX3AydV9wb3dlcl9vbihzdHJ1Y3QgcGh5ICp4KQo+PiArewo+PiArCXN0cnVjdCB0
ZWdyYV9wMnUgKnBoeSA9IHBoeV9nZXRfZHJ2ZGF0YSh4KTsKPj4gKwl1MzIgdmFsOwo+PiArCj4+
ICsJdmFsID0gcDJ1X3JlYWRsKHBoeSwgUDJVX1BFUklPRElDX0VRX0NUUkxfR0VOMyk7Cj4+ICsJ
dmFsICY9IH5QMlVfUEVSSU9ESUNfRVFfQ1RSTF9HRU4zX1BFUklPRElDX0VRX0VOOwo+PiArCXZh
bCB8PSBQMlVfUEVSSU9ESUNfRVFfQ1RSTF9HRU4zX0lOSVRfUFJFU0VUX0VRX1RSQUlOX0VOOwo+
PiArCXAydV93cml0ZWwocGh5LCB2YWwsIFAyVV9QRVJJT0RJQ19FUV9DVFJMX0dFTjMpOwo+PiAr
Cj4+ICsJdmFsID0gcDJ1X3JlYWRsKHBoeSwgUDJVX1BFUklPRElDX0VRX0NUUkxfR0VONCk7Cj4+
ICsJdmFsIHw9IFAyVV9QRVJJT0RJQ19FUV9DVFJMX0dFTjRfSU5JVF9QUkVTRVRfRVFfVFJBSU5f
RU47Cj4+ICsJcDJ1X3dyaXRlbChwaHksIHZhbCwgUDJVX1BFUklPRElDX0VRX0NUUkxfR0VONCk7
Cj4+ICsKPj4gKwl2YWwgPSBwMnVfcmVhZGwocGh5LCBQMlVfUlhfREVCT1VOQ0VfVElNRSk7Cj4+
ICsJdmFsICY9IH5QMlVfUlhfREVCT1VOQ0VfVElNRV9ERUJPVU5DRV9USU1FUl9NQVNLOwo+PiAr
CXZhbCB8PSBQMlVfUlhfREVCT1VOQ0VfVElNRV9ERUJPVU5DRV9USU1FUl9WQUw7Cj4+ICsJcDJ1
X3dyaXRlbChwaHksIHZhbCwgUDJVX1JYX0RFQk9VTkNFX1RJTUUpOwo+PiArCj4+ICsJcmV0dXJu
IDA7Cj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgcGh5X29wcyBvcHMgPSB7Cj4+
ICsJLnBvd2VyX29uID0gdGVncmFfcDJ1X3Bvd2VyX29uLAo+PiArCS5vd25lciA9IFRISVNfTU9E
VUxFLAo+PiArfTsKPj4gKwo+PiArc3RhdGljIGludCB0ZWdyYV9wMnVfcHJvYmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKPj4gK3sKPj4gKwlzdHJ1Y3QgcGh5X3Byb3ZpZGVyICpwaHlf
cHJvdmlkZXI7Cj4+ICsJc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKPj4gKwlzdHJ1
Y3QgcGh5ICpnZW5lcmljX3BoeTsKPj4gKwlzdHJ1Y3QgdGVncmFfcDJ1ICpwaHk7Cj4+ICsJc3Ry
dWN0IHJlc291cmNlICpyZXM7Cj4+ICsKPj4gKwlwaHkgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXpl
b2YoKnBoeSksIEdGUF9LRVJORUwpOwo+PiArCWlmICghcGh5KQo+PiArCQlyZXR1cm4gLUVOT01F
TTsKPj4gKwo+PiArCXJlcyA9IHBsYXRmb3JtX2dldF9yZXNvdXJjZV9ieW5hbWUocGRldiwgSU9S
RVNPVVJDRV9NRU0sICJjdGwiKTsKPj4gKwlwaHktPmJhc2UgPSBkZXZtX2lvcmVtYXBfcmVzb3Vy
Y2UoZGV2LCByZXMpOwo+PiArCWlmIChJU19FUlIocGh5LT5iYXNlKSkKPj4gKwkJcmV0dXJuIFBU
Ul9FUlJfT1JfWkVSTyhwaHktPmJhc2UpOwo+PiArCj4+ICsJcGxhdGZvcm1fc2V0X2RydmRhdGEo
cGRldiwgcGh5KTsKPj4gKwo+PiArCWdlbmVyaWNfcGh5ID0gZGV2bV9waHlfY3JlYXRlKGRldiwg
TlVMTCwgJm9wcyk7Cj4+ICsJaWYgKElTX0VSUihnZW5lcmljX3BoeSkpCj4+ICsJCXJldHVybiBQ
VFJfRVJSX09SX1pFUk8oZ2VuZXJpY19waHkpOwo+PiArCj4+ICsJcGh5X3NldF9kcnZkYXRhKGdl
bmVyaWNfcGh5LCBwaHkpOwo+PiArCj4+ICsJcGh5X3Byb3ZpZGVyID0gZGV2bV9vZl9waHlfcHJv
dmlkZXJfcmVnaXN0ZXIoZGV2LCBvZl9waHlfc2ltcGxlX3hsYXRlKTsKPj4gKwlpZiAoSVNfRVJS
KHBoeV9wcm92aWRlcikpCj4+ICsJCXJldHVybiBQVFJfRVJSX09SX1pFUk8ocGh5X3Byb3ZpZGVy
KTsKPj4gKwo+PiArCXJldHVybiAwOwo+IAo+IEp1c3QgbWFrZSB0aGlzLi4KPiBwaHlfcHJvdmlk
ZXIgPSBkZXZtX29mX3BoeV9wcm92aWRlcl9yZWdpc3RlcihkZXYsIG9mX3BoeV9zaW1wbGVfeGxh
dGUpOwo+IHJldHVybiBQVFJfRVJSX09SX1pFUk8ocGh5X3Byb3ZpZGVyKTsKClRoZXJlIGlzIGEg
bmVlZCB0byBzL1BUUl9FUlJfT1JfWkVSTy9QVFJfRVJSLyBmb3IgYWxsIG9mIHRoZSBvY2N1cnJl
bmNlcwppbiB0aGlzIHBhdGNoIGJlY2F1c2UgaXQgaXMgaW1wb3NzaWJsZSB0byBnZXQgWkVSTyBp
ZiB3ZSBhbHJlYWR5IGtub3cKdGhhdCBwb2ludGVyIGlzIGEgZXJyb3IuCgpTZWNvbmRseSwgaXQg
aXMgYWx3YXlzIGNsZWFuZXIgdG8gcmV0dXJuIDAgZXhwbGljaXRseSBvbiBzdWNjZXNzIGFuZApQ
VFJfRVJSX09SX1pFUk8ocGh5X3Byb3ZpZGVyKSBpcyBhIG11Y2ggbGVzcyByZWFkYWJsZSBmb3Jt
IHRoYW4gYSBzaW1wbGUKcmV0dXJuIDAuIFNvIEknbSBzdWdnZXN0aW5nIHRvIGtlZXAgdGhhdCBw
YXJ0IGFzLWlzLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
