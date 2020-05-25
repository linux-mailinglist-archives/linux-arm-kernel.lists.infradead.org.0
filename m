Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E751E179A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 00:08:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y7VORj7+uVNfhzeqwHufKRI9j98EZ/daTefbEMKQCc4=; b=iL6deQUAmpg1kN
	89s+xdzHzdL8CYb/I1MlXmkGBrhGW8EVNLza9tkf+oM1gXw6b/BoQtwWlU9PA07Rhb7QyMjXbVEIV
	nlpzBE24yFxKt2noiRBSaf7WZKkMyWCdkHsW3xywX2LVoHD40PKf31a0mwTnJ8WGzhgZ+6zMDaJ2k
	8ck5zHecBVSomUvikIr+HjF18RoCyUAefi4O/bcnPh3AEmrr++ysBJFpgnwSX6Pcqc613pUrDzcMp
	LDWU7jc3z/AewEn00EKjIJwKJjR1FDCOyg4X/FI8Fef02URACkz0KEae14RqpuiRWpy4ow2mUr4Da
	pI3XDbSYd2lrjWBqiNFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdLHC-0001CZ-0Q; Mon, 25 May 2020 22:08:54 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdLH1-0001C8-Jk
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 22:08:45 +0000
Received: by mail-wm1-x342.google.com with SMTP id r15so1109718wmh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 15:08:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=B1HW4u5LJKYDF9KUNg/7Plr8B/Znc0iT47gyM0yG2iU=;
 b=cX6QZ9y5aiks4vwrtxOkDbQEjk/dF9h25k22Jg+APG/88UZFshwzTAu+JwmS5qpazX
 Cqz3FVk7wDfM85nq29VU+qwUgFCHz+86sPNm6IiOlFH+jmyY3aZNMNAYBxdX/Hs9iHXK
 OnOE+QDH3rYDn51T/D2mlcKuHBEmk6NS1vPg1cCbn3rSopGbBPpAw51DLh23pF5ptpmh
 iqw+d2VaYJr89ghY3lQCj9xT9UI/Ygi6I00HUuHCAZMbL7dK8LmvkLcJXxLnB/JY5FDf
 J+DnU3jAc0Vbb4DJIe5gBh9rxLCchse5DC264bgZvZGpn1owvQc1LAipt5FwR8jULpUF
 cqDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=B1HW4u5LJKYDF9KUNg/7Plr8B/Znc0iT47gyM0yG2iU=;
 b=q6jOO65d0mRRHZ/sDspADEyeO76c05L9rMOuXIJdudOF6xaoX2msU1qfcJs2FlPOcq
 JctB6FwhrTiX4waDLS6BA6Czp4jFQpb58eYJ5d/qT3CBME97GJpK52vpQ75jxp946Vjk
 To86QMetwUt/YKT+qZ02ale+KjEO+6c1d4x+spg1YVkSF7/62WGFDQx1iFWPGT17Qazt
 CJYoT60+Dli/5zsyKwgV4vbQ5EZCPN+TpgoFk7pkPBLYz6oNQOXhbol79bwnWAjhPvVJ
 ehHVPS32ZqrDbDPvRwQW3pAu90PWHlCy1sdaJLp4I41r85SVD6+9wyOH0Ndt1C43Bc5h
 P5cg==
X-Gm-Message-State: AOAM530vx19IOtuQ22cyzDu7chSpsDTnikBmmuFfdYequvpvxpFYa7xv
 om4RdyDwTI1bMdDjNHnmfIRH2g==
X-Google-Smtp-Source: ABdhPJw9Rxu8ps0O9Ohw9wOXynvpYrr9Dk3yASRBFsmg5cRbkDT4TwOGptGM9LwM8pEcGCRK28UFRA==
X-Received: by 2002:a7b:cd06:: with SMTP id f6mr8591078wmj.8.1590444521387;
 Mon, 25 May 2020 15:08:41 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:f482:8f0b:7244:7a1b?
 ([2a01:e34:ed2f:f020:f482:8f0b:7244:7a1b])
 by smtp.googlemail.com with ESMTPSA id f11sm4457423wrm.13.2020.05.25.15.08.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 May 2020 15:08:40 -0700 (PDT)
Subject: Re: [RFC v3 1/2] thermal: core: Let thermal zone device's mode be
 stored in its struct
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>, linux-pm@vger.kernel.org
References: <9ac3b37a-8746-b8ee-70e1-9c876830ac83@linaro.org>
 <20200417162020.19980-1-andrzej.p@collabora.com>
 <20200417162020.19980-2-andrzej.p@collabora.com>
 <f39c5ca6-5efa-889c-21f5-632dfd24715e@linaro.org>
 <802b4bd5-07c9-de3a-2ac6-5905b12d6adc@collabora.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <b8b69bf3-07bf-8747-dce6-65a73c02fb88@linaro.org>
Date: Tue, 26 May 2020 00:08:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <802b4bd5-07c9-de3a-2ac6-5905b12d6adc@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_150843_719074_6E7A7934 
X-CRM114-Status: GOOD (  37.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 platform-driver-x86@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 kernel@collabora.com, Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>, linux-acpi@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Gayatri Kammela <gayatri.kammela@intel.com>,
 Len Brown <lenb@kernel.org>,
 Barlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ido Schimmel <idosch@mellanox.com>,
 Jiri Pirko <jiri@mellanox.com>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>, netdev@vger.kernel.org,
 Peter Kaestle <peter@piie.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Enrico Weigelt <info@metux.net>, "David S . Miller" <davem@davemloft.net>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjUvMDUvMjAyMCAyMTozNSwgQW5kcnplaiBQaWV0cmFzaWV3aWN6IHdyb3RlOgo+IEhpIERh
bmllbCwKPiAKPiBXIGRuaXUgMjMuMDUuMjAyMCBvwqAyMzoyNCwgRGFuaWVsIExlemNhbm8gcGlz
emU6Cj4+IEhpIEFuZHJ6ZWosCj4+Cj4+IE9uIDE3LzA0LzIwMjAgMTg6MjAsIEFuZHJ6ZWogUGll
dHJhc2lld2ljeiB3cm90ZToKPj4+IFRoZXJtYWwgem9uZSBkZXZpY2VzJyBtb2RlIGlzIHN0b3Jl
ZCBpbiBpbmRpdmlkdWFsIGRyaXZlcnMuIFRoaXMgcGF0Y2gKPj4+IGNoYW5nZXMgaXQgc28gdGhh
dCBtb2RlIGlzIHN0b3JlZCBpbiBzdHJ1Y3QgdGhlcm1hbF96b25lX2RldmljZSBpbnN0ZWFkLgo+
Pj4KPj4+IEFzIGEgcmVzdWx0IGFsbCBkcml2ZXItc3BlY2lmaWMgdmFyaWFibGVzIHN0b3Jpbmcg
dGhlIG1vZGUgYXJlIG5vdAo+Pj4gbmVlZGVkCj4+PiBhbmQgYXJlIHJlbW92ZWQuIENvbnNlcXVl
bnRseSwgdGhlIGdldF9tb2RlKCkgaW1wbGVtZW50YXRpb25zIGhhdmUKPj4+IG5vdGhpbmcKPj4+
IHRvIG9wZXJhdGUgb24gYW5kIG5lZWQgdG8gYmUgcmVtb3ZlZCwgdG9vLgo+Pj4KPj4+IFNvbWUg
dGhlcm1hbCBmcmFtZXdvcmsgc3BlY2lmaWMgZnVuY3Rpb25zIGFyZSBpbnRyb2R1Y2VkOgo+Pj4K
Pj4+IHRoZXJtYWxfem9uZV9kZXZpY2VfZ2V0X21vZGUoKQo+Pj4gdGhlcm1hbF96b25lX2Rldmlj
ZV9zZXRfbW9kZSgpCj4+PiB0aGVybWFsX3pvbmVfZGV2aWNlX2VuYWJsZSgpCj4+PiB0aGVybWFs
X3pvbmVfZGV2aWNlX2Rpc2FibGUoKQo+Pj4KPj4+IHRoZXJtYWxfem9uZV9kZXZpY2VfZ2V0X21v
ZGUoKSBhbmQgaXRzICJzZXQiIGNvdW50ZXJwYXJ0IHRha2UgdHpkJ3MgbG9jawo+Pj4gYW5kIHRo
ZSAic2V0IiBjYWxscyBkcml2ZXIncyBzZXRfbW9kZSgpIGlmIHByb3ZpZGVkLCBzbyB0aGUgbGF0
dGVyIG11c3QKPj4+IG5vdCB0YWtlIHRoaXMgbG9jayBhZ2Fpbi4gQXQgdGhlIGVuZCBvZiB0aGUg
InNldCIKPj4+IHRoZXJtYWxfem9uZV9kZXZpY2VfdXBkYXRlKCkgaXMgY2FsbGVkIHNvIGRyaXZl
cnMgZG9uJ3QgbmVlZCB0bwo+Pj4gcmVwZWF0IHRoaXMKPj4+IGludm9jYXRpb24gaW4gdGhlaXIg
c3BlY2lmaWMgc2V0X21vZGUoKSBpbXBsZW1lbnRhdGlvbnMuCj4+Pgo+Pj4gVGhlIHNjb3BlIG9m
IHRoZSBhYm92ZSA0IGZ1bmN0aW9ucyBpcyBwdXJwb3NlZGx5IGxpbWl0ZWQgdG8gdGhlIHRoZXJt
YWwKPj4+IGZyYW1ld29yayBhbmQgZHJpdmVycyBhcmUgbm90IHN1cHBvc2VkIHRvIGNhbGwgdGhl
bS4gVGhpcyBlbmNhcHN1bGF0aW9uCj4+PiBkb2VzIG5vdCBmdWxseSB3b3JrIGF0IHRoZSBtb21l
bnQgZm9yIHNvbWUgZHJpdmVycywgdGhvdWdoOgo+Pj4KPj4+IC0gcGxhdGZvcm0veDg2L2FjZXJo
ZGYuYwo+Pj4gLSBkcml2ZXJzL3RoZXJtYWwvaW14X3RoZXJtYWwuYwo+Pj4gLSBkcml2ZXJzL3Ro
ZXJtYWwvaW50ZWwvaW50ZWxfcXVhcmtfZHRzX3RoZXJtYWwuYwo+Pj4gLSBkcml2ZXJzL3RoZXJt
YWwvb2YtdGhlcm1hbC5jCj4+Pgo+Pj4gYW5kIHRoZXkgbWFuaXB1bGF0ZSBzdHJ1Y3QgdGhlcm1h
bF96b25lX2RldmljZSdzIG1lbWJlcnMgZGlyZWN0bHkuCj4+Pgo+Pj4gc3RydWN0IHRoZXJtYWxf
em9uZV9wYXJhbXMgZ2FpbnMgYSBuZXcgbWVtYmVyIGNhbGxlZCBpbml0aWFsX21vZGUsIHdoaWNo
Cj4+PiBpcyB1c2VkIHRvIHNldCB0emQncyBtb2RlIGF0IHJlZ2lzdHJhdGlvbiB0aW1lLgo+Pj4K
Pj4+IFRoZSBzeXNmcyAibW9kZSIgYXR0cmlidXRlIGlzIGFsd2F5cyBleHBvc2VkIGZyb20gbm93
IG9uLCBiZWNhdXNlIGFsbAo+Pj4gdGhlcm1hbCB6b25lIGRldmljZXMgbm93IGhhdmUgdGhlaXIg
Z2V0X21vZGUoKSBpbXBsZW1lbnRlZCBhdCB0aGUKPj4+IGdlbmVyaWMKPj4+IGxldmVsIGFuZCBp
dCBpcyBhbHdheXMgYXZhaWxhYmxlLiBFeHBvc2luZyAibW9kZSIgZG9lc24ndCBodXJ0IHRoZQo+
Pj4gZHJpdmVycwo+Pj4gd2hpY2ggZG9uJ3QgcHJvdmlkZSB0aGVpciBvd24gc2V0X21vZGUoKSwg
YmVjYXVzZSB3cml0aW5nIHRvICJtb2RlIiB3aWxsCj4+PiByZXN1bHQgaW4gLUVQRVJNLCBhcyBl
eHBlY3RlZC4KPj4KPj4gVGhlIHJlc3VsdCBpcyBncmVhdCwgdGhhdCBpcyBhIG5pY2UgY2xlYW51
cCBvZiB0aGUgdGhlcm1hbCBmcmFtZXdvcmsuCj4+Cj4+IEFmdGVyIHJldmlldyBpdCBhcHBlYXJz
IHRoZXJlIGFyZSBzdGlsbCBwcm9ibGVtcyBJTU8sIGVzcGVjaWFsbHkgd2l0aAo+PiB0aGUgc3Vz
cGVuZCAvIHJlc3VtZSBwYXRoLiBUaGUgcGF0Y2ggaXMgYmlnLCBpdCBpcyBhIGJpdCBjb21wbGV4
IHRvCj4+IGNvbW1lbnQuIEkgc3VnZ2VzdCB0byByZS1vcmcgdGhlIGNoYW5nZXMgYXMgZm9sbG93
aW5nOgo+Pgo+PiDCoCAtIHBhdGNoIDEgOiBBZGQgdGhlIGZvdXIgZnVuY3Rpb25zOgo+Pgo+PiDC
oCAqIHRoZXJtYWxfem9uZV9kZXZpY2Vfc2V0X21vZGUoKQo+PiDCoCAqIHRoZXJtYWxfem9uZV9k
ZXZpY2VfZW5hYmxlKCkKPj4gwqAgKiB0aGVybWFsX3pvbmVfZGV2aWNlX2Rpc2FibGUoKQo+PiDC
oCAqIHRoZXJtYWxfem9uZV9kZXZpY2VfaXNfZW5hYmxlZCgpCj4+Cj4+ICpidXQqIGRvIG5vdCBl
eHBvcnQgdGhlcm1hbF96b25lX2RldmljZV9zZXRfbW9kZSgpLCBpdCBtdXN0IHN0YXkgcHJpdmF0
ZQo+PiB0byB0aGUgdGhlcm1hbCBmcmFtZXdvcmsgQVRNLgo+IAo+IE5vdCBleHBvcnRpbmcgdGhl
cm1hbF96b25lX2RldmljZV9zZXRfbW9kZSgpIGltcGxpZXMgbm90IGV4cG9ydGluZwo+IHRoZXJt
YWxfem9uZV9kZXZpY2VfZW5hYmxlKCkvdGhlcm1hbF96b25lX2RldmljZV9kaXNhYmxlKCkgYmVj
YXVzZSB0aGV5Cj4gYXJlIGltcGxlbWVudGVkIGluIHRlcm1zIG9mIHRoZSBmb3JtZXIuIE9yIGRv
IHlvdSBoYXZlIGEgZGlmZmVyZW50IGlkZWE/CgpJIG1lYW50IG5vIGlubGluZSBmb3IgdGhlbSBi
dXQgYXMgYmVsb3c6CgppbiAuaAoKZXh0ZXJuIGludCB0aGVybWFsX3pvbmVfZGV2aWNlX2VuYWJs
ZSgpOwpleHRlcm4gaW50IHRoZXJtYWxfem9uZV9kZXZpY2VfZGlzYWJsZSgpOwpleHRlcm4gaW50
IHRoZXJtYWxfem9uZV9kZXZpY2VfaXNfZW5hYmxlZCgpOwoKaW4gLmMKCnN0YXRpYyBpbnQgdGhl
cm1hbF96b25lX2RldmljZV9zZXRfbW9kZSgpCnsKCS4uLgp9CgppbnQgdGhlcm1hbF96b25lX2Rl
dmljZV9lbmFibGUoKQp7Cgl0aGVybWFsX3pvbmVfZGV2aWNlX3NldF9tb2RlKCk7Cn0KRVhQT1JU
X1NZTUJPTF9HUEwodGhlcm1hbF96b25lX2RldmljZV9lbmFibGUpOwoKCj4+IMKgIC0gcGF0Y2gg
MiA6IEFkZCB0aGUgbW9kZSBUSEVSTUFMX0RFVklDRV9TVVNQRU5ERUQKPj4KPj4gSW4gdGhlIHRo
ZXJtYWxfcG1fbm90aWZ5KCkgaW4gdGhlOgo+Pgo+PiDCoCAtIFBNX1NVU1BFTkRfUFJFUEFSRSBj
YXNlLCBzZXQgdGhlIG1vZGUgdG8gVEhFUk1BTF9ERVZJQ0VfU1VTUEVOREVEIGlmCj4+IHRoZSBt
b2RlIGlzIFRIRVJNQUxfREVWSUNFX0VOQUJMRUQKPj4KPj4gwqAgLSBQTV9QT1NUX1NVU1BFTkQg
Y2FzZSwgc2V0IHRoZSBtb2RlIHRvIFRIRVJNQUxfREVWSUNFX0VOQUJMRUQsIGlmIHRoZQo+PiBt
b2RlIGlzIFRIRVJNQUxfREVWSUNFX1NVU1BFTkRFRAo+Pgo+PiDCoCAtIHBhdGNoIDMgOiBDaGFu
Z2UgdGhlIG1vbml0b3IgZnVuY3Rpb24KPj4KPj4gQ2hhbmdlIG1vbml0b3JfdGhlcm1hbF96b25l
KCkgZnVuY3Rpb24gdG8gc2V0IHRoZSBwb2xsaW5nIHRvIHplcm8gaWYgdGhlCj4+IG1vZGUgaXMg
VEhFUk1BTF9ERVZJQ0VfRElTQUJMRUQKPiAKPiBTbyB3ZSBhc3N1bWUgdGhpczogaWYgYSBkcml2
ZXIgY3JlYXRlcyBhIHR6IHdoaWNoIGlzIGluaXRpYWxseSBFTkFCTEVELAo+IGl0IHdpbGwgYmUg
cG9sbGVkLiBJZiBhIGRyaXZlciBjcmVhdGVzIGEgdHogd2hpY2ggaXMgaW5pdGlhbGx5IERJU0FC
TEVECj4gKHdoaWNoIGlzIHdoYXQgeW91IHN1Z2dlc3QgdGhlIGRyaXZlcnMgc2hvdWxkIGJlIGRv
aW5nLCBidXQgbm90IGFsbCBvZiB0aGVtCj4gZG8pLCBpdCB3b24ndCBiZSBwb2xsZWQgdW5sZXNz
IHRoZSBkcml2ZXIgZXhwbGljaXRseSBlbmFibGVzIGl0cyB0ei4KClllcy4KCj4gQW0gSSBjb25j
bHVkaW5nIHJpZ2h0IHRoYXQgYSBzdXNwZW5kZWQgZGV2aWNlIHdpbGwgcmVtYWluIHBvbGxlZD8g
SXMgaXQgb2s/CgpBY3R1YWxseSBpdCBpcyBub3Qgb2sgYnV0IEFGQUlDVCwgaXQgaXMgdGhlIGN1
cnJlbnQgYmVoYXZpb3IuIFRoZQpwb2xsaW5nIGRvIG5vdCBzdG9wIGJ1dCB0aGUgJ2luX3N1c3Bl
bmQnIHByZXZlbnQgYW4gdXBkYXRlLiBJIHRob3VnaHQgd2UKY2FuIHBvc3QtcG9uZSB0aGUgc3Vz
cGVuZCBjYXNlIGxhdGVyIHdoZW4gdGhlIEVOQUJMRUQvRElTQUJMRUQgY2hhbmdlcwphcmUgY29u
c29saWRhdGVkLCBzbyBTVVNQRU5ERUQgd2lsbCBhY3QgYXMgRElTQUJMRUQuCgo+PiDCoCAtIHBh
dGNoIDQgOiBEbyB0aGUgY2hhbmdlcyB0byByZW1vdmUgZ2V0X21vZGUoKSBvcHMKPj4KPj4gTWFr
ZSBzdXJlIHRoZXJlIGlzIG5vIGFjY2VzcyB0byB0ei0+bW9kZSBmcm9tIHRoZSBkcml2ZXJzIGFu
eW1vcmUgYnV0Cj4+IHVzZSBvZiB0aGUgZnVuY3Rpb25zIG9mIHBhdGNoIDEuIElNTywgdGhpcyBp
cyB0aGUgdHJpY2t5IHBhcnQgYmVjYXVzZSBhCj4+IHBhcnQgb2YgdGhlIGRyaXZlcnMgYXJlIG5v
dCBjYWxsaW5nIHRoZSB1cGRhdGUgYWZ0ZXIgc2V0dGluZyB0aGUgbW9kZQo+PiB3aGlsZSB0aGUg
ZnVuY3Rpb24gdGhlcm1hbF96b25lX2RldmljZV9lbmFibGUoKS9kaXNhYmxlKCkgY2FsbCB1cGRh
dGUKPj4gdmlhIHRoZSB0aGVybWFsX3pvbmVfZGV2aWNlX3NldF9tb2RlKCksIHNvIHdlIG11c3Qg
YmUgc3VyZSB0byBub3QgYnJlYWsKPj4gYW55dGhpbmcuCj4gCj4gQWgsIEkgZ3Vlc3Mgbm93IGlz
IHRoZSB0aW1lIHRvIG1ha2UgdGhlIGZ1bmN0aW9ucyBmcm9tIHBhdGNoIDEgZXhwb3J0ZWQ/CgpZ
ZXMgOikKCj4gRW5zdXJpbmcgbm8gZHJpdmVyIGFjY2Vzc2VzIHR6LT5tb2RlIGRpcmVjdGx5IG1p
Z2h0IGJlIHRyaWNreSwgaW5kZWVkLgo+IElmIGl0IGNhbiBiZSBzaG93biB0aGF0IGNhbGxpbmcg
dGhlIHVwZGF0ZSBkb2Vzbid0IGh1cnQgYSBwYXJ0aWN1bGFyCj4gZHJpdmVyLAo+IGl0IGNhbiBi
ZSBjb252ZXJ0ZWQgdG8gdXNlIHRoZSBoZWxwZXJzIGluc3RlYWQgb2YgbWFuaXB1bGF0aW5nIHR6
LT5tb2RlCj4gZGlyZWN0bHkuIElmLCBob3dldmVyLCBpdCBkb2VzIG1ha2UgYSBkaWZmZXJlbmNl
IHRoZW4gaXQgYWxsIGRlcGVuZHMgYW5kCj4gZ2V0dGluZyByaWQgb2YgYWNjZXNzaW5nIHR6LT5t
b2RlIGRpcmVjdGx5IG1pZ2h0IHJlcXVpcmUgaGVscCBmcm9tIHRoZQo+IHJlc3BlY3RpdmUgbWFp
bnRhaW5lcnMuCgpBZ3JlZS4KCj4gVGhpcyBhbHNvIGNhbGxzIGZvciBzdG9yaW5nIHR6J3MgbW9k
ZSBpbiBzdHJ1Y3QgdGhlcm1hbF96b25lX2RldmljZQo+IHJhdGhlciB0aGFuIGluIGluZGl2aWR1
YWwgZHJpdmVycy4gSW4gZmFjdCBpdCBzZWVtcyB0aGUgcHVycG9zZQo+IG9mIC0+Z2V0X21vZGUo
KSBpcyB0byBwcm9kdWNlIHRoZSBzdGF0ZSBzdG9yZWQgaW50ZXJuYWxseSBpbiBkcml2ZXJzLgo+
IFJlbW92aW5nIC0+Z2V0X21vZGUoKSByZXF1aXJlcyBjaGFuZ2luZyB0aGUgcGxhY2Ugd2hlcmUg
dGhlIHN0YXRlIGlzCj4gc3RvcmVkLiBzdHJ1Y3QgdGhlcm1hbF96b25lX2RldmljZSBzZWVtcyBt
b3N0IGFwcHJvcHJpYXRlLiBTbyB0aGlzIHBhdGNoCj4gaXMgbm90IGdvaW5nIHRvIGJlIHNtYWxs
LgoKWWVzLCB0aGUgcGF0Y2ggY2FuIGJlIGJpZy4gSXQgaXMgZmluZSBpZiB0aGUgY2hhbmdlcyBh
cmUgb25seSB0byByZXBsYWNlCnR6LT5tb2RlIGJ5IHRoZWlyIHJlc3BlY3RpdmUgZGlzYWJsZS9l
bmFibGUvaXNfZW5hYmxlZCBmdW5jdGlvbnMuIE1vcmUKY29tcGxleCBjaGFuZ2VzIGNhbiBiZSBz
ZXBhcmF0ZS4KCj4gT25jZSB3ZSBzdGFydCBzdG9yaW5nIHR6J3Mgc3RhdGUgaW4gc3RydWN0IHRo
ZXJtYWxfem9uZV9kZXZpY2UgdGhlCj4gLT5zZXRfbW9kZSgpIGltcGxlbWVudGF0aW9ucyBuZWVk
IHRvIGJlIGNoYW5nZWQsIHRvby4gVG8gbWUgaXQgc2VlbXMKPiBhd2t3YXJkIHRvIHNwbGl0IHRo
aXMgY2hhbmdlIGluIHR3byBwYXRjaGVzOiBpZiB3ZSBrZWVwIHRoZSBjaGFuZ2VzCj4gc3BsaXQg
dGhlbiBpbiBwYXRjaCA0IHdlIG5lZWQgdG8gaW50cm9kdWNlIGNvZGUgd2hpY2ggaW1wbGVtZW50
cwo+IC0+c2V0X21vZGUoKSBpbiB0ZXJtcyBvZiB0aGUgbmV3IHN0YXRlIGxvY2F0aW9uLCBvbmx5
IHRvIHJlbW92ZSBpdAo+IGluIHRoZSB2ZXJ5IG5leHQgcGF0Y2guCgpZZXMsIGl0IGlzIGEgdmFs
aWQgcG9pbnQuIE1heSBiZSB5b3UgY2FuIGRvIHRoZSBjaGFuZ2VzIGluIHR3byBwYXRjaGVzCnRv
IHNlZSB0aGUgcmVzdWx0cyBpbiB0ZXJtcyBvZiBjb21wbGV4aXR5IGZvciB0aGUgcmV2aWV3IHBy
b2Nlc3MsIHRoZW4KZGVjaWRlIGlmIGl0IGlzIHdvcnRoIHRvIG1lcmdlIHRoZW0gYmVmb3JlIHNl
bmRpbmcuCgo+IFdoaWxlIHdlIGFyZSBhdCBpdCBzb21lIGRyaXZlcnMsIG5hbWVseSBhY3BpL3Ro
ZXJtYWwgYW5kIGludDM0MDAgc3RvcmUKPiB0aGVpciBtb2RlIGluIGFuIGludCByYXRoZXIgdGhh
biBlbnVtIHRoZXJtYWxfZGV2aWNlX21vZGUuIFNvIG1heWJlCj4gY2hhbmdpbmcgdGhpcyBzaG91
bGQgZ28gZXZlbiBiZWZvcmUgcGF0Y2ggND8KCkkgYWdyZWUuCgo+IGFjZXJoZGYgZG9lcyBub3Qg
c3RvcmUKPiBpdHMgbW9kZSBhdCBhbGwgYW5kIG9uIHRvcCBvZiBpdCBpdCB3YW50cyB0byBtYW5p
cHVsYXRlIHRoZSBwb2xsaW5nCj4gZGVsYXkgZGlyZWN0bHkgYW5kIGl0IGhhcyBhIG1vZHVsZSBw
YXJhbWV0ZXIgd2hpY2ggc3BlY2lmaWVzIGl0LgoKCgo+PiDCoCAtIHBhdGNoIDUgOiBEbyB0aGUg
Y2hhbmdlcyB0byByZW1vdmUgc2V0X21vZGUoKSBvcHMgdXNlcnMKPj4KPj4gQXMgdGhlIHBhdGNo
IDMgc2V0cyB0aGUgcG9sbGluZyB0byB6ZXJvLCB0aGUgcm91dGluZSBpbiB0aGUgZHJpdmVyCj4+
IHNldHRpbmcgdGhlIHBvbGxpbmcgdG8gemVybyBpcyBubyBsb25nZXIgbmVlZGVkIChlZy4gaW4g
dGhlIG1lbGxhbm94Cj4+IGRyaXZlcikuIEkgZXhwZWN0IGludDMwMCB0byBiZSB0aGUgbGFzdCB1
c2VyIG9mIHRoaXMgb3BzLCBob3BlZnVsbHkgd2UKPj4gY2FuIGZpbmQgYSB3YXkgdG8gZ2V0IHJp
ZCBvZiB0aGUgc3BlY2lmaWMgY2FsbCBkb25lIGluc2lkZSBhbmQgdGhlbgo+PiByZW1vdmUgdGhl
IG9wcy4KPiAKPiBhY2VyaGRmIHdhbnRzIC0+c2V0X21vZGUoKSBkZXNwZXJhdGVseS4KClllcywg
dGhlcmUgaXMgYSBjb3VwbGUgb2YgZHJpdmVycyB3aGljaCByZXF1aXJlcyBmb3IgdGhlIG1vbWVu
dCB0byBrZWVwCnRoZSBvcHMtPnNldF9tb2RlIHRvIGJlIGNhbGxlZDogaW50MzQwMCBhbmQgYWNl
cmhkZi4gQm90aCBvZiB0aGVtIHdpbGwKYmUgZ3JlYXRseSBzaW1wbGlmaWVkIHdpdGggdGhlIERJ
U0FCTEVEIC8gRU5BQkxFRCBjaGFuZ2VzLgoKPj4gVGhlIGluaXRpYWxfbW9kZSBhcHByb2FjaCBs
b29rcyBoYWNraXNoLCBJIHN1Z2dlc3QgdG8gbWFrZSB0aGUgZGVmYXVsdAo+PiB0aGUgdGhlcm1h
bCB6b25lIGRpc2FibGVkIGFmdGVyIGNyZWF0aW5nIGFuZCB0aGVuIGV4cGxpY2l0bHkgZW5hYmxl
IGl0Lgo+IAo+IElzIGl0IG5lZWRlZCBpbiBkcml2ZXJzIHdoaWNoIGNyZWF0ZSB0aGVpciB0aGVy
bWFsIHpvbmUgZW5hYmxlZD8KCklNTywgeWVzLiBXZSBhcmUgZG9pbmcgY2hhbmdlcyB3aXRoIGEg
Y29kZSBwcm9uZSB0byBpc3N1ZXMsIHNvIG1ha2luZwp0aGUgc3RlcHM6IGNyZWF0aW9uICsgZW5h
YmxlIHdpbGwgbWFrZSB0aGluZ3MgbW9yZSBjbGVhci4gRm9yIGluc3RhbmNlLAp0aGUgY2xrIGZy
YW1ld29yayBkbyB0aGUgc2FtZS4KCgotLSAKPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFy
by5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFy
bzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0
dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5h
cm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
