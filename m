Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB0F10E918
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 11:43:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9vMeyMoQaHyFrMYrXq3fRtS72ufOl+eF7q610Oq+DgU=; b=QxCONJfo24PpoSRyEoO4wxrax
	Jc9qapRVs6g9c/KuKKcUwylFaADRbPjW1N+iRaDQK6EYqWlYwv2v0k0qINYo+V6RhzC6zR0dP9CmH
	huZL7FtmLw8xB7RE0+sWja4WCGEdpPp0RYH1haBrp9qaBKq+oV/fpLkTKS3xqOfrL/X2U6m/VI3rO
	fqcfXzQ0y7aEizDAyLHXU88CU7yt/0okhSV2g2CZydFOlrz27R3NUj/Vzzx0R3QcgJ/QU3tFgr7gO
	hhmKoDrD2RPtB9C12fswfuWGFBBMu7lalvvvvSCeCyEnS956fTVuooCGlfQ9P77jsJmoWEZxI0Wqo
	+vXvR/bCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibjAX-0005RK-Ii; Mon, 02 Dec 2019 10:43:05 +0000
Received: from mail2.sp2max.com.br ([138.185.4.9])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibjAP-0005Qr-RL; Mon, 02 Dec 2019 10:42:59 +0000
Received: from [172.17.0.170] (unknown [190.246.35.95])
 (Authenticated sender: pablo@fliagreco.com.ar)
 by mail2.sp2max.com.br (Postfix) with ESMTPSA id 685907B3059;
 Mon,  2 Dec 2019 07:42:50 -0300 (-03)
Subject: Re: [PATCH v1] mt76: mt7615: Fix build with older compilers
To: Kalle Valo <kvalo@codeaurora.org>
References: <20191201181716.61892-1-pgreco@centosproject.org>
 <0101016ec5ed7d91-eac61501-1e4a-42f1-881d-cc2c02eb8372-000000@us-west-2.amazonses.com>
From: =?UTF-8?Q?Pablo_Sebasti=c3=a1n_Greco?= <pgreco@centosproject.org>
Message-ID: <8d4a0590-e2ae-948d-83c3-0dc57fa76b8f@centosproject.org>
Date: Mon, 2 Dec 2019 07:42:48 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <0101016ec5ed7d91-eac61501-1e4a-42f1-881d-cc2c02eb8372-000000@us-west-2.amazonses.com>
Content-Language: en-US
X-SP2Max-MailScanner-Information: Please contact the ISP for more information
X-SP2Max-MailScanner-ID: 685907B3059.A16AF
X-SP2Max-MailScanner: Sem Virus encontrado
X-SP2Max-MailScanner-SpamCheck: nao spam, SpamAssassin (not cached,
 escore=-2.9, requerido 6, autolearn=not spam, ALL_TRUSTED -1.00,
 BAYES_00 -1.90)
X-SP2Max-MailScanner-From: pgreco@centosproject.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_024258_064034_8ACE4D69 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Roy Luo <royluo@google.com>, Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Felix Fietkau <nbd@nbd.name>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDIvMTIvMTkgMDY6MjUsIEthbGxlIFZhbG8gd3JvdGU6Cj4gUGFibG8gR3JlY28gPHBncmVj
b0BjZW50b3Nwcm9qZWN0Lm9yZz4gd3JpdGVzOgo+Cj4+IFNvbWUgY29tcGlsZXJzICh0ZXN0ZWQg
d2l0aCA0LjguNSBmcm9tIENlbnRPUyA3KSBmYWlsIHByb3Blcmx5IHByb2Nlc3MKPj4gRklFTERf
R0VUIGluc2lkZSBhbiBpbmxpbmUgZnVuY3Rpb24sIHdoaWNoIGVuZHMgdXAgaW4gYSBCVUlMRF9C
VUdfT04uCj4+IENvbnZlcnQgaW5saW5lIGZ1bmN0aW9uIHRvIGEgbWFjcm8uCj4+Cj4+IEZpeGVz
IGNvbW1pdCBiZjkyZTc2ODUxMDAgKCJtdDc2OiBtdDc2MTU6IGFkZCBzdXBwb3J0IGZvciBwZXIt
Y2hhaW4KPj4gc2lnbmFsIHN0cmVuZ3RoIHJlcG9ydGluZyIpCj4+IFJlcG9ydGVkIGluIGh0dHBz
Oi8vbGttbC5vcmcvbGttbC8yMDE5LzkvMjEvMTQ2Cj4+Cj4+IFJlcG9ydGVkLWJ5OiBrYnVpbGQg
dGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogUGFibG8gR3JlY28g
PHBncmVjb0BjZW50b3Nwcm9qZWN0Lm9yZz4KPj4gLS0tCj4+ICAgZHJpdmVycy9uZXQvd2lyZWxl
c3MvbWVkaWF0ZWsvbXQ3Ni9tdDc2MTUvbWFjLmMgfCA1ICstLS0tCj4+ICAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCA0IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc2MTUvbWFjLmMgYi9kcml2ZXJzL25l
dC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L210NzYxNS9tYWMuYwo+PiBpbmRleCBjNzdhZGM1ZDI1
NTIuLjc3ZTM5NWNhMmM2YSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVk
aWF0ZWsvbXQ3Ni9tdDc2MTUvbWFjLmMKPj4gKysrIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVk
aWF0ZWsvbXQ3Ni9tdDc2MTUvbWFjLmMKPj4gQEAgLTEzLDEwICsxMyw3IEBACj4+ICAgI2luY2x1
ZGUgIi4uL2RtYS5oIgo+PiAgICNpbmNsdWRlICJtYWMuaCIKPj4gICAKPj4gLXN0YXRpYyBpbmxp
bmUgczggdG9fcnNzaSh1MzIgZmllbGQsIHUzMiByeHYpCj4+IC17Cj4+IC0JcmV0dXJuIChGSUVM
RF9HRVQoZmllbGQsIHJ4dikgLSAyMjApIC8gMjsKPj4gLX0KPj4gKyNkZWZpbmUgdG9fcnNzaShm
aWVsZCwgcnh2KQkJKChGSUVMRF9HRVQoZmllbGQsIHJ4dikgLSAyMjApIC8gMikKPiBXaGF0IGFi
b3V0IHUzMl9nZXRfYml0cygpIGluc3RlYWQgb2YgRklFTERfR0VUKCksIHdvdWxkIHRoYXQgd29y
az8gSQo+IGd1ZXNzIGNoYW5jZXMgZm9yIHRoYXQgaXMgc2xpbSwgYnV0IGl0J3MgYWx3YXlzIGEg
c2hhbWUgdG8gY29udmVydCBhCj4gZnVuY3Rpb24gdG8gYSBtYWNybyBzbyB3ZSBzaG91bGQgdHJ5
IG90aGVyIG1ldGhvZHMgZmlyc3QuCkFueXRoaW5nIHRoYXQgZG9lc24ndCBjaGVjayBmaWVsZCBh
dCBidWlsZCB0aW1lIHNob3VsZCB3b3JrLCBidXQgYmV0d2VlbiAKbG9zaW5nIGEgY2hlY2ssIG9y
IHR1cm5pbmcgYW4gaW5saW5lIGludG8gYSBtYWNybywgSSdkIHJhdGhlciB1c2UgdGhlIG1hY3Jv
Lgo+IE9yIGV2ZW4gYmV0dGVyIGlmIHdlIGNvdWxkIGZpeCBGSUVMRF9HRVQoKSB0byB3b3JrIHdp
dGggb2xkZXIgY29tcGlsZXJzLgo+ClRoZSBwcm9ibGVtIGlzIG5vdCBGSUVMRF9HRVQgaXRzZWxm
LCBpcyB0aGF0IHRoZSBjb21waWxlciBpcyB0cnlpbmcgdG8gCnVzZSAiZmllbGQiIGFzIGEgdmFy
aWFibGUsIGluc3RlYWQgYXMgdGhlIG1hY3JvIGV4cGFuc2lvbiBvZiBHRU5NQVNLLCBhcyAKaWYg
dGhlIGZ1bmN0aW9uIHdhc24ndCBpbmxpbmUuCkluIHRoZSBsaW5rZWQgcGFnZSB5b3UgY2FuIHNl
ZSB0aGlzIG1lc3NhZ2UKCkJVSUxEX0JVR19PTiBmYWlsZWQ6ICgoKGZpZWxkKSArICgxVUxMIDw8
IChfX2J1aWx0aW5fZmZzbGwoZmllbGQpIC0gMSkpKSAKJiAoKChmaWVsZCkgKyAoMVVMTCA8PCAo
X19idWlsdGluX2Zmc2xsKGZpZWxkKSAtIDEpKSkgLSAxKSkgIT0gMAogwqDCoMKgwqAgX2NvbXBp
bGV0aW1lX2Fzc2VydChjb25kaXRpb24sIG1zZywgX19jb21waWxldGltZV9hc3NlcnRfLCBfX0xJ
TkVfXykKCndoaWNoIGlzIGlzIG5vdCByaWdodCwgYmVjYXVzZSAiZmllbGQiIHNob3VsZCBuZXZl
ciBiZSB1c2VkIGZvciB0aGF0IGNoZWNrLgoKCgpQYWJsby4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
