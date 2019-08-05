Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C788818C3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 14:03:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P1D/jh005BAMO6bWwrRoVauEb0v2E4SSxtjHwQ8POQA=; b=gAJ4yF/KXwxdsV
	LLkY3yJFeZj9KO9sg8x4r3qnjzQhOLtYfZr3gBaelGD2YfvUqe5e7vv8b6iciKdFOUwgnE4YUUc6u
	6WwW9/Z8UrMp4+xEH0qhAKCIqsECJI8Tqvg3xez1Vw5jPA6PxOoJQ65J0z8qmfnXdFMpRKTOXxOiy
	jbrQyNdmrfP84D8PbGPo4ZNU2EGJTrytmlhnT4rXLfZ247piArcrHua8IQXQiZVJiq4YkpGzBe6eg
	RJGbE5Y+JZq4GKV6u9X9qauOIiEVyKmIX2MdwZiWnl0vgsvFnLdKU26aURwzuEN7Pba/O4QAS8ARo
	TiKiq50+IOKwY4eugl3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hubiB-00031v-S0; Mon, 05 Aug 2019 12:03:35 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hubhr-0002vF-EE
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 12:03:16 +0000
Received: by mail-qt1-x842.google.com with SMTP id h18so80626495qtm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 05:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=j+OOtxkfEfsCK+bkwVyH+Wrr9sjpuA5wVJQ8qaeLaG8=;
 b=TBYaLnvGsJaDv7jiG19ScDPJmW9OgDM79TzWpDDPQxX3q+If+vRmSGDqnxgd2sC5Ma
 ndDWvheXkytYiOyfIbWbxatjvKcCOE36Nc+UhP2sshiQcUFXOlU6FFfNepLfvuxYm2Td
 63LMmv2G8tm7S1NbJ0kBJESQDmcA4TUsBtqA5M9fO5eSGImoPumUm7/WKYC1G069jjkZ
 g78Xvb+sNqn5bWJGxzmtjRfAFRA1p4dI2t9uDLRhJwziVvOWOPHzbd3l/p6goCZ5uDPU
 PEqSwsY9YVdxNJd6AArrrivHw2yl4ZnkBgrcQRsGZy6CXbJRiGFsXYgiGrdAg63tlq1l
 8Ksw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=j+OOtxkfEfsCK+bkwVyH+Wrr9sjpuA5wVJQ8qaeLaG8=;
 b=oCIESSktMbmhER7aVD14hoftx/fuZUvmE86hOX9Vlr6H7Tg8acvwONQzr6B8O1V6Gs
 YYqCHLFKxO0Uq7prGzxPuXHoJ+5WeJ/xNDb/kCCOIaWq1PuznKBlpok/InNxEDDMbwBa
 ZM8zGPa80SrOKDFwdJlyBIswg6FSnmhmU+XD6rsgHbh9rqGvtT4NoPNC+td5BxjyLMKG
 BmvN/w4+krfPqeHFYN44vILOV3ERi5yQDamqRaYOi2jFmOhxbCsqIvQgaolzDyE9fKHH
 FnumRRs1sLwmc2tktrb7zuHo4pYd8KR74wMxdhBUJP3xqX6QVfyGZZ7CsCd5CRoRDV+I
 iRNA==
X-Gm-Message-State: APjAAAXbsKN/K21qYq+zZAoQ1j7Wqn7c0VenfY6UwLIXJAa/0hf+zrMJ
 Mh6UxeSd5BfWUeJb8WIYkrXo/g==
X-Google-Smtp-Source: APXvYqzOSVBcFDIV7CsRZVixng9NNq7mvrlLrDMHbhCcQyx4q4EUHo6mZMgAFcCFJO3IxGNBqrcpWA==
X-Received: by 2002:ac8:1195:: with SMTP id d21mr70621555qtj.278.1565006591714; 
 Mon, 05 Aug 2019 05:03:11 -0700 (PDT)
Received: from qians-mbp.fios-router.home
 (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id z18sm34006404qki.110.2019.08.05.05.03.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 05:03:11 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH v2] arm64/prefetch: fix a -Wtype-limits warning
From: Qian Cai <cai@lca.pw>
In-Reply-To: <20190805100059.4gml6c4kclz2iin3@willie-the-truck>
Date: Mon, 5 Aug 2019 08:03:10 -0400
Message-Id: <BDD11CC0-DC23-4D3A-B9EB-9A985EC53A30@lca.pw>
References: <20190803003358.992-1-cai@lca.pw>
 <20190805100059.4gml6c4kclz2iin3@willie-the-truck>
To: Will Deacon <will@kernel.org>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_050315_496892_DF1DEF66 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: rrichter@cavium.com, Catalin Marinas <catalin.marinas@arm.com>,
 robin.murphy@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIEF1ZyA1LCAyMDE5LCBhdCA2OjAwIEFNLCBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwu
b3JnPiB3cm90ZToKPiAKPiBPbiBGcmksIEF1ZyAwMiwgMjAxOSBhdCAwODozMzo1OFBNIC0wNDAw
LCBRaWFuIENhaSB3cm90ZToKPj4gVGhlIGNvbW1pdCBkNTM3MGY3NTQ4NzUgKCJhcm02NDogcHJl
ZmV0Y2g6IGFkZCBhbHRlcm5hdGl2ZSBwYXR0ZXJuIGZvcgo+PiBDUFVzIHdpdGhvdXQgYSBwcmVm
ZXRjaGVyIikgaW50cm9kdWNlZCBNSURSX0lTX0NQVV9NT0RFTF9SQU5HRSgpIHRvIGJlCj4+IHVz
ZWQgaW4gaGFzX25vX2h3X3ByZWZldGNoKCkgd2l0aCBydl9taW49MCB3aGljaCBnZW5lcmF0ZXMg
YSBjb21waWxhdGlvbgo+PiB3YXJuaW5nIGZyb20gR0NDLAo+PiAKPj4gSW4gZmlsZSBpbmNsdWRl
ZCBmcm9tIC4vYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9jYWNoZS5oOjgsCj4+ICAgICAgICAgICAg
ICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L2NhY2hlLmg6NiwKPj4gICAgICAgICAgICAgICAgZnJv
bSAuL2luY2x1ZGUvbGludXgvcHJpbnRrLmg6OSwKPj4gICAgICAgICAgICAgICAgZnJvbSAuL2lu
Y2x1ZGUvbGludXgva2VybmVsLmg6MTUsCj4+ICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRl
L2xpbnV4L2NwdW1hc2suaDoxMCwKPj4gICAgICAgICAgICAgICAgZnJvbSBhcmNoL2FybTY0L2tl
cm5lbC9jcHVmZWF0dXJlLmM6MTE6Cj4+IGFyY2gvYXJtNjQva2VybmVsL2NwdWZlYXR1cmUuYzog
SW4gZnVuY3Rpb24gJ2hhc19ub19od19wcmVmZXRjaCc6Cj4+IC4vYXJjaC9hcm02NC9pbmNsdWRl
L2FzbS9jcHV0eXBlLmg6NTk6MjY6IHdhcm5pbmc6IGNvbXBhcmlzb24gb2YKPj4gdW5zaWduZWQg
ZXhwcmVzc2lvbiA+PSAwIGlzIGFsd2F5cyB0cnVlIFstV3R5cGUtbGltaXRzXQo+PiBfbW9kZWwg
PT0gKG1vZGVsKSAmJiBydiA+PSAocnZfbWluKSAmJiBydiA8PSAocnZfbWF4KTsgIFwKPj4gICAg
ICAgICAgICAgICAgICAgICAgICAgXn4KPj4gYXJjaC9hcm02NC9rZXJuZWwvY3B1ZmVhdHVyZS5j
Ojg4OTo5OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8KPj4gJ01JRFJfSVNfQ1BVX01PREVM
X1JBTkdFJwo+PiByZXR1cm4gTUlEUl9JU19DUFVfTU9ERUxfUkFOR0UobWlkciwgTUlEUl9USFVO
REVSWCwKPj4gICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4+IAo+PiBGaXggaXQgYnkg
bWFraW5nICJydiIgYSAiczMyIi4KPj4gCj4+IFNpZ25lZC1vZmYtYnk6IFFpYW4gQ2FpIDxjYWlA
bGNhLnB3Pgo+PiAtLS0KPj4gCj4+IHYyOiBVc2UgInMzMiIgZm9yICJydiIsIHNvICJ2YXJpYW50
IDAvcmV2aXNpb24gMCIgY2FuIGJlIGNvdmVyZWQuCj4+IAo+PiBhcmNoL2FybTY0L2luY2x1ZGUv
YXNtL2NwdXR5cGUuaCB8IDIgKy0KPj4gMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9j
cHV0eXBlLmggYi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2NwdXR5cGUuaAo+PiBpbmRleCBlN2Q0
NjYzMWNjNDIuLmQ1MmZlODY1MWMyZCAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9pbmNsdWRl
L2FzbS9jcHV0eXBlLmgKPj4gKysrIGIvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9jcHV0eXBlLmgK
Pj4gQEAgLTU0LDcgKzU0LDcgQEAKPj4gI2RlZmluZSBNSURSX0lTX0NQVV9NT0RFTF9SQU5HRSht
aWRyLCBtb2RlbCwgcnZfbWluLCBydl9tYXgpCQlcCj4+ICh7CQkJCQkJCQkJXAo+PiAJdTMyIF9t
b2RlbCA9IChtaWRyKSAmIE1JRFJfQ1BVX01PREVMX01BU0s7CQkJXAo+PiAtCXUzMiBydiA9ICht
aWRyKSAmIChNSURSX1JFVklTSU9OX01BU0sgfCBNSURSX1ZBUklBTlRfTUFTSyk7CVwKPj4gKwlz
MzIgcnYgPSAobWlkcikgJiAoTUlEUl9SRVZJU0lPTl9NQVNLIHwgTUlEUl9WQVJJQU5UX01BU0sp
OwlcCj4gCj4gSG1tLCBidXQgdGhpcyByZWFsbHkgaXNuJ3QgYSBzaWduZWQgcXVhbnRpdHk6IGl0
J3MgdHdvIGZpZWxkcyBleHRyYWN0ZWQKPiBmcm9tIGFuIElEIHJlZ2lzdGVyLiBJIHRoaW5rIHRo
ZSBjb2RlIGlzIGZpbmUuIEFyZSB5b3UgZXhwbGljaXRseSBlbmFibGluZwo+IC1XdHlwZS1saW1p
dHMgc29tZWhvdz8KClllcywgaXQgaXMgdXNlZnVsIHRvIGNhdGNoIHVuaW50ZW5kZWQgZGV2ZWxv
cGVyIG1pc3Rha2VzIG9yIHNpbXBseSBvcHRpbWl6ZSB3YXN0ZWQgaW5zdHJ1Y3Rpb25zIG9mCmNo
ZWNraW5nIGxpa2UgaW4sCgo5MTlhZWY0NGQ3M2QgKOKAnHg4Ni9lZmk6IGZpeCBhIC1XdHlwZS1s
aW1pdHMgY29tcGlsYXRpb24gd2FybmluZ+KAnSkKCjVhODJiZGI0OGYwNCAo4oCceDg2L2NhY2hl
aW5mbzogRml4IGEgLVd0eXBlLWxpbWl0cyB3YXJuaW5n4oCdKQoKSXQgaXMgbm9ybWFsIHRvIGZp
eCBhIGZhbHNlIHBvc2l0aXZlIHRoaXMgd2F5IGFzIGluIG90aGVyIG1haW5saW5lIGNvbW1pdHMs
CgplYzYzMzU1ODY5NTMgKOKAnHg4Ni9hcGljOiBTaWxlbmNlIC1XdHlwZS1saW1pdHMgY29tcGls
ZXIgd2FybmluZ3PigJ0pCgpPbmNlIHRob3NlIGZhbHNlLXBvc2l0aXZlcyBhcmUgdW5kZXIgY29u
dHJvbCwgdGhlIHdhcm5pbmcgZmxhZyBjb3VsZCBiZSB0aGVuIGVuYWJsZWQgYnkgZGVmYXVsdCBp
bgp0aGUgZnV0dXJlLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
