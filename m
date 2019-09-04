Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27EEFA81E0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 14:09:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6DWfBjvK09aUhpLNQvEtw/l0kNiEBadM1HeiUEodhzY=; b=PRE6uDA0Pn07GQ
	AYZji98Lb0Xa8zlqZaHI9UXbvOvVpJ0GEyouaUxcLqPq3yKnzkm8YzzT3wms3GWY3wzlFhN2qs7Sl
	XxdyQR7RsLePFIsrg+lTf98XwDcbTGH/L9Xbb4P3gorIEco/DGUntvl+dCk3a2+g0gJG8y5+6ZPbl
	U0D1FMZgf0B0uDDvBtS9T4LPCwnaXyXBj5zC1Jg1VYp8Uj8x2tbMgenrnBQqwPARtccIlgsNqdtcZ
	pPh8Dlp0YtgBXGiq1IF21pLJi+hSYfqpZHVoVfVn+N+toGCWhNZOmjNkOr/Z5zNFjrbp4nSrrLYnE
	d78gJUTemApiPf4SAB4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5U66-0006X8-EX; Wed, 04 Sep 2019 12:09:14 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5U5r-0006Wk-Ml
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 12:09:01 +0000
Received: by mail-wr1-x441.google.com with SMTP id y19so20993599wrd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 05:08:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=cXNd5NFyo+yXcDkUhbL4DCnkYm1i1knViowjla1FTwE=;
 b=J7ZfwMvx+pjJ1KtIMg2FP2iKHNJugtUCVhDT0Q9A9FjR6NMHgbC3mf/LmljjuOidey
 UGqdxc1zMZTpTvw6hwHC1aHs7rOmo6aaccw1sRY2uRZlabi29r5B6lNG+s3zzZaSMH1C
 Z4tIH6+/totYd97oYlUmHDWy1h6khLfBmvhCz9+UhOpEsL4SaAa/cdlQqBtVm5+jEaqA
 pmtDQIzmxpohUiucVvUBP3ioD3mO7zvmxsdxwuhe2oZBFcdQjCUZoBHbidQ1ORP4VLq4
 wOtK4aZ8XgNv6wyaIbNj/9icjZy0TFMaGC6OnEW61BxKyj7/2fRktWn8svHDF0t6B7Db
 tOlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=cXNd5NFyo+yXcDkUhbL4DCnkYm1i1knViowjla1FTwE=;
 b=FXb2fnHE9wXQect59tDaG0ltNwM1AWEopjtel00dBdpH+sSKEeSNS/ltjsfsYmaz9C
 XQZnxXeUPSPx13ed4rCgwMgj8EI2xVKWeHytDK/9jpV0u9Ji0yGLK6qRVRMdsSHVu7Xp
 D3jsLdiXCWxi1ROGTq3VN0k69o3LKrKFlJ9zvzg6zFEZQSHxLLgFaKQVePa5WuMLZL/E
 KAMIoHr6US1n1W2q0efXoxdXOQBCKQQAxSDGfd+H2krTHfVy44FvLZ/m7WRhBNa/vY4W
 qZa1WIc8oYULwXTpjGMRsA5Avxbm/Z1awyE+/PTXSU9AY8z0wjEhLSlSQcVSEdAClNt8
 1MEQ==
X-Gm-Message-State: APjAAAXkasxTqYsJKiOAemrmO4kleXBwzqlmNlpcyzw9yOVU9DUs5eTZ
 ySkq02XKY8Hup1QORSnCycS5MQ==
X-Google-Smtp-Source: APXvYqzoDt1j5nXwZfg6kdlNZiEWEaIC+6f7Yyq3ssLHAa5vCsy93S4qA0vTD5oeY0IsGHeo93JgRQ==
X-Received: by 2002:a5d:4d81:: with SMTP id b1mr50990154wru.27.1567598937914; 
 Wed, 04 Sep 2019 05:08:57 -0700 (PDT)
Received: from dell ([95.147.198.36])
 by smtp.gmail.com with ESMTPSA id j22sm3005688wre.45.2019.09.04.05.08.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 04 Sep 2019 05:08:57 -0700 (PDT)
Date: Wed, 4 Sep 2019 13:08:55 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH v2 1/1] arm64: dts: qcom: Add Lenovo Yoga C630
Message-ID: <20190904120855.GJ26880@dell>
References: <20190904113917.15223-1-lee.jones@linaro.org>
 <20190904115234.GV2672@vkoul-mobl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904115234.GV2672@vkoul-mobl>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_050859_752964_E8322CFB 
X-CRM114-Status: GOOD (  15.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, bjorn.andersson@linaro.org, agross@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAwNCBTZXAgMjAxOSwgVmlub2QgS291bCB3cm90ZToKCj4gT24gMDQtMDktMTksIDEy
OjM5LCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20v
TWFrZWZpbGUKPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9NYWtlZmlsZQo+ID4g
QEAgLTEyLDUgKzEyLDYgQEAgZHRiLSQoQ09ORklHX0FSQ0hfUUNPTSkJKz0gc2RtODQ1LWNoZXph
LXIyLmR0Ygo+ID4gIGR0Yi0kKENPTkZJR19BUkNIX1FDT00pCSs9IHNkbTg0NS1jaGV6YS1yMy5k
dGIKPiA+ICBkdGItJChDT05GSUdfQVJDSF9RQ09NKQkrPSBzZG04NDUtZGI4NDVjLmR0Ygo+ID4g
IGR0Yi0kKENPTkZJR19BUkNIX1FDT00pCSs9IHNkbTg0NS1tdHAuZHRiCj4gPiArZHRiLSQoQ09O
RklHX0FSQ0hfUUNPTSkJKz0gc2RtODUwLWxlbm92by15b2dhLWM2MzAuZHRiCj4gCj4gQ2FuIHdl
IGtlZXAgdGhpcyBzb3J0ZWQsIHNvIGJlZm9yZSBtdHAuCgpMb29rIGNsb3Nlci4gOikKCj4gPiAg
ZHRiLSQoQ09ORklHX0FSQ0hfUUNPTSkJKz0gcWNzNDA0LWV2Yi0xMDAwLmR0Ygo+ID4gIGR0Yi0k
KENPTkZJR19BUkNIX1FDT00pCSs9IHFjczQwNC1ldmItNDAwMC5kdGIKPiA+IGRpZmYgLS1naXQg
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2RtODUwLWxlbm92by15b2dhLWM2MzAuZHRzIGIv
YXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NkbTg1MC1sZW5vdm8teW9nYS1jNjMwLmR0cwo+ID4g
bmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uYWQxNjBjNzE4YjMz
Cj4gPiAtLS0gL2Rldi9udWxsCj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2Rt
ODUwLWxlbm92by15b2dhLWM2MzAuZHRzCj4gPiBAQCAtMCwwICsxLDQ1NCBAQAo+ID4gKy8vIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4gCj4gQXJlIHdlIGdvaW5nIHRvIG1ha2Ug
dGhpcyBkdWFsPyBvciBCU0QuLgoKVGhpcyBwYXRjaGVzIHRoZSBEVFMgZmlsZXMgYWxyZWFkeSBp
biB0aGlzIGRpcmVjdG9yeS4KCj4gPiArJmFwcHNfcnNjIHsKPiA+ICsJcG04OTk4LXJwbWgtcmVn
dWxhdG9ycyB7Cj4gPiArCQljb21wYXRpYmxlID0gInFjb20scG04OTk4LXJwbWgtcmVndWxhdG9y
cyI7Cj4gPiArCQlxY29tLHBtaWMtaWQgPSAiYSI7Cj4gPiArCj4gPiArCQl2ZGQtbDItbDgtbDE3
LXN1cHBseSA9IDwmdnJlZ19zM2FfMXAzNT47Cj4gPiArCQl2ZGQtbDctbDEyLWwxNC1sMTUtc3Vw
cGx5ID0gPCZ2cmVnX3M1YV8ycDA0PjsKPiA+ICsKPiA+ICsJCXZyZWdfczJhXzFwMTI1OiBzbXBz
MiB7Cj4gPiArCQl9Owo+ID4gKwo+ID4gKwkJdnJlZ19zM2FfMXAzNTogc21wczMgewo+ID4gKwkJ
CXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDEzNTIwMDA+Owo+ID4gKwkJCXJlZ3VsYXRvci1t
YXgtbWljcm92b2x0ID0gPDEzNTIwMDA+Owo+ID4gKwkJCXJlZ3VsYXRvci1pbml0aWFsLW1vZGUg
PSA8UlBNSF9SRUdVTEFUT1JfTU9ERV9IUE0+Owo+ID4gKwkJfTsKPiA+ICsKPiA+ICsJCXZyZWdf
czRhXzFwODogc21wczQgewo+ID4gKwkJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDE4MDAw
MDA+Owo+ID4gKwkJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDE4MDAwMDA+Owo+ID4gKwkJ
CXJlZ3VsYXRvci1pbml0aWFsLW1vZGUgPSA8UlBNSF9SRUdVTEFUT1JfTU9ERV9IUE0+Owo+ID4g
KwkJfTsKPiA+ICsKPiA+ICsJCXZyZWdfczVhXzJwMDQ6IHNtcHM1IHsKPiA+ICsJCQlyZWd1bGF0
b3ItbWluLW1pY3Jvdm9sdCA9IDwyMDQwMDAwPjsKPiA+ICsJCQlyZWd1bGF0b3ItbWF4LW1pY3Jv
dm9sdCA9IDwyMDQwMDAwPjsKPiA+ICsJCQlyZWd1bGF0b3ItaW5pdGlhbC1tb2RlID0gPFJQTUhf
UkVHVUxBVE9SX01PREVfSFBNPjsKPiA+ICsJCX07Cj4gPiArCj4gPiArCQl2cmVnX3M3YV8xcDAy
NTogc21wczcgewo+IAo+IEFueSByZWFzb24gd2h5IHdlIGRvbnQgc3BlY2lmeSB0aGUgbW9kZSBh
bmQgbWluL21heCB2b2x0YWdlIGZvciB0aGlzCj4gYW5kIGZldyBvdGhlcnMgYmVsb3cuLj8KCk1p
Z2h0IGhhdmUgdG8gYXNrIEJqb3JuIHRoYXQgb25lLgoKPiA+ICsmaTJjMSB7Cj4gPiArCXN0YXR1
cyA9ICJva2F5IjsKPiA+ICsJY2xvY2stZnJlcXVlbmN5ID0gPDQwMDAwMD47Cj4gPiArCXFjb20s
Z2VuaS1zZS1maWZvOwo+ID4gKwo+ID4gKwliYXR0ZXJ5QDcwIHsKPiA+ICsJCWNvbXBhdGlibGUg
PSAic29tZSxiYXR0ZXJ5IjsKPiAKPiBzb21lLGJhdHRlcnkgLi4/CgpHb29kIHNwb3QuICBUaGlz
IHRoZSBiYXR0ZXJ5IGxldmVsL0FDIGRldGVjdGlvbiBkcml2ZXIgdGhhdCBpc24ndAp1cHN0cmVh
bSB5ZXQuICBXaWxsIHJlbW92ZS4KCj4gPiArJnF1cF9pMmMxMl9kZWZhdWx0IHsKPiAKPiBQbGVh
c2UgbW92ZSB0aGUgcXVwIG5vZGVzIHVwIHNvIHRoYXQgbm9kZXMgYXJlIHNvcnRlZCBhbHBoYWJl
dGljYWxseQoKU3VyZS4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2Vz
IFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBB
Uk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
