Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5DF1F76D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 17:25:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n8T4FBkxflKsv8AUbCz4pKE1uhpOMRVmNoAqXhKJYqc=; b=SGSnUqnBN53Bmd
	EQcVsEpCVg6f1231wUP46M9f+xNGe3nPPrCW9clAttRgOdYyHD9hgTqAmEeROafSeFdN6X53yh7kV
	njn7sgY4q3Ptk6Vjne0YmYTzbISrOR7iNXEa9JDyhwt0CGlYBX5zTdTp/c8COk++QLknUNsgAnrzN
	IVd1cuoG5HLbcpSocB6gru65T3Ps8f9gFurUg2JTqy6mvtBVeSQZyoU6Awy3yDMvH5xK/Kt4pEq/5
	YFFJyt2oV8rwP9x/s+8U5+keRAM0Clf7aO4+bYsOgfLHN2nHZGGTgb21Nq+Lhr5TDRVEkLX5+kjls
	TBXEIiYYrMMx+z8gMy0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQvmi-00059A-IS; Wed, 15 May 2019 15:25:36 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQvmb-00058q-HF
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 15:25:31 +0000
Received: by mail-lj1-x244.google.com with SMTP id j24so202646ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 08:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=sMlLgcaq1xxBQl224h03ntyiIbH0fac9zIQagoD0aes=;
 b=ZvsXAHJ6P6t134KzxqTxYWXhCsOYmI+kz5z+9y6cVPf46RpGpYXkd+fdwvTGXk0QQR
 mrLViIokJ8dHiddQMyqEJ1W5gbLqkHZqcoxlg22Q/fDdb8/mTIr9j0oG3uZ8O9hzHKM+
 99KcmLbejkJowrOqzx9fV/hJrc8SJRjzYPHubtX7CJ8kkE+r99OJv4DdH1xuAGPq3C1o
 KJ9ybYMoWNQEOVRWPtjHlj9UwkzHKFXgvYHoQ4xazgw+uSspHHVzlqMzXqYyEG/6Kibd
 i0MFL9XRQ10RdLmWoqr8VgJb2C9VCHMbGob7k7JsE72uX7MI4GlEbUMBnnnskudJ2JEn
 qs0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sMlLgcaq1xxBQl224h03ntyiIbH0fac9zIQagoD0aes=;
 b=CTfm21CCZWdP369+Psy2Ng20P5Sct1Zxm0Bo3Jlt+7SxRx5gsMO7AHnwOv9NsA6vRT
 hB+g7hI1hwuTbdo4CX7w/nxJfn81Sdw04TNRFOsx/IXMGjFzTWVOXqVCFMDr6yNVXNP3
 COOIO/HEHEg07sRQMSLTRh0dW1MvKSAfEBaqm4gsIGNg6KQ2HrrLdO44fGn6H8f6rV4b
 SqEhCdtVWdqAgYe+sUCbOb8oAs7HfUve1HjddiWVPC8ZoUBD5xui7kKLEAez23tPawN4
 kGTh9KFBeQJ9G2NbgUdt1LfRWeN+e14EZI9zQK1rvP711H5s3RfNlp0hw4+GBuPF8O7p
 vh3A==
X-Gm-Message-State: APjAAAWdk/h4ikaUzvolQ9ym6Q166fnThexCLpbGDHLW1QhKkm1UrsD5
 aOmAnDNzfLHQkWOuImjiSlCtsH8M
X-Google-Smtp-Source: APXvYqzwg4JX00s0BS9VpSC/qUxP4nEv670beipyYVIkPmIKjNaIBlLisZTDx7/Zgkbd3wrugpVdJg==
X-Received: by 2002:a2e:41c:: with SMTP id 28mr18282233lje.69.1557933927043;
 Wed, 15 May 2019 08:25:27 -0700 (PDT)
Received: from [192.168.2.145] (ppp94-29-35-107.pppoe.spdop.ru. [94.29.35.107])
 by smtp.googlemail.com with ESMTPSA id v3sm434759lfi.44.2019.05.15.08.25.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 08:25:26 -0700 (PDT)
Subject: Re: [PATCH V3 4/8] memory: tegra: Add Tegra210 EMC clock driver
To: Joseph Lo <josephl@nvidia.com>, Thierry Reding
 <thierry.reding@gmail.com>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
References: <20190510084719.18902-1-josephl@nvidia.com>
 <20190510084719.18902-5-josephl@nvidia.com>
 <74fad66b-a6e9-ffc9-c1c9-e88b841e9209@gmail.com>
 <648df201-eb63-6d26-3f90-02eba7624921@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <bb2ef045-7d77-02d0-79fb-06f68732c5a5@gmail.com>
Date: Wed, 15 May 2019 18:25:23 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <648df201-eb63-6d26-3f90-02eba7624921@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_082529_576765_760AFE33 
X-CRM114-Status: GOOD (  24.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTUuMDUuMjAxOSAxMTo0MiwgSm9zZXBoIExvINC/0LjRiNC10YI6Cj4gT24gNS8xNS8xOSAxOjA0
IEFNLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+IDEwLjA1LjIwMTkgMTE6NDcsIEpvc2VwaCBM
byDQv9C40YjQtdGCOgo+Pj4gVGhpcyBpcyB0aGUgaW5pdGlhbCBwYXRjaCBmb3IgVGVncmEyMTAg
RU1DIGNsb2NrIGRyaXZlciwgd2hpY2ggZG9lc24ndAo+Pj4gaW5jbHVkZSB0aGUgc3VwcG9ydCBj
b2RlIGFuZCBkZXRhaWwgc2VxdWVuY2UgZm9yIGNsb2NrIHNjYWxpbmcgeWV0Lgo+Pj4KPj4+IFRo
ZSBkcml2ZXIgaXMgZGVzaWduZWQgdG8gc3VwcG9ydCBMUEREUjQgU0RSQU0uIEJlY2F1c2Ugb2Yg
dGhlIExQRERSNAo+Pj4gZGV2aWNlcyBuZWVkIHRvIGRvIGluaXRpYWwgdGltZSB0cmFpbmluZyBi
ZWZvcmUgaXQgY2FuIGJlIHVzZWQsIHRoZQo+Pj4gZmlybXdhcmUgd2lsbCBoZWxwIHRvIGRvIHRo
YXQgYXQgZWFybHkgYm9vdCBzdGFnZS4gVGhlbiwgdGhlIHRyYWluZWQKPj4+IHRhYmxlIGZvciB0
aGUgcmF0ZXMgd2Ugc3VwcG9ydCB3aWxsIHBhc3MgdG8gdGhlIGtlcm5lbCB2aWEgRFQuIFNvIHRo
ZQo+Pj4gZHJpdmVyIGNhbiBnZXQgdGhlIHRyYWluZWQgdGFibGUgZm9yIGNsb2NrIHNjYWxpbmcg
c3VwcG9ydC4KPj4+Cj4+PiBGb3IgdGhlIGhpZ2hlciByYXRlIHN1cHBvcnQgKGFib3ZlIDgwME1I
eiksIHRoZSBwZXJpb2RpYyB0cmFpbmluZyBpcwo+Pj4gbmVlZGVkIGZvciB0aGUgdGltaW5nIGNv
bXBlbnNhdGlvbi4gU28gYmFzaWNhbGx5LCB0d28gbWV0aG9kb2xvZ2llcyBmb3IKPj4+IGNsb2Nr
IHNjYWxpbmcgYXJlIHN1cHBvcnRlZCwgb25lIGlzIGZvbGxvd2luZyB0aGUgY2xvY2sgY2hhbmdp
bmcKPj4+IHNlcXVlbmNlIHRvIHVwZGF0ZSB0aGUgRU1DIHRhYmxlIHRvIEVNQyByZWdpc3RlcnMg
YW5kIGFub3RoZXIgaXMgaWYgdGhlCj4+PiByYXRlIG5lZWRzIHBlcmlvZGljIHRyYWluaW5nLCB0
aGVuIHdlIHdpbGwgc3RhcnQgYSB0aW1lciB0byBkbyB0aGF0Cj4+PiBwZXJpb2RpY2FsbHkgdW50
aWwgaXQgc2NhbGVzIHRvIHRoZSBsb3dlciByYXRlLgo+Pj4KPj4+IEJhc2VkIG9uIHRoZSB3b3Jr
IG9mIFBldGVyIERlIFNjaHJpanZlciA8cGRlc2NocmlqdmVyQG52aWRpYS5jb20+Lgo+Pj4KPj4+
IFNpZ25lZC1vZmYtYnk6IEpvc2VwaCBMbyA8am9zZXBobEBudmlkaWEuY29tPgo+Pj4gLS0tCj4+
Cj4+IFtzbmlwXQo+Pgo+Pj4gK3N0YXRpYyBpbnQgdGVncmEyMTBfZW1jX3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+PiArewo+Pj4gK8KgwqDCoCBpbnQgaTsKPj4+ICvCoMKg
wqAgdW5zaWduZWQgbG9uZyB0YWJsZV9yYXRlOwo+Pj4gK8KgwqDCoCB1bnNpZ25lZCBsb25nIGN1
cnJlbnRfcmF0ZTsKPj4+ICvCoMKgwqAgc3RydWN0IGRldmljZV9ub2RlICpucDsKPj4+ICvCoMKg
wqAgc3RydWN0IHBsYXRmb3JtX2RldmljZSAqbWM7Cj4+PiArwqDCoMKgIHN0cnVjdCB0ZWdyYV9l
bWMgKmVtYzsKPj4+ICvCoMKgwqAgc3RydWN0IGNsa19pbml0X2RhdGEgaW5pdDsKPj4+ICvCoMKg
wqAgc3RydWN0IGNsayAqY2xrOwo+Pj4gK8KgwqDCoCBzdHJ1Y3QgcmVzb3VyY2UgKnIsIHJlczsK
Pj4+ICvCoMKgwqAgdm9pZCAqdGFibGVfYWRkcjsKPj4+ICsKPj4+ICvCoMKgwqAgZW1jID0gZGV2
bV9remFsbG9jKCZwZGV2LT5kZXYsIHNpemVvZigqZW1jKSwgR0ZQX0tFUk5FTCk7Cj4+PiArwqDC
oMKgIGlmICghZW1jKQo+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAtRU5PTUVNOwo+Pj4gKwo+
Pj4gK8KgwqDCoCBucCA9IG9mX3BhcnNlX3BoYW5kbGUocGRldi0+ZGV2Lm9mX25vZGUsCj4+PiAi
bnZpZGlhLG1lbW9yeS1jb250cm9sbGVyIiwgMCk7Cj4+PiArwqDCoMKgIGlmICghbnApIHsKPj4+
ICvCoMKgwqDCoMKgwqDCoCBkZXZfZXJyKCZwZGV2LT5kZXYsICJjb3VsZCBub3QgZ2V0IG1lbW9y
eSBjb250cm9sbGVyXG4iKTsKPj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVOT0VOVDsKPj4+
ICvCoMKgwqAgfQo+Pj4gKwo+Pj4gK8KgwqDCoCBtYyA9IG9mX2ZpbmRfZGV2aWNlX2J5X25vZGUo
bnApOwo+Pj4gK8KgwqDCoCBvZl9ub2RlX3B1dChucCk7Cj4+PiArwqDCoMKgIGlmICghbWMpCj4+
PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FTk9FTlQ7Cj4+PiArCj4+PiArwqDCoMKgIGVtYy0+
bWMgPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShtYyk7Cj4+PiArwqDCoMKgIGlmICghZW1jLT5tYykK
Pj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVQUk9CRV9ERUZFUjsKPj4+ICsKPj4+ICvCoMKg
wqAgZW1jLT5yYW1fY29kZSA9IHRlZ3JhX3JlYWRfcmFtX2NvZGUoKTsKPj4KPj4gZW1jLT5yYW1f
Y29kZSBpc24ndCB1c2VkIGFueXdoZXJlIGluIHRoZSBjb2RlLgo+Pgo+PiBJIGhhdmVuJ3QgY2hl
Y2tlZCBvdGhlciBmaWVsZHMuIFBsZWFzZSByZW1vdmUgZXZlcnl0aGluZyB0aGF0IGlzIHVudXNl
ZC4KPiAKPiBHb29kIGNhdGNoLCBJIG1pc3NlZCB0aGlzIHdoZW4gY2xlYW4gdXAgdGhlIGNvZGUg
Zm9yIFYzLgo+IAo+Pgo+Pj4gK8KgwqDCoCByID0gcGxhdGZvcm1fZ2V0X3Jlc291cmNlKHBkZXYs
IElPUkVTT1VSQ0VfTUVNLCAwKTsKPj4+ICvCoMKgwqAgZW1jLT5lbWNfYmFzZVtSRUdfRU1DXSA9
IGRldm1faW9yZW1hcF9yZXNvdXJjZSgmcGRldi0+ZGV2LCByKTsKPj4+ICvCoMKgwqAgciA9IHBs
YXRmb3JtX2dldF9yZXNvdXJjZShwZGV2LCBJT1JFU09VUkNFX01FTSwgMSk7Cj4+PiArwqDCoMKg
IGVtYy0+ZW1jX2Jhc2VbUkVHX0VNQzBdID0gZGV2bV9pb3JlbWFwX3Jlc291cmNlKCZwZGV2LT5k
ZXYsIHIpOwo+Pj4gK8KgwqDCoCByID0gcGxhdGZvcm1fZ2V0X3Jlc291cmNlKHBkZXYsIElPUkVT
T1VSQ0VfTUVNLCAyKTsKPj4+ICvCoMKgwqAgZW1jLT5lbWNfYmFzZVtSRUdfRU1DMV0gPSBkZXZt
X2lvcmVtYXBfcmVzb3VyY2UoJnBkZXYtPmRldiwgcik7Cj4+Cj4+IFVzZSBkZXZtX3BsYXRmb3Jt
X2lvcmVtYXBfcmVzb3VyY2UoKS4KPj4KPj4+ICvCoMKgwqAgZm9yIChpID0gMDsgaSA8IFRFR1JB
X0VNQ19TUkNfQ09VTlQ7IGkrKykgewo+Pj4gK8KgwqDCoMKgwqDCoMKgIGVtY19zcmNbaV0gPSBk
ZXZtX2Nsa19nZXQoJnBkZXYtPmRldiwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGVtY19zcmNfbmFtZXNbaV0pOwo+Pj4gK8KgwqDCoMKgwqDCoMKg
IGlmIChJU19FUlIoZW1jX3NyY1tpXSkpIHsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRl
dl9lcnIoJnBkZXYtPmRldiwgIkNhbiBub3QgZmluZCBFTUMgc291cmNlIGNsb2NrXG4iKTsKPj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRU5PREFUQTsKPj4+ICvCoMKgwqDCoMKg
wqDCoCB9Cj4+PiArwqDCoMKgIH0KPj4+ICsKPj4+ICvCoMKgwqAgbnAgPSBvZl9wYXJzZV9waGFu
ZGxlKHBkZXYtPmRldi5vZl9ub2RlLCAibWVtb3J5LXJlZ2lvbiIsIDApOwo+Pj4gK8KgwqDCoCBp
ZiAoIW5wKSB7Cj4+PiArwqDCoMKgwqDCoMKgwqAgZGV2X2VycigmcGRldi0+ZGV2LCAiY291bGQg
bm90IGZpbmQgRU1DIHRhYmxlXG4iKTsKPj4+ICvCoMKgwqDCoMKgwqDCoCBnb3RvIGVtY19jbGtf
cmVnaXN0ZXI7Cj4+PiArwqDCoMKgIH0KPj4+ICsKPj4+ICvCoMKgwqAgaWYgKCFvZl9kZXZpY2Vf
aXNfY29tcGF0aWJsZShucCwgIm52aWRpYSx0ZWdyYTIxMC1lbWMtdGFibGUiKSB8fAo+Pj4gK8Kg
wqDCoMKgwqDCoMKgICFvZl9kZXZpY2VfaXNfYXZhaWxhYmxlKG5wKSkgewo+Pj4gK8KgwqDCoMKg
wqDCoMKgIGRldl9lcnIoJnBkZXYtPmRldiwgIkVNQyB0YWJsZSBpcyBpbnZhbGlkXG4iKTsKPj4+
ICvCoMKgwqDCoMKgwqDCoCBnb3RvIGVtY19jbGtfcmVnaXN0ZXI7Cj4+PiArwqDCoMKgIH0KPj4+
ICsKPj4+ICvCoMKgwqAgb2ZfYWRkcmVzc190b19yZXNvdXJjZShucCwgMCwgJnJlcyk7Cj4+PiAr
wqDCoMKgIHRhYmxlX2FkZHIgPSBtZW1yZW1hcChyZXMuc3RhcnQsIHJlc291cmNlX3NpemUoJnJl
cyksIE1FTVJFTUFQX1dCKTsKPj4+ICvCoMKgwqAgb2Zfbm9kZV9wdXQobnApOwo+Pj4gK8KgwqDC
oCBpZiAoIXRhYmxlX2FkZHIpIHsKPj4+ICvCoMKgwqDCoMKgwqDCoCBkZXZfZXJyKCZwZGV2LT5k
ZXYsICJjb3VsZCBub3QgbWFwIEVNQyB0YWJsZVxuIik7Cj4+PiArwqDCoMKgwqDCoMKgwqAgZ290
byBlbWNfY2xrX3JlZ2lzdGVyOwo+Pj4gK8KgwqDCoCB9Cj4+PiArwqDCoMKgIGVtYy0+ZW1jX3Rh
YmxlID0gKHN0cnVjdCBlbWNfdGFibGUgKil0YWJsZV9hZGRyOwo+Pj4gKwo+Pj4gK8KgwqDCoCBm
b3IgKGkgPSAwOyBpIDwgVEVHUkFfRU1DX01BWF9GUkVRUzsgaSsrKQo+Pj4gK8KgwqDCoMKgwqDC
oMKgIGlmIChlbWMtPmVtY190YWJsZVtpXS5yZXYgIT0gMCkKPj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGVtYy0+ZW1jX3RhYmxlX3NpemUrKzsKPj4+ICvCoMKgwqDCoMKgwqDCoCBlbHNlCj4+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBicmVhazsKPj4+ICsKPj4+ICvCoMKgwqAgLyogSW5p
dCBFTUMgcmF0ZSBzdGF0aXN0aWMgZGF0YSAqLwo+Pj4gK8KgwqDCoCBlbWNfc3RhdHMuY2xrY2hh
bmdlX2NvdW50ID0gMDsKPj4+ICvCoMKgwqAgc3Bpbl9sb2NrX2luaXQoJmVtY19zdGF0cy5zcGlu
bG9jayk7Cj4+PiArwqDCoMKgIGVtY19zdGF0cy5sYXN0X3VwZGF0ZSA9IGdldF9qaWZmaWVzXzY0
KCk7Cj4+PiArwqDCoMKgIGVtY19zdGF0cy5sYXN0X3NlbCA9IFRFR1JBX0VNQ19NQVhfRlJFUVM7
Cj4+PiArCj4+PiArwqDCoMKgIC8qIENoZWNrIHRoZSBzdXBwb3J0ZWQgc2VxdWVuY2UgKi8KPj4+
ICvCoMKgwqAgd2hpbGUgKHNlcS0+dGFibGVfcmV2KSB7Cj4+PiArwqDCoMKgwqDCoMKgwqAgaWYg
KHNlcS0+dGFibGVfcmV2ID09IGVtYy0+ZW1jX3RhYmxlWzBdLnJldikKPj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGJyZWFrOwo+Pj4gK8KgwqDCoMKgwqDCoMKgIHNlcSsrOwo+Pj4gK8KgwqDC
oCB9Cj4+PiArwqDCoMKgIGlmICghc2VxLT5zZXRfY2xvY2spIHsKPj4+ICvCoMKgwqDCoMKgwqDC
oCBzZXEgPSBOVUxMOwo+Pj4gK8KgwqDCoMKgwqDCoMKgIGRldl9lcnIoJnBkZXYtPmRldiwgIklu
dmFsaWQgRU1DIHNlcXVlbmNlIGZvciB0YWJsZSBSZXYuICVkXG4iLAo+Pj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgZW1jLT5lbWNfdGFibGVbMF0ucmV2KTsKPj4+ICvCoMKgwqDCoMKgwqDCoCBn
b3RvIGVtY19jbGtfcmVnaXN0ZXI7Cj4+Cj4+IFdoeSBkbyB5b3Ugd2FudCB0byByZWdpc3RlciBF
TUMgY2xvY2sgaWYgc29tZXRoaW5nIGZhaWxzPyBLTVNHIHdpbGwgYmUKPj4gZmxvb2RlZCB3aXRo
IGVycm9ycyBjb21pbmcgZnJvbSBjbGtfc2V0X3JhdGUuCj4+Cj4gCj4gU2VlIHBhdGNoIDcgaW4g
dGhlIHNlcmllcywgdGhlIGxlZ2FjeSBFTUMgY2xvY2sgd2lsbCBiZSByZW1vdmVkIGxhdGVyLAo+
IHNvIHdlIG5lZWQgdG8gcmVnaXN0ZXIgdGhlIEVNQyBjbG9jayB3aGV0aGVyIHRoZSB0YWJsZSBp
cyByZWFkeSBvciBub3Q+IEluIHRoYXQgY2FzZSwgSSBtZWFuIGlmIHRoZSB0YWJsZSBpcyBub3Qg
YXZhaWxhYmxlLCBpdCB3aWxsIHN0aWxsCj4gcmVnaXN0ZXIgRU1DIGNsb2NrIGF0IHRoZSByYXRl
IHRoYXQgYm9vdCBsb2FkZXIgY29uZmlndXJlZCBiZWZvcmUga2VybmVsCj4gYm9vdGluZy4gU28g
dGhlIE1DIGNsb2NrIGNhbiBzdGlsbCB3b3JrIGFzIGV4cGVjdGVkLCB3aGljaCBpcyB1bmRlciBF
TUMKPiBjbG9jay4KPiAKPiBBbmQgSSBkaWQgdGVzdCB0aGF0LCBjb3VsZG4ndCBvYnNlcnZlIGFu
eSBLTVNHIGluIHRoYXQgY2FzZS4KCkxvb2tzIGxpa2UgaXQga2luZGEgc2hvdWxkIHdvcmsgaW4g
dGhlIGVuZC4KCkFsdGhvdWdoIGl0J3Mgbm90IGdvb2QgdGhhdCBub3cgTUMgZHJpdmVyIHJlbGll
cyBvbiB0aGUgRU1DIGRyaXZlcgpwcmVzZW5jZS4gTWF5YmUgaXQncyBub3QgdGhlIGJlc3QgdmFy
aWFudCB3aXRoIG1vdmluZyB0aGUgY2xvY2sgc3R1ZmYKaW50byB0aGUgRU1DIGRyaXZlcj8KCldo
YXQgYWJvdXQgdGhlIGJhY2t3YXJkcyBjb21wYXRpYmlsaXR5IGZvciBEVCB0aGF0IGRvZXNuJ3Qg
aGF2ZSB0aGUgRU1DCm5vZGU/CgpXaGF0IGlmIEVNQyBkcml2ZXIgaXMgZGlzYWJsZWQgaW4gdGhl
IGtlcm5lbCdzIGNvbmZpZz8KCkFuZCBsYXN0bHkuLiB3aGF0IHN0b3BzIHRoZSBNQyBkcml2ZXIg
dG8gcHJvYmUgYmVmb3JlIHRoZSBFTUM/IExvb2tzCmxpa2UgTUMgZHJpdmVyIGlzIGFscmVhZHkg
aW4gdHJvdWJsZSBiZWNhdXNlIGl0J3Mgb24gYXJjaCBsZXZlbCBhbmQgdGhlCkVNQyBpcyBvbiBz
dWJzeXMsIGhlbmNlIE1DIHdpbGwgZ2V0IHRoZSBvcnBoYW5lZCBjbG9jayBhbmQgd29uJ3QKaW5p
dGlhbGl6ZSBoYXJkd2FyZSBwcm9wZXJseSBvbiBwcm9iZS4KCkJUVywgaG93IGFyZSB5b3UgdGVz
dGluZyB0aGUgRU1DIGRyaXZlcj8gSXMgdGhlcmUgVDIxMCBkZXZmcmVxIHBhdGNoZXMKaW4gd29y
a3M/IE9yIHdoYXQncyB0aGUgdXNlciBvZiB0aGUgRU1DIG9uIFQyMTA/CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
