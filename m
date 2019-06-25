Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06EB35531C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 17:17:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3pTIPlU1OlTnzW6MaRtvZivzp9elE6mVMd8OaxVk2qE=; b=ZjuSK8K6SRcep1
	TerC+TxOfyhe/UFa5GV8057kSGW0BGn45gytNeKrpjZSvnMNAFsn57V+Eq9yCMF/xlb4Fto+6aotm
	pCTvHCRC3ez+i1VeFnigxG9CWHlycJhXA4Gci2sppctFcJo52pt2i6sQS5dPU47ZKm423KKoXHCds
	/Jn6S1Zg28Kqlj843+Edh7qQmSpMK7eVtsU7ITSF/kvYsIiTWGjSyAeixzwG8zzDkI2GQ3JvuIXyz
	pU4sWaxOBW7njda5pLGzgmRxw7aV2361PHwUKSroeb//y9+yjWd13+/5CzhqvIzmJ0IiLKRAlYoVL
	Hj9kAvgfKffSzkF7YhLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfnC4-0000w8-6Y; Tue, 25 Jun 2019 15:17:12 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfnBs-0000ut-0e
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 15:17:01 +0000
Received: by mail-qk1-x742.google.com with SMTP id c70so12889049qkg.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 08:16:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4NtvWmE4JrZ5FShx6nRTt/UCFafrN+BqsW/lJlIwCwg=;
 b=L9rn1V1SG1l89CErBx/QIzYnWlycNIruF8cBoWG/I7PEdg3z5VU7d0DgoZe37hYsdu
 nuZeQQsxa0XI4WKzqjv+x4MeQnFneAT7WMuMT7VvAo30V0sd7icWLYuxRy4WnVsOLTBV
 gorl3Awk05rjv25Ig6snqGbQCayG0MoGPzRWmNEnpJQ6b8iwWoj5oltqGOCFe5hgo753
 Wxv5oX+ciJ9y0bcx+eVXRzc0HBphP9tuvzDw3tQOt2gDSE32cxYVs9LUNC7qaa25840c
 lhoOgYojT9eADOcLnJTqIO0J39WqClORBz4KRjHfYSclB7c04kd8cbun2KLDuJKagIRL
 00WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4NtvWmE4JrZ5FShx6nRTt/UCFafrN+BqsW/lJlIwCwg=;
 b=f7jj9bflKTGJ+Hw38Pb+WCPqhcZ9W0qbqxbVcHva3AO0oGvZw6+r/a1P0lrYtRWsD8
 wz4tKHLYOl8nu1xiUPpTQCMeLaCvv7lya3OzvCCFz/pHjotN43o9F7k+KZ/Kz+NCEOHE
 wIy6vQ4vGVWQpKzQ9YjEG6G7WVxg+sAgsksIBkMQ62u39v1Xmh7+uBcIYjHXo2bLfxLl
 BPHkmWG7sqTimce2j9MCPilQd2WRVjzUVL6BQyjUzrTJdrZwpPxNlQnbG01jx0VevcYf
 NnHT/RS/oe4+HtoJNJ3WgLpSOv8qfeXPxAQ6YSeT7on8yV04MKC+UAnWfCttARGOvxTi
 pD6w==
X-Gm-Message-State: APjAAAVRkrURpCQiabMEjN7KBuztvaNhMJRr4hFP4UpKV0yLRMuKcRHG
 OJfnGv4TPDWjl4wgesu+VyK33gXMVto=
X-Google-Smtp-Source: APXvYqwAuZMz53yNfyz8jpAMbNiqXkFJrTHz4aJO4jGKE1byxnKGVeNd4q+/3ws+yFco2KAJ2jSxkQ==
X-Received: by 2002:a37:ef18:: with SMTP id
 j24mr126326340qkk.293.1561475818759; 
 Tue, 25 Jun 2019 08:16:58 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id 16sm6911532qkl.100.2019.06.25.08.16.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 08:16:58 -0700 (PDT)
Message-ID: <1561475816.5154.75.camel@lca.pw>
Subject: Re: "arm64: vdso: Substitute gettimeofday() with C implementation"
 breaks clang build
From: Qian Cai <cai@lca.pw>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Date: Tue, 25 Jun 2019 11:16:56 -0400
In-Reply-To: <668bbe72-b32b-8cee-ccad-d1f6110c6728@arm.com>
References: <1561464964.5154.63.camel@lca.pw>
 <e86774e4-7470-5cb2-fc3e-b7c1f529d253@arm.com>
 <1561467369.5154.67.camel@lca.pw>
 <00a78980-6b9c-5d5b-ed01-b28bb34be022@arm.com>
 <1561470705.5154.68.camel@lca.pw>
 <5113362e-1256-6712-6ce8-9599b1806cf1@arm.com>
 <1561472887.5154.72.camel@lca.pw>
 <668bbe72-b32b-8cee-ccad-d1f6110c6728@arm.com>
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_081700_059353_F005A80B 
X-CRM114-Status: GOOD (  11.61  )
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
Cc: ndesaulniers@google.com, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 natechancellor@gmail.com, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAyMDE5LTA2LTI1IGF0IDE1OjU0ICswMTAwLCBWaW5jZW56byBGcmFzY2lubyB3cm90
ZToKPiBIaSBRaWFuLAo+IAo+IC4uLgo+IAo+ID4gCj4gPiBidXQgY2xhbmcgNy4wIGlzIHN0aWxs
IHVzZSBpbiBtYW55IGRpc3Ryb3MgYnkgZGVmYXVsdCwgc28gbWF5YmUgdGhpcyBjb21taXQKPiA+
IGNhbgo+ID4gYmUgZml4ZWQgYnkgYWRkaW5nIGEgY29uZGl0aW9uYWwgY2hlY2sgdG8gdXNlICJz
bWFsbCIgaWYgY2xhbmcgdmVyc2lvbiA8Cj4gPiA4LjAuCj4gPiAKPiAKPiBDb3VsZCB5b3UgcGxl
YXNlIHZlcmlmeSB0aGF0IHRoZSBwYXRjaCBiZWxvdyB3b3JrcyBmb3IgeW91Pwo+IAo+IFRoYW5r
cywKPiBWaW5jZW56bwo+IAo+IC0tLT44LS0tLQo+IAoKSXQgZG9lcyBub3Qgd29yayB1bmZvcnR1
bmF0ZWx5LgoKIyBtYWtlIENDPWNsYW5nIC1qIDI1NiAyPi90bXAvd2FybjMudHh0CsKgIEhPU1RD
Q8KgwqBzY3JpcHRzL2Jhc2ljL2ZpeGRlcArCoCBIT1NUQ0PCoMKgc2NyaXB0cy9kdGMvZHRjLm8K
wqAgSE9TVENDwqDCoHNjcmlwdHMvZHRjL2ZsYXR0cmVlLm8KwqAgSE9TVENDwqDCoHNjcmlwdHMv
ZHRjL2ZzdHJlZS5vCsKgIEhPU1RDQ8KgwqBzY3JpcHRzL2R0Yy9kYXRhLm8KwqAgSE9TVENDwqDC
oHNjcmlwdHMvZHRjL2xpdmV0cmVlLm8KwqAgSE9TVENDwqDCoHNjcmlwdHMvZHRjL3RyZWVzb3Vy
Y2UubwrCoCBIT1NUQ0PCoMKgc2NyaXB0cy9kdGMvc3JjcG9zLm8KwqAgSE9TVENDwqDCoHNjcmlw
dHMvZHRjL2NoZWNrcy5vCsKgIEhPU1RDQ8KgwqBzY3JpcHRzL2R0Yy91dGlsLm8KwqAgTEVYwqDC
oMKgwqDCoHNjcmlwdHMvZHRjL2R0Yy1sZXhlci5sZXguYwrCoCBZQUNDwqDCoMKgwqBzY3JpcHRz
L2R0Yy9kdGMtcGFyc2VyLnRhYi5oCsKgIFlBQ0PCoMKgwqDCoHNjcmlwdHMvZHRjL2R0Yy1wYXJz
ZXIudGFiLmMKwqAgSE9TVENDwqDCoHNjcmlwdHMvZHRjL2R0Yy1wYXJzZXIudGFiLm8KwqAgSE9T
VENDwqDCoHNjcmlwdHMvZHRjL2R0Yy1sZXhlci5sZXgubwrCoCBIT1NUTETCoMKgc2NyaXB0cy9k
dGMvZHRjCsKgIEhPU1RDQ8KgwqBzY3JpcHRzL2thbGxzeW1zCsKgIEhPU1RDQ8KgwqBzY3JpcHRz
L3JlY29yZG1jb3VudArCoCBIT1NUQ0PCoMKgc2NyaXB0cy9zb3J0ZXh0YWJsZQrCoCBEVEPCoMKg
wqDCoMKgYXJjaC9hcm02NC9ib290L2R0cy9hcm0vZm91bmRhdGlvbi12OC5kdGIKwqAgRFRDwqDC
oMKgwqDCoGFyY2gvYXJtNjQvYm9vdC9kdHMvYXJtL2ZvdW5kYXRpb24tdjgtcHNjaS5kdGIKwqAg
RFRDwqDCoMKgwqDCoGFyY2gvYXJtNjQvYm9vdC9kdHMvYXJtL2ZvdW5kYXRpb24tdjgtZ2ljdjMu
ZHRiCsKgIERUQ8KgwqDCoMKgwqBhcmNoL2FybTY0L2Jvb3QvZHRzL2FybS9mb3VuZGF0aW9uLXY4
LWdpY3YzLXBzY2kuZHRiCsKgIERUQ8KgwqDCoMKgwqBhcmNoL2FybTY0L2Jvb3QvZHRzL2FybS9q
dW5vLmR0YgrCoCBEVEPCoMKgwqDCoMKgYXJjaC9hcm02NC9ib290L2R0cy9hcm0vanVuby1yMS5k
dGIKwqAgRFRDwqDCoMKgwqDCoGFyY2gvYXJtNjQvYm9vdC9kdHMvYXJtL2p1bm8tcjIuZHRiCsKg
IERUQ8KgwqDCoMKgwqBhcmNoL2FybTY0L2Jvb3QvZHRzL2FybS9ydHNtX3ZlLWFlbXY4YS5kdGIK
wqAgRFRDwqDCoMKgwqDCoGFyY2gvYXJtNjQvYm9vdC9kdHMvYXJtL3ZleHByZXNzLXYyZi0xeHY3
LWNhNTN4Mi5kdGIKwqAgRFRDwqDCoMKgwqDCoGFyY2gvYXJtNjQvYm9vdC9kdHMvYXJtL2Z2cC1i
YXNlLXJldmMuZHRiCsKgIERUQ8KgwqDCoMKgwqBhcmNoL2FybTY0L2Jvb3QvZHRzL2Nhdml1bS90
aHVuZGVyMi05OXh4LmR0YgrCoCBEVEPCoMKgwqDCoMKgYXJjaC9hcm02NC9ib290L2R0cy9oaXNp
bGljb24vaGkzNjYwLWhpa2V5OTYwLmR0YgrCoCBEVEPCoMKgwqDCoMKgYXJjaC9hcm02NC9ib290
L2R0cy9oaXNpbGljb24vaGkzNjcwLWhpa2V5OTcwLmR0YgrCoCBEVEPCoMKgwqDCoMKgYXJjaC9h
cm02NC9ib290L2R0cy9oaXNpbGljb24vaGkzNzk4Y3YyMDAtcG9wbGFyLmR0YgrCoCBEVEPCoMKg
wqDCoMKgYXJjaC9hcm02NC9ib290L2R0cy9oaXNpbGljb24vaGk2MjIwLWhpa2V5LmR0YgrCoCBE
VEPCoMKgwqDCoMKgYXJjaC9hcm02NC9ib290L2R0cy9oaXNpbGljb24vaGlwMDUtZDAyLmR0YgrC
oCBEVEPCoMKgwqDCoMKgYXJjaC9hcm02NC9ib290L2R0cy9oaXNpbGljb24vaGlwMDYtZDAzLmR0
YgrCoCBEVEPCoMKgwqDCoMKgYXJjaC9hcm02NC9ib290L2R0cy9oaXNpbGljb24vaGlwMDctZDA1
LmR0YgrCoCBIT1NUQ0PCoMKgc2NyaXB0cy9tb2QvbWtfZWxmY29uZmlnCsKgIENDwqDCoMKgwqDC
oMKgc2NyaXB0cy9tb2QvZGV2aWNldGFibGUtb2Zmc2V0cy5zCsKgIENDwqDCoMKgwqDCoMKgc2Ny
aXB0cy9tb2QvZW1wdHkubwrCoCBNS0VMRsKgwqDCoHNjcmlwdHMvbW9kL2VsZmNvbmZpZy5oCsKg
IEhPU1RDQ8KgwqBzY3JpcHRzL21vZC9tb2Rwb3N0Lm8KwqAgSE9TVENDwqDCoHNjcmlwdHMvbW9k
L2ZpbGUyYWxpYXMubwrCoCBIT1NUQ0PCoMKgc2NyaXB0cy9tb2Qvc3VtdmVyc2lvbi5vCsKgIEhP
U1RMRMKgwqBzY3JpcHRzL21vZC9tb2Rwb3N0CsKgIENDwqDCoMKgwqDCoMKga2VybmVsL2JvdW5k
cy5zCsKgIENBTEzCoMKgwqDCoHNjcmlwdHMvYXRvbWljL2NoZWNrLWF0b21pY3Muc2gKwqAgQ0PC
oMKgwqDCoMKgwqBhcmNoL2FybTY0L2tlcm5lbC9hc20tb2Zmc2V0cy5zCsKgIENBTEzCoMKgwqDC
oHNjcmlwdHMvY2hlY2tzeXNjYWxscy5zaArCoCBMRFPCoMKgwqDCoMKgYXJjaC9hcm02NC9rZXJu
ZWwvdmRzby92ZHNvLmxkcwrCoCBBU8KgwqDCoMKgwqDCoGFyY2gvYXJtNjQva2VybmVsL3Zkc28v
bm90ZS5vCsKgIEFTwqDCoMKgwqDCoMKgYXJjaC9hcm02NC9rZXJuZWwvdmRzby9zaWdyZXR1cm4u
bwrCoCBDQ8KgwqDCoMKgwqDCoGFyY2gvYXJtNjQva2VybmVsL3Zkc28vdmdldHRpbWVvZmRheS5v
CsKgIExEwqDCoMKgwqDCoMKgYXJjaC9hcm02NC9rZXJuZWwvdmRzby92ZHNvLnNvLmRiZwrCoCBW
RFNPQ0hLIGFyY2gvYXJtNjQva2VybmVsL3Zkc28vdmRzby5zby5kYmcKMDAwMDAwMDAwMDAwMDlk
MCBSX0FBUkNINjRfSlVNUF9TTE9UwqDCoF9tY291bnQKCmFyY2gvYXJtNjQva2VybmVsL3Zkc28v
dmRzby5zby5kYmc6IGR5bmFtaWMgcmVsb2NhdGlvbnMgYXJlIG5vdCBzdXBwb3J0ZWQKbWFrZVsx
XTogKioqIFthcmNoL2FybTY0L2tlcm5lbC92ZHNvL01ha2VmaWxlOjU5OgphcmNoL2FybTY0L2tl
cm5lbC92ZHNvL3Zkc28uc28uZGJnXSBFcnJvciAxCm1ha2U6ICoqKiBbYXJjaC9hcm02NC9NYWtl
ZmlsZToxODA6IHZkc29fcHJlcGFyZV0gRXJyb3IgMgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
