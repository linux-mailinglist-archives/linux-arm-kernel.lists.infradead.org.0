Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF07614C395
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 00:35:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t5VeOPTQ45ooNPBBJNFAfS1J/leEX+yS4CQoeJ3Kycc=; b=rKep0XC7V9A0dQ
	ZGkDeptgOUPDKWgWRCK//V9ZIsmMaSXUQRCne0fCcB+zP6s/0CYzoJonTcbuwnnGpH1E6uzG5LUey
	n7Lmvk8UflnrBh8vCMV/VoEpXExFnsMUjwltoN+EOz4a3G21SA4V1KZ0icEraPrbqnrJOyfmWzMBe
	UVRIrEEbiOg6C3IWoU4ID7yfg9GY8HO0/4M8eB8ilJtDE5I6AJu2sTP6p6hDaSr1Wpm7MJlJ07/nP
	B18IopmB4rBh/e6K40H1A3Ukx/U1B0EY4Kgc+NvI6NLvSJCzPwiiL49eTjT1XCBxin7XaP/pD9sSf
	4tzHBX+M9YlEhdaFmH6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwaOS-0007r2-54; Tue, 28 Jan 2020 23:35:40 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwaOI-0007qG-Kb
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 23:35:32 +0000
Received: by mail-ed1-x541.google.com with SMTP id cy15so16650458edb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Jan 2020 15:35:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=WJl749Ktrk8S85EaE4Qv0/+OYozg0DKw8o/BXFCqayo=;
 b=oyvyrcS78HjtjQmDKpaDThrcuGlf0fqwFsD6HxqoHKnJnXNrd5nZxKTAdl0TWE4C83
 lLrT/yI77BFyeOtgdQFsd48Lz3EXps+S/go9uw4hxW23rN5GIgMS3PrbJcQenAgf3QM9
 YRe1kVeFummLhrJ4QvWeNmER02/HW8u8dpDKhMdUVXPz6GKMfrbF/cvFihtgdhmaWAgL
 Uh6QgLriwPVdVFzKSmdrZenu2wuUlaWnbh95FBAkRIzNJw9Rtan1/YS/hZKhaY58yN/S
 u2vTMhK5OiVetJkcQk+b6W9hXcIxwbB0j/CcUX2NpKG0SngxBMe/JM5NNOy9d8qw88h6
 16qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=WJl749Ktrk8S85EaE4Qv0/+OYozg0DKw8o/BXFCqayo=;
 b=kVeCMTxyz8171Odeu8mL1haK6mDAuB7f/iJmcbRd6QAdITNLyeBzwCH1uUq07yslzA
 gXzYHIjy2keWuB7CPGeyPf9XM4FV1rMfGMvweW84kgIt+e753n0m4KnLwlq8uMmICsd5
 xkv8spzfAXmlqAsrhK/1qjYa5CvOjbHzCmH60X5jxqU4rjsokAwHdBdcC4nJOE5TL9AF
 gdqb5s8zGTTLlOFtiwvMCo+4rf1HVjR3rw9Ra+drZ/yTPz6AXjcbHbluzgVnUdGoBfnN
 jX36pDJyb89L1tI10GF2PCuPymfjtEZQpX8oJPCgmtU6lnzGu38wbLKy/k13WfbhmXeZ
 qR2Q==
X-Gm-Message-State: APjAAAUwuPcI9cARBtmkglWQab2KcHiXTZb3Geq4NYTg/HGPwQDjYph4
 D6b3ouyBK1pff/MuTn9HFA3wa7kN
X-Google-Smtp-Source: APXvYqyzJ/A9McA/lzlD3WUmlibA7APyGQQRW4NKrVlKhvSpYUSsflSjZ2Ao/0KluhOT9LfQBbRazg==
X-Received: by 2002:a50:d849:: with SMTP id v9mr5816511edj.105.1580254528357; 
 Tue, 28 Jan 2020 15:35:28 -0800 (PST)
Received: from [192.168.2.145] (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.googlemail.com with ESMTPSA id v8sm198edw.21.2020.01.28.15.35.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Jan 2020 15:35:27 -0800 (PST)
Subject: Re: [PATCH 3/5] mm/mremap: use pmd_addr_end to calculate next in
 move_page_tables()
To: Wei Yang <richardw.yang@linux.intel.com>
References: <20200117232254.2792-1-richardw.yang@linux.intel.com>
 <20200117232254.2792-4-richardw.yang@linux.intel.com>
 <7147774a-14e9-4ff3-1548-4565f0d214d5@gmail.com>
 <20200128004301.GD20624@richard>
 <d66bb20e-c0e7-caef-cbbc-aa216c2be7d6@gmail.com>
 <20200128232907.GA11467@richard>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <27b70b0c-7945-cc85-8321-d9e4b6f17865@gmail.com>
Date: Wed, 29 Jan 2020 02:35:25 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200128232907.GA11467@richard>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_153530_699292_7ABD119A 
X-CRM114-Status: GOOD (  19.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: thellstrom@vmware.com, yang.shi@linux.alibaba.com,
 aneesh.kumar@linux.ibm.com, Russell King - ARM Linux <linux@armlinux.org.uk>,
 Jon Hunter <jonathanh@nvidia.com>, linux-mm@kvack.org,
 Thierry Reding <thierry.reding@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 kirill@shutemov.name, akpm@linux-foundation.org, dan.j.williams@intel.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MjkuMDEuMjAyMCAwMjoyOSwgV2VpIFlhbmcg0L/QuNGI0LXRgjoKPiBPbiBUdWUsIEphbiAyOCwg
MjAyMCBhdCAwNjo1OTo0OFBNICswMzAwLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+IDI4LjAx
LjIwMjAgMDM6NDMsIFdlaSBZYW5nINC/0LjRiNC10YI6Cj4+PiBPbiBTdW4sIEphbiAyNiwgMjAy
MCBhdCAwNTo0Nzo1N1BNICswMzAwLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+Pj4gMTguMDEu
MjAyMCAwMjoyMiwgV2VpIFlhbmcg0L/QuNGI0LXRgjoKPj4+Pj4gVXNlIHRoZSBnZW5lcmFsIGhl
bHBlciBpbnN0ZWFkIG9mIGRvIGl0IGJ5IGhhbmQuCj4+Pj4+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6
IFdlaSBZYW5nIDxyaWNoYXJkdy55YW5nQGxpbnV4LmludGVsLmNvbT4KPj4+Pj4gLS0tCj4+Pj4+
ICBtbS9tcmVtYXAuYyB8IDcgKystLS0tLQo+Pj4+PiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPj4+Pj4KPj4+Pj4gZGlmZiAtLWdpdCBhL21tL21yZW1h
cC5jIGIvbW0vbXJlbWFwLmMKPj4+Pj4gaW5kZXggYzJhZjhiYTRiYTQzLi5hMjU4OTE0ZjNlZTEg
MTAwNjQ0Cj4+Pj4+IC0tLSBhL21tL21yZW1hcC5jCj4+Pj4+ICsrKyBiL21tL21yZW1hcC5jCj4+
Pj4+IEBAIC0yNTMsMTEgKzI1Myw4IEBAIHVuc2lnbmVkIGxvbmcgbW92ZV9wYWdlX3RhYmxlcyhz
dHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSwKPj4+Pj4gIAo+Pj4+PiAgCWZvciAoOyBvbGRfYWRk
ciA8IG9sZF9lbmQ7IG9sZF9hZGRyICs9IGV4dGVudCwgbmV3X2FkZHIgKz0gZXh0ZW50KSB7Cj4+
Pj4+ICAJCWNvbmRfcmVzY2hlZCgpOwo+Pj4+PiAtCQluZXh0ID0gKG9sZF9hZGRyICsgUE1EX1NJ
WkUpICYgUE1EX01BU0s7Cj4+Pj4+IC0JCS8qIGV2ZW4gaWYgbmV4dCBvdmVyZmxvd2VkLCBleHRl
bnQgYmVsb3cgd2lsbCBiZSBvayAqLwo+Pj4+PiArCQluZXh0ID0gcG1kX2FkZHJfZW5kKG9sZF9h
ZGRyLCBvbGRfZW5kKTsKPj4+Pj4gIAkJZXh0ZW50ID0gbmV4dCAtIG9sZF9hZGRyOwo+Pj4+PiAt
CQlpZiAoZXh0ZW50ID4gb2xkX2VuZCAtIG9sZF9hZGRyKQo+Pj4+PiAtCQkJZXh0ZW50ID0gb2xk
X2VuZCAtIG9sZF9hZGRyOwo+Pj4+PiAgCQlvbGRfcG1kID0gZ2V0X29sZF9wbWQodm1hLT52bV9t
bSwgb2xkX2FkZHIpOwo+Pj4+PiAgCQlpZiAoIW9sZF9wbWQpCj4+Pj4+ICAJCQljb250aW51ZTsK
Pj4+Pj4gQEAgLTMwMSw3ICsyOTgsNyBAQCB1bnNpZ25lZCBsb25nIG1vdmVfcGFnZV90YWJsZXMo
c3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEsCj4+Pj4+ICAKPj4+Pj4gIAkJaWYgKHB0ZV9hbGxv
YyhuZXdfdm1hLT52bV9tbSwgbmV3X3BtZCkpCj4+Pj4+ICAJCQlicmVhazsKPj4+Pj4gLQkJbmV4
dCA9IChuZXdfYWRkciArIFBNRF9TSVpFKSAmIFBNRF9NQVNLOwo+Pj4+PiArCQluZXh0ID0gcG1k
X2FkZHJfZW5kKG5ld19hZGRyLCBuZXdfYWRkciArIGxlbik7Cj4+Pj4+ICAJCWlmIChleHRlbnQg
PiBuZXh0IC0gbmV3X2FkZHIpCj4+Pj4+ICAJCQlleHRlbnQgPSBuZXh0IC0gbmV3X2FkZHI7Cj4+
Pj4+ICAJCW1vdmVfcHRlcyh2bWEsIG9sZF9wbWQsIG9sZF9hZGRyLCBvbGRfYWRkciArIGV4dGVu
dCwgbmV3X3ZtYSwKPj4+Pj4KPj4+Pgo+Pj4+IEhlbGxvIFdlaSwKPj4+Pgo+Pj4+IFN0YXJ0aW5n
IHdpdGggbmV4dC0yMDIwMDEyMiwgSSdtIHNlZWluZyB0aGUgZm9sbG93aW5nIGluIEtNU0cgb24g
TlZJRElBCj4+Pj4gVGVncmEgKEFSTTMyKToKPj4+Pgo+Pj4+ICBCVUc6IEJhZCByc3MtY291bnRl
ciBzdGF0ZSBtbToocHRydmFsKSB0eXBlOk1NX0FOT05QQUdFUyB2YWw6MTkwCj4+Pj4KPj4+Cj4+
PiBUaGFua3MuCj4+Pgo+Pj4gV291bGQgeW91IG1pbmQgbGV0dGluZyBtZSBrbm93IHdoaWNoIGNh
c2UgeW91IGFyZSB0ZXN0aW5nPwo+Pgo+PiBOb3RoaW5nIHNwZWNpYWwsIHN5c3RlbWQgc3RhcnRz
IHRvIGZhbGwgYXBhcnQgZHVyaW5nIGJvb3QuCj4+Cj4+PiBPciB0aGUgc3BlY2lhbCB0aGluZyBp
cyAzMi1iaXQgcGxhdGZvcm0/Cj4+IEkgaGF2ZSBhIGxpbWl0ZWQga25vd2xlZGdlIGFib3V0IG1t
Lywgc28gY2FuJ3QgcHJvdmlkZSBkZXRhaWxlZCBleHBsYW5hdGlvbi4KPj4KPj4gUGxlYXNlIHRh
a2UgYSBsb29rIGF0IHRoaXM6Cj4+Cj4+IFsxXQo+PiBodHRwczovL2VsaXhpci5ib290bGluLmNv
bS9saW51eC92NS41L3NvdXJjZS9hcmNoL2FybS9pbmNsdWRlL2FzbS9wZ3RhYmxlLTJsZXZlbC5o
I0wyMTAKPj4KPj4gWzJdCj4+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y1LjUv
c291cmNlL2luY2x1ZGUvYXNtLWdlbmVyaWMvcGd0YWJsZS5oI0w1NDkKPj4KPj4gWzNdCj4+IGh0
dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xp
bnV4LmdpdC9jb21taXQvP2lkPWMwYmExMGI1MTJlYjJlMmEzODg4YjZlNmNjMGUwODlmNWU3YTE5
MWIKPiAKPiBUaGFua3MsIEkgc2VlIHRoZSBkaWZmZXJlbmNlIGhlcmUuCj4gCj4gSWYgdGhpcyBp
cyB0aGUgY2FzZSwgd2UgY2FuJ3QgdXNlIHBtZF9hZGRyX2VuZCgpIHRvIHNpbXBsaWZ5IHRoZSBj
YWxjdWxhdGlvbi4KPiBUaGlzIGNoYW5nZXMgdGhlIGJlaGF2aW9yLgo+IAo+IEkgd291bGQgcHJl
cGFyZSBhbm90aGVyIHBhdGNoIHNldCB0byBmaXggdGhpcy4gV291bGQgeW91IG1pbmQgaGVscGlu
ZyBtZQo+IHZlcmlmeSBvbiB5b3VyIHBsYXRmb3JtPwoKU3VyZSwgcGxlYXNlIGZlZWwgZnJlZSB0
byBDQyBtZSBvbiB0aGF0IHBhdGNoLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
