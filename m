Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FFD12DE1C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 15:27:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+O1EU2wrtiTUJ8WEHuQRMoHb/Q/vHvpGWSxNvzbd71c=; b=szKbPP5KEdGSLn
	jiM82vPZj+FiwEdgdRRPxRMhOztnlh5H0Okjt8NOLcHOz9k45lkB3mQxkVOeAmlF8VP7yAj0kougL
	x6v1Ziy33PxAdtmNoxuQ+VKjXOnR6AV4J22GrEjrtAIGNu/LtNiMxbXhxdjqWw0Zh2QkIqHP0gzF3
	PUbiGCL76P3Mta4wsDN4c6vMsH7rKIUaEM1VrtmcKt5EpksZu1FEi7KaNoNThP1SVlW+jxjiLJ1OC
	9x497SeWEcHRx5Wcs5mfR0XcMxqypAyDU3Giu5U1osJV0FQQSa9xhbeuembOylvF7aawP/02qZubs
	soc/SD2fbFrf7vGgtHnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVyc4-0004GP-2P; Wed, 29 May 2019 13:27:28 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVybw-0004Fk-83
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 13:27:21 +0000
Received: by mail-lf1-x141.google.com with SMTP id m15so2074135lfh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 06:27:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+/2WSWJF0nzKdfRfipKKpaoRbkteTbzPHcN6l0Js1K8=;
 b=f7wlgllNtj1vYHdNor850nqU07pRTXnixaxigG5xlmWmMku0jRD20CC8xWv08ljITD
 vc0TGQTVFKu+Ax+BnW519KXabMgmo7b6aKsbN/b30Fkdj+87oC/vQyXzBx1xHZGNjMze
 0xFvZjHjXfHXzB/39wNNmRv8+bgVaZ4MkR1GajiMRrqi7y1lPPlD7rupJOj6aTQjlxJC
 p5dFWgXg4+akaFz4gdipt/X0E1CDzPns08D+AV2WtSMJBrn+O/E9EKgTa/OJ3/dUOTCr
 LF1NIKE/hnM90Lqkus41UcaLvjPHdePlBlIFjJA+vT0IibmoOt9HSfzqOsjdhHY0mKp+
 U3tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+/2WSWJF0nzKdfRfipKKpaoRbkteTbzPHcN6l0Js1K8=;
 b=d29YNb/qFhO2KyHyCBJac3g4FkC+Y3Xtv7BO80f3MFdhiHnr2NV0cI3jN/jTEAso2r
 e4mtrIzBLA7lKzUqTNqvwn6Sz/0IuR7tIMmgkXGGg9PqgBsyYdVy9OaAQFcGTeyarZtR
 ugXY6cKyFV5xmn6Dcolv0ovM5kcJDXJC6YvbTitIbo7zCJZs4UUV1+h4YpIMxx45h1Bn
 eJ0w47yL078jdj9dG26O836EcsneseLs4X7LZqGrFiNIWiAAG0Avg/ybJH5FwdvxXsHx
 2htn2MEox79HaHbLHYfH/LemcWYOYLGvrldi/vn0+kSegSpWh6fHr1G16tQqr3I4gTYJ
 s94A==
X-Gm-Message-State: APjAAAUS5jJ5ItxEodUbqIswIOQdavxayjqzzjKb9Alb5C+LAnDGfreq
 EKUYscOlej07OKcmeEoE+EmtMhZF
X-Google-Smtp-Source: APXvYqz8uqI/qSC/gbneI5jMj9NJAf0lIFSnzqF6Ju7MAMzxNLGpvxcenmxIHDwf7QcBbkImYqbZFg==
X-Received: by 2002:a19:7110:: with SMTP id m16mr3037749lfc.4.1559136437992;
 Wed, 29 May 2019 06:27:17 -0700 (PDT)
Received: from [192.168.2.145] ([94.29.35.141])
 by smtp.googlemail.com with ESMTPSA id q65sm3566520lje.42.2019.05.29.06.27.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 06:27:17 -0700 (PDT)
Subject: Re: [PATCH V4 4/8] memory: tegra: Add Tegra210 EMC clock driver
To: Joseph Lo <josephl@nvidia.com>, Thierry Reding
 <thierry.reding@gmail.com>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
References: <20190529082139.5581-1-josephl@nvidia.com>
 <20190529082139.5581-5-josephl@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <403181d4-100b-679e-b1d8-c052c6d1f3ac@gmail.com>
Date: Wed, 29 May 2019 16:26:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190529082139.5581-5-josephl@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_062720_321456_DF6E8976 
X-CRM114-Status: GOOD (  34.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

MjkuMDUuMjAxOSAxMToyMSwgSm9zZXBoIExvINC/0LjRiNC10YI6Cj4gVGhpcyBpcyB0aGUgaW5p
dGlhbCBwYXRjaCBmb3IgVGVncmEyMTAgRU1DIGNsb2NrIGRyaXZlciwgd2hpY2ggZG9lc24ndAo+
IGluY2x1ZGUgdGhlIHN1cHBvcnQgY29kZSBhbmQgZGV0YWlsIHNlcXVlbmNlIGZvciBjbG9jayBz
Y2FsaW5nIHlldC4KPiAKPiBUaGUgZHJpdmVyIGlzIGRlc2lnbmVkIHRvIHN1cHBvcnQgTFBERFI0
IFNEUkFNLiBCZWNhdXNlIG9mIHRoZSBMUEREUjQKPiBkZXZpY2VzIG5lZWQgdG8gZG8gaW5pdGlh
bCB0aW1lIHRyYWluaW5nIGJlZm9yZSBpdCBjYW4gYmUgdXNlZCwgdGhlCj4gZmlybXdhcmUgd2ls
bCBoZWxwIHRvIGRvIHRoYXQgYXQgZWFybHkgYm9vdCBzdGFnZS4gVGhlbiwgdGhlIHRyYWluZWQK
PiB0YWJsZSBvZiB0aGUgcmF0ZXMgd2Ugc3VwcG9ydCB3aWxsIHBhc3MgdG8gdGhlIGtlcm5lbCB2
aWEgRFQuIFNvIHRoZQo+IGRyaXZlciBjYW4gZ2V0IHRoZSB0cmFpbmVkIHRhYmxlIGZvciBjbG9j
ayBzY2FsaW5nIHN1cHBvcnQuCj4gCj4gRm9yIHRoZSBoaWdoZXIgcmF0ZSBzdXBwb3J0IChhYm92
ZSA4MDBNSHopLCB0aGUgcGVyaW9kaWMgdHJhaW5pbmcgaXMKPiBuZWVkZWQgZm9yIHRoZSB0aW1p
bmcgY29tcGVuc2F0aW9uLiBTbyBiYXNpY2FsbHksIHR3byBtZXRob2RvbG9naWVzIGZvcgo+IGNs
b2NrIHNjYWxpbmcgYXJlIHN1cHBvcnRlZCwgb25lIGlzIGZvbGxvd2luZyB0aGUgY2xvY2sgY2hh
bmdpbmcKPiBzZXF1ZW5jZSB0byB1cGRhdGUgdGhlIEVNQyB0YWJsZSB0byBFTUMgcmVnaXN0ZXJz
IGFuZCBhbm90aGVyIGlzIGlmIHRoZQo+IHJhdGUgbmVlZHMgcGVyaW9kaWMgdHJhaW5pbmcsIHRo
ZW4gd2Ugd2lsbCBzdGFydCBhIHRpbWVyIHRvIGRvIHRoYXQKPiBwZXJpb2RpY2FsbHkgdW50aWwg
aXQgc2NhbGVzIHRvIHRoZSBsb3dlciByYXRlLgo+IAo+IEJhc2VkIG9uIHRoZSB3b3JrIG9mIFBl
dGVyIERlIFNjaHJpanZlciA8cGRlc2NocmlqdmVyQG52aWRpYS5jb20+Lgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IEpvc2VwaCBMbyA8am9zZXBobEBudmlkaWEuY29tPgo+IC0tLQo+IHY0Ogo+IC0gcmVt
b3ZlIHRoZSBzdGF0aXN0aWMgZGF0YSBpbiBkZWJ1Z2ZzCj4gLSBhZGQgdGVncmEyMTBfY2xrX3Jl
Z2lzdGVyX2VtYyBBUEkgdG8gbWFrZSBpdCBjb21wYXRpYmxlIHdpdGggdGhlIGNhc2UKPiAgIGlm
IHRoZSBrZXJuZWwgc3RpbGwgdXNlcyB0aGUgb2xkZXIgRFRCIHdoaWNoIGRvZXNuJ3QgaGF2ZSBF
TUMgbm9kZS4KPiAgIEFuZCB0aGUgTUMgYW5kIEVNQyBjbG9jayBjYW4gc3RpbGwgYmUgcmVnaXN0
ZXJlZCBzdWNjZXNzZnVsbHkuCj4gdjM6Cj4gLSBhZGRyZXNzIGFsbW9zdCBhbGwgdGhlIGNvbW1l
bnRzIGZyb20gdGhlIHByZXZpb3VzIHZlcnNpb24KPiAtIHJlbW92ZSB0aGUgRFQgcGFyc2VyIG9m
IEVNQyB0YWJsZQo+IC0gVGhlIEVNQyB0YWJsZSBpcyBwYXNzaW5nIGFzIGEgYmluYXJ5IGJsb2Ig
bm93Lgo+IC0tLQo+ICBkcml2ZXJzL21lbW9yeS90ZWdyYS9LY29uZmlnICAgICAgICB8ICAxMCAr
Cj4gIGRyaXZlcnMvbWVtb3J5L3RlZ3JhL01ha2VmaWxlICAgICAgIHwgICAxICsKPiAgZHJpdmVy
cy9tZW1vcnkvdGVncmEvdGVncmEyMTAtZW1jLmMgfCA2NzEgKysrKysrKysrKysrKysrKysrKysr
KysrKysrKwo+ICBkcml2ZXJzL21lbW9yeS90ZWdyYS90ZWdyYTIxMC1lbWMuaCB8IDE1NiArKysr
KysrCj4gIGluY2x1ZGUvc29jL3RlZ3JhL2VtYy5oICAgICAgICAgICAgIHwgICAyICsKPiAgNSBm
aWxlcyBjaGFuZ2VkLCA4NDAgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJp
dmVycy9tZW1vcnkvdGVncmEvdGVncmEyMTAtZW1jLmMKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRy
aXZlcnMvbWVtb3J5L3RlZ3JhL3RlZ3JhMjEwLWVtYy5oCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbWVtb3J5L3RlZ3JhL0tjb25maWcgYi9kcml2ZXJzL21lbW9yeS90ZWdyYS9LY29uZmlnCj4g
aW5kZXggNDY4MDEyNGRkY2FiLi45ZDA1MWJjZGJlZTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9t
ZW1vcnkvdGVncmEvS2NvbmZpZwo+ICsrKyBiL2RyaXZlcnMvbWVtb3J5L3RlZ3JhL0tjb25maWcK
PiBAQCAtMjYsMyArMjYsMTMgQEAgY29uZmlnIFRFR1JBMTI0X0VNQwo+ICAJICBUZWdyYTEyNCBj
aGlwcy4gVGhlIEVNQyBjb250cm9scyB0aGUgZXh0ZXJuYWwgRFJBTSBvbiB0aGUgYm9hcmQuCj4g
IAkgIFRoaXMgZHJpdmVyIGlzIHJlcXVpcmVkIHRvIGNoYW5nZSBtZW1vcnkgdGltaW5ncyAvIGNs
b2NrIHJhdGUgZm9yCj4gIAkgIGV4dGVybmFsIG1lbW9yeS4KPiArCj4gK2NvbmZpZyBURUdSQTIx
MF9FTUMKPiArCWJvb2wgIk5WSURJQSBUZWdyYTIxMCBFeHRlcm5hbCBNZW1vcnkgQ29udHJvbGxl
ciBkcml2ZXIiCj4gKwlkZWZhdWx0IHkKClRoaXMgaXMgbm90IGVub3VnaCBzaW5jZSB5b3UncmUg
bGVhdmluZyBwb3NzaWJpbGl0eSB0byBkaXNhYmxlCmNvbXBpbGF0aW9uIG9mIHRoZSBkcml2ZXIs
IGJ1dCB0aGUgY29tcGlsYXRpb24gd2lsbCBmYWlsIGJlY2F1c2Ugb2YgdGhlCnVucmVzb2x2ZWQg
c3ltYm9sICh0ZWdyYTIxMF9jbGtfcmVnaXN0ZXJfZW1jKS4KCj4gKwlkZXBlbmRzIG9uIFRFR1JB
X01DICYmIEFSQ0hfVEVHUkFfMjEwX1NPQwo+ICsJaGVscAo+ICsJICBUaGlzIGRyaXZlciBpcyBm
b3IgdGhlIEV4dGVybmFsIE1lbW9yeSBDb250cm9sbGVyIChFTUMpIGZvdW5kIG9uCj4gKwkgIFRl
Z3JhMjEwIGNoaXBzLiBUaGUgRU1DIGNvbnRyb2xzIHRoZSBleHRlcm5hbCBEUkFNIG9uIHRoZSBi
b2FyZC4KPiArCSAgVGhpcyBkcml2ZXIgaXMgcmVxdWlyZWQgdG8gY2hhbmdlIG1lbW9yeSB0aW1p
bmdzIC8gY2xvY2sgcmF0ZSBmb3IKPiArCSAgZXh0ZXJuYWwgbWVtb3J5LgoKRWl0aGVyIFRFR1JB
MjEwX0VNQyBLY29uZmlnIG9wdGlvbiBzaGFsbCBiZSBhbHdheXMgZm9yY2Utc2VsZWN0ZWQgZm9y
ClQyMTAgb3IgeW91IHNob3VsZCBtb3ZlIGFsbCB0aGUgY2xrLXJlbGF0ZWQgY29kZSBpbnRvIGRy
aXZlcnMvY2xrL3RlZ3JhLy4KCkNvdWxkIHlvdSBwbGVhc2UgZ2l2ZSBhIHJhdGlvbmFsZSBmb3Ig
aGF2aW5nIEVNQyBjbG9jayBjb2RlIHdpdGhpbiB0aGUKRU1DIGRyaXZlcj8KCltzbmlwXQoKPiAr
c3RhdGljIGludCB0ZWdyYTIxMF9lbWNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKPiArewo+ICsJaW50IGk7Cj4gKwl1bnNpZ25lZCBsb25nIHRhYmxlX3JhdGU7Cj4gKwl1bnNp
Z25lZCBsb25nIGN1cnJlbnRfcmF0ZTsKPiArCXN0cnVjdCBjbGsgKmVtY19jbGs7Cj4gKwlzdHJ1
Y3QgZGV2aWNlX25vZGUgKm5wOwo+ICsJc3RydWN0IHBsYXRmb3JtX2RldmljZSAqbWM7Cj4gKwlz
dHJ1Y3QgcmVzb3VyY2UgcmVzOwo+ICsJc3RydWN0IHRlZ3JhX2VtYyAqZW1jOwo+ICsJdm9pZCAq
dGFibGVfYWRkcjsKPiArCj4gKwllbWNfY2xrID0gZGV2bV9jbGtfZ2V0KCZwZGV2LT5kZXYsICJl
bWMiKTsKPiArCWlmIChJU19FUlIoZW1jX2NsaykpCj4gKwkJcmV0dXJuIFBUUl9FUlIoZW1jX2Ns
ayk7CgpQbGVhc2UgYWRkIG5ld2xpbmUgaW4gYSBzdWNoIHBsYWNlcyBpbiB0aGUgY29kZSB0byBt
YWtlIGl0IG1vcmUgcmVhZGFibGUuCgo+ICsJZW1jID0gY2xrX2h3X3RvX2VtYyhfX2Nsa19nZXRf
aHcoZW1jX2NsaykpOwo+ICsKPiArCW5wID0gb2ZfcGFyc2VfcGhhbmRsZShwZGV2LT5kZXYub2Zf
bm9kZSwgIm52aWRpYSxtZW1vcnktY29udHJvbGxlciIsIDApOwo+ICsJaWYgKCFucCkgewo+ICsJ
CWRldl9lcnIoJnBkZXYtPmRldiwgImNvdWxkIG5vdCBnZXQgbWVtb3J5IGNvbnRyb2xsZXJcbiIp
Owo+ICsJCXJldHVybiAtRU5PRU5UOwo+ICsJfQo+ICsKPiArCW1jID0gb2ZfZmluZF9kZXZpY2Vf
Ynlfbm9kZShucCk7Cj4gKwlvZl9ub2RlX3B1dChucCk7Cj4gKwlpZiAoIW1jKQo+ICsJCXJldHVy
biAtRU5PRU5UOwo+ICsKPiArCWVtYy0+bWMgPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShtYyk7Cj4g
KwlpZiAoIWVtYy0+bWMpCj4gKwkJcmV0dXJuIC1FUFJPQkVfREVGRVI7Cj4gKwo+ICsJZW1jLT5l
bWNfYmFzZVtSRUdfRU1DXSA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZShwZGV2LCAw
KTsKPiArCWVtYy0+ZW1jX2Jhc2VbUkVHX0VNQzBdID0gZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jl
c291cmNlKHBkZXYsIDEpOwo+ICsJZW1jLT5lbWNfYmFzZVtSRUdfRU1DMV0gPSBkZXZtX3BsYXRm
b3JtX2lvcmVtYXBfcmVzb3VyY2UocGRldiwgMik7Cj4gKwo+ICsJZm9yIChpID0gMDsgaSA8IFRF
R1JBX0VNQ19TUkNfQ09VTlQ7IGkrKykgewo+ICsJCWlmICghSVNfRVJSKGVtY19zcmNbaV0pKQo+
ICsJCQljbGtfcHV0KGVtY19zcmNbaV0pOwo+ICsKPiArCQllbWNfc3JjW2ldID0gZGV2bV9jbGtf
Z2V0KCZwZGV2LT5kZXYsIGVtY19zcmNfbmFtZXNbaV0pOwo+ICsJCWlmIChJU19FUlIoZW1jX3Ny
Y1tpXSkpIHsKPiArCQkJZGV2X2VycigmcGRldi0+ZGV2LCAiQ2FuIG5vdCBmaW5kIEVNQyBzb3Vy
Y2UgY2xvY2tcbiIpOwo+ICsJCQlyZXR1cm4gLUVOT0RBVEE7Cj4gKwkJfQo+ICsJfQo+ICsKPiAr
CW5wID0gb2ZfcGFyc2VfcGhhbmRsZShwZGV2LT5kZXYub2Zfbm9kZSwgIm1lbW9yeS1yZWdpb24i
LCAwKTsKPiArCWlmICghbnApIHsKPiArCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJjb3VsZCBub3Qg
ZmluZCBFTUMgdGFibGVcbiIpOwo+ICsJCXJldHVybiAtRU5PREFUQTsKPiArCX0KPiArCj4gKwlp
ZiAoIW9mX2RldmljZV9pc19jb21wYXRpYmxlKG5wLCAibnZpZGlhLHRlZ3JhMjEwLWVtYy10YWJs
ZSIpIHx8Cj4gKwkgICAgIW9mX2RldmljZV9pc19hdmFpbGFibGUobnApKSB7Cj4gKwkJZGV2X2Vy
cigmcGRldi0+ZGV2LCAiRU1DIHRhYmxlIGlzIGludmFsaWRcbiIpOwo+ICsJCXJldHVybiAtRU5P
REFUQTsKPiArCX0KPiArCj4gKwlvZl9hZGRyZXNzX3RvX3Jlc291cmNlKG5wLCAwLCAmcmVzKTsK
PiArCXRhYmxlX2FkZHIgPSBtZW1yZW1hcChyZXMuc3RhcnQsIHJlc291cmNlX3NpemUoJnJlcyks
IE1FTVJFTUFQX1dCKTsKPiArCW9mX25vZGVfcHV0KG5wKTsKPiArCWlmICghdGFibGVfYWRkcikg
ewo+ICsJCWRldl9lcnIoJnBkZXYtPmRldiwgImNvdWxkIG5vdCBtYXAgRU1DIHRhYmxlXG4iKTsK
PiArCQlyZXR1cm4gLUVOT01FTTsKPiArCX0KPiArCWVtYy0+ZW1jX3RhYmxlID0gKHN0cnVjdCBl
bWNfdGFibGUgKil0YWJsZV9hZGRyOwoKVGhlcmUgaXMgbm8gbmVlZCB0byBjYXN0IGEgdm9pZC4g
UGxlYXNlIG1ha2Ugc3VyZSB0aGF0IHlvdSBkb24ndCBoYXZlCmFueSBub24tdXBzdHJlYW0gcGF0
Y2hlcyBhcHBsaWVkIHRoYXQgYXJlIGNoYW5naW5nIGNvbXBpbGVyIGZsYWdzLCBhbHNvCm1ha2Ug
c3VyZSB0aGF0IHlvdSdyZSB1c2luZyBwcm9wZXIgY29tcGlsZXIgKEdDQykgaWYgeW91J3JlIGdl
dHRpbmcgYQp3YXJuaW5nIGhlcmUuCgo+ICsKPiArCWZvciAoaSA9IDA7IGkgPCBURUdSQV9FTUNf
TUFYX0ZSRVFTOyBpKyspCj4gKwkJaWYgKGVtYy0+ZW1jX3RhYmxlW2ldLnJldiAhPSAwKQo+ICsJ
CQllbWMtPmVtY190YWJsZV9zaXplKys7Cj4gKwkJZWxzZQo+ICsJCQlicmVhazsKPiArCj4gKwkv
KiBjaGVjayB0aGUgc3VwcG9ydGVkIHNlcXVlbmNlICovCj4gKwl3aGlsZSAoc2VxLT50YWJsZV9y
ZXYpIHsKPiArCQlpZiAoc2VxLT50YWJsZV9yZXYgPT0gZW1jLT5lbWNfdGFibGVbMF0ucmV2KQo+
ICsJCQlicmVhazsKPiArCQlzZXErKzsKPiArCX0KPiArCWlmICghc2VxLT5zZXRfY2xvY2spIHsK
PiArCQlzZXEgPSBOVUxMOwo+ICsJCWRldl9lcnIoJnBkZXYtPmRldiwgIkludmFsaWQgRU1DIHNl
cXVlbmNlIGZvciB0YWJsZSBSZXYuICVkXG4iLAo+ICsJCQllbWMtPmVtY190YWJsZVswXS5yZXYp
Owo+ICsJCXJldHVybiAtRU5PREFUQTsKPiArCX0KPiArCj4gKwllbWNfY2xrX3NlbCA9IGRldm1f
a2NhbGxvYygmcGRldi0+ZGV2LAo+ICsJCQkJICAgZW1jLT5lbWNfdGFibGVfc2l6ZSwKPiArCQkJ
CSAgIHNpemVvZihzdHJ1Y3QgZW1jX3NlbCksCj4gKwkJCQkgICBHRlBfS0VSTkVMKTsKPiArCj4g
KwkvKiBjYWxjdWxhdGUgdGhlIHJhdGUgZnJvbSBzb3VyY2UgY2xvY2sgKi8KPiArCWN1cnJlbnRf
cmF0ZSA9IGVtY19nZXRfc3JjX2Nsa19yYXRlKCkgLyAxMDAwOwo+ICsKPiArCS8qIHZhbGlkYXRl
IHRoZSB0YWJsZSAqLwo+ICsJZm9yIChpID0gMDsgaSA8IGVtYy0+ZW1jX3RhYmxlX3NpemU7IGkr
Kykgewo+ICsJCXRhYmxlX3JhdGUgPSBlbWMtPmVtY190YWJsZVtpXS5yYXRlOwo+ICsJCWlmICgh
dGFibGVfcmF0ZSkKPiArCQkJY29udGludWU7Cj4gKwo+ICsJCWlmIChpICYmICgodGFibGVfcmF0
ZSA8PSBlbWMtPmVtY190YWJsZVtpLTFdLnJhdGUpIHx8Cj4gKwkJICAgKGVtYy0+ZW1jX3RhYmxl
W2ldLm1pbl92b2x0IDwKPiArCQkgICAgZW1jLT5lbWNfdGFibGVbaS0xXS5taW5fdm9sdCkpKQo+
ICsJCQljb250aW51ZTsKPiArCj4gKwkJaWYgKGVtYy0+ZW1jX3RhYmxlW2ldLnJldiAhPSBlbWMt
PmVtY190YWJsZVswXS5yZXYpCj4gKwkJCWNvbnRpbnVlOwo+ICsKPiArCQlpZiAoZmluZF9tYXRj
aGluZ19pbnB1dCgmZW1jLT5lbWNfdGFibGVbaV0sICZlbWNfY2xrX3NlbFtpXSkpCj4gKwkJCWNv
bnRpbnVlOwo+ICsKPiArCQlpZiAodGFibGVfcmF0ZSA9PSBjdXJyZW50X3JhdGUpCj4gKwkJCWVt
Yy0+Y3VycmVudF90aW1pbmcgPSAmZW1jLT5lbWNfdGFibGVbaV07Cj4gKwl9CgpJJ20gc3VnZ2Vz
dGluZyB0byBmYWN0b3Igb3V0IGFsbCB0aGUgdmFsaWRhdGlvbnMgaW50byBhIHNlcGFyYXRlCmZ1
bmN0aW9uIGZvciBjbGFyaXR5LgoKLS0gCkRtaXRyeQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
