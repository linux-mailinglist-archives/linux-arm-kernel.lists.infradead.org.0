Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C9158A39
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 20:54:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PVP+20+YCz6exIeyAP2n6R9/WaP4k8F4OKOhmEi7aLQ=; b=G5T6G5cVcu26uK
	Rc31RsMHGTliGP4L+ZYFCa8lj1eLoUdlZzQ2xgn34nlK/TppmmJtgpG+dLwqivjy2tPMawH4DeGQv
	v8NVz1HnqA9fEcZ8wgWUMWv1LMLeGFPpzZFTco6iRt+WPMDF+O/VgkFxSgG5AqHRAtkHnCJ8uFdsj
	DVkRU0M1ur2SqNRhXkYnPXtCvmbxaf6qBaJ3DywH32hpAmKoByX9gUYfVjVnq4TRPzijBRq0QDuUn
	SKfs22o3Kp+Pb9FWD4POMbFRHMAetkjwU8B23LxAJf7m1ykYN2ZmB+fXzpCL2ijlfMrXPR1g3nfm+
	CNGWVPjShqJfazFl+NFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgZXL-0000la-KT; Thu, 27 Jun 2019 18:54:23 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgZX7-0000l7-EE
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 18:54:10 +0000
Received: by mail-qt1-x841.google.com with SMTP id d23so3655240qto.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 11:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pzbB0dauErUy58OAB+4MrG23QuVRtPqScjaalstzwrY=;
 b=IMj5MLbFKg5nIySk6MNr7pGBSFgPun/hMMfqHAFbw+gs+sXmnZI/YJ6yx9DxrnPn/M
 QRNQbKVXiLYW9d6o+pC1IOrku5yeFSDdf0frb5Zr5hH9Td9FzgcGkll/NB8A19kxZJn3
 ktBiqfLyRIDZFPDaABir1oywPqLMKWNLpoAKHLc8PXNaqHbcj1oW8rR8KoBHLMI/wjF7
 xre+HIl9mYIV9WK6nyul/BZtwQqKQdOxwLYHQW03RnofOUscSAKVEXZFybj1+GRfcQg1
 yhJ58xE4bBrjw2uRapYqq2/Ll0SfPqtNy8LfrEwYXV7nNk9DRGU9DWYCX6O48Nf9lfIz
 po2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pzbB0dauErUy58OAB+4MrG23QuVRtPqScjaalstzwrY=;
 b=V6pumEs66YfLo78pIlDd8hepSMB/yeznrPT/H47cUr/poy85gAr9v/AIPOWlQSqT+u
 2cnbpIJ8D4hVO9Zm+eeaMRe3G43U/4xcj6VJxEDxiEpgbeZX8wzkmb93yaQes0Nd0vNC
 tTnkK2JAl6Itt6F5QZFf1Z/TpbSUtap1Bn+tlB1KvT8VNO053ZdGRDoy5tZVsj/3sIlf
 q3uF8oEVMT/AzbsyZXvQG0ojYLd0MYSNLyEQyNRRLQ5ioAlBbCTIcizeXUu2B3Qc7uKN
 ATdBCIQr7dBsnrYu7HkR/lgJvq8n4u69d4F7ZSzWNDZ+Jcpkir+JcHjdPLXT8GOmEVKX
 Bzmw==
X-Gm-Message-State: APjAAAXWUw8u4LkrejAXbZcddNacUZeRWq/+4Gp1y2DleKgZKjHQoXt4
 3M22nO6loRm7572qoqaSNd0RQg==
X-Google-Smtp-Source: APXvYqxNXDq0uMmaGEPN7R9AoWFo8lEgE/pofnzH9twSLd5sQ1GF9FdCN33tuaiRfgzCkgzDsXHjiA==
X-Received: by 2002:ac8:2b01:: with SMTP id 1mr4621099qtu.177.1561661647731;
 Thu, 27 Jun 2019 11:54:07 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id n184sm1276105qkc.114.2019.06.27.11.54.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 11:54:07 -0700 (PDT)
Message-ID: <1561661645.5154.89.camel@lca.pw>
Subject: Re: LTP hugemmap05 test case failure on arm64 with linux-next
 (next-20190613)
From: Qian Cai <cai@lca.pw>
To: Mike Kravetz <mike.kravetz@oracle.com>, Will Deacon <will@kernel.org>
Date: Thu, 27 Jun 2019 14:54:05 -0400
In-Reply-To: <15651f16-8d30-412f-8064-41ff03f3f47d@oracle.com>
References: <1560461641.5154.19.camel@lca.pw>
 <20190614102017.GC10659@fuggles.cambridge.arm.com>
 <1560514539.5154.20.camel@lca.pw>
 <054b6532-a867-ec7c-0a72-6a58d4b2723e@arm.com>
 <EC704BC3-62FF-4DCE-8127-40279ED50D65@lca.pw>
 <20190624093507.6m2quduiacuot3ne@willie-the-truck>
 <1561381129.5154.55.camel@lca.pw> <1561411839.5154.60.camel@lca.pw>
 <ed517a19-7804-c679-da94-279565001ca1@oracle.com>
 <15651f16-8d30-412f-8064-41ff03f3f47d@oracle.com>
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_115409_528195_2A39FECE 
X-CRM114-Status: GOOD (  19.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-mm@kvack.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Anshuman Khandual <anshuman.khandual@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAyMDE5LTA2LTI3IGF0IDExOjA5IC0wNzAwLCBNaWtlIEtyYXZldHogd3JvdGU6Cj4g
T24gNi8yNC8xOSAyOjUzIFBNLCBNaWtlIEtyYXZldHogd3JvdGU6Cj4gPiBPbiA2LzI0LzE5IDI6
MzAgUE0sIFFpYW4gQ2FpIHdyb3RlOgo+ID4gPiBTbyB0aGUgcHJvYmxlbSBpcyB0aGF0IGlwY2dl
dF9wdWJsaWMoKSBoYXMgaGVsZCB0aGUgc2VtYXBob3JlICJpZHMtPnJ3c2VtIiAKPiA+ID4gZm9y
Cj4gPiA+IHRvbyBsb25nIHNlZW1zIHVubmVjZXNzYXJpbHkgYW5kIHRoZW4gZ29lcyB0byBzbGVl
cCBzb21ldGltZXMgZHVlIHRvCj4gPiA+IGRpcmVjdAo+ID4gPiByZWNsYWltIChvdGhlciB0aW1l
cyBMVFAgaHVnZW1tYXAwNSBbMV0gaGFzIGh1Z2V0bGJfZmlsZV9zZXR1cCgpIHJldHVybnMKPiA+
ID4gLUVOT01FTSksCj4gPiAKPiA+IFRoYW5rcyBmb3IgbG9va2luZyBpbnRvIHRoaXMhwqDCoEkg
bm90aWNlZCB0aGF0IHJlY2VudCBrZXJuZWxzIGNvdWxkIHRha2UgYQo+ID4gVkVSWSBsb25nIHRp
bWUgdHJ5aW5nIHRvIGRvIGhpZ2ggb3JkZXIgYWxsb2NhdGlvbnMuwqDCoEluIG15IGNhc2UgaXQg
d2FzCj4gPiB0cnlpbmcKPiA+IHRvIGRvIGR5bmFtaWMgaHVnZXRsYiBwYWdlIGFsbG9jYXRpb25z
IGFzIHdlbGwgWzFdLsKgwqBCdXQsIElNTyB0aGlzIGlzIG1vcmUKPiA+IG9mIGEgZ2VuZXJhbCBk
aXJlY3QgcmVjbGFpbS9jb21wYXRpb24gaXNzdWUgdGhhbiBzb21ldGhpbmcgaHVnZXRsYiBzcGVj
aWZpYy4KPiA+IAo+IAo+IDxzbmlwPgo+IAo+ID4gPiBJZGVhbGx5LCBpdCBzZWVtcyBvbmx5IGlw
Y19maW5ka2V5KCkgYW5kIG5ld3NlZygpIGluIHRoaXMgcGF0aCBuZWVkcyB0bwo+ID4gPiBob2xk
IHRoZQo+ID4gPiBzZW1hcGhvcmUgdG8gcHJvdGVjdCBjb25jdXJyZW5jeSBhY2Nlc3MsIHNvIGl0
IGNvdWxkIGp1c3QgYmUgY29udmVydGVkIHRvCj4gPiA+IGEKPiA+ID4gc3BpbmxvY2sgaW5zdGVh
ZC4KPiA+IAo+ID4gSSBkbyBub3QgaGF2ZSBlbm91Z2ggZXhwZXJpZW5jZSB3aXRoIHRoaXMgaXBj
IGNvZGUgdG8gY29tbWVudCBvbiB5b3VyCj4gPiBwcm9wb3NlZAo+ID4gY2hhbmdlLsKgwqBCdXQs
IEkgd2lsbCBsb29rIGludG8gaXQuCj4gPiAKPiA+IFsxXSBodHRwczovL2xrbWwub3JnL2xrbWwv
MjAxOS80LzIzLzIKPiAKPiBJIG9ubHkgdG9vayBhIHF1aWNrIGxvb2sgYXQgdGhlIGlwYyBjb2Rl
LCBidXQgdGhlcmUgZG9lcyBub3QgYXBwZWFyIHRvIGJlCj4gYSBxdWljay9lYXN5IGNoYW5nZSB0
byBtYWtlLsKgwqBUaGUgaXNzdWUgaXMgdGhhdCBzaGFyZWQgbWVtb3J5IGNyZWF0aW9uIGNvdWxk
Cj4gdGFrZSBhIGxvbmcgdGltZS7CoMKgV2l0aCBpc3N1ZSBbMV0gYWJvdmUgdW5yZXNvbHZlZCwg
Y3JlYXRpb24gb2YgaHVnZXRsYiBiYWNrZWQKPiBzaGFyZWQgbWVtb3J5IHNlZ21lbnRzIGNvdWxk
IHRha2UgYSBWRVJZIGxvbmcgdGltZS4KPiAKPiBJIGRvIG5vdCBiZWxpZXZlIHRoZSB0ZXN0IGZh
aWx1cmUgaXMgYXJtIHNwZWNpZmljLsKgwqBNb3N0IGxpa2VseSwgaXQgaXMganVzdAo+IGJlY2F1
c2UgdGVzdGluZyB3YXMgZG9uZSBvbiBhIHN5c3RlbSB3aXRoIG1lbW9yeSBzaXplIHRvIHRyaWdn
ZXIgdGhpcyBpc3N1ZT8KCkkgdGhpbmsgaXQgaXMgYmVjYXVzZSB0aGUgYXJtNjQgbWFjaGluZSBo
YXMgdGhlIGRlZmF1bHQgaHVnZXBhZ2Ugc2l6ZSBpbiA1MTJNCmluc3RlYWQgb2YgMk0gb24gb3Ro
ZXIgYXJjaGVzLCBidXQgdGhlIHRlc3QgY2FzZSBzdGlsbCBibGluZGx5IHRyeSB0byBhbGxvY2F0
ZQphcm91bmQgMjAwIG9mIGh1Z2VwYWdlcyB3aGljaCB0aGUgc3lzdGVtIGNhbid0IGhhbmRsZSBn
cmFjZWZ1bGx5LCBpLmUuLCByZXR1cm4KLUVOT01FTSBpbiByZWFzb25hYmxlIHRpbWUuCgo+IAo+
IE15IHBsYW4gaXMgdG8gZm9jdXMgb24gWzFdLsKgwqBXaGVuIHRoYXQgaXMgcmVzb2x2ZWQsIHRo
aXMgaXNzdWUgc2hvdWxkIGdvIGF3YXkuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
