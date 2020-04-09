Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B011A3633
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 16:47:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4iyIYYZTcBzwuGtkbx3rDREdTfrMw+Tlv3djZF4tU4c=; b=YfIXZ3IgPNB/dY
	nGeG5RFeBBq9CTCDdnTKYPmXKUCkWEt29FezZw42Yc/HS0umDffDSYMrcIlwh+FP8kBE7+F3WIUi4
	RlFib9RnNwChpkwRgT7k/SgHDJg4cNWuBzPlh+QQ2ogP6EYHodvo3XAVVr9RSobicv4IHuAbdcemX
	K6D0jJfuX5bFkyCUD4meE59gxhGUTBxApvwI7jlL9sIWi+XaIlwTJ4vGR6FqzIOpl5XFjpESWkH/f
	D5TNIjHTWK5JDO23gygLhtIIL0ey+Ob6sKJcPEABKhCs9ntH8vJsyiW217ybSCFcI8qB7bCDHvtaA
	HONTfWhMdXUxg90dj8SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMYSq-0002Sf-Rp; Thu, 09 Apr 2020 14:47:32 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMYSh-0002RQ-ST
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 14:47:26 +0000
Received: by mail-wr1-x42b.google.com with SMTP id s8so12213675wrt.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 07:47:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ZZS9U1ArwsTmsSPlfGJd5HeXSHO0SdvQfFd8dx+1UVk=;
 b=pPPYIThhwzhDNkp6VOJ+CbRbSQJHdOGFcH+VYBuGxQPgg1cFdXyhYy0Y10a2nwGDrG
 LaQ5HlQ4lKwgKEl37rk7qWOVSIrNnk1s3P6VBPxmBwXz+J8bXLpDfObMzOCsZL/Di4Yl
 OlYOtrzoZrkE7LDvGnHaXNL+cimv0xXrBbz/CFq39SZjL+kIbuRdxY41dGh++w20t6Fg
 BzklAUcwdMcaUoQKUISJuK83qod9vHrQApnRJ3LDtblxM40cSvVdBXaLtx/C0iF30rL5
 r8BGtK6xTqAMDXmIDGud7+pxNot89WTdTL2d6IvihKpj272J310TY7FX8Io96nBNrIyp
 4oQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZZS9U1ArwsTmsSPlfGJd5HeXSHO0SdvQfFd8dx+1UVk=;
 b=E58stmC2A+KJdxJtRO6kNxo3UzfY3kjlp5IaYUZb4SoUKzyFdhx8Ba5nj6fJYOFxUh
 rZUsGJDHGRrMDyeCDXowvhS4Gf2L/z6wtb2z3cubGUETQHucPxCY31g4oXMvySKSHn8o
 j8Ww9wxGnIP8xdqYgQkUcjcv5e+VkhLwk1rhNE6NGFlo5p9H3Ro0MEgdz+mxWak6uJA/
 BF+orZu1K0zCZFbLyYysAfIXulDN7o10fD0OoLbNlQuR9XbcnczkTGr02tcaqD4xyPmw
 eOC40XASwlJAQANYfrg9fBrGLZZd3G6JAvqiefIVOIr8YU9pPTg3SrpYcN5G6ubwQL7Y
 UtRg==
X-Gm-Message-State: AGi0PuaAvHIDLqUBOu1x8S6ejF17U3ut4v/lYsb40z6R2h7i85am8Bjd
 XhssQLEoHBHUgCzypzrqC2XQ0A==
X-Google-Smtp-Source: APiQypK/poVrrLLEc2SNT/FoCaqqeJDqSdaOa5up0mRVX6coNjeR1Ww0pzfAVxRyFxqkdfoGHAOMLQ==
X-Received: by 2002:a5d:4d12:: with SMTP id z18mr14869150wrt.67.1586443639710; 
 Thu, 09 Apr 2020 07:47:19 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:4e:2ab3:ef46:7bda?
 ([2a01:e34:ed2f:f020:4e:2ab3:ef46:7bda])
 by smtp.googlemail.com with ESMTPSA id n4sm3897949wmi.20.2020.04.09.07.47.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Apr 2020 07:47:19 -0700 (PDT)
Subject: Re: [PATCH v6 0/4] thermal: k3: Add support for bandgap sensors
To: Tero Kristo <t-kristo@ti.com>, "J, KEERTHY" <j-keerthy@ti.com>,
 rui.zhang@intel.com, robh+dt@kernel.org
References: <20200407055116.16082-1-j-keerthy@ti.com>
 <3c69e3c6-5549-e891-fde6-95a2ecc49f77@linaro.org>
 <0817f9ee-c72f-3e9f-00cf-e8ddaf608020@ti.com>
 <e7dd6470-5992-8d22-5d0c-7532a47a400c@ti.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <3221f241-7118-a586-1789-d427791215c6@linaro.org>
Date: Thu, 9 Apr 2020 16:47:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <e7dd6470-5992-8d22-5d0c-7532a47a400c@ti.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_074724_438400_80D39ACB 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 amit.kucheria@verdurent.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDkvMDQvMjAyMCAxNjozNywgVGVybyBLcmlzdG8gd3JvdGU6Cj4gT24gMDkvMDQvMjAyMCAx
NzowNywgSiwgS0VFUlRIWSB3cm90ZToKPj4KPj4KPj4gT24gNC85LzIwMjAgNzoxOSBQTSwgRGFu
aWVsIExlemNhbm8gd3JvdGU6Cj4+Pgo+Pj4gSGkgS2VlcnRoeSwKPj4+Cj4+PiBPbiAwNy8wNC8y
MDIwIDA3OjUxLCBLZWVydGh5IHdyb3RlOgo+Pj4+IEFkZCBWVE0gdGhlcm1hbCBzdXBwb3J0LiBJ
biB0aGUgVm9sdGFnZSBUaGVybWFsCj4+Pj4gTWFuYWdlbWVudCBNb2R1bGUoVlRNKSwgSzMgQU02
NTQgc3VwcGxpZXMgYSB2b2x0YWdlCj4+Pj4gcmVmZXJlbmNlIGFuZCBhIHRlbXBlcmF0dXJlIHNl
bnNvciBmZWF0dXJlIHRoYXQgYXJlIGdhdGhlcmVkIGluIHRoZQo+Pj4+IGJhbmQKPj4+PiBnYXAg
dm9sdGFnZSBhbmQgdGVtcGVyYXR1cmUgc2Vuc29yIChWQkdBUFRTKSBtb2R1bGUuIFRoZSBiYW5k
Cj4+Pj4gZ2FwIHByb3ZpZGVzIGN1cnJlbnQgYW5kIHZvbHRhZ2UgcmVmZXJlbmNlIGZvciBpdHMg
aW50ZXJuYWwKPj4+PiBjaXJjdWl0cyBhbmQgb3RoZXIgYW5hbG9nIElQIGJsb2Nrcy4gVGhlIGFu
YWxvZy10by1kaWdpdGFsCj4+Pj4gY29udmVydGVyIChBREMpIHByb2R1Y2VzIGFuIG91dHB1dCB2
YWx1ZSB0aGF0IGlzIHByb3BvcnRpb25hbAo+Pj4+IHRvIHRoZSBzaWxpY29uIHRlbXBlcmF0dXJl
Lgo+Pj4+Cj4+Pj4gQWRkIHN1cHBvcnQgZm9yIGJhbmRnYXAgc2Vuc29ycy4gQ3VycmVudGx5IHJl
YWRpbmcgdGVtcGVyYXR1cmVzCj4+Pj4gaXMgc3VwcG9ydGVkLgo+Pj4KPj4+IEhvdyBkbyB5b3Ug
d2FudCB0byBwcm9jZWVkPyBTaGFsbCBJIHRha2UgcGF0Y2hlcyAxICYgMiA/Cj4+Cj4+ICtUZXJv
Cj4+Cj4+IEhpIFRlcm8sCj4+Cj4+IENhbiB5b3UgcHVsbCAzICYgND8gT3IgRGFuaWVsIGNhbiB0
YWtlIGFsbCA0Pwo+IAo+IExldCBtZSBwdWxsIHRoZSBEVCBwYXRjaGVzLCB0aGF0IHdheSB3ZSBh
dm9pZCBhbnkgY29uZmxpY3RzIGluIHRoZQo+IGFybTY0L2R0cyB0cmVlLiBUaGVyZSBoYXMgYmVl
biBxdWl0ZSBhIGJpdCBvZiB0cmFmZmljIG9uIHRoYXQgZnJvbnQKPiBsYXRlbHkgYW5kIHdlIGRp
ZCBtZXNzIHVwIHNvbWV0aGluZyB3aXRoIHRoZSBjdXJyZW50IG1lcmdlIHdpbmRvdyBhbHJlYWR5
Lgo+IAo+IEkgYmVsaWV2ZSB5b3UgYXJlIHBpY2tpbmcgdGhlIGRyaXZlciBzaWRlIGNoYW5nZXMg
dG8gNS44PwoKQXBwbGllZCBwYXRjaGVzIDEgJiAyCgpUaGFua3MKCiAgLS0gRGFuaWVsCgoKCi0t
IAo8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29m
dHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2su
Y29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFy
b29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9n
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
