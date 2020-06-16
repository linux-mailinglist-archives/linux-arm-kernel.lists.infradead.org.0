Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD921FB1DB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 15:19:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FwEfMCGaicP+N0mPcRa+t4ffASXb5Uwh7h1jUcms8K4=; b=eOCyWK6KXueK8i
	ALbNKnwexEIVcxI3RYlEAYZuB0Yxn6WNiIXPirOB6qeQ2nrlPFBzancsOr4VpsBgfVJMr16d8d+gr
	5G0U73EERyVDX59DzMfkLL3KSS2ixXG03Pb8HB/OMVmv1t7eztLeDXL4tO6LSF4nfRnVL8VZqBAEv
	FrxYHWJszo1ll16K14yxOFW0GfW0Y+DPW+9IzLyZa1JN2s7iEQvL0IeHjs7uAM9M9b76IFe/F2gRY
	Qys7TGh/LviY90VaSxpHoFjrXI/zrKFgSbiULnJEyw27y/gA2kyU5Cnfts/wsCjG8MEuVBR2qNl0m
	mRURldfwhbz4X5S/vscA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlBUY-0003zW-9l; Tue, 16 Jun 2020 13:19:06 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlBTl-0003Vb-F9
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:18:19 +0000
Received: by mail-qk1-x741.google.com with SMTP id b27so18995101qka.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=LkcMMUJ1xtL1sUb5CQfO5ynktKr3lJ3G9QiXqLMgg08=;
 b=UA3DznYJsqAjsm/o+gtANOsduT1hHbbZ4s8aCZOHaQ7AmlQEHWYhFDLEaLSpH3hkru
 So9hi5U493ZOyQyKu5AdFMUOrqmW/psbepl7LokYoawkfxCuYPiqHItlp+4qF8J2ovoD
 PlOVY84iqN/O8XEFc5Rg4hZluflmCdo7YJf2Dh6NfCWTBFp5oe68JRYkYy+mkB7XIgkb
 i4YXAHd8rIDNGAuycXMm+hDoZcbfwmbcfUuukVOIE8DjufOXsSszntLw5zeBMvcug5qd
 HY76mF6kMHheV765/ktfj3/B1gWRnzlCWmqxcqi3G6/ECli5SSRYtpXZyEZqPjMWwdHm
 Yk6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=LkcMMUJ1xtL1sUb5CQfO5ynktKr3lJ3G9QiXqLMgg08=;
 b=m5NwKLBokBxFTY4Ml1QRJCuLGY+oj7lro7mLxSVmUfdOhahrh0JjMnxbELQ4Z40DAt
 /qWqmnOqpZyO+Aa9eO77/IqD/jFI0s1KfeV+pw5nIekP7ljg0BZP996j2lXorpdeYph7
 Xnrb3pNq+g6XbH06DIrvsmW+jMgVFMxYDw5OE7jEsNhRiPpUNEvnN025NHR4i/DmvjBZ
 FvNDVrKLfkpl7dDyabPXN+zQNIjMsenHme5ZQcLM+wuazux3yj+hrXMlKqgJ6vEbjwwd
 xiPAZYJYAXiJC+hJpvTOcz5B/MA2Yd6gbprS675hZ9Qjz6IYW81pS19QRpN8/aSH8D9J
 Aapg==
X-Gm-Message-State: AOAM5339OwLf7oiNrw2IJgvW3zgC/2jRFAvApuFsrgQ7LScmtWpzmzo3
 +QM5UApSy9msoDBTzDuqBT9+vw==
X-Google-Smtp-Source: ABdhPJzSaIXxil3oMGiS30anzSFEJnIBsct1mkArX3fEFbFBrdwIzQyBR/5ofgKmIXCY4Nn8SzMO2w==
X-Received: by 2002:a37:b205:: with SMTP id b5mr20427925qkf.438.1592313495571; 
 Tue, 16 Jun 2020 06:18:15 -0700 (PDT)
Received: from lca.pw (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id e1sm14491653qto.51.2020.06.16.06.18.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:18:14 -0700 (PDT)
Date: Tue, 16 Jun 2020 09:18:08 -0400
From: Qian Cai <cai@lca.pw>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH 2/2] arm64/sve: Eliminate data races on sve_default_vl
Message-ID: <20200616131808.GA1040@lca.pw>
References: <1591808590-20210-1-git-send-email-Dave.Martin@arm.com>
 <1591808590-20210-3-git-send-email-Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591808590-20210-3-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_061817_570343_4D07BB94 
X-CRM114-Status: GOOD (  23.31  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: lca.pw]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKdW4gMTAsIDIwMjAgYXQgMDY6MDM6MTBQTSArMDEwMCwgRGF2ZSBNYXJ0aW4gd3Jv
dGU6Cj4gc3ZlX2RlZmF1bHRfdmwgY2FuIGJlIG1vZGlmaWVkIHZpYSB0aGUgL3Byb2Mvc3lzL2Fi
aS9zdmVfZGVmYXVsdF92bAo+IHN5c2N0bCBjb25jdXJyZW50bHkgd2l0aCB1c2UsIGFuZCBtb2Rp
ZmllZCBjb25jdXJyZW50bHkgYnkgbXVsdGlwbGUKPiB0aHJlYWRzLgo+IAo+IEFkZGluZyBhIGxv
Y2sgZm9yIHRoaXMgc2VlbXMgb3ZlcmtpbGwsIGFuZCBJIGRvbid0IHdhbnQgdG8gdGhpbmsgYW55
Cj4gbW9yZSB0aGFuIG5lY2Vzc2FyeSwgc28ganVzdCBkZWZpbmUgd3JhcHBlcnMgdXNpbmcgUkVB
RF9PTkNFKCkvCj4gV1JJVEVfT05DRSgpLgo+IAo+IFRoaXMgd2lsbCBhdm9pZCB0aGUgcG9zc2li
aWxpdHkgb2YgdG9ybiBhY2Nlc3NlcyBhbmQgcmVwZWF0ZWQgbG9hZHMKPiBhbmQgc3RvcmVzLgo+
IAo+IFRoZXJlJ3Mgbm8gZXZpZGVuY2UgeWV0IHRoYXQgdGhpcyBpcyBnb2luZyB3cm9uZyBpbiBw
cmFjdGljZTogdGhpcwo+IGlzIGp1c3QgaHlnaWVuZS4gIEZvciBnZW5lcmljIHN5c2N0bCB1c2Vy
cywgaXQgd291bGQgYmUgYmV0dGVyIHRvCj4gYnVpbGQgdGhpcyBraW5kIG9mIHRoaW5nIGludG8g
dGhlIHN5c2N0bCBjb21tb24gY29kZSBzb21laG93Lgo+IAo+IFJlcG9ydGVkLWJ5OiBXaWxsIERl
YWNvbiA8d2lsbEBrZXJuZWwub3JnPgo+IFNpZ25lZC1vZmYtYnk6IERhdmUgTWFydGluIDxEYXZl
Lk1hcnRpbkBhcm0uY29tPgoKV2hpbGUgdGhpcyBvcmlnaW5hbCBwYXRjaCBsb29rcyBjb3JyZWN0
LCBsaW51eC1uZXh0IGhhcyB0aGlzLAoKW3dpbGw6IG1vdmUgc2V0X3N2ZV9kZWZhdWx0X3ZsKCkg
aW5zaWRlICNpZmRlZiB0byBzcXVhc2ggYWxsbm9jb25maWcgd2FybmluZ10KCjFlNTcwZjUxMmNi
ZCAoImFybTY0L3N2ZTogRWxpbWluYXRlIGRhdGEgcmFjZXMgb24gc3ZlX2RlZmF1bHRfdmwiKQoK
d2hpY2ggY2F1c2VzIGFuIGVycm9yIHdpdGggQ09ORklHX0FSTTY0X1NWRT1uLAoKVGhpcyAuY29u
ZmlnLApodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vY2FpbGNhL2xpbnV4LW1tL21h
c3Rlci9hcm02NC5jb25maWcKCmFyY2gvYXJtNjQva2VybmVsL2Zwc2ltZC5jOiBJbiBmdW5jdGlv
biDigJhzdmVfcHJvY19kb19kZWZhdWx0X3Zs4oCZOgphcmNoL2FybTY0L2tlcm5lbC9mcHNpbWQu
YzozNzU6MjogZXJyb3I6IGltcGxpY2l0IGRlY2xhcmF0aW9uIG9mCmZ1bmN0aW9uIOKAmHNldF9z
dmVfZGVmYXVsdF92bOKAmTsgZGlkIHlvdSBtZWFuIOKAmGdldF9zdmVfZGVmYXVsdF92bOKAmT8K
Wy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb25dCiAgc2V0X3N2ZV9kZWZhdWx0
X3ZsKGZpbmRfc3VwcG9ydGVkX3ZlY3Rvcl9sZW5ndGgodmwpKTsKICBefn5+fn5+fn5+fn5+fn5+
fn4KICBnZXRfc3ZlX2RlZmF1bHRfdmwKCj4gLS0tCj4gCj4gQnVpbGQtdGVzdGVkIG9ubHksIGJ1
dCBpdCBzZWVtcyBwcmV0dHkgc3RyYWlnaHRmb3J3YXJkLgo+IAo+ICBhcmNoL2FybTY0L2tlcm5l
bC9mcHNpbWQuYyB8IDI1ICsrKysrKysrKysrKysrKysrKy0tLS0tLS0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDE4IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQva2VybmVsL2Zwc2ltZC5jIGIvYXJjaC9hcm02NC9rZXJuZWwvZnBzaW1kLmMKPiBp
bmRleCA5NDI4OWQxLi4xOTg2NWM5IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQva2VybmVsL2Zw
c2ltZC5jCj4gKysrIGIvYXJjaC9hcm02NC9rZXJuZWwvZnBzaW1kLmMKPiBAQCAtMTIsNiArMTIs
NyBAQAo+ICAjaW5jbHVkZSA8bGludXgvYnVnLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9jYWNoZS5o
Pgo+ICAjaW5jbHVkZSA8bGludXgvY29tcGF0Lmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9jb21waWxl
ci5oPgo+ICAjaW5jbHVkZSA8bGludXgvY3B1Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC9jcHVfcG0u
aD4KPiAgI2luY2x1ZGUgPGxpbnV4L2tlcm5lbC5oPgo+IEBAIC0xMTksNyArMTIwLDE3IEBAIHN0
cnVjdCBmcHNpbWRfbGFzdF9zdGF0ZV9zdHJ1Y3Qgewo+ICBzdGF0aWMgREVGSU5FX1BFUl9DUFUo
c3RydWN0IGZwc2ltZF9sYXN0X3N0YXRlX3N0cnVjdCwgZnBzaW1kX2xhc3Rfc3RhdGUpOwo+ICAK
PiAgLyogRGVmYXVsdCBWTCBmb3IgdGFza3MgdGhhdCBkb24ndCBzZXQgaXQgZXhwbGljaXRseTog
Ki8KPiAtc3RhdGljIGludCBzdmVfZGVmYXVsdF92bCA9IC0xOwo+ICtzdGF0aWMgaW50IF9fc3Zl
X2RlZmF1bHRfdmwgPSAtMTsKPiArCj4gK3N0YXRpYyBpbnQgZ2V0X3N2ZV9kZWZhdWx0X3ZsKHZv
aWQpCj4gK3sKPiArCXJldHVybiBSRUFEX09OQ0UoX19zdmVfZGVmYXVsdF92bCk7Cj4gK30KPiAr
Cj4gK3N0YXRpYyB2b2lkIHNldF9zdmVfZGVmYXVsdF92bChpbnQgdmFsKQo+ICt7Cj4gKwlXUklU
RV9PTkNFKF9fc3ZlX2RlZmF1bHRfdmwsIHZhbCk7Cj4gK30KPiAgCj4gICNpZmRlZiBDT05GSUdf
QVJNNjRfU1ZFCj4gIAo+IEBAIC0zNDUsNyArMzU2LDcgQEAgc3RhdGljIGludCBzdmVfcHJvY19k
b19kZWZhdWx0X3ZsKHN0cnVjdCBjdGxfdGFibGUgKnRhYmxlLCBpbnQgd3JpdGUsCj4gIAkJCQkg
IGxvZmZfdCAqcHBvcykKPiAgewo+ICAJaW50IHJldDsKPiAtCWludCB2bCA9IHN2ZV9kZWZhdWx0
X3ZsOwo+ICsJaW50IHZsID0gZ2V0X3N2ZV9kZWZhdWx0X3ZsKCk7Cj4gIAlzdHJ1Y3QgY3RsX3Rh
YmxlIHRtcF90YWJsZSA9IHsKPiAgCQkuZGF0YSA9ICZ2bCwKPiAgCQkubWF4bGVuID0gc2l6ZW9m
KHZsKSwKPiBAQCAtMzYyLDcgKzM3Myw3IEBAIHN0YXRpYyBpbnQgc3ZlX3Byb2NfZG9fZGVmYXVs
dF92bChzdHJ1Y3QgY3RsX3RhYmxlICp0YWJsZSwgaW50IHdyaXRlLAo+ICAJaWYgKCFzdmVfdmxf
dmFsaWQodmwpKQo+ICAJCXJldHVybiAtRUlOVkFMOwo+ICAKPiAtCXN2ZV9kZWZhdWx0X3ZsID0g
ZmluZF9zdXBwb3J0ZWRfdmVjdG9yX2xlbmd0aCh2bCk7Cj4gKwlzZXRfc3ZlX2RlZmF1bHRfdmwo
ZmluZF9zdXBwb3J0ZWRfdmVjdG9yX2xlbmd0aCh2bCkpOwo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAg
Cj4gQEAgLTg2OSw3ICs4ODAsNyBAQCB2b2lkIF9faW5pdCBzdmVfc2V0dXAodm9pZCkKPiAgCSAq
IEZvciB0aGUgZGVmYXVsdCBWTCwgcGljayB0aGUgbWF4aW11bSBzdXBwb3J0ZWQgdmFsdWUgPD0g
NjQuCj4gIAkgKiBWTCA9PSA2NCBpcyBndWFyYW50ZWVkIG5vdCB0byBncm93IHRoZSBzaWduYWwg
ZnJhbWUuCj4gIAkgKi8KPiAtCXN2ZV9kZWZhdWx0X3ZsID0gZmluZF9zdXBwb3J0ZWRfdmVjdG9y
X2xlbmd0aCg2NCk7Cj4gKwlzZXRfc3ZlX2RlZmF1bHRfdmwoZmluZF9zdXBwb3J0ZWRfdmVjdG9y
X2xlbmd0aCg2NCkpOwo+ICAKPiAgCWJpdG1hcF9hbmRub3QodG1wX21hcCwgc3ZlX3ZxX3BhcnRp
YWxfbWFwLCBzdmVfdnFfbWFwLAo+ICAJCSAgICAgIFNWRV9WUV9NQVgpOwo+IEBAIC04OTAsNyAr
OTAxLDcgQEAgdm9pZCBfX2luaXQgc3ZlX3NldHVwKHZvaWQpCj4gIAlwcl9pbmZvKCJTVkU6IG1h
eGltdW0gYXZhaWxhYmxlIHZlY3RvciBsZW5ndGggJXUgYnl0ZXMgcGVyIHZlY3RvclxuIiwKPiAg
CQlzdmVfbWF4X3ZsKTsKPiAgCXByX2luZm8oIlNWRTogZGVmYXVsdCB2ZWN0b3IgbGVuZ3RoICV1
IGJ5dGVzIHBlciB2ZWN0b3JcbiIsCj4gLQkJc3ZlX2RlZmF1bHRfdmwpOwo+ICsJCWdldF9zdmVf
ZGVmYXVsdF92bCgpKTsKPiAgCj4gIAkvKiBLVk0gZGVjaWRlcyB3aGV0aGVyIHRvIHN1cHBvcnQg
bWlzbWF0Y2hlZCBzeXN0ZW1zLiBKdXN0IHdhcm4gaGVyZTogKi8KPiAgCWlmIChzdmVfbWF4X3Zp
cnR1YWxpc2FibGVfdmwgPCBzdmVfbWF4X3ZsKQo+IEBAIC0xMDMwLDEzICsxMDQxLDEzIEBAIHZv
aWQgZnBzaW1kX2ZsdXNoX3RocmVhZCh2b2lkKQo+ICAJCSAqIHZlY3RvciBsZW5ndGggY29uZmln
dXJlZDogbm8ga2VybmVsIHRhc2sgY2FuIGJlY29tZSBhIHVzZXIKPiAgCQkgKiB0YXNrIHdpdGhv
dXQgYW4gZXhlYyBhbmQgaGVuY2UgYSBjYWxsIHRvIHRoaXMgZnVuY3Rpb24uCj4gIAkJICogQnkg
dGhlIHRpbWUgdGhlIGZpcnN0IGNhbGwgdG8gdGhpcyBmdW5jdGlvbiBpcyBtYWRlLCBhbGwKPiAt
CQkgKiBlYXJseSBoYXJkd2FyZSBwcm9iaW5nIGlzIGNvbXBsZXRlLCBzbyBzdmVfZGVmYXVsdF92
bAo+ICsJCSAqIGVhcmx5IGhhcmR3YXJlIHByb2JpbmcgaXMgY29tcGxldGUsIHNvIF9fc3ZlX2Rl
ZmF1bHRfdmwKPiAgCQkgKiBzaG91bGQgYmUgdmFsaWQuCj4gIAkJICogSWYgYSBidWcgY2F1c2Vz
IHRoaXMgdG8gZ28gd3JvbmcsIHdlIG1ha2Ugc29tZSBub2lzZSBhbmQKPiAgCQkgKiB0cnkgdG8g
ZnVkZ2UgdGhyZWFkLnN2ZV92bCB0byBhIHNhZmUgdmFsdWUgaGVyZS4KPiAgCQkgKi8KPiAgCQl2
bCA9IGN1cnJlbnQtPnRocmVhZC5zdmVfdmxfb25leGVjID8KPiAtCQkJY3VycmVudC0+dGhyZWFk
LnN2ZV92bF9vbmV4ZWMgOiBzdmVfZGVmYXVsdF92bDsKPiArCQkJY3VycmVudC0+dGhyZWFkLnN2
ZV92bF9vbmV4ZWMgOiBnZXRfc3ZlX2RlZmF1bHRfdmwoKTsKPiAgCj4gIAkJaWYgKFdBUk5fT04o
IXN2ZV92bF92YWxpZCh2bCkpKQo+ICAJCQl2bCA9IFNWRV9WTF9NSU47Cj4gLS0gCj4gMi4xLjQK
PiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
