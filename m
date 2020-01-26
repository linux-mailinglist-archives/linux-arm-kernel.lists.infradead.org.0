Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E86149B31
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Jan 2020 15:48:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Y5WS4vUS+nLFhXlKpAZtpwWnTtX6LZJUj7U/hg2mJk=; b=sbO7Dvxi5r/Mhg
	I78aZtYqNh2N1i/MbeJBFoFzZEnw/qIY5EEOGvEJWyAWz7ld2p0C5Sm/lsM83fQTqYkg7RDFmNJMt
	aLIpY2crtxFODWkJ2R8QFr38jWW3v0zDVBmwupqYgorOVpRax9DfMb4dmxXVjFv3JiqAIcpPCwScI
	tFHIOwYJMFl59H7EagzWxCcb074IO47z/Cc+4ng9KSqZaZmJpcwWZGQK3wcBvRnQHk3yfNswAfdrp
	p1Csgs8tqsO4neEd0wosXfpBsrzXoiYiJOGjYKWoa/RyaCqD5CHwXTJBtm7ucnWfRYehVpWhKHe3L
	A6FegzOC1HOERNJo2dGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivjCy-0005v5-Dm; Sun, 26 Jan 2020 14:48:16 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivjCr-0005um-4q
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Jan 2020 14:48:10 +0000
Received: by mail-lf1-x144.google.com with SMTP id 203so4375255lfa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Jan 2020 06:48:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=suFPTFq/Jnh/uA1mB3Xjj1yJvj/WmXz4zUasdh/U3Lw=;
 b=TE6agYmJp5GFdw08Vzg+NV/vbjFAQN87TqO+KUwG+SSpOn/QXw2O5iYkI4V5wBFOd7
 MskcQuJgz9OYUgTc3wCtEzUgVduImNspswoMR5iF6Aeljkj9x8+Ij6OYsZMeJPtuBt0q
 dusBuy9L/4jdf/rIl4Ugr8l3im2nUCt42fx1+bieysOkOovSmCUZ9hhChAnDUD5Wl47C
 A7zbiIfv6LDY6pcR+3eNEpeqzKBmMVG/i4T8YB8k6ehvMx6mruuC75qtvzU6oRRJ0u9s
 FcptOHkL02y1q8s1Tw0K95zwucg+aW2S+pCCrs0TgJmPCWAif56/0YZyDJm7kR6nU8Ot
 eREA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=suFPTFq/Jnh/uA1mB3Xjj1yJvj/WmXz4zUasdh/U3Lw=;
 b=ATr8sk0rsecN31QhUN/Grbz3WaZDxUkjvCZwl7FqMyeYzFjdcqlHjQAhT9XZTpGHvM
 mfbzBrXiSlYiu+CSW5b22DOOBD65ZsnNSgpFDeNzFLV9ODywCiVIY6Ecdm7uxkOIsiAT
 PSp6ioyu2enztWF4gtF3ExgU5fb7zuvk401/sbY9pz4nlqbLqBa0mFNaqkhhdWGXhqrb
 I7V7UCZKywlOv5y4ZaSockzFEB0qEkT5IdwfMZ6TVKscyz83jaJLsLjHqBkS2Z3T5Hsu
 w3/g3jPp9iIPrtRF3ijVo1LJybNWkah2/eF3F/N1V6I4Rlr1nIIm9UsjgZ2FRLR1xjzh
 8J7w==
X-Gm-Message-State: APjAAAXdFuFGDHI1DVyPA+oCWOvt3h6U5Ih2brOGW/VYdULybLj49/TH
 7R/9qD7sDqyJakTa0vvxkdg=
X-Google-Smtp-Source: APXvYqzrBzQVrNMbr4ufPq5EvI4AI6Akr2T5dAKUbDntDgoBL0+AcsUC3mGSp5/wQzvANInr+4cgcQ==
X-Received: by 2002:ac2:4839:: with SMTP id 25mr5664498lft.192.1580050086365; 
 Sun, 26 Jan 2020 06:48:06 -0800 (PST)
Received: from [192.168.2.145] (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.googlemail.com with ESMTPSA id z14sm6594934ljm.86.2020.01.26.06.48.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 26 Jan 2020 06:48:05 -0800 (PST)
Subject: Re: [PATCH 3/5] mm/mremap: use pmd_addr_end to calculate next in
 move_page_tables()
To: Wei Yang <richardw.yang@linux.intel.com>, akpm@linux-foundation.org,
 dan.j.williams@intel.com, aneesh.kumar@linux.ibm.com, kirill@shutemov.name,
 yang.shi@linux.alibaba.com, thellstrom@vmware.com,
 Thierry Reding <thierry.reding@gmail.com>, Jon Hunter <jonathanh@nvidia.com>
References: <20200117232254.2792-1-richardw.yang@linux.intel.com>
 <20200117232254.2792-4-richardw.yang@linux.intel.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <7147774a-14e9-4ff3-1548-4565f0d214d5@gmail.com>
Date: Sun, 26 Jan 2020 17:47:57 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200117232254.2792-4-richardw.yang@linux.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_064809_189915_6A9683C9 
X-CRM114-Status: GOOD (  18.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Russell King - ARM Linux <linux@armlinux.org.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTguMDEuMjAyMCAwMjoyMiwgV2VpIFlhbmcg0L/QuNGI0LXRgjoKPiBVc2UgdGhlIGdlbmVyYWwg
aGVscGVyIGluc3RlYWQgb2YgZG8gaXQgYnkgaGFuZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBXZWkg
WWFuZyA8cmljaGFyZHcueWFuZ0BsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIG1tL21yZW1hcC5j
IHwgNyArKy0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDUgZGVsZXRp
b25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL21tL21yZW1hcC5jIGIvbW0vbXJlbWFwLmMKPiBpbmRl
eCBjMmFmOGJhNGJhNDMuLmEyNTg5MTRmM2VlMSAxMDA2NDQKPiAtLS0gYS9tbS9tcmVtYXAuYwo+
ICsrKyBiL21tL21yZW1hcC5jCj4gQEAgLTI1MywxMSArMjUzLDggQEAgdW5zaWduZWQgbG9uZyBt
b3ZlX3BhZ2VfdGFibGVzKHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hLAo+ICAKPiAgCWZvciAo
OyBvbGRfYWRkciA8IG9sZF9lbmQ7IG9sZF9hZGRyICs9IGV4dGVudCwgbmV3X2FkZHIgKz0gZXh0
ZW50KSB7Cj4gIAkJY29uZF9yZXNjaGVkKCk7Cj4gLQkJbmV4dCA9IChvbGRfYWRkciArIFBNRF9T
SVpFKSAmIFBNRF9NQVNLOwo+IC0JCS8qIGV2ZW4gaWYgbmV4dCBvdmVyZmxvd2VkLCBleHRlbnQg
YmVsb3cgd2lsbCBiZSBvayAqLwo+ICsJCW5leHQgPSBwbWRfYWRkcl9lbmQob2xkX2FkZHIsIG9s
ZF9lbmQpOwo+ICAJCWV4dGVudCA9IG5leHQgLSBvbGRfYWRkcjsKPiAtCQlpZiAoZXh0ZW50ID4g
b2xkX2VuZCAtIG9sZF9hZGRyKQo+IC0JCQlleHRlbnQgPSBvbGRfZW5kIC0gb2xkX2FkZHI7Cj4g
IAkJb2xkX3BtZCA9IGdldF9vbGRfcG1kKHZtYS0+dm1fbW0sIG9sZF9hZGRyKTsKPiAgCQlpZiAo
IW9sZF9wbWQpCj4gIAkJCWNvbnRpbnVlOwo+IEBAIC0zMDEsNyArMjk4LDcgQEAgdW5zaWduZWQg
bG9uZyBtb3ZlX3BhZ2VfdGFibGVzKHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hLAo+ICAKPiAg
CQlpZiAocHRlX2FsbG9jKG5ld192bWEtPnZtX21tLCBuZXdfcG1kKSkKPiAgCQkJYnJlYWs7Cj4g
LQkJbmV4dCA9IChuZXdfYWRkciArIFBNRF9TSVpFKSAmIFBNRF9NQVNLOwo+ICsJCW5leHQgPSBw
bWRfYWRkcl9lbmQobmV3X2FkZHIsIG5ld19hZGRyICsgbGVuKTsKPiAgCQlpZiAoZXh0ZW50ID4g
bmV4dCAtIG5ld19hZGRyKQo+ICAJCQlleHRlbnQgPSBuZXh0IC0gbmV3X2FkZHI7Cj4gIAkJbW92
ZV9wdGVzKHZtYSwgb2xkX3BtZCwgb2xkX2FkZHIsIG9sZF9hZGRyICsgZXh0ZW50LCBuZXdfdm1h
LAo+IAoKSGVsbG8gV2VpLAoKU3RhcnRpbmcgd2l0aCBuZXh0LTIwMjAwMTIyLCBJJ20gc2VlaW5n
IHRoZSBmb2xsb3dpbmcgaW4gS01TRyBvbiBOVklESUEKVGVncmEgKEFSTTMyKToKCiAgQlVHOiBC
YWQgcnNzLWNvdW50ZXIgc3RhdGUgbW06KHB0cnZhbCkgdHlwZTpNTV9BTk9OUEFHRVMgdmFsOjE5
MAoKYW5kIGV2ZW50dWFsbHkga2VybmVsIGhhbmdzLgoKR2l0J3MgYmlzZWN0aW9uIHBvaW50cyB0
byB0aGlzIHBhdGNoIGFuZCByZXZlcnRpbmcgaXQgaGVscHMuIFBsZWFzZSBmaXgsCnRoYW5rcyBp
biBhZHZhbmNlLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
