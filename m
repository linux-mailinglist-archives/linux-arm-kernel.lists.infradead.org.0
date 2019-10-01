Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3283BC3789
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 16:36:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YkvV3WxdSb8vj5eAuskcEm4ZAyMPb81oHzidYoo9QkQ=; b=gybnYUbdWxpcBJ
	RLHLFU5+6JvARj61lPZr1EhHtekmh5ctVurxbu46gDWYx1xha8THlfuLw7SntB2UXG+0+H/jOnslH
	B2SQ/tswKTkDNB9Zx7PW/LUs1yAAyojIJKvsDDROC77BfEboTFwdJUbE7SFPrRTj8r8V/EFHPbDw6
	4/anwuGvyS47CEX99MOE2qaFTm/1QXFRumil+8lqY/8rLOLHRBxiXY92DXzgjottATooCw1GGfLcd
	Zl33L9ZCYfJ7BxW5tflxQNyN13XrYHmIaEk+jIpdLGnq8YOHKsrSW8TxYJcCuNImCtpV0hM7RszLc
	SOpjolpaaZMej+pUWdwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFJG6-00076j-B8; Tue, 01 Oct 2019 14:36:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFJFx-00076I-ES
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 14:36:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8FD471000;
 Tue,  1 Oct 2019 07:36:00 -0700 (PDT)
Received: from [10.37.8.149] (unknown [10.37.8.149])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2217B3F71A;
 Tue,  1 Oct 2019 07:35:58 -0700 (PDT)
Subject: Re: [PATCH v3 1/5] arm64: vdso32: Introduce COMPAT_CC_IS_GCC
To: Will Deacon <will@kernel.org>
References: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
 <20190926214342.34608-1-vincenzo.frascino@arm.com>
 <20190926214342.34608-2-vincenzo.frascino@arm.com>
 <20191001131420.y3fsydlo7pg6ykfs@willie-the-truck>
 <20191001132731.GG41399@arrakis.emea.arm.com>
 <ed7d1465-2d7b-d57c-c1b1-215af1ba7a6f@arm.com>
 <20191001142038.ptwyfbesfrz3kkoz@willie-the-truck>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <7558914c-fc2d-d05a-ccbe-76ef451670ae@arm.com>
Date: Tue, 1 Oct 2019 15:37:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191001142038.ptwyfbesfrz3kkoz@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_073601_574144_1FF023AB 
X-CRM114-Status: GOOD (  20.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: ard.biesheuvel@linaro.org, Catalin Marinas <catalin.marinas@arm.com>,
 ndesaulniers@google.com, linux-kernel@vger.kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMC8xLzE5IDM6MjAgUE0sIFdpbGwgRGVhY29uIHdyb3RlOgo+IE9uIFR1ZSwgT2N0IDAx
LCAyMDE5IGF0IDAzOjIwOjM1UE0gKzAxMDAsIFZpbmNlbnpvIEZyYXNjaW5vIHdyb3RlOgo+PiBP
biAxMC8xLzE5IDI6MjcgUE0sIENhdGFsaW4gTWFyaW5hcyB3cm90ZToKPj4+IE9uIFR1ZSwgT2N0
IDAxLCAyMDE5IGF0IDAyOjE0OjIzUE0gKzAxMDAsIFdpbGwgRGVhY29uIHdyb3RlOgo+Pj4+IE9u
IFRodSwgU2VwIDI2LCAyMDE5IGF0IDEwOjQzOjM4UE0gKzAxMDAsIFZpbmNlbnpvIEZyYXNjaW5v
IHdyb3RlOgo+Pj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9LY29uZmlnIGIvYXJjaC9hcm02
NC9LY29uZmlnCj4+Pj4+IGluZGV4IDM3YzYxMDk2M2VlZS4uMGU1YmViOTI4YWY1IDEwMDY0NAo+
Pj4+PiAtLS0gYS9hcmNoL2FybTY0L0tjb25maWcKPj4+Pj4gKysrIGIvYXJjaC9hcm02NC9LY29u
ZmlnCj4+Pj4+IEBAIC0xMTAsNyArMTEwLDcgQEAgY29uZmlnIEFSTTY0Cj4+Pj4+ICAJc2VsZWN0
IEdFTkVSSUNfU1RSTkxFTl9VU0VSCj4+Pj4+ICAJc2VsZWN0IEdFTkVSSUNfVElNRV9WU1lTQ0FM
TAo+Pj4+PiAgCXNlbGVjdCBHRU5FUklDX0dFVFRJTUVPRkRBWQo+Pj4+PiAtCXNlbGVjdCBHRU5F
UklDX0NPTVBBVF9WRFNPIGlmICghQ1BVX0JJR19FTkRJQU4gJiYgQ09NUEFUKQo+Pj4+PiArCXNl
bGVjdCBHRU5FUklDX0NPTVBBVF9WRFNPIGlmICghQ1BVX0JJR19FTkRJQU4gJiYgQ09NUEFUICYm
IENPTVBBVENDX0lTX0FSTV9HQ0MpCj4+Pj4+ICAJc2VsZWN0IEhBTkRMRV9ET01BSU5fSVJRCj4+
Pj4+ICAJc2VsZWN0IEhBUkRJUlFTX1NXX1JFU0VORAo+Pj4+PiAgCXNlbGVjdCBIQVZFX1BDSQo+
Pj4+PiBAQCAtMzEzLDYgKzMxMyw5IEBAIGNvbmZpZyBLQVNBTl9TSEFET1dfT0ZGU0VUCj4+Pj4+
ICAJZGVmYXVsdCAweGVmZmZmZmY5MDAwMDAwMDAgaWYgQVJNNjRfVkFfQklUU18zNiAmJiBLQVNB
Tl9TV19UQUdTCj4+Pj4+ICAJZGVmYXVsdCAweGZmZmZmZmZmZmZmZmZmZmYKPj4+Pj4gIAo+Pj4+
PiArY29uZmlnIENPTVBBVENDX0lTX0FSTV9HQ0MKPj4+Pj4gKwlkZWZfYm9vbCAkKHN1Y2Nlc3Ms
JChDT01QQVRDQykgLS12ZXJzaW9uIHwgaGVhZCAtbiAxIHwgZ3JlcCAtcSAiYXJtLS4qLWdjYyIp
Cj4+Pj4KPj4+PiBJJ3ZlIHNlZW4gdG9vbGNoYWlucyB3aGVyZSB0aGUgZmlyc3QgcGFydCBvZiB0
aGUgdHVwbGUgaXMgImFybXY3LSIsIHNvIHRoZXkKPj4+PiB3b24ndCBnZXQgZGV0ZWN0ZWQgaGVy
ZS4gSG93ZXZlciwgZG8gd2UgcmVhbGx5IG5lZWQgdG8gZGV0ZWN0IHRoaXM/IElmCj4+Pj4gc29t
ZWJvZHkgcGFzc2VzIGEgZHVmZiBjb21waWxlciwgdGhlbiB0aGUgYnVpbGQgd2lsbCBmYWlsIGlu
IHRoZSBzYW1lIHdheSBhcwo+Pj4+IGlmIHRoZXkgcGFzc2VkIGl0IHRvIENST1NTX0NPTVBJTEU9
Lgo+Pj4KPj4+IE5vdCBzdXJlIHdoYXQgaGFwcGVucyBpZiB3ZSBwYXNzIGFuIGFhcmNoNjQgY29t
cGlsZXIuIENhbiB3ZSBlbmQgdXAgd2l0aAo+Pj4gYSA2NC1iaXQgY29tcGF0IHZEU08/Cj4+Pgo+
Pgo+PiBJIGFncmVlIHdpdGggQ2F0YWxpbiBoZXJlLiBUaGUgcHJvYmxlbSBpcyBub3Qgb25seSB3
aGVuIHlvdSBwYXNzIGFuZCBhYXJjaDY0Cj4+IHRvb2xjaGFpbiBidXQgZXZlbiBhbiB4ODYgYW5k
IHNvIG9uLgo+IAo+IEkgZGlzYWdyZWUuIFdoYXQgaGFwcGVucyBpZiB5b3UgZG86Cj4gCj4gJCBt
YWtlIEFSQ0g9YXJtNjQgQ1JPU1NfQ09NUElMRT14ODZfNjQtbGludXgtZ251LQo+IAo+IG9uIHlv
dXIgeDg2IGJveD8KPgoKVGhlIGtlcm5lbCBjb21waWxhdGlvbiBicmVha3MgYXMgZm9sbG93czoK
Cng4Nl82NC1saW51eC1nbnUtZ2NjOiBlcnJvcjogdW5yZWNvZ25pemVkIGNvbW1hbmQgbGluZSBv
cHRpb24g4oCYLW1saXR0bGUtZW5kaWFu4oCZOwpkaWQgeW91IG1lYW4g4oCYLWZjb252ZXJ0PWxp
dHRsZS1lbmRpYW7igJk/Ci9kYXRhMS9Qcm9qZWN0cy9MaW51eEtlcm5lbC9saW51eC9zY3JpcHRz
L01ha2VmaWxlLmJ1aWxkOjI2NTogcmVjaXBlIGZvciB0YXJnZXQKJ3NjcmlwdHMvbW9kL2VtcHR5
Lm8nIGZhaWxlZAptYWtlWzJdOiAqKiogW3NjcmlwdHMvbW9kL2VtcHR5Lm9dIEVycm9yIDEKL2Rh
dGExL1Byb2plY3RzL0xpbnV4S2VybmVsL2xpbnV4L01ha2VmaWxlOjExMjg6IHJlY2lwZSBmb3Ig
dGFyZ2V0ICdwcmVwYXJlMCcgZmFpbGVkCm1ha2VbMV06ICoqKiBbcHJlcGFyZTBdIEVycm9yIDIK
bWFrZVsxXTogTGVhdmluZyBkaXJlY3RvcnkgJy9kYXRhMS9Qcm9qZWN0cy9MaW51eEtlcm5lbC9s
aW51eC1vdXQnCk1ha2VmaWxlOjE3OTogcmVjaXBlIGZvciB0YXJnZXQgJ3N1Yi1tYWtlJyBmYWls
ZWQKbWFrZTogKioqIFtzdWItbWFrZV0gRXJyb3IgMgoKU2ltaWxhciBpc3N1ZSBpbiB0aGUgY29t
cGF0IHZkc28gbGlicmFyeSBjb21waWxhdGlvbiBpZiBJIGRvICh3aXRob3V0IHRoZSBjaGVjayk6
CgokIG1ha2UgQVJDSD1hcm02NCBDUk9TU19DT01QSUxFPWFhcmNoNjQtbGludXgtZ251LQpDUk9T
U19DT01QSUxFX0NPTVBBVD14ODZfNjQtbGludXgtZ251LQoKV2l0aCB0aGlzIGNoZWNrIHRoZSBj
b21waWxhdGlvbiBjb21wbGV0ZXMgY29ycmVjdGx5IGJ1dCB0aGUgY29tcGF0IHZkc28gZG9lcyBu
b3QKZ2V0IGJ1aWx0ICh1bmxlc3MgbXkgZW52aXJvbm1lbnQgaXMgcGxheWluZyBtZSB0cmlja3Mg
OykgKS4KCj4+IElmIHRoZSBwcm9ibGVtIGlzIHJlbGF0ZWQgdG8gYXJtdjctIHdlIGNhbiBjaGFu
Z2UgdGhlIHJ1bGUgYXMgImFybS4qLWdjYyIgd2hpY2gKPj4gc2hvdWxkIGRldGVjdCB0aGVtIGFz
IHdlbGwuIERvIHlvdSBrbm93IHdoYXQgaXMgdGhlIHRyaXBsZSB0aGF0IGFuIGFybXY3LQo+PiB0
b29sY2hhaW4gcHJpbnRzPwo+IAo+ICdmcmFpZCBub3QsIHNpbmNlIEkgZG9uJ3QgaGF2ZSBvbmUg
dG8gaGFuZC4gSSB0aGluayB5b3UnZCBlbmQgdXAgbWF0Y2hpbmcKPiBhcm0qLWdjYywgd2hpY2gg
aXMgcHJldHR5IGJyb2FkLgo+IAoKSWYgd2UgYWxsIGFncmVlIEkgY2FuIGV4dGVuZCB0aGlzIHJ1
bGUgdGhlbi4KCj4gV2lsbAo+IAoKLS0gClJlZ2FyZHMsClZpbmNlbnpvCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
