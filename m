Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0513F1D7DB6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 18:03:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qXQvTmQ3vh9LiH5rx4YnUtZfYfPS6gLql0CZLwjdXJs=; b=J8iNf3Vnxr7ob1
	TBAQ23ffZhqRKO4K6qBVQ3HHSm2f1cQdpB2y/6L+R1LNAe9tzjeRrasV9w5qS3IQwmSKdalcEJw3V
	EZNskRldD1G1KOpvAi/IFH78Ui07a0OzeAj2cJrDx4OSo1bansp2Y4tAyntUIwTi4cr4RjaNLWwcw
	oxACJ2D0fzbChHiiDqcI4ZVa1c1lqx1tddiA19k5dRbOpqpRLBPjV4BhLOjYZZe5Qvt16w9jqTinF
	FVwb1gZjY2egZIWE6w3duc5nTVdDF5hUn3+kzO7hrDkJvfQjn25TQZCirIOTRreqsa8QUcJyRo5kT
	+vHdtG2ru4XZnaCufX2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaiET-0005AW-K6; Mon, 18 May 2020 16:03:13 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaiEK-00059t-De
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 16:03:05 +0000
Received: by mail-wm1-x344.google.com with SMTP id m12so71179wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 09:03:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=kHp1jqnjDYe5WVMr5QDuCWYGK2hgWg9rc5IEJIxKk3w=;
 b=xANdb5EU+o0BhxfOF0MxnStOFmxwzeL5BktfbSReTzGwrOzIXZjmIPslw/JewW3qYs
 GZI2mWcOSEeF+2mZTyMqjIOlw+VZvZ8/Ji78lNKTzDjakAKU9U3kGm6PxNUgpXWnzHOU
 fBojVaPg9nMm1DEiexnfdG2wd6bPAlwO/8bjR10Z5fqdErSt9IZmLh6vVp1di0sbhw54
 ecepgS7+UaoQr4TY6odYUi+/nVC8cZDxQ3ZhAwpsVKkH47PsrW8uGKfuKN73hzLzyY45
 I74SZggJgEHtXLIHi0RwsXg7TZmuZsg+4rYqSbms8lcIgIodi5KRqEsIsrawKtqKTlXE
 e8SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=kHp1jqnjDYe5WVMr5QDuCWYGK2hgWg9rc5IEJIxKk3w=;
 b=EZe7EHxckYyaRXJu3QZJ4ukP9pFLVn+ymb4SVm3DfUuHcHwsz7MpTjmicg3/z/zFsd
 t1TxBMdutB8KJPNbKIJwnb0kGmZcIX4OZp2cstltqQ8KvmKTuPCELC/T0x8NHOAzFq5p
 S7cDJl9K5L8S0e1tC8qaz8BUbRAzemTczZBMs17he+VbHZklSAwpQtUNgvUPEVsmtr9d
 wgJKxgzcEt0zS1a4u2dxJS60ssvdfKrxgZxawnBIbC0luPGvHkHKP5jGG+nXn3IkOS6E
 qkBc1dSvE2R0yLUBproLDXhizgH55G+quCPpqErVD5SCFgE7ANxE3hNmmhndE0RZI9WG
 L98Q==
X-Gm-Message-State: AOAM5338xukE24qCiIulG5mQsijy1BxUOHi0SFAN80vxBZouqNRb22d7
 z8Vd9cxRS7NdjKk7ehn3khOaTA==
X-Google-Smtp-Source: ABdhPJz+tML2+MA0h6epElsjzpBYHR7aAK55wbLH9UOQc87ETu0yWvrF/5P42QSgZ1c73Yj5cn0Sqw==
X-Received: by 2002:a1c:b354:: with SMTP id c81mr83974wmf.136.1589817782874;
 Mon, 18 May 2020 09:03:02 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:9e7:3ac5:a930:2cd8?
 ([2a01:e34:ed2f:f020:9e7:3ac5:a930:2cd8])
 by smtp.googlemail.com with ESMTPSA id w12sm19493wmk.12.2020.05.18.09.03.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 May 2020 09:03:02 -0700 (PDT)
Subject: Re: [PATCH v3 0/9] clocksource/drivers/timer-atmel-tcb: add sama5d2
 support
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
References: <20200506080554.283177-1-alexandre.belloni@bootlin.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <f0feb409-11fb-08de-cc06-216a16de994a@linaro.org>
Date: Mon, 18 May 2020 18:03:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200506080554.283177-1-alexandre.belloni@bootlin.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_090304_462961_C880648B 
X-CRM114-Status: GOOD (  20.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: kamel.bouhara@bootlin.com, devicetree@vger.kernel.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQWxleGFuZHJlLAoKSSB3b3VsZCBsaWtlIHRvIHRha2UgdGhlIHdob2xlIHNlcmllcyBidXQg
SSBuZWVkIFJvYidzIGJsZXNzaW5nIGZvciB0aGUKRFQgcGFydHMuCgpPbiAwNi8wNS8yMDIwIDEw
OjA1LCBBbGV4YW5kcmUgQmVsbG9uaSB3cm90ZToKPiBUaGlzIHNlcmllcyBtYWlubHkgYWRkcyBz
YW1hNWQyIHN1cHBvcnQgd2hlcmUgd2UgbmVlZCB0byBhdm9pZCB1c2luZwo+IGNsb2NrIGluZGV4
IDAgYmVjYXVzZSB0aGF0IGNsb2NrIGlzIG5ldmVyIGVuYWJsZWQgYnkgdGhlIGRyaXZlci4KPiAK
PiBUaGVyZSBpcyBhbHNvIGEgcmV3b3JrIG9mIHRoZSAzMmtoeiBjbG9jayBoYW5kbGluZyBzbyBp
dCBpcyBub3QgdXNlZCBmb3IKPiBjbG9ja2V2ZW50cyBvbiAzMiBiaXQgY291bnRlciBiZWNhdXNl
IHRoZSBpbmNyZWFzZWQgcmF0ZSBpbXByb3ZlcyB0aGUKPiByZXNvbHV0aW9uIGFuZCBkb2Vzbid0
IGhhdmUgYW55IGRyYXdiYWNrIHdpdGggdGhhdCBjb3VudGVyIHdpZHRoLiBUaGlzCj4gcmVwbGFj
ZXMgYSBwYXRjaCB0aGF0IGhhcyBiZWVuIGNhcnJpZWQgaW4gdGhlIGxpbnV4LXJ0IHRyZWUgZm9y
IGEgd2hpbGUuCj4gCj4gQ2hhbmdlcyBpbiB2MzoKPiAgLSBNb3ZlZCB0aGUgY2hpbGQgbm9kZSBk
b2N1bWVudGF0aW9uIHRvIHRoZSBwYXJlbnQgZG9jdW1lbnRhdGlvbgo+IAo+IENoYW5nZXMgaW4g
djI6Cj4gIC0gUmViYXNlZCBvbiB2NS43LXJjMQo+ICAtIE1vdmVkIHRoZSBiaW5kaW5nIGRvY3Vt
ZW50YXRpb24gdG8gaXRzIHByb3BlciBwbGFjZQo+ICAtIEFkZGVkIGJhY2sgdGhlIGF0bWVsLHRj
Yi10aW1lciBjaGlsZCBub2RlIGRvY3VtZW50YXRpb24KPiAKPiBBbGV4YW5kcmUgQmVsbG9uaSAo
OCk6Cj4gICBkdC1iaW5kaW5nczogYXRtZWwtdGNiOiBjb252ZXJ0IGJpbmRpbmdzIHRvIGpzb24t
c2NoZW1hCj4gICBkdC1iaW5kaW5nczogbWljcm9jaGlwOiBhdG1lbCxhdDkxcm05MjAwLXRjYjog
YWRkIHNhbWE1ZDIgY29tcGF0aWJsZQo+ICAgQVJNOiBkdHM6IGF0OTE6IHNhbWE1ZDI6IGFkZCBU
Q0IgR0NMSwo+ICAgY2xvY2tzb3VyY2UvZHJpdmVycy90aW1lci1hdG1lbC10Y2I6IHJld29yayAz
MmtoeiBjbG9jayBzZWxlY3Rpb24KPiAgIGNsb2Nrc291cmNlL2RyaXZlcnMvdGltZXItYXRtZWwt
dGNiOiBmaWxsIHRjYl9jb25maWcKPiAgIGNsb2Nrc291cmNlL2RyaXZlcnMvdGltZXItYXRtZWwt
dGNiOiBzdG9wIHVzaW5nIHRoZSAzMmtIeiBmb3IKPiAgICAgY2xvY2tldmVudHMKPiAgIGNsb2Nr
c291cmNlL2RyaXZlcnMvdGltZXItYXRtZWwtdGNiOiBhbGxvdyBzZWxlY3RpbmcgZmlyc3QgZGl2
aWRlcgo+ICAgY2xvY2tzb3VyY2UvZHJpdmVycy90aW1lci1hdG1lbC10Y2I6IGFkZCBzYW1hNWQy
IHN1cHBvcnQKPiAKPiBLYW1lbCBCb3VoYXJhICgxKToKPiAgIEFSTTogYXQ5MTogYWRkIGF0bWVs
IHRjYiBjYXBhYmlsaXRpZXMKPiAKPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL2F0bWVs
LXRjYi50eHQgICAgIHwgIDU2IC0tLS0tLS0KPiAgLi4uL3NvYy9taWNyb2NoaXAvYXRtZWwsYXQ5
MXJtOTIwMC10Y2IueWFtbCAgIHwgMTUwICsrKysrKysrKysrKysrKysrKwo+ICBhcmNoL2FybS9i
b290L2R0cy9zYW1hNWQyLmR0c2kgICAgICAgICAgICAgICAgfCAgMTIgKy0KPiAgZHJpdmVycy9j
bG9ja3NvdXJjZS90aW1lci1hdG1lbC10Y2IuYyAgICAgICAgIHwgMTAxICsrKysrKystLS0tLQo+
ICBpbmNsdWRlL3NvYy9hdDkxL2F0bWVsX3RjYi5oICAgICAgICAgICAgICAgICAgfCAgIDUgKwo+
ICA1IGZpbGVzIGNoYW5nZWQsIDIxOSBpbnNlcnRpb25zKCspLCAxMDUgZGVsZXRpb25zKC0pCj4g
IGRlbGV0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZk
L2F0bWVsLXRjYi50eHQKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9zb2MvbWljcm9jaGlwL2F0bWVsLGF0OTFybTkyMDAtdGNiLnlhbWwKPiAK
CgotLSAKPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNl
IHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vi
b29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9s
aW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4g
QmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
