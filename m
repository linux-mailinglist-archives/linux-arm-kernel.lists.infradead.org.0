Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F59AE670
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 11:14:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cv4t9eHe2Mi1dfQjnV5xyRrs3ZH2fpBTRvdO+z5bLX4=; b=XMMGd5l7YcVpmh
	PdtRzdYPAAy9LxzApiaCwRwfrpvSeAfybhaWsIH80bM/0XE44zG4pSxwSrEJhqqx8hbLkDmCRmVVC
	woPEm8G82/m6jKX50TxDscl3naAjjbyGLazuhiDQi3ESFWBiHTgTpDtpZjtILo1ntAs+DLgOtA0uj
	Bw3lomi+w7CHwwC499zlZcLcZI3IBP4ZavdUnt1gwMNKA67rVj1DkFz+9oiA9pJT8tQePjh7lzSmH
	T8XuTiZ2O5epkhrS1ooUiSEcwN0F7XJVYjaDfzbnBfCwG/ZAbe24UcxfLpb1uAaeyr0bE3lV6qnp0
	3aKuSSsStuuwtmfHhpDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7cES-0006Wx-MY; Tue, 10 Sep 2019 09:14:40 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7cEB-0006VK-GQ
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 09:14:25 +0000
Received: by mail-wr1-x444.google.com with SMTP id g7so18623218wrx.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 02:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=KggzyQTt9YMyc2e0zeHCKuseEmxSFUreE/D03f8R1R0=;
 b=NDqL1gX8Ar9j3idQWlhCBLfl2ifiSbwLFgp/lPjUdkMLZVaLI+dxj+pmLWgfzN+VNn
 q5QilFx3dcH6M/qg8NNqF0Sf4nE5RoUTtj3Yi+/Qm1f6AqAsfVFBrJBqfqN0pasZ+Lqd
 DIOoV/SfplYO7hM12+n9yvnxfQ3tvM9yBmjbhuvptlv7rS8H7KpOwjjyZUVLLImTVVUL
 6vinHeRzaIAEIiaehPyRQzC2AGpeLXJ5mvCNe+j+SPubgah+fsciZ/J5sdoSFx9jjJ6k
 /TA6n+N+JiA/AZ6SECzRb4h+31h/Jq102kN+lmlW+MWyBGfepGzi9p68ppzwvuyptPtM
 zmfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=KggzyQTt9YMyc2e0zeHCKuseEmxSFUreE/D03f8R1R0=;
 b=GJpoLaV0SjdEW2okcgqifcFwXeDCm34weQFfVSqnCpF8am/++dpWUGK0t6pP5acTc/
 lKAnzQ2P9LeaX3SAX4cKGFpR1V5ZDQowPsop5u8zic+fu/zMH8tQzyEK9XuoakY47HfP
 gluitI/DQker7fpnZs189UET9WdIEQtgKt6LnBlVYqXJahawz6FiMTqI/XU/0eQYPjdK
 3PZnpDZD0cYGaZWO/NEIiJMimEMBUKgS9yL9Qbt0Xe1KPAS6OjBnNxd4RpQVOgooeVN6
 NetsUVgDAoJQ1yrXiW4GlGwhOKIOh/0NMJZH/verATsz59VtLdTpN0whW+i8T3Ci95F/
 Q5Og==
X-Gm-Message-State: APjAAAW1Gok3yQ3Gy0svDZp5J2AE8zkSaQt9akDiWaubYSW0icNlanJs
 bSI6qWq/oVkupk17f2W/6KBq6Q==
X-Google-Smtp-Source: APXvYqxjKHgmYxziqpFCqlhzhz7yM8EGCE/yXsYx9BaDfdVvKV6ats+0t7Sgfw0b984HcDIj7YcQPQ==
X-Received: by 2002:adf:fc8a:: with SMTP id g10mr19319081wrr.354.1568106861769; 
 Tue, 10 Sep 2019 02:14:21 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id f143sm2485376wme.40.2019.09.10.02.14.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 10 Sep 2019 02:14:21 -0700 (PDT)
Subject: Re: [PATCH 6/6] arm64: dts: khadas-vim3: add commented support for
 PCIe
To: Marc Zyngier <marc.zyngier@arm.com>
References: <1567950178-4466-1-git-send-email-narmstrong@baylibre.com>
 <1567950178-4466-7-git-send-email-narmstrong@baylibre.com>
 <864l1ls9wy.wl-maz@kernel.org>
 <2c25e8b5-191f-96c9-8989-23959a7b1c4e@baylibre.com>
 <8636h4seeq.wl-marc.zyngier@arm.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <837e8ced-de84-1645-b5ba-6db1eacbc50d@baylibre.com>
Date: Tue, 10 Sep 2019 11:14:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <8636h4seeq.wl-marc.zyngier@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_021423_547877_AC74210A 
X-CRM114-Status: GOOD (  20.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: lorenzo.pieralisi@arm.com, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, kishon@ti.com, repk@triplefau.lt,
 linux-pci@vger.kernel.org, bhelgaas@google.com,
 linux-amlogic@lists.infradead.org, yue.wang@Amlogic.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTAvMDkvMjAxOSAxMToxMiwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IE9uIE1vbiwgMDkgU2Vw
IDIwMTkgMTg6NTA6NDIgKzAxMDAsCj4gTmVpbCBBcm1zdHJvbmcgPG5hcm1zdHJvbmdAYmF5bGli
cmUuY29tPiB3cm90ZToKPj4KPj4gSGkgTWFyYywKPj4KPj4gTGUgMDkvMDkvMjAxOSDDoCAxODoz
NywgTWFyYyBaeW5naWVyIGEgw6ljcml0IDoKPj4+IE9uIFN1biwgMDggU2VwIDIwMTkgMTQ6NDI6
NTggKzAxMDAsCj4+PiBOZWlsIEFybXN0cm9uZyA8bmFybXN0cm9uZ0BiYXlsaWJyZS5jb20+IHdy
b3RlOgo+Pj4+Cj4+Pj4gVGhlIFZJTTMgb24tYm9hcmQgIE1DVSBjYW4gbXV4IHRoZSBQQ0llL1VT
QjMuMCBzaGFyZWQgZGlmZmVyZW50aWFsCj4+Pj4gbGluZXMgdXNpbmcgYSBGVVNCMzQwVE1YIFVT
QiAzLjEgU3VwZXJTcGVlZCBEYXRhIFN3aXRjaCBiZXR3ZWVuCj4+Pj4gYW4gVVNCMy4wIFR5cGUg
QSBjb25uZWN0b3IgYW5kIGEgTS4yIEtleSBNIHNsb3QuCj4+Pj4gVGhlIFBIWSBkcml2aW5nIHRo
ZXNlIGRpZmZlcmVudGlhbCBsaW5lcyBpcyBzaGFyZWQgYmV0d2Vlbgo+Pj4+IHRoZSBVU0IzLjAg
Y29udHJvbGxlciBhbmQgdGhlIFBDSWUgQ29udHJvbGxlciwgdGh1cyBvbmx5Cj4+Pj4gYSBzaW5n
bGUgY29udHJvbGxlciBjYW4gdXNlIGl0Lgo+Pj4+Cj4+Pj4gVGhlIG5lZWRlZCBEVCBjb25maWd1
cmF0aW9uIHdoZW4gdGhlIE1DVSBpcyBjb25maWd1cmVkIHRvIG11eAo+Pj4+IHRoZSBQQ0llL1VT
QjMuMCBkaWZmZXJlbnRpYWwgbGluZXMgdG8gdGhlIE0uMiBLZXkgTSBzbG90IGlzCj4+Pj4gYWRk
ZWQgY29tbWVudGVkIGFuZCBtYXkgdW5jb21tZW50ZWQgdG8gZGlzYWJsZSBVU0IzLjAgZnJvbSB0
aGUKPj4+PiBVU0IgQ29tcGxleCBhbmQgZW5hYmxlIHRoZSBQQ0llIGNvbnRyb2xsZXIuCj4+Pj4K
Pj4+PiBTaWduZWQtb2ZmLWJ5OiBOZWlsIEFybXN0cm9uZyA8bmFybXN0cm9uZ0BiYXlsaWJyZS5j
b20+Cj4+Pj4gLS0tCj4+Pj4gIC4uLi9hbWxvZ2ljL21lc29uLWcxMmItYTMxMWQta2hhZGFzLXZp
bTMuZHRzICB8IDIyICsrKysrKysrKysrKysrKysrKysKPj4+PiAgLi4uL2FtbG9naWMvbWVzb24t
ZzEyYi1zOTIyeC1raGFkYXMtdmltMy5kdHMgIHwgMjIgKysrKysrKysrKysrKysrKysrKwo+Pj4+
ICAuLi4vYm9vdC9kdHMvYW1sb2dpYy9tZXNvbi1raGFkYXMtdmltMy5kdHNpICAgfCAgNCArKysr
Cj4+Pj4gIC4uLi9kdHMvYW1sb2dpYy9tZXNvbi1zbTEta2hhZGFzLXZpbTNsLmR0cyAgICB8IDIy
ICsrKysrKysrKysrKysrKysrKysKPj4+PiAgNCBmaWxlcyBjaGFuZ2VkLCA3MCBpbnNlcnRpb25z
KCspCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbWxvZ2ljL21l
c29uLWcxMmItYTMxMWQta2hhZGFzLXZpbTMuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbWxv
Z2ljL21lc29uLWcxMmItYTMxMWQta2hhZGFzLXZpbTMuZHRzCj4+Pj4gaW5kZXggM2E2YTFlMGMx
ZTMyLi4wNTc3YjE0MzVjYmIgMTAwNjQ0Cj4+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9h
bWxvZ2ljL21lc29uLWcxMmItYTMxMWQta2hhZGFzLXZpbTMuZHRzCj4+Pj4gKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9hbWxvZ2ljL21lc29uLWcxMmItYTMxMWQta2hhZGFzLXZpbTMuZHRzCj4+
Pj4gQEAgLTE0LDMgKzE0LDI1IEBACj4+Pj4gIC8gewo+Pj4+ICAJY29tcGF0aWJsZSA9ICJraGFk
YXMsdmltMyIsICJhbWxvZ2ljLGEzMTFkIiwgImFtbG9naWMsZzEyYiI7Cj4+Pj4gIH07Cj4+Pj4g
Kwo+Pj4+ICsvKgo+Pj4+ICsgKiBUaGUgVklNMyBvbi1ib2FyZCAgTUNVIGNhbiBtdXggdGhlIFBD
SWUvVVNCMy4wIHNoYXJlZCBkaWZmZXJlbnRpYWwKPj4+PiArICogbGluZXMgdXNpbmcgYSBGVVNC
MzQwVE1YIFVTQiAzLjEgU3VwZXJTcGVlZCBEYXRhIFN3aXRjaCBiZXR3ZWVuCj4+Pj4gKyAqIGFu
IFVTQjMuMCBUeXBlIEEgY29ubmVjdG9yIGFuZCBhIE0uMiBLZXkgTSBzbG90Lgo+Pj4+ICsgKiBU
aGUgUEhZIGRyaXZpbmcgdGhlc2UgZGlmZmVyZW50aWFsIGxpbmVzIGlzIHNoYXJlZCBiZXR3ZWVu
Cj4+Pj4gKyAqIHRoZSBVU0IzLjAgY29udHJvbGxlciBhbmQgdGhlIFBDSWUgQ29udHJvbGxlciwg
dGh1cyBvbmx5Cj4+Pj4gKyAqIGEgc2luZ2xlIGNvbnRyb2xsZXIgY2FuIHVzZSBpdC4KPj4+PiAr
ICogSWYgdGhlIE1DVSBpcyBjb25maWd1cmVkIHRvIG11eCB0aGUgUENJZS9VU0IzLjAgZGlmZmVy
ZW50aWFsIGxpbmVzCj4+Pj4gKyAqIHRvIHRoZSBNLjIgS2V5IE0gc2xvdCwgdW5jb21tZW50IHRo
ZSBmb2xsb3dpbmcgYmxvY2sgdG8gZGlzYWJsZQo+Pj4+ICsgKiBVU0IzLjAgZnJvbSB0aGUgVVNC
IENvbXBsZXggYW5kIGVuYWJsZSB0aGUgUENJZSBjb250cm9sbGVyLgo+Pj4+ICsgKi8KPj4+PiAr
LyoKPj4+PiArJnBjaWUgewo+Pj4+ICsJc3RhdHVzID0gIm9rYXkiOwo+Pj4+ICt9Owo+Pj4+ICsK
Pj4+PiArJnVzYiB7Cj4+Pj4gKwlwaHlzID0gPCZ1c2IyX3BoeTA+LCA8JnVzYjJfcGh5MT47Cj4+
Pj4gKwlwaHktbmFtZXMgPSAidXNiMi1waHkwIiwgInVzYjItcGh5MSI7Cj4+Pj4gK307Cj4+Pj4g
KyAqLwo+Pj4KPj4+IEFsdGhvdWdoIHlvdSBjYW4ndCBkbyBtdWNoIG1vcmUgdGhhbiB0aGlzIGhl
cmUsIEknZCBleHBlY3QgZmlybXdhcmUgb24KPj4+IHRoZSBtYWNoaW5lIHRvIHByb3ZpZGUgdGhl
IERUIHRoYXQgbWF0Y2hlcyBpdHMgY29uZmlndXJhdGlvbi4gSXMgaXQKPj4+IHRoZSB3YXkgaXQg
YWN0dWFsbHkgd29ya3M/IE9yIGlzIHRoZSB1c2VyIGFjdHVhbGx5IGV4cGVjdGVkIHRvIGVkaXQK
Pj4+IHRoaXMgZmlsZT8KPj4KPj4gSXQncyB0aGUgcGxhbiB3aGVuIGluaXRpYWwgVklNMyBzdXBw
b3J0IHdpbGwgYmUgbWVyZ2VkIGluIHUtYm9vdCBtYWlubGluZSwKPj4gYW5kIHRoZSBNQ1UgZHJp
dmVyIHdpbGwgYmUgYWRkZWQgYXN3ZWxsIDoKPj4gaHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9y
Zy9jb3Zlci8xMTU2NjE4Lwo+PiBBIGN1c3RvbSBib2FyZCBzdXBwb3J0IGFsdGVyaW5nIHRoZSBE
VCB3aWxsIGJlIGFkZGVkIHdoZW4gdGhpcyBwYXRjaHNldAo+PiBpcyBtZXJnZWQgdXBzdHJlYW0u
Cj4+Cj4+IEJ1dCBzaW5jZSB0aGVzZSBhcmUgc2VwYXJhdGUgcHJvamVjdHMsIGxlYXZpbmcgdGhp
cyBhcyBjb21tZW50ZWQgaXMgdWdseSwKPj4gYnV0IG5lY2Vzc2FyeS4KPiAKPiBJIGFncmVlIHdp
dGggdGhlIHVuZm9ydHVuYXRlIG5lY2Vzc2l0eS4gSG93ZXZlciwgY291bGQgeW91IHBsZWFzZSBo
YXZlCj4gYSBjb21tZW50IGhlcmUsIGluZGljYXRpbmcgdGhhdCB0aGUgdXNlciBpc24ndCBleHBl
Y3RlZCB0byBjaGFuZ2UgdGhpcwo+IG9uIHRoZWlyIG93biwgYnV0IGluc3RlYWQgcmVseSBvbiB0
aGUgZmlybXdhcmUvYm9vdGxvYWRlciB0byBkbyBpdAo+IGFjY29yZGluZ2x5PwoKWWVzLCBzdXJl
LgoKTmVpbAoKPiAKPiBUaGFua3MsCj4gCj4gCU0uCj4gCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
