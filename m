Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A36555EE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 19:31:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6dQxMwnLMhZpxN0oxkpMiRlJHd886iPvui3VC7JgvBM=; b=mxSUN3cacCL2KU
	eS0W9N1rza0JNk0tRxSsejwrjfLxLS3qKulbe6hi7zwbqnZbcSONmmPKkwTYUH8DJizFr3e0MZkGv
	78yTvbLwdmVVbqwiQF1pQ+OuXY5Bxj8HYw/sPb7Ii/l2BnXyBEWdeJSAV/KBbXqA5NhJCwkZCjc8P
	srPmvuq+rQuv7ixfnhjLm1tdL/45JX3fmeSyYx81YFBxOGbcOdYPBRyHiLCezElWSDpjtO7lgnl9c
	4kw3pOsmeEht4CDapUVypiSzNaT9URGa015X2RMPij4Jptcfe57fE+B65TzBKsUBTdv7fKOZy8D0N
	h17+xHLpCUHBAhawuuJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfpIG-0001U3-BW; Tue, 25 Jun 2019 17:31:44 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfpI3-0001TG-T5
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 17:31:33 +0000
Received: by mail-qk1-x742.google.com with SMTP id x18so13236763qkn.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 10:31:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NxRs95n2elVksXNBSvDteGChb0IvO9Nqmt1xB7mtgi8=;
 b=ZsCjlbCH4wcKE34WzEQ1DugUDvRHuHiSQUHUHOfGUUjYiijjSpNplF30oa3GkcYdul
 vpntYyNF0B3SvaaomMv24Kpg5f0FAecAtGvksjGG72eEDLtOdDTyEgj1yslBDWYPc3w2
 ReIz2WcTILQeIDkTRNPyVNMIPnWSyNHlKQ/uzZivUpbqEV/DtAw88BOcd4dtxd8MBUc5
 1VQp0Ih/eZezYb8bxy3ObyWeWRCnPMH1grzKbSbbtnapYLIzsMXUYK7NPcOqFDPj36M+
 hh6n1ItcZZ7epTsiFg1oyAJb54d+LErCiea6curCZRNTiQBmuZId0IFuGiMhrLivrWgA
 Yv3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NxRs95n2elVksXNBSvDteGChb0IvO9Nqmt1xB7mtgi8=;
 b=fAyo23J/we7x29rG6g/d/yZTydXPFPXstnwuuLHIZFEvHJbHwiz7kQCFQ9PsVVBU1G
 8slMwHTKOrytAAym4dj85Lxz/t7cQ+FxehMc/kTiG+xKzj0u1TUzwI8fIY3G92uBcl6W
 VqJxQNgp1ToFyteIrPvNoD5z9frvMDR7ugQ6WuG3FyZRl3j0QXT+uCEjsPoPLAIrOpwf
 +bKXkI3252hAQ7LABrxE9PQg3+/4Tfz6Q17wkA00HM46+q64k+HKtAiRb+NlAyOZyS9X
 gj7/R35mT+fSzOxQA50oB6jXO5Q+gbJzAip7yxRVdkJo/4/zP9mQ+vbCeOrIJrLl1MaV
 Q2tg==
X-Gm-Message-State: APjAAAVxP/ZQZUpDIUYw3KkD1NFQgHv0HdojHWxwGtxxb19VXks/RJNW
 R3Ht4rViQfK9gxcT7aPDzQaxEA==
X-Google-Smtp-Source: APXvYqyLUf4D78VLGO1GHxXVfj/F5X5RbZoPnSYBuLjX/UxfVBm73dMjHnVMCfC/wqGdjVwlgEf2bw==
X-Received: by 2002:ae9:ee17:: with SMTP id i23mr22739595qkg.399.1561483890355; 
 Tue, 25 Jun 2019 10:31:30 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id f68sm7744695qtb.83.2019.06.25.10.31.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 10:31:29 -0700 (PDT)
Message-ID: <1561483888.5154.78.camel@lca.pw>
Subject: Re: "arm64: vdso: Substitute gettimeofday() with C implementation"
 breaks clang build
From: Qian Cai <cai@lca.pw>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>, Nick Desaulniers
 <ndesaulniers@google.com>
Date: Tue, 25 Jun 2019 13:31:28 -0400
In-Reply-To: <193c179e-16ca-4b4e-2584-75e8f6c1819f@arm.com>
References: <1561464964.5154.63.camel@lca.pw>
 <e86774e4-7470-5cb2-fc3e-b7c1f529d253@arm.com>
 <1561467369.5154.67.camel@lca.pw>
 <00a78980-6b9c-5d5b-ed01-b28bb34be022@arm.com>
 <1561470705.5154.68.camel@lca.pw>
 <5113362e-1256-6712-6ce8-9599b1806cf1@arm.com>
 <1561472887.5154.72.camel@lca.pw>
 <668bbe72-b32b-8cee-ccad-d1f6110c6728@arm.com>
 <CAKwvOdmCFjunXRbninTdqoDGPNJ6b7npgXLAPYGqFZas5ofNjw@mail.gmail.com>
 <193c179e-16ca-4b4e-2584-75e8f6c1819f@arm.com>
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_103131_989526_611CFAAF 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAyMDE5LTA2LTI1IGF0IDE4OjAwICswMTAwLCBWaW5jZW56byBGcmFzY2lubyB3cm90
ZToKPiBIaSBOaWNrLAo+IAo+IE9uIDI1LzA2LzIwMTkgMTc6MjYsIE5pY2sgRGVzYXVsbmllcnMg
d3JvdGU6Cj4gPiBPbiBUdWUsIEp1biAyNSwgMjAxOSBhdCA3OjU0IEFNIFZpbmNlbnpvIEZyYXNj
aW5vCj4gPiA8dmluY2Vuem8uZnJhc2Npbm9AYXJtLmNvbT4gd3JvdGU6Cj4gPiA+IAo+ID4gPiBI
aSBRaWFuLAo+ID4gPiAKPiA+ID4gLi4uCj4gPiA+IAo+ID4gPiA+IAo+ID4gPiA+IGJ1dCBjbGFu
ZyA3LjAgaXMgc3RpbGwgdXNlIGluIG1hbnkgZGlzdHJvcyBieSBkZWZhdWx0LCBzbyBtYXliZSB0
aGlzCj4gPiA+ID4gY29tbWl0IGNhbgo+ID4gPiA+IGJlIGZpeGVkIGJ5IGFkZGluZyBhIGNvbmRp
dGlvbmFsIGNoZWNrIHRvIHVzZSAic21hbGwiIGlmIGNsYW5nIHZlcnNpb24gPAo+ID4gPiA+IDgu
MC4KPiA+ID4gPiAKPiA+ID4gCj4gPiA+IENvdWxkIHlvdSBwbGVhc2UgdmVyaWZ5IHRoYXQgdGhl
IHBhdGNoIGJlbG93IHdvcmtzIGZvciB5b3U/Cj4gPiAKPiA+IFNob3VsZCBpdCBiZSBjaGVja2lu
ZyBhZ2FpbnN0IENPTkZJR19DTEFOR19WRVJTSU9OLCBvciBiZXR0ZXIgeWV0IGJlCj4gPiB1c2lu
ZyBjYy1vcHRpb24gbWFjcm8/Cj4gPiAKPiAKPiBUaGlzIGlzIHdoYXQgSSBkaWQgaW4gbXkgcHJv
cG9zZWQgcGF0Y2gsIGJ1dCBJIHdhcyBzdXJwcmlzZWQgdGhhdCBjbGFuZy03Cj4gZ2VuZXJhdGVz
IHJlbG9jYXRpb25zIHRoYXQgY2xhbmctOCBkb2VzIG5vdC4KPiAKPiDCoCBMRMKgwqDCoMKgwqDC
oGFyY2gvYXJtNjQva2VybmVsL3Zkc28vdmRzby5zby5kYmcKPiDCoCBWRFNPQ0hLIGFyY2gvYXJt
NjQva2VybmVsL3Zkc28vdmRzby5zby5kYmcKPiAwMDAwMDAwMDAwMDAwOWQwIFJfQUFSQ0g2NF9K
VU1QX1NMT1TCoMKgX21jb3VudAo+IAo+IGFyY2gvYXJtNjQva2VybmVsL3Zkc28vdmRzby5zby5k
Ymc6IGR5bmFtaWMgcmVsb2NhdGlvbnMgYXJlIG5vdCBzdXBwb3J0ZWQKPiBtYWtlWzFdOiAqKiog
W2FyY2gvYXJtNjQva2VybmVsL3Zkc28vTWFrZWZpbGU6NTk6Cj4gYXJjaC9hcm02NC9rZXJuZWwv
dmRzby92ZHNvLnNvLmRiZ10gRXJyb3IgMQo+IG1ha2U6ICoqKiBbYXJjaC9hcm02NC9NYWtlZmls
ZToxODA6IHZkc29fcHJlcGFyZV0gRXJyb3IgMgo+IAo+IFRoaXMgaXMgdGhlIHRoZSByZXN1bHQg
b2YgdGhlIG1hY3JvIEkgaW50cm9kdWNlZCBpbiBsaWIvdmRzby9NYWtlZmlsZS4KPiAKPiBBbmQg
SSBqdXN0IGZvdW5kIG91dCB3aHkuIEkgZm9yZ290IHRvIGFkZCBhICIrIiBpbiB0aGUgcGF0Y2gg
cHJvdmlkZWQgOikKPiAKPiBAUWlhbjogQ291bGQgeW91IHBsZWFzZSByZXRyeSB3aXRoIHRoZSBv
bmUgcHJvdmlkZWQgYmVsb3c/Cj4gCgpJdCB3b3JrcyBmaW5lLgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
