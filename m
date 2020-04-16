Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 403031AB949
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 09:04:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jM8Y3BjV3mM7+Aaf+ccgGBAnnTjrSlPpTJwvK0sgbTo=; b=dLisB6xPv6Sc6+
	20k9BLuKGH0F5jTU5LAwGDpEXTV7VoWsYkQat+33xspqvw8ka6/B4upjcNBzglLM/zwj2DfB1nc/g
	VYue5eMFGfcpC9NhU/Bwxt3zwQCDrBhgeLnDnuq8CO2KKWxaex2zt6Q5S0HqrvVx/VXnflib1R/y9
	4nnIVUvJ9JsHtQSE72Z3+T4z9zAatrMJxpz9wh/BG3lQasI8nTTnTslzeNFD6udb4zo7BwdgatUJn
	rKRQSH4GZebblc67iRTwX5bmNkC26i6IKF8mOHaBLo4mAWjyAV7LLbojV0EtRRBNo9Fb0N27OfR1E
	RL9a9CL2wdQIAraj8TCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOyZa-0000EY-7K; Thu, 16 Apr 2020 07:04:30 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOyYy-0008Ii-5C
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 07:03:54 +0000
Received: by mail-wm1-x343.google.com with SMTP id x4so3389739wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 00:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=AruXxjr9GHlZ2Z9Tv42XPGLrf7MP2PtB4f9OTEBH4MM=;
 b=VAFOtuQzGjjh1BpnjdwrBb8ATOf9hLIQMepMrNF2THjStFG8m/qucMONexKM/Ibh0E
 XnkPy+lPDXG4ZLFC0CUaOGOAsEj1n4I0cqOGjjq2UtVhoTGbcvAy14ISFMKTzA6o7JZB
 erM05v8TzGUWzuAZDgeE6K0dy3boHLEmcgO8mqrTXpiSO+J/eJ2v4+FPMkRt4eAvIUvn
 wEL/CDEmrhNzU/AhUYaUhPQK+gwDwngk88DYkCqM+/uO8cyxAE/LzNoRMnuA9Pr5u5KL
 r5cFfhRBHKjkgpMV9vagPW6RZY70RwX0WgU2wxq3vBZPk9De1qT0f9Og4VBs/JWNT5hu
 rmWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=AruXxjr9GHlZ2Z9Tv42XPGLrf7MP2PtB4f9OTEBH4MM=;
 b=HLg4BkzTnCnWR6FjLV1s/2t7U1rTETVHpSFXUIhnmlMR4Y31FuQTw+t8XXhTKWUFVL
 wjsCe46Gbt5k6PJm+RthvcAx31F63oh161Oay5NBCxX4RCOHh+q7yCdLCrd+IywrpPsn
 EJDbPhcOzHjn3sX+i0ne11TRefC1h/dnV12nyynN090QcXXJ9ApfL3dYNmIS1C8FIo7j
 F6FxVnccPVgrp1UbxA+LBXSHB31l8YL3vIHMJpen7vbERnYl+DKMg9G7CRAE564Rl3Cc
 r2IZ4rA50w5xqYLVWmhgjL3rfhdHtNtYhuX929yi1y1pEHCkZ292xf7H84fLJGavzxQp
 kbPg==
X-Gm-Message-State: AGi0PuZ6gnyTqkvdB51J34J2QBuzpPZML7DKUitv8gLl7L0IQSQ3Z4+G
 Kr1CG8Y8ltXlvP0bl6RB4ZtqNg==
X-Google-Smtp-Source: APiQypK1dMnBZLZOHx8PctsABj5RlziysLlkiXO8f0byNomGW94UpABYhu4MUL2N+fcrhwskc4rKnw==
X-Received: by 2002:a1c:9a96:: with SMTP id c144mr3289606wme.84.1587020630466; 
 Thu, 16 Apr 2020 00:03:50 -0700 (PDT)
Received: from dell ([95.149.164.124])
 by smtp.gmail.com with ESMTPSA id w18sm25908396wrn.55.2020.04.16.00.03.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 00:03:49 -0700 (PDT)
Date: Thu, 16 Apr 2020 08:04:41 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v6 0/6] clockevent: add low power STM32 timer
Message-ID: <20200416070441.GP2167633@dell>
References: <20200401083909.18886-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401083909.18886-1-benjamin.gaignard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_000352_368980_567027BA 
X-CRM114-Status: GOOD (  17.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 mcoquelin.stm32@gmail.com, tglx@linutronix.de, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAwMSBBcHIgMjAyMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cgo+IFRoaXMgc2Vy
aWVzIGFkZCBsb3cgcG93ZXIgdGltZXIgYXMgYm9hZGNhc3QgY2xvY2tldmVudCBkZXZpY2UuCj4g
TG93IHBvd2VyIHRpbWVyIGNvdWxkIHJ1bnMgZXZlbiB3aGVuIENQVXMgYXJlIGluIGlkbGUgbW9k
ZSBhbmQgCj4gY291bGQgd2FrZXVwIHRoZW0uCj4gCj4gdmVyc2lvbiA2Ogo+IC0gc2ltcGxpZnkg
YmluZGluZywgRFQgYW5kIGNvZGUgdG8gdXNlIG9ubHkgb25lIGludGVycnVwdAo+IAo+IHZlcnNp
b24gNToKPiAtIGRvY3VtZW50IGludGVycnVwdHMgYW5kIGludGVycnVwdC1uYW1lcyBiaW5kaW5n
cwo+IC0gdXNlIGEgZGlmZmVyZW50IHdha2UgdXAgaW50ZXJydXB0Cj4gLSBhZGQgZGV2aWNlLXRy
ZWUgcGF0Y2gKPiAtIG1ha2UgU1RNMzJNUDE1NyBzZWxlY3QgbG93IHBvd2VyIHRpbWVyIGNvbmZp
Z3VyYXRpb24gZmxhZwo+IC0gZW5hYmxlIGZhc3RfaW8gaW4gcmVnbWFwIGNvbmZpZ3VyYXRpb24K
PiAKPiB2ZXJzaW9uIDQ6Cj4gLSBtb3ZlIGRlZmluZXMgaW4gbWZkL3N0bTMyLWxwdGltZXIuaAo+
IC0gY2hhbmdlIGNvbXBhdGlibGUgYW5kIHN1Ym5vZGUgbmFtZXMKPiAtIGRvY3VtZW50IHdha2V1
cC1zb3VyY2UgcHJvcGVydHkKPiAtIHJld29yZCBjb21taXQgbWVzc2FnZQo+IC0gbWFrZSBkcml2
ZXIgS2NvbmZpZyBkZXBlbmRzIG9mIE1GRF9TVE0zMl9MUFRJTUVSCj4gLSByZW1vdmUgdXNlbGVz
cyBpbmNsdWRlCj4gLSByZW1vdmUgcmF0ZSBhbmQgY2xrIGZpZWxkcyBmcm9tIHRoZSBwcml2YXRl
IHN0cnVjdHVyZQo+IC0gdG8gYWRkIGNvbW1lbnRzIGFib3V0IHRoZSByZWdpc3RlcnMgc2VxdWVu
Y2UgaW4gc3RtMzJfY2xrZXZlbnRfbHBfc2V0X3RpbWVyCj4gLSByZXdvcmsgcHJvYmUgZnVuY3Rp
b24gYW5kIHVzZSBkZXZtX3JlcXVlc3RfaXJxKCkKPiAtIGRvIG5vdCBhbGxvdyBtb2R1bGUgdG8g
YmUgcmVtb3ZlZAo+IAo+IHZlcnNpb24gMzoKPiAtIGZpeCB0aW1lciBzZXQgc2VxdWVuY2UKPiAt
IGRvbid0IGZvcmdldCB0byBmcmVlIGlycSBvbiByZW1vdmUgZnVuY3Rpb24KPiAtIHVzZSBkZXZt
X2t6YWxsb2MgdG8gc2ltcGxpZnkgZXJyb3JzIGhhbmRsaW5nIGluIHByb2JlIGZ1bmN0aW9uCj4g
Cj4gdmVyc2lvbiAyOgo+IC0gc3RtMzIgY2xrZXZlbnQgZHJpdmVyIGlzIG5vdyBhIGNoaWxkIG9m
IHRoZSBzdG0zMiBscCB0aW1lciBub2RlCj4gLSBhZGQgYSBwcm9iZSBmdW5jdGlvbiBhbmQgYWRw
YXQgdGhlIGRyaXZlciB0byB1c2UgcmVnbWFwIHByb3ZpZGUKPiAgIGJ5IGl0IHBhcmVudAo+IC0g
c3RvcCB1c2luZyB0aW1lcl9vZiBoZWxwZXJzCj4gCj4gCj4gQmVuamFtaW4gR2FpZ25hcmQgKDYp
Ogo+ICAgZHQtYmluZGluZ3M6IG1mZDogRG9jdW1lbnQgU1RNMzIgbG93IHBvd2VyIHRpbWVyIGJp
bmRpbmdzCj4gICBBUk06IGR0czogc3RtMzI6IEFkZCB0aW1lciBzdWJub2RlcyBvbiBzdG0zMm1w
MTUgU29Dcwo+ICAgbWZkOiBzdG0zMjogQWRkIGRlZmluZXMgdG8gYmUgdXNlZCBmb3IgY2xrZXZl
bnQgcHVycG9zZQo+ICAgbWZkOiBzdG0zMjogZW5hYmxlIHJlZ21hcCBmYXN0X2lvIGZvciBzdG0z
Mi1scHRpbWVyCj4gICBjbG9ja3NvdXJjZTogQWRkIExvdyBQb3dlciBTVE0zMiB0aW1lcnMgZHJp
dmVyCj4gICBBUk06IG1hY2gtc3RtMzI6IHNlbGVjdCBsb3cgcG93ZXIgdGltZXIgZm9yIFNUTTMy
TVAxNTcKPiAKPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3N0LHN0bTMyLWxwdGltZXIu
eWFtbCAgfCAgMjEgKysKPiAgYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1MS5kdHNpICAgICAg
ICAgICAgICAgICAgfCAgMzUgKysrKwo+ICBhcmNoL2FybS9tYWNoLXN0bTMyL0tjb25maWcgICAg
ICAgICAgICAgICAgICAgICAgICB8ICAgMSArCj4gIGRyaXZlcnMvY2xvY2tzb3VyY2UvS2NvbmZp
ZyAgICAgICAgICAgICAgICAgICAgICAgIHwgICA0ICsKPiAgZHJpdmVycy9jbG9ja3NvdXJjZS9N
YWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgfCAgIDEgKwo+ICBkcml2ZXJzL2Nsb2Nrc291
cmNlL3RpbWVyLXN0bTMyLWxwLmMgICAgICAgICAgICAgICB8IDIyMSArKysrKysrKysrKysrKysr
KysrKysKPiAgZHJpdmVycy9tZmQvc3RtMzItbHB0aW1lci5jICAgICAgICAgICAgICAgICAgICAg
ICAgfCAgIDEgKwo+ICBpbmNsdWRlL2xpbnV4L21mZC9zdG0zMi1scHRpbWVyLmggICAgICAgICAg
ICAgICAgICB8ICAgNSArCgpJJ2QgYmUgaGFwcHkgdG8gdGFrZSB0aGlzIHNldCwgYnV0IHlvdSBu
ZWVkIEFja3MgZnJvbSB0aGUgb3RoZXIKc3Vic3lzdGVtIE1haW50YWluZXJzIGJlZm9yZSBJIGNh
biBkbyBzby4KCj4gIDggZmlsZXMgY2hhbmdlZCwgMjg5IGluc2VydGlvbnMoKykKPiAgY3JlYXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvY2xvY2tzb3VyY2UvdGltZXItc3RtMzItbHAuYwo+IAoKLS0g
CkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGlu
YXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5h
cm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
