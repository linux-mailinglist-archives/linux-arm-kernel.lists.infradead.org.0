Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AEBE1A0C9B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 13:12:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t/x7cnXI49z7BHWBU2VuHzgU89FkePspnI3xVi/KPvw=; b=NcjCxhQW+3Zd4DyHAkTpi6jkS
	MsiBcuEGo9Sm3aNOQBHeX5rrckd9aU82yisYXSrR4bxKwXJrAkeYHNTW4HiOBCCiXI+z8deof9Ru4
	pATkgh+eoYsVceF3M8D51YesUwo4/dqOpAVXgh5jDZeUMIramywytmbTcwaFCZtaPLttAW5DO3Z3p
	Twpk4NASRVHzkrHagOhrufxQxF7mSJx6zQG6NqpSy9ezK7sMj0qj+xpjokn2BSaeV4dXEi7C8rzio
	/WGJSA4utTUqz6L++5WeW3WXy745do7nl9bWRr2+TSJvnaBChWdNRl63LEsar+GgsIY4zauWcHsGs
	p/9tRCQFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLm9P-0002dv-BX; Tue, 07 Apr 2020 11:12:15 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLm9H-0002cx-Hh
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 11:12:09 +0000
X-Originating-IP: 84.210.220.251
Received: from [192.168.1.123] (cm-84.210.220.251.getinternet.no
 [84.210.220.251]) (Authenticated sender: fredrik@strupe.net)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id F082FFF80D;
 Tue,  7 Apr 2020 11:12:04 +0000 (UTC)
Subject: Re: [PATCH] arm64: armv8_deprecated: Fix undef_hook mask for thumb
 setend
To: Suzuki K Poulose <suzuki.poulose@arm.com>, catalin.marinas@arm.com
References: <911db2f1-e078-a460-32ee-154a0b4de5d4@strupe.net>
 <20200407092744.GA2665@gaia> <a2b345a4-30a0-3218-8c8d-e84ec2317dc9@arm.com>
From: Fredrik Strupe <fredrik@strupe.net>
Message-ID: <7e0a3318-5b0e-3718-ced6-ae1fc7f5fece@strupe.net>
Date: Tue, 7 Apr 2020 13:12:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <a2b345a4-30a0-3218-8c8d-e84ec2317dc9@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_041207_856880_E6C795CF 
X-CRM114-Status: GOOD (  26.66  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: will.deacon@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDcuMDQuMjAyMCAxMjo0NywgU3V6dWtpIEsgUG91bG9zZSB3cm90ZToKCj4gT24gMDQvMDcv
MjAyMCAxMDoyNyBBTSwgQ2F0YWxpbiBNYXJpbmFzIHdyb3RlOgo+PiBPbiBNb24sIEFwciAwNiwg
MjAyMCBhdCAwNDoxNjowNVBNICswMjAwLCBGcmVkcmlrIFN0cnVwZSB3cm90ZToKPj4+IFVzZSBh
IGZ1bGwgMzItYml0IG1hc2sgdG8gcHJldmVudCBhY2NpZGVudGFsIG1hdGNoaW5ncyBvZiB0aHVt
YjMyCj4+PiBpbnN0cnVjdGlvbnMgd2hlcmUgdGhlIHNlY29uZCBoYWxmLXdvcmQgaXMgZXF1YWwg
dG8gdGhlIHRodW1iMTYgc2V0ZW5kCj4+PiBlbmNvZGluZy4KPj4+Cj4+PiBUaGlzIGZpeGVzIHRo
ZSBzYW1lIHByb2JsZW0gYXMgdGhlIGZvbGxvd2luZyBwYXRjaDoKPj4+Cj4+PiDCoMKgwqDCoCBo
dHRwczovL2xrbWwub3JnL2xrbWwvMjAyMC8zLzE2LzM0MQo+Pgo+PiBUaGlzIGxpbmsgaXMgbm90
IGd1YXJhbnRlZWQgdG8gYmUgc3RhYmxlIGFuZCB0aGUgY29tbWl0IHNob3VsZCBoYXZlIHRoZQo+
PiBmdWxsIGRlc2NyaXB0aW9uIHJhdGhlciB0aGFuIHJlZmVycmluZyB0byBhbm90aGVyIGVtYWls
Lgo+Pgo+Pj4gYnV0IGZvciBzZXRlbmQgZW11bGF0aW9uIGluc3RlYWQuCj4+Pgo+Pj4gU2lnbmVk
LW9mZi1ieTogRnJlZHJpayBTdHJ1cGUgPGZyZWRyaWtAc3RydXBlLm5ldD4KPj4KPj4gSXQgYWxz
byBuZWVkcyBGaXhlczogYW5kIENjOiBzdGFibGUgdGFncy4KPj4KPj4+IC0tLQo+Pj4gwqAgYXJj
aC9hcm02NC9rZXJuZWwvYXJtdjhfZGVwcmVjYXRlZC5jIHwgMiArLQo+Pj4gwqAgMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtNjQva2VybmVsL2FybXY4X2RlcHJlY2F0ZWQuYyAKPj4+IGIvYXJjaC9hcm02NC9r
ZXJuZWwvYXJtdjhfZGVwcmVjYXRlZC5jCj4+PiBpbmRleCA5ZDM0NDJkNjIuLjhjMDZkZmVlMCAx
MDA2NDQKPj4+IC0tLSBhL2FyY2gvYXJtNjQva2VybmVsL2FybXY4X2RlcHJlY2F0ZWQuYwo+Pj4g
KysrIGIvYXJjaC9hcm02NC9rZXJuZWwvYXJtdjhfZGVwcmVjYXRlZC5jCj4+PiBAQCAtNjA5LDcg
KzYwOSw3IEBAIHN0YXRpYyBzdHJ1Y3QgdW5kZWZfaG9vayBzZXRlbmRfaG9va3NbXSA9IHsKPj4+
IMKgwqDCoMKgwqAgfSwKPj4+IMKgwqDCoMKgwqAgewo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIC8q
IFRodW1iIG1vZGUgKi8KPj4+IC3CoMKgwqDCoMKgwqDCoCAuaW5zdHJfbWFza8KgwqDCoCA9IDB4
MDAwMGZmZjcsCj4+PiArwqDCoMKgwqDCoMKgwqAgLmluc3RyX21hc2vCoMKgwqAgPSAweGZmZmZm
ZmY3LAo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIC5pbnN0cl92YWzCoMKgwqAgPSAweDAwMDBiNjUw
LAo+Pgo+PiBJIGNhbiBzZWUgaG93IHRoaXMgY291bGQgaGFwcGVuIGJ1dCBpdCB3b3VsZCBiZSB1
c2VmdWwgdG8gcHJvdmlkZSBhCj4+IGNvbmNyZXRlIGV4YW1wbGUgaW4gdGhlIGNvbW1pdCBsb2cu
Cj4+Cj4+IFRoZSBpbnN0cnVjdGlvbiBvcGNvZGUgYnVpbHQgYnkgY2FsbF91bmRlZl9ob29rKCkg
Zmlyc3QgcmVhZHMgYSB1MTYgYXMgYQo+PiBUMTYgaW5zdHJ1Y3Rpb24gYW5kIHRoZSBhYm92ZSBz
aG91bGQgYmUgZmluZS4gSG93ZXZlciwgaWYgdGhpcyBsb29rcwo+PiBsaWtlIGEgVDMyIG9wY29k
ZSwgaXQgcmVhZHMgYSBzdWJzZXF1ZW50IHUxNiB3aGljaCBiZWNvbWVzIHRoZSBsb3dlc3QKPj4g
aGFsZi13b3JkIGFuZCB0aGUgYWJvdmUgbWFzay92YWwgbWF5IGluYWR2ZXJ0ZW50bHkgbWF0Y2gg
aXQuCj4+ClRoYW5rcyBmb3IgdGhlIGZlZWRiYWNrLiBJIGhhdmUgdXBkYXRlZCB0aGUgcGF0Y2gg
d2l0aCB0aGUgcmVxdWVzdGVkIApjaGFuZ2VzLgoKPgo+IFdlIGFsc28gZG8gYSBjaGVjayBvbiB0
aGUgcHN0YXRlX3ZhbCwgYWxvbmcgd2l0aCB0aGUgaW5zdHJfdmFsIHRvCj4gY29uZmlybSB0aGUg
bW9kZS4gU28gdGhpcyBzaG91bGQgYmUgZmluZSBhcyBpdCBpcyA/Cj4KPiBTdXp1a2kKCnBzdGF0
ZV92YWwgb25seSBpbmRpY2F0ZXMgdGh1bWIgZXhlY3V0aW9uLCBub3Qgd2hldGhlciB0aGUgY3Vy
cmVudCAKaW5zdHJ1Y3Rpb24KaXMgYSBUMTYgb3IgVDMyIGluc3RydWN0aW9uLgoKRnJlZHJpawoK
LS0tIEZvciB0aHVtYiBpbnN0cnVjdGlvbnMsIGNhbGxfdW5kZWZfaG9vaygpIGluIHRyYXBzLmMg
Zmlyc3QgcmVhZHMgYSAKdTE2LCBhbmQgaWYgdGhlIHUxNiBpbmRpY2F0ZXMgYSBUMzIgaW5zdHJ1
Y3Rpb24gKHUxNiA+PSAweGU4MDApLCBhIApzZWNvbmQgdTE2IGlzIHJlYWQsIHdoaWNoIHRoZW4g
bWFrZXMgdXAgdGhlIHRoZSBsb3dlciBoYWxmLXdvcmQgb2YgYSBUMzIgCmluc3RydWN0aW9uLiBG
b3IgVDE2IGluc3RydWN0aW9ucywgdGhlIHNlY29uZCB1MTYgaXMgbm90IHJlYWQsIHdoaWNoIApt
YWtlcyB0aGUgcmVzdWx0aW5nIHUzMiBvcGNvZGUgYWx3YXlzIGhhdmUgdGhlIHVwcGVyIGhhbGYg
c2V0IHRvIDAuIApIb3dldmVyLCBoYXZpbmcgdGhlIHVwcGVyIGhhbGYgb2YgaW5zdHJfbWFzayBp
biB0aGUgdW5kZWZfaG9vayBzZXQgdG8gMCAKbWFza3Mgb3V0IHRoZSB1cHBlciBoYWxmIG9mIGFs
bCB0aHVtYiBpbnN0cnVjdGlvbnMgLSBib3RoIFQxNiBhbmQgVDMyLiAKVGhpcyByZXN1bHRzIGlu
IHRyYXBwZWQgVDMyIGluc3RydWN0aW9ucyB3aXRoIHRoZSBsb3dlciBoYWxmLXdvcmQgZXF1YWwg
CnRvIHRoZSBUMTYgZW5jb2Rpbmcgb2Ygc2V0ZW5kIChiNjUwKSBiZWluZyBtYXRjaGVkLCBldmVu
IHRob3VnaCB0aGUgCnVwcGVyIGhhbGYtd29yZCBpcyBub3QgMDAwMCBhbmQgdGh1cyBpbmRpY2F0
ZXMgYSBUMzIgb3Bjb2RlLiBBbiBleGFtcGxlIApvZiBzdWNoIGEgVDMyIGluc3RydWN0aW9uIGlz
IGVhYTBiNjUwLCB3aGljaCBzaG91bGQgcmFpc2UgYSBTSUdJTEwgc2luY2UgClQzMiBpbnN0cnVj
dGlvbnMgd2l0aCBhbiBlYWEgcHJlZml4IGFyZSB1bmFsbG9jYXRlZCBhcyBwZXIgQXJtIEFSTSwg
YnV0IAppbnN0ZWFkIHdvcmtzIGFzIGEgU0VURU5EIGJlY2F1c2UgdGhlIHNlY29uZCBoYWxmLXdv
cmQgaXMgc2V0IHRvIGI2NTAuIApUaGlzIHBhdGNoIGZpeGVzIHRoZSBpc3N1ZSBieSBleHRlbmRp
bmcgaW5zdHJfbWFzayB0byBpbmNsdWRlIHRoZSB1cHBlciAKdTMyIGhhbGYsIHdoaWNoIHdpbGwg
c3RpbGwgbWF0Y2ggVDE2IGluc3RydWN0aW9ucyB3aGVyZSB0aGUgdXBwZXIgaGFsZiAKaXMgMCwg
YnV0IG5vdCBUMzIgaW5zdHJ1Y3Rpb25zLiBTaWduZWQtb2ZmLWJ5OiBGcmVkcmlrIFN0cnVwZSAK
PGZyZWRyaWtAc3RydXBlLm5ldD4gQ2M6IENhdGFsaW4gTWFyaW5hcyA8Y2F0YWxpbi5tYXJpbmFz
QGFybS5jb20+IENjOiAKV2lsbCBEZWFjb24gPHdpbGwuZGVhY29uQGFybS5jb20+IEZpeGVzOiAy
ZDg4OGY0OGUwNTYgKCJhcm02NDogRW11bGF0ZSAKU0VURU5EIGZvciBBQXJjaDMyIHRhc2tzIikg
LS0tIGFyY2gvYXJtNjQva2VybmVsL2FybXY4X2RlcHJlY2F0ZWQuYyB8IDIgCistIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKSBkaWZmIC0tZ2l0IAphL2FyY2gv
YXJtNjQva2VybmVsL2FybXY4X2RlcHJlY2F0ZWQuYyAKYi9hcmNoL2FybTY0L2tlcm5lbC9hcm12
OF9kZXByZWNhdGVkLmMgaW5kZXggOWQzNDQyZDYyLi44YzA2ZGZlZTAgMTAwNjQ0IAotLS0gYS9h
cmNoL2FybTY0L2tlcm5lbC9hcm12OF9kZXByZWNhdGVkLmMgKysrIApiL2FyY2gvYXJtNjQva2Vy
bmVsL2FybXY4X2RlcHJlY2F0ZWQuYyBAQCAtNjA5LDcgKzYwOSw3IEBAIHN0YXRpYyBzdHJ1Y3Qg
CnVuZGVmX2hvb2sgc2V0ZW5kX2hvb2tzW10gPSB7IH0sIHsgLyogVGh1bWIgbW9kZSAqLyAtIC5p
bnN0cl9tYXNrID0gCjB4MDAwMGZmZjcsICsgLmluc3RyX21hc2sgPSAweGZmZmZmZmY3LCAuaW5z
dHJfdmFsID0gMHgwMDAwYjY1MCwgCi5wc3RhdGVfbWFzayA9IChQU1JfQUEzMl9UX0JJVCB8IFBT
Ul9BQTMyX01PREVfTUFTSyksIC5wc3RhdGVfdmFsID0gCihQU1JfQUEzMl9UX0JJVCB8IFBTUl9B
QTMyX01PREVfVVNSKSwgLS0gMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
