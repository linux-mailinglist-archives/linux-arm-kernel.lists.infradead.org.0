Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92EB11EB772
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 10:33:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HbQqNXNN3akl88pdoz6pKypedHGBQzMEJ8NX+q342bI=; b=mynnZs1CD47HhO
	WFJAQmrmkXIJlSjbCA/wZDaiF/KMWhM46Iirv3Zh1MIYottwQKClkHTJrQY07x6k+6Ai6+MqGgzi4
	noy3DN73LwuPHfZsliCY7CNBDOUvMasIzSrPy2KKd7yB8Su1bol73A00gNXzyZPCTYqzOPkAEQGke
	nsCUaw7RoxRpvBGq93w+K+8a28InOeTGfaVBKsKJ8vzz3Wq6J6/u4expPB5+fM6r8PeTtFM3C/UhP
	GxJblfN7uMzoS/6/NwAi0tLG1BUvpkHlohHykV+nRcnu8QYrdMVQnRhEmNddY1B618vGdUaeOUtpe
	1TGUwHCxfoSgY8gBQ+ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg2MO-0002r6-2b; Tue, 02 Jun 2020 08:33:24 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg2ME-0002oZ-G4
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 08:33:15 +0000
Received: by mail-wr1-x443.google.com with SMTP id r7so2479531wro.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 01:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=7H1jGmdpunK0UnpTr7PELYFOau+0SDjGmyZeNU7l2WE=;
 b=XQyBLPtBdqQOAVQxORH0WMvK8c7jAnhw7HnsfvKWm85fSsgd/SsCqwiw9n6xZK+tx7
 o4DSQYLwZ8YCxHV59VL9JjH6M+O3AxueEkFGjlwYAFqJBp94Ku6Xi5hzbK3h4Kvg3KPr
 MmCxgREKkngV8Cbbpe9+M72opU6j6OfcflSXcUpmqvZ8xID5/B0ZJhS6IEQ9WjCnssXp
 uu64wX9kvwJNZZZQRSfvB8CLAcHOLvZp2Wt8kl3O5jRh/XVkRlALE52jOU+9PWRmChZN
 +VO3kn5jOnZj+mPkhBYJdJS9o2NKd95hosuB3A12H2sKIwDr4qua1Hy+LFxlDu68FxU2
 Tv0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=7H1jGmdpunK0UnpTr7PELYFOau+0SDjGmyZeNU7l2WE=;
 b=iZmGDl+MFY84nKdLYBpdKUGDc6iRE7tBQStsOtD6zMe2IxPHlk+S9xl4f273kz85gP
 KoO/pf8AnsBWEhnWNB9tLDWrL9LmHrMYgYXxMPeNsa0Bl4R1dglypDJU5zIATt1o0C2N
 olcJSbpnpP3ijxbIKSvA9Ao/F2jLC8So+Y4U3jfe8Im3DTcmVYi3SHB7hlFP3VyTMwy2
 Fa5V6pXYXpvXyC0kZ8b+0U0svDVfoY9dFlJfSdop8Zjudjv86E+yADJv+i+ikUstnXlD
 V8c0b0hDETGcHIUvKsq+4FJy8Dae2huSZY9zG/nEPA8Ln0KqGSYUZlQs2ygrEtixhEoN
 rSEQ==
X-Gm-Message-State: AOAM531Mmb7rvKx9hWLG62etU2v4voUPlqccuK9V3hs//NxZ5aedZjkr
 CNGDPt+9pFpzpqxigyKSn09Q1A==
X-Google-Smtp-Source: ABdhPJwTWstLJV8DOsVmKsrBfUkOLHr+Ifb0u8UVqxHHLBh22pbnHCSAkqvAWuYTZbyxJQ25mTIjDQ==
X-Received: by 2002:adf:a4dd:: with SMTP id h29mr27110163wrb.372.1591086793255; 
 Tue, 02 Jun 2020 01:33:13 -0700 (PDT)
Received: from dell ([95.147.198.92])
 by smtp.gmail.com with ESMTPSA id h7sm2489681wml.24.2020.06.02.01.33.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Jun 2020 01:33:12 -0700 (PDT)
Date: Tue, 2 Jun 2020 09:33:11 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2 2/6] mfd: add support for the Khadas System control
 Microcontroller
Message-ID: <20200602083311.GD3714@dell>
References: <20200512132613.31507-1-narmstrong@baylibre.com>
 <20200512132613.31507-3-narmstrong@baylibre.com>
 <20200520090101.GE271301@dell>
 <8837fa43-bf46-fdd1-472e-e5f0159dab2c@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8837fa43-bf46-fdd1-472e-e5f0159dab2c@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_013314_544293_9999E274 
X-CRM114-Status: GOOD (  17.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAwMiBKdW4gMjAyMCwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cgo+IE9uIDIwLzA1LzIw
MjAgMTE6MDEsIExlZSBKb25lcyB3cm90ZToKPiA+IE9uIFR1ZSwgMTIgTWF5IDIwMjAsIE5laWwg
QXJtc3Ryb25nIHdyb3RlOgo+ID4gCj4gPj4gVGhpcyBNaWNyb2NvbnRyb2xsZXIgaXMgcHJlc2Vu
dCBvbiB0aGUgS2hhZGFzIFZJTTEsIFZJTTIsIFZJTTMgYW5kIEVkZ2UKPiA+PiBib2FyZHMuCj4g
Pj4KPiA+PiBJdCBoYXMgbXVsdGlwbGUgYm9vdCBjb250cm9sIGZlYXR1cmVzIGxpa2UgcGFzc3dv
cmQgY2hlY2ssIHBvd2VyLW9uCj4gPj4gb3B0aW9ucywgcG93ZXItb2ZmIGNvbnRyb2wgYW5kIHN5
c3RlbSBGQU4gY29udHJvbCBvbiByZWNlbnQgYm9hcmRzLgo+ID4+Cj4gPj4gVGhpcyBpbXBsZW1l
bnRzIGEgdmVyeSBiYXNpYyBNRkQgZHJpdmVyIHdpdGggdGhlIGZhbiBjb250cm9sIGFuZCBVc2Vy
Cj4gPj4gTlZNRU0gY2VsbHMuCj4gPj4KPiA+PiBTaWduZWQtb2ZmLWJ5OiBOZWlsIEFybXN0cm9u
ZyA8bmFybXN0cm9uZ0BiYXlsaWJyZS5jb20+Cj4gPj4gLS0tCj4gPj4gIGRyaXZlcnMvbWZkL0tj
b25maWcgICAgICAgICAgICB8ICAxNCArKysrCj4gPj4gIGRyaXZlcnMvbWZkL01ha2VmaWxlICAg
ICAgICAgICB8ICAgMSArCj4gPj4gIGRyaXZlcnMvbWZkL2toYWRhcy1tY3UuYyAgICAgICB8IDE0
MyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiA+PiAgaW5jbHVkZS9saW51eC9t
ZmQva2hhZGFzLW1jdS5oIHwgIDkxICsrKysrKysrKysrKysrKysrKysrKwo+ID4+ICA0IGZpbGVz
IGNoYW5nZWQsIDI0OSBpbnNlcnRpb25zKCspCj4gPj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL21mZC9raGFkYXMtbWN1LmMKPiA+PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGlu
dXgvbWZkL2toYWRhcy1tY3UuaAo+ID4+Cj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWZkL0tj
b25maWcgYi9kcml2ZXJzL21mZC9LY29uZmlnCj4gPj4gaW5kZXggMGE1OTI0OTE5OGQzLi5iOTUw
OTEzOTcwNTIgMTAwNjQ0Cj4gPj4gLS0tIGEvZHJpdmVycy9tZmQvS2NvbmZpZwo+ID4+ICsrKyBi
L2RyaXZlcnMvbWZkL0tjb25maWcKPiA+PiBAQCAtMjAwMyw2ICsyMDAzLDIwIEBAIGNvbmZpZyBN
RkRfV0NEOTM0WAo+ID4+ICAJICBUaGlzIGRyaXZlciBwcm92aWRlcyBjb21tb24gc3VwcG9ydCBX
Q0Q5MzR4IGF1ZGlvIGNvZGVjIGFuZCBpdHMKPiA+PiAgCSAgYXNzb2NpYXRlZCBQaW4gQ29udHJv
bGxlciwgU291bmR3aXJlIENvbnRyb2xsZXIgYW5kIEF1ZGlvIGNvZGVjLgo+ID4+ICAKPiA+PiAr
Y29uZmlnIE1GRF9LSEFEQVNfTUNVCj4gPj4gKwl0cmlzdGF0ZSAiU3VwcG9ydCBmb3IgS2hhZGFz
IFN5c3RlbSBjb250cm9sIE1pY3JvY29udHJvbGxlciIKPiA+PiArCWRlcGVuZHMgb24gSTJDCj4g
Pj4gKwlkZXBlbmRzIG9uIE9GIHx8IENPTVBJTEVfVEVTVAo+ID4+ICsJc2VsZWN0IE1GRF9DT1JF
Cj4gPj4gKwlzZWxlY3QgUkVHTUFQX0kyQwo+ID4+ICsJaGVscAo+ID4+ICsJICBTdXBwb3J0IGZv
ciB0aGUgS2hhZGFzIFN5c3RlbSBjb250cm9sIE1pY3JvY29udHJvbGxlciBpbnRlcmZhY2UgcHJl
c2VudAo+ID4+ICsJICBvbiB0aGVpciBWSU0gYW5kIEVkZ2UgYm9hcmRzLgo+ID4+ICsKPiA+PiAr
CSAgVGhpcyBkcml2ZXIgcHJvdmlkZXMgY29tbW9uIHN1cHBvcnQgZm9yIGFjY2Vzc2luZyB0aGUg
ZGV2aWNlLAo+ID4+ICsJICBhZGRpdGlvbmFsIGRyaXZlcnMgbXVzdCBiZSBlbmFibGVkIGluIG9y
ZGVyIHRvIHVzZSB0aGUgZnVuY3Rpb25hbGl0eQo+ID4+ICsJICBvZiB0aGUgZGV2aWNlLgo+ID4g
Cj4gPiBJdCB3b3VsZCBiZSBnb29kIHRvIGRlc2NyaWJlIHRoZSBkZXZpY2UgaGVyZS4KPiAKPiBP
awoKSWYgeW91IGFncmVlIHdpdGggYWxsIHJldmlldyBjb21tZW50cywgdGhlcmUgcmVhbGx5IGlz
IG5vIG5lZWQgdG8KcmVwbHkuICBJdCdzIGEgd2FzdGUgb2YgeW91ciB0aW1lIGFuZCBhbnlvbmUg
ZWxzZSB3aG8gY2FyZXMgZW5vdWdoIHRvCnNlYXJjaCB0aHJvdWdoIGxvb2tpbmcgZm9yIHJlcGxp
ZXMgKGFzIEkganVzdCBkaWQpLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2Vy
dmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUg
Zm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
