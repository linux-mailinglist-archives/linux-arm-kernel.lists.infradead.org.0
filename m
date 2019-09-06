Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4812EAB286
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 08:31:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NGKAfNRHiqbTUUKCX1ZY9L0Ua0snvgmO/kWiD9Rchl0=; b=em2Zi6SdUJRsxG
	crBOtt3ZgvzreyIkeIGyhaggsILdeeolKKc5CScPynsksW4EHGfVldXoIRSreQcqZpZ7RQ9doXej4
	aSrpJs4jUUEtgHWB1lqo1HPaIfNmI0tCLfS9UFKXnqJC3Ht9t9TvJEx5HvNs/VV1QcfCheMDncxMG
	aPkCxX/7Dnl944P+fmCUouzSxXyfEDurWHf5UqXXiZHpPsTXZ13W0i4foyQl4KAjURyPRLznUtf6Z
	D4xS1keX85Q8OJcaDxUplX9ZpxHlfKP3vOB/6jp/qOAa4e/koNDlk6pgjKDsrRyc4EEVHsNW1TLTL
	WxO7pKJIQnPoDbzkXXvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i67ml-00080A-T5; Fri, 06 Sep 2019 06:31:55 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i67me-0007zT-Tc
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 06:31:50 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x866Ve4u035587;
 Fri, 6 Sep 2019 01:31:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1567751500;
 bh=B8nkjpnT5N3MCIwgk+B8Pcixb49IZ2Rhkp4HjKWC8OQ=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=cURv5wmrcnoeKKHt6eKUvmbsH0I0iTk5DiJJLccK3TlIAuqCXHej/gU4p1GrpAO/M
 AnWfPVZH1Rip3u0HkAAQhtJq84YqycViaY7Fj1revqnqo2vDEw0xJxw791YXw2+6uC
 UnF8gEIVVboONJahAqrjg70r4Rj7jhUPssZKv8/4=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x866VeTM036925
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 6 Sep 2019 01:31:40 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 6 Sep
 2019 01:31:39 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 6 Sep 2019 01:31:39 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x866VMp0127335;
 Fri, 6 Sep 2019 01:31:23 -0500
Subject: Re: [GIT PULL 2/4] DaVinci defconfig updates for v5.4
To: Arnd Bergmann <arnd@arndb.de>, Sekhar Nori <nsekhar@ti.com>
References: <20190828151754.21023-1-nsekhar@ti.com>
 <20190828151754.21023-2-nsekhar@ti.com>
 <CAK8P3a0NGVHhWBtXwbB7aZMA-hsGn-jwJDYUS1WgLoux6j-hBA@mail.gmail.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <52d010f7-29e4-4a64-6f78-731c49766535@ti.com>
Date: Fri, 6 Sep 2019 09:31:51 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a0NGVHhWBtXwbB7aZMA-hsGn-jwJDYUS1WgLoux6j-hBA@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_233149_062045_C3A51453 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 ARM-SoC Maintainers <arm@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwNC8wOS8yMDE5IDE3LjUxLCBBcm5kIEJlcmdtYW5uIHdyb3RlOgo+IE9uIFdlZCwgQXVn
IDI4LCAyMDE5IGF0IDU6MTggUE0gU2VraGFyIE5vcmkgPG5zZWtoYXJAdGkuY29tPiB3cm90ZToK
Pj4KPj4gVGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCA1ZjllODMyYzEzNzA3NTA0
NWQxNWNkNjg5OWFiMDUwNWNmYjJjYTRiOgo+Pgo+PiAgIExpbnVzIDUuMy1yYzEgKDIwMTktMDct
MjEgMTQ6MDU6MzggLTA3MDApCj4+Cj4+IGFyZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBvc2l0
b3J5IGF0Ogo+Pgo+PiAgIGdpdDovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVs
L2dpdC9uc2VraGFyL2xpbnV4LWRhdmluY2kuZ2l0IHRhZ3MvZGF2aW5jaS1mb3ItdjUuNC9kZWZj
b25maWcKPj4KPj4gZm9yIHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIGU4NjllNDRmMmQ4MmI5
YjRkMzVkNThjZWFlZWFkYjAyNDJiYzYzNGM6Cj4+Cj4+ICAgQVJNOiBkYXZpbmNpX2FsbF9kZWZj
b25maWc6IGVuYWJsZSBHUElPIGJhY2tsaWdodCAoMjAxOS0wOC0wOCAxNDozMzo0NSArMDUzMCkK
Pj4KPj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQo+PiBDb250YWlucyBkYXZpbmNpX2FsbF9kZWZjb25maWcgcmVmcmVzaCB1
c2luZyBzYXZlZGVmY29uZmlnIGFuZCBhCj4+IHBhdGNoIHRvIGVuYWJsZSBHUElPIGJhY2tsaWdo
dC4KPj4KPj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQo+PiBCYXJ0b3N6IEdvbGFzemV3c2tpICgyKToKPj4gICAgICAgQVJN
OiBkYXZpbmNpOiByZWZyZXNoIGRhdmluY2lfYWxsX2RlZmNvbmZpZwo+PiAgICAgICBBUk06IGRh
dmluY2lfYWxsX2RlZmNvbmZpZzogZW5hYmxlIEdQSU8gYmFja2xpZ2h0Cj4gCj4gSSdtIGdlbmVy
YWxseSBub3QgYSBmYW4gb2YgdGhlc2UgJ3JlZnJlc2ggZGVmY29uZmlnJyBwYXRjaGVzIHdoZW4g
dGhleQo+IHNpbGVudGx5IGNoYW5nZSBvcHRpb25zIHRoYXQgbWF5IG9yIG1heSBub3QgYmUgbmVl
ZGVkLgo+IAo+IFNvbWUgbGluZXMgYXJlIGp1c3QgbW92ZWQgYXJvdW5kIGJ1dCB0aGVzZSBvbmVz
Cj4gYXJlIGNvbXBsZXRlbHkgcmVtb3ZlZDoKPiAKPiAtIyBDT05GSUdfSU9TQ0hFRF9ERUFETElO
RSBpcyBub3Qgc2V0Cj4gLSMgQ09ORklHX0lPU0NIRURfQ0ZRIGlzIG5vdCBzZXQKPiAtQ09ORklH
X1BSRUVNUFQ9eQo+IC1DT05GSUdfU05EX1NPQ19UTFYzMjBBSUMzWD1tCj4gLUNPTkZJR19TTkRf
U09DX0RBVklOQ0lfTUNBU1A9bQo+IC1DT05GSUdfTEVEU19UUklHR0VSUz15Cj4gLUNPTkZJR19U
SV9FRE1BPXkKCkVETUEgaXMga2luZCBvZiBuZWVkZWQgb24gZGFWaW5jaSwgbm8/CmFpYzN4IGFu
ZCBNY0FTUCBjYW4gYmUgZ29vZCBpZiB5b3Ugd2FudCBhdWRpbyBzdXBwb3J0IG9uIHRoZSBib2Fy
ZHMuLi4KCj4gLSMgQ09ORklHX0FSTV9VTldJTkQgaXMgbm90IHNldAo+IAo+IEkgdGhpbmsgbW9z
dCBvZiB0aGVzZSBhcmUgb2ssIGJ1dCBJIGRvbid0IHNlZSBhbnkgZXhwbGFuYXRpb24KPiBhYm91
dCB3aHkgeW91IHR1cm4gb2ZmIENPTkZJR19QUkVFTVBULgo+IAo+ICAgICAgICBBcm5kCj4gCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdAo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo+IAoKLSBQw6l0ZXIKClRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBv
cmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLgpZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYx
NTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBIZWxzaW5raQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
