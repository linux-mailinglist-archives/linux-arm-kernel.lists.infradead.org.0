Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B24D6E2C25
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 10:27:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9TbdZoG/wf7aWTkHWVjy5p1Nn1d6Alqes4w4wG4/vYI=; b=bdoBS5wPUREHCQ
	KyYiITf1epSJegy4T4y5aDeoLmDUiRhvjLVLe4dEuWIXPmqiVmvfqX9m12uAgTEwxS0N+ZIO1L3wu
	4dVXkzp79zfzKwHAOXmkB6uCku+2aqVWNaB+JGPzCipNf3z9TV+gXqpp7rMk3b2i5ziGMXBzmDRzn
	gFkNYMF1d1X0slpWrs3BFjbt4vHPBy8QqRs8VOCFPFato8uMm1J4LFYXvwWHvYz29ZX/R+qKcDpOQ
	544J2yBXjRUIu0fbeyxNw03HBI9nPirSTZhPXVS4Cn1A+VXcdd1DNBwUxzHtBvYy/n602aYbuahmM
	rCg6APXygFHdrsKzpxAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNYTA-0005qp-8m; Thu, 24 Oct 2019 08:27:44 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNYSp-0005kI-Lp
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 08:27:25 +0000
Received: by mail-wr1-x443.google.com with SMTP id q13so20039829wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 01:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:message-id:date:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=mm17BkOc25h13Mby6hFCXW3PUeV4hyrd6orfDcJCo64=;
 b=FM2nQuhqEHC5AtVx/Atcs/KmjN9GidOdQUdWc0fquAJ4AIkE9OhBpZfBhwmt+L62d9
 5kjVegAA6W3iU7uZJd+XQIh/YNIWVenayIvbvVgMUiybaDvLhFEtgQgNpWbnTDnGuNkN
 jhVNzvREJ+tiPEfyTyDF2GiVdv3xk4jKbp4v+l3o8oAPvEnOzrOisaO+pPFQM9FsXOSS
 BKs58eHhZv11IhkDZQx2wQ974lIf8sPQOUb/Rj2XMR6C7c6taCX9tJ7tmib8KNplJy+a
 yvNBUtxCN8e74fS6UOFPdIlmAHdVLU80gWta+FQx77WAqsCaJihm96bstIRVHOzm5COF
 yjgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mm17BkOc25h13Mby6hFCXW3PUeV4hyrd6orfDcJCo64=;
 b=WiQOQgOsJ/hUvl/lsQCsFrs6mV4eLcXa1nFSXk4BESDI4+ODnIfrlDGp+q9qrfh0gg
 TvoliWhBfdWJqlUtTCyOLaQe+WuMabK/ca6r8i0T/sqSWLAkFYqPRKKVTduV5S24OB6W
 glzTlZcdF5GpQ81tAyejRGRBPO347dbWnI0C1skaurvZmvAj/BRXGDtjXvM6xoOgjUdj
 dnxWtrxnouH8VEpjz9ScKTzsUuCT+3tvhIxRKUVvGoQEPW7v/XHt04pUiaf6urmLOMI1
 olDZHi5zHjrA2G+LAe3QV/Ddg9r7iwLKTPYW45Q35QC+IXcZbxUS2fQPgiZndg1fCVJk
 oJCQ==
X-Gm-Message-State: APjAAAVS0Z/hceN1W/45OLzWnekJsUnyFP3B6LZBwKShuIOrhmsc/lqP
 dkqaEAMUbRB6F9BB1CPZdwJHjRiVdKFwIg==
X-Google-Smtp-Source: APXvYqxJjkvfXJJpszKYABlj+Cxk0Xu169hSNKRrK3KCT1UvqEPCoE4AIymOmMJ+q88rM3pV+SFBJw==
X-Received: by 2002:a5d:464f:: with SMTP id j15mr2639402wrs.366.1571905641248; 
 Thu, 24 Oct 2019 01:27:21 -0700 (PDT)
Received: from [192.168.27.135] ([37.157.136.206])
 by smtp.googlemail.com with ESMTPSA id u187sm704735wme.15.2019.10.24.01.27.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 24 Oct 2019 01:27:20 -0700 (PDT)
Subject: Re: [PATCH 5/5] ARM: dts: qcom: msm8974: add interconnect nodes
To: Brian Masney <masneyb@onstation.org>
References: <20191013080804.10231-1-masneyb@onstation.org>
 <20191013080804.10231-6-masneyb@onstation.org>
 <d154b0c6-fc39-bebc-d1b5-cc179fb6055d@linaro.org>
 <20191023124753.GA14218@onstation.org>
 <c26159f5-e6fe-07f1-51b3-50b72b258846@linaro.org>
 <20191024070730.GA19974@onstation.org>
From: Georgi Djakov <georgi.djakov@linaro.org>
Openpgp: preference=signencrypt
Message-ID: <5e1149ae-9539-ec8b-6371-50c87575057a@linaro.org>
Date: Thu, 24 Oct 2019 11:27:18 +0300
MIME-Version: 1.0
In-Reply-To: <20191024070730.GA19974@onstation.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_012723_733841_29C16950 
X-CRM114-Status: GOOD (  19.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, bjorn.andersson@linaro.org, agross@kernel.org,
 freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjQuMTAuMTkg0LMuIDEwOjA3INGHLiwgQnJpYW4gTWFzbmV5IHdyb3RlOgo+IE9uIFdlZCwg
T2N0IDIzLCAyMDE5IGF0IDA0OjM5OjIxUE0gKzAzMDAsIEdlb3JnaSBEamFrb3Ygd3JvdGU6Cj4+
IE9uIDIzLjEwLjE5INCzLiAxNTo0NyDRhy4sIEJyaWFuIE1hc25leSB3cm90ZToKPj4+IE9uIFdl
ZCwgT2N0IDIzLCAyMDE5IGF0IDAyOjUwOjE5UE0gKzAzMDAsIEdlb3JnaSBEamFrb3Ygd3JvdGU6
Cj4+Pj4gT24gMTMuMTAuMTkg0LMuIDExOjA4INGHLiwgQnJpYW4gTWFzbmV5IHdyb3RlOgo+Pj4+
PiBBZGQgaW50ZXJjb25uZWN0IG5vZGVzIHRoYXQncyBuZWVkZWQgdG8gc3VwcG9ydCBidXMgc2Nh
bGluZy4KPj4+Pj4KPj4+Pj4gU2lnbmVkLW9mZi1ieTogQnJpYW4gTWFzbmV5IDxtYXNuZXliQG9u
c3RhdGlvbi5vcmc+Cj4+Pj4+IC0tLQo+Pj4+PiAgYXJjaC9hcm0vYm9vdC9kdHMvcWNvbS1tc204
OTc0LmR0c2kgfCA2MCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+Pj4+PiAgMSBmaWxl
IGNoYW5nZWQsIDYwIGluc2VydGlvbnMoKykKPj4+Pj4KPj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gv
YXJtL2Jvb3QvZHRzL3Fjb20tbXNtODk3NC5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvcWNvbS1t
c204OTc0LmR0c2kKPj4+Pj4gQEAgLTExNTIsNiArMTIwNywxMSBAQAo+Pj4+PiAgCQkJCSAgICAg
ICAgICAgICAgImNvcmUiLAo+Pj4+PiAgCQkJCSAgICAgICAgICAgICAgInZzeW5jIjsKPj4+Pj4g
IAo+Pj4+PiArCQkJCWludGVyY29ubmVjdHMgPSA8Jm1tc3Nub2MgTU5PQ19NQVNfR1JBUEhJQ1Nf
M0QgJmJpbWMgQklNQ19TTFZfRUJJX0NIMD4sCj4+Pj4+ICsJCQkJICAgICAgICAgICAgICAgIDwm
b2NtZW1ub2MgT0NNRU1fVk5PQ19NQVNfR0ZYM0QgJm9jbWVtbm9jIE9DTUVNX1NMVl9PQ01FTT47
Cj4+Pj4KPj4+PiBXaG8gd2lsbCBiZSB0aGUgcmVxdWVzdGluZyBiYW5kd2lkdGggdG8gRERSIGFu
ZCBvY21lbT8gSXMgaXQgdGhlIGRpc3BsYXkgb3IgR1BVCj4+Pj4gb3IgYm90aD8gVGhlIGFib3Zl
IHNlZW0gbGlrZSBHUFUtcmVsYXRlZCBpbnRlcmNvbm5lY3RzLCBzbyBtYXliZSB0aGVzZQo+Pj4+
IHByb3BlcnRpZXMgc2hvdWxkIGJlIGluIHRoZSBHUFUgRFQgbm9kZS4KPj4+Cj4+PiBUaGUgZGlz
cGxheSBpcyB3aGF0IGN1cnJlbnRseSByZXF1ZXN0cyB0aGUgaW50ZXJjb25uZWN0IHBhdGgsCj4+
PiBzcGVjaWZpY2FsbHkgbWRwNV9zZXR1cF9pbnRlcmNvbm5lY3QoKSBpbgo+Pj4gZHJpdmVycy9n
cHUvZHJtL21zbS9kaXNwL21kcDUvbWRwNV9rbXMuYy4gVGhlIEZyZWVkcmVubyBHUFUgYmluZGlu
Z3MKPj4+IGN1cnJlbnRseSBkb24ndCBoYXZlIGludGVyY29ubmVjdCBzdXBwb3J0LiBNYXliZSB0
aGlzIGlzIHNvbWV0aGluZyB0aGF0Cj4+PiBJIHNob3VsZCBhZGQgdG8gdGhhdCBkcml2ZXIgYXMg
d2VsbD8KPj4KPj4gVGhlICJtZHAwLW1lbSIgYW5kICJtZHAxLW1lbSIgcGF0aHMgbWVudGlvbmVk
IGluIHRoZSBtZHA1X2ttcy5jIGFyZSB0aGUgdHdvCj4+IGludGVyY29ubmVjdHMgYmV0d2VlbiB0
aGUgZGlzcGxheSBhbmQgRERSIG1lbW9yeS4KPiAKPiBPSywgSSBzZWUuIE1vc3Qgb2YgdGhlIGlu
dGVyY29ubmVjdCBwYXRocyBpbiB0aGUgZG93bnN0cmVhbSBNU00gMy40Cj4gc291cmNlcyBhcmUg
Y29uZmlndXJlZCBpbiBkZXZpY2UgdHJlZSB1c2luZyB0aGUKPiBxY29tLG1zbS1idXMsdmVjdG9y
cy1LQnBzIHByb3BlcnR5LCB3aGljaCBpcyB3aGF0IEkgd2FzIG9ubHkgbG9va2luZyBhdAo+IGJl
Zm9yZS4gVGhlIGludGVyY29ubmVjdCBwYXRoIGZvciB0aGUgZGlzcGxheSBpcyBjb25maWd1cmVk
IGRpcmVjdGx5IGluCj4gY29kZSAoZHJpdmVycy92aWRlby9tc20vbWRzcy9tZHNzX21kcC5jKSB0
byBzZXR1cCBhIHBhdGggYmV0d2Vlbgo+IE1TTV9CVVNfTUFTVEVSX01EUF9QT1JUMCBhbmQgTVNN
X0JVU19TTEFWRV9FQklfQ0gwLgoKQ29ycmVjdCEKCj4gCj4gSW4gdGhlIHVwc3RyZWFtIGtlcm5l
bCwgaXQgbG9va3MgbGlrZSBJJ2xsIG5lZWQgdG8KPiAKPiAgIDEpIGFkZCBzdXBwb3J0IGZvciBh
biBvcHRpb25hbCBzZWNvbmQgaW50ZXJjb25uZWN0IHBhdGggZm9yIG9jbWVtIHRvCj4gICAgICBk
cml2ZXJzL2dwdS9kcm0vbXNtL2FkcmVuby9hZHJlbm9fZ3B1LmMuCgpZZXMsIGp1c3QgY2hlY2sg
aWYgdGhlcmUgaXMgYSAiZ3B1LW9jbWVtIiBwYXRoIGluIERUIGFuZCBzY2FsZSBpdCB3aGVuIG5l
ZWRlZC4KCj4gCj4gICAyKSBhZGQgaW1wbGVtZW50YXRpb25zIG9mIGdwdV9nZXRfZnJlcSBhbmQg
Z3B1X2dldF9mcmVxIHRvIHRoZQo+ICAgICAgYWRyZW5vX2dwdV9mdW5jcyBzdHJ1Y3QgaW4gZHJp
dmVycy9ncHUvZHJtL21zbS9hZHJlbm8vYTN4eF9ncHUuYy4KPiAKCk1heWJlLCBpIGFtIG5vdCB2
ZXJ5IGZhbWlsaWFyIHdpdGggYWRyZW5vIHN0dWZmLiBJdCBtaWdodCBiZSBnb29kIHRvIENDIHRo
ZQpmcmVlZHJlbm8gZ3V5cy4KClRoYW5rcywKR2VvcmdpCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
