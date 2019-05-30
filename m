Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 289062FC10
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 15:16:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3sVSnzgwDEwpp9NVDgmNiMB09xXrJkzmRhCy4FA2K2Y=; b=j8uuvy4n52/Qv6
	7yD89wiWnKha+BebMtvmwW/VQfBN/4YSlOxVOgkbT5hODUPIaClI5wyxza3bv4vRRKa1aJUkO2ZrF
	Gtvc4QmOx3P+JM8pR7r/BOFvXK5blhcnD8HWjX+Pcp6JaXztHZqlmnnKXNFSUsItF6Bzj820yXW/+
	MDN++BbnXhmF+yJy0eztp6A/cm6jYsJx6zcHPh7KKYEk3iRza0Mj30pF+TfybcsC6y+N6gnW8feVq
	qSK4zc2OWAOVki1soV25W/7mrWFuxTV3NdZqzvkWiKEetUVG8X/kuDEDPGuNzqzCQF53L8La1xcjT
	D8EXatBxB5pZCTs/IxrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWKv9-0003X8-36; Thu, 30 May 2019 13:16:39 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWKv1-0003WZ-SB
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 13:16:33 +0000
Received: by mail-lf1-x142.google.com with SMTP id r15so4976103lfm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 06:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:newsgroups:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=/wo/IbEeAJ9hsENKT3caSWlfePL4jGoTXJCbueVNDgA=;
 b=Q72IpVwPw6IchK/vyAidzYWyEO6OG9P709yrvua0CMrz/RlZUHUi9zsBgxxnUIBv17
 lFnYWHS59WHi57gTvMwdShuxj6Ie9x9ImMRtkl7JDp1Mjk0vnVhh4CvWYwPYy0wN+Keg
 lHmlwijyZshMaT/yXgcGpYhEMt5+xPGJGFs77tmGqmCObDjODW4vs1wIyvqpeMmyQD4G
 XjbnvqwyWeqtEoDodAi80xk3hgMDLtOY0tCVgqJmOyQfN3I9YcQElEjF+YaLevLNUi+H
 1RStWXksOA9ud5BKClsroeJls+Y96O0cPnvK5maHj35YH4QS/aD0qFjEWkCpI9yDl9sh
 fIgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:newsgroups:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=/wo/IbEeAJ9hsENKT3caSWlfePL4jGoTXJCbueVNDgA=;
 b=evbkuOKYw+pw62QN3TyTm8Xyf0ERbBrqfHIvAA0ULl5Gpjlp3A8NV8qfZYQ0tFCzAj
 KZo8dKz+/oyFImT/mNvKcMBzawH3PIwJ2pbVZp643W5whXXIGpGizEkhWI4i87zpNcQH
 410VhtIoNEy7WFNnV0tCfObKwH4TC41Af6Nyp+88VFTrUxtT4H4HlPPqqMgE1A3+9Ln/
 XKqPeriTVGeZnwcWc3BMZT77dcjcQZAm/42ImN9UaYh5vP34IdYPr2KNY/W7Aex70PLH
 IEu5i5nZQ4iPZA8htlrDRw+G0sCm/oIgGKrk7j/+fKtkazTaqvzKCC47aG9Tuyk0gf2/
 U4vA==
X-Gm-Message-State: APjAAAWK2x6QiqgQQT5hVuwZW9v8H7845ZaYUX3iGEu8zpzWYyDTUnuV
 kwP+BscmB3WtlTqPKjifnRVR2ult
X-Google-Smtp-Source: APXvYqxpcgDwwYzwQSo6d4iOLauigH9H3tz8PaSQRCVDJa7sOicZdKK2t7a/GYAL3OvRBVkp6qP1fw==
X-Received: by 2002:a19:6b04:: with SMTP id d4mr2079636lfa.57.1559222188882;
 Thu, 30 May 2019 06:16:28 -0700 (PDT)
Received: from [192.168.2.145] ([94.29.35.141])
 by smtp.googlemail.com with ESMTPSA id p5sm480738ljg.55.2019.05.30.06.16.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 06:16:28 -0700 (PDT)
Subject: Re: [PATCH V4 6/8] memory: tegra: Add EMC scaling sequence code for
 Tegra210
To: Joseph Lo <josephl@nvidia.com>, Thierry Reding
 <thierry.reding@gmail.com>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
Newsgroups: gmane.linux.ports.arm.kernel, gmane.linux.ports.tegra,
 gmane.linux.drivers.devicetree, gmane.linux.kernel.clk
References: <20190529082139.5581-1-josephl@nvidia.com>
 <20190529082139.5581-7-josephl@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <3929cca9-5277-a88d-5270-c6c2a9c5c2a0@gmail.com>
Date: Thu, 30 May 2019 16:16:26 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190529082139.5581-7-josephl@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_061631_914242_DF950C1B 
X-CRM114-Status: GOOD (  21.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MjkuMDUuMjAxOSAxMToyMSwgSm9zZXBoIExvINC/0LjRiNC10YI6Cj4gVGhpcyBwYXRjaCBpbmNs
dWRlcyB0aGUgc2VxdWVuY2UgZm9yIGNsb2NrIHR1bmluZyBhbmQgdGhlIGR5bmFtaWMKPiB0cmFp
bmluZyBtZWNoYW5pc20gZm9yIHRoZSBjbG9jayBhYm92ZSA4MDBNSHouCj4gCj4gQW5kIGhpc3Rv
cmljYWxseSB0aGVyZSBoYXZlIGJlZW4gZGlmZmVyZW50IHNlcXVlbmNlcyB0byBjaGFuZ2UgdGhl
IEVNQwo+IGNsb2NrLiBUaGUgc2VxdWVuY2UgdG8gYmUgdXNlZCBpcyBzcGVjaWZpZWQgaW4gdGhl
IEVNQyB0YWJsZS4KPiBIb3dldmVyLCBmb3IgdGhlIGN1cnJlbnRseSBzdXBwb3J0ZWQgdXBzdHJl
YW1pbmcgcGxhdGZvcm0sIG9ubHkgdGhlIG1vc3QKPiByZWNlbnQgc2VxdWVuY2UgaXMgdXNlZC4g
U28gb25seSBzdXBwb3J0IHRoYXQgaW4gdGhpcyBwYXRjaC4KPiAKPiBCYXNlZCBvbiB0aGUgd29y
ayBvZiBQZXRlciBEZSBTY2hyaWp2ZXIgPHBkZXNjaHJpanZlckBudmlkaWEuY29tPi4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBKb3NlcGggTG8gPGpvc2VwaGxAbnZpZGlhLmNvbT4KPiAtLS0KPiB2NDoK
PiAtIG5vIGNoYW5nZQo+IC0tLQo+ICBkcml2ZXJzL21lbW9yeS90ZWdyYS9NYWtlZmlsZSAgICAg
ICAgICAgICAgICAgfCAgICAyICstCj4gIGRyaXZlcnMvbWVtb3J5L3RlZ3JhL3RlZ3JhMjEwLWVt
Yy1jYy1yMjEwMjEuYyB8IDE5NTMgKysrKysrKysrKysrKysrKysKPiAgZHJpdmVycy9tZW1vcnkv
dGVncmEvdGVncmEyMTAtZW1jLmMgICAgICAgICAgIHwgICAgNSArCj4gIGRyaXZlcnMvbWVtb3J5
L3RlZ3JhL3RlZ3JhMjEwLWVtYy5oICAgICAgICAgICB8ICAxNTcgKysKPiAgNCBmaWxlcyBjaGFu
Z2VkLCAyMTE2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAgY3JlYXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvbWVtb3J5L3RlZ3JhL3RlZ3JhMjEwLWVtYy1jYy1yMjEwMjEuYwo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL21lbW9yeS90ZWdyYS9NYWtlZmlsZSBiL2RyaXZlcnMvbWVtb3J5
L3RlZ3JhL01ha2VmaWxlCj4gaW5kZXggZjc4YmJiN2NkMTZmLi5kZWYwODdmMTNhMDkgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9tZW1vcnkvdGVncmEvTWFrZWZpbGUKPiArKysgYi9kcml2ZXJzL21l
bW9yeS90ZWdyYS9NYWtlZmlsZQo+IEBAIC0xMiw1ICsxMiw1IEBAIG9iai0kKENPTkZJR19URUdS
QV9NQykgKz0gdGVncmEtbWMubwo+ICAKPiAgb2JqLSQoQ09ORklHX1RFR1JBMjBfRU1DKSAgKz0g
dGVncmEyMC1lbWMubwo+ICBvYmotJChDT05GSUdfVEVHUkExMjRfRU1DKSArPSB0ZWdyYTEyNC1l
bWMubwo+IC1vYmotJChDT05GSUdfVEVHUkEyMTBfRU1DKSArPSB0ZWdyYTIxMC1lbWMubwo+ICtv
YmotJChDT05GSUdfVEVHUkEyMTBfRU1DKSArPSB0ZWdyYTIxMC1lbWMubyB0ZWdyYTIxMC1lbWMt
Y2MtcjIxMDIxLm8KPiAgb2JqLSQoQ09ORklHX0FSQ0hfVEVHUkFfMTg2X1NPQykgKz0gdGVncmEx
ODYubwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lbW9yeS90ZWdyYS90ZWdyYTIxMC1lbWMtY2Mt
cjIxMDIxLmMgYi9kcml2ZXJzL21lbW9yeS90ZWdyYS90ZWdyYTIxMC1lbWMtY2MtcjIxMDIxLmMK
PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uZWM1ZTFkYjcxODk2
Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvbWVtb3J5L3RlZ3JhL3RlZ3JhMjEwLWVt
Yy1jYy1yMjEwMjEuYwo+IEBAIC0wLDAgKzEsMTk1MyBAQAo+ICsvLyBTUERYLUxpY2Vuc2UtSWRl
bnRpZmllcjogR1BMLTIuMAo+ICsvKgo+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMTQtMjAxOSwgTlZJ
RElBIENPUlBPUkFUSU9OLiAgQWxsIHJpZ2h0cyByZXNlcnZlZC4KPiArICovCj4gKwo+ICsjaW5j
bHVkZSA8bGludXgva2VybmVsLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9pby5oPgo+ICsjaW5jbHVk
ZSA8bGludXgvY2xrLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9kZWxheS5oPgo+ICsjaW5jbHVkZSA8
bGludXgvb2YuaD4KPiArI2luY2x1ZGUgPHNvYy90ZWdyYS9tYy5oPgoKTWlub3Igbml0OiBwbGVh
c2Uga2VlcCBhbGwgdGhlIGluY2x1ZGVzIHNvcnRlZCBpbiBhbHBoYWJldCBvcmRlci4KCi0tIApE
bWl0cnkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
