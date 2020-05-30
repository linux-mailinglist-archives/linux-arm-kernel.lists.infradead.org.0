Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF681E90A3
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 12:42:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pDQ34JqGz/zXV2NI2lRoObrreILA9PhXjSPbq+P9Z6k=; b=JDJpwDW/ywhu37sVZQwK8bZ8P
	RT98I4ns3+nLgvH/fTyVQv1sWZLmv1hKcSH6fGNHwG58M+n0wSOuwo6cE5TS4UBxelO6evrsTRu7F
	SJoWvo2YwoYz/nyJBN0i6yOcr+N8CJ4fA5dDueyH/1DpZhzQWz75Utkv0QR29aJcQtzM07XKc4viA
	jSJFMge2ZeIeH/3eNHZBtl3vfLpzcHWbElA3ncNNZ6l6xzzLSIVNYymF+ca1r1cVqWs08kL2zSi6K
	z8Lb8r4XTLRYJJHfQ6Lfk4791WjW0AcXoaZVUtUneepoQ3Is51RuPw/XP5r5WNo0gqxlKo0oNyVAg
	Pj5Xrv9nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeyw9-0007RQ-26; Sat, 30 May 2020 10:41:57 +0000
Received: from smtp13.smtpout.orange.fr ([80.12.242.135]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeyw0-0007QA-Tx
 for linux-arm-kernel@lists.infradead.org; Sat, 30 May 2020 10:41:50 +0000
Received: from [192.168.42.210] ([93.23.15.192]) by mwinf5d70 with ME
 id kyhh2200B48dfat03yhh5A; Sat, 30 May 2020 12:41:45 +0200
X-ME-Helo: [192.168.42.210]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sat, 30 May 2020 12:41:45 +0200
X-ME-IP: 93.23.15.192
Subject: Re: [PATCH] scsi: cumana_2: Fix different dev_id between
 'request_irq()' and 'free_irq()'
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <20200530073555.577414-1-christophe.jaillet@wanadoo.fr>
 <20200530094338.GE1551@shell.armlinux.org.uk>
From: Marion & Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <63fbba26-82f4-5c4b-90d6-d951eb914f50@wanadoo.fr>
Date: Sat, 30 May 2020 12:41:40 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200530094338.GE1551@shell.armlinux.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_034149_240959_45B03B23 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.135 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [80.12.242.135 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-scsi@vger.kernel.org, martin.petersen@oracle.com, jejb@linux.ibm.com,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkxlIDMwLzA1LzIwMjAgw6AgMTE6NDMsIFJ1c3NlbGwgS2luZyAtIEFSTSBMaW51eCBhZG1pbiBh
IMOpY3JpdMKgOgo+IE9uIFNhdCwgTWF5IDMwLCAyMDIwIGF0IDA5OjM1OjU1QU0gKzAyMDAsIENo
cmlzdG9waGUgSkFJTExFVCB3cm90ZToKPj4gVGhlIGRldl9pZCB1c2VkIGluICdyZXF1ZXN0X2ly
cSgpJyBhbmQgJ2ZyZWVfaXJxKCknIHNob3VsZCBtYXRjaC4KPj4gU28gdXNlICdob3N0JyBpbiBi
b3RoIGNhc2VzLgo+Pgo+PiBGaXhlczogMWRhMTc3ZTRjM2Y0ICgiTGludXgtMi42LjEyLXJjMiIp
Cj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdG9waGUgSkFJTExFVCA8Y2hyaXN0b3BoZS5qYWlsbGV0
QHdhbmFkb28uZnI+Cj4gVGhpcyBpcyBpdHNlbGYgd3JvbmcuICBjdW1hbmFzY3NpXzJfaW50cigp
IHJlcXVpcmVzICJpbmZvIiBhcyB0aGUgZGV2aWQuCj4gRWl0aGVyIGN1bWFuYXNjc2lfMl9pbnRy
KCkgbmVlZHMgY2hhbmdpbmcgdG8gdXNlIHNob3N0X3ByaXYoaG9zdCkgYWxvbmcKPiB3aXRoIHRo
aXMgY2hhbmdlLCBvciBmcmVlX2lycSgpIG5lZWRzIGNoYW5naW5nIHRvIHVzZSAiaW5mbyIuCgpN
eSBiYWQuCgpJJ3ZlIG9ubHkgbG9va2VkIGF0IHRoZSBkaWZmZXJlbmNlIG9mIHRoZSBkZXZfaWQg
Zm9yIHRoZSAyIGZ1bmN0aW9ucywgCm5vdCBhdCB0aGUgdXNhZ2Ugb2YgaXQgd2l0aCB0aGUgZnVu
Y3Rpb24gcmVnaXN0ZXJlZCBieSAncmVxdWVzdF9pcnEnLiAKVGhpcyBvbmUgaXMgb2J2aW91c2x5
IGNvcnJlY3QsIG9yIHRoZSBkcml2ZXIgd291bGQgaGF2ZSBzb21lIHByb2JsZW1zIApzb21ld2hl
cmUuCkkgZG9uJ3Qga25vdyB3aHkgaGF2ZSBjaG9zZW4gdG8gY2hhbmdlIHJlcXVlc3RfaXJxIGFu
ZCBub3QgZnJlZV9pcnEuCgpTbyBvYnZpb3VzLiBJJ20gYSBsaXR0bGUgZW1iYXJyYXNzZWQgYW5k
IHdpbGwgc2VuZCBhIHYyLgoKVGh4IGZvciB0aGUgcXVpY2sgcmVwbHkgYW5kIHJldmlldy4KCgpB
bGwgdGhlIDMgcGF0Y2hlcyBiZWluZyBpbiAiL2RyaXZlcnMvc2NzaS9hcm0vIiwgZG8geW91IHBy
ZWZlciBvbmx5IDEgCnBhdGNoIGZvciB0aGUgMywgb3Igc2VwYXJhdGVkIGFzIEkndmUgZG9uZSBz
byBmYXI/CgpDSgoKPiBMaWtlbHkgdGhlIHNhbWUgZm9yIHRoZSBvdGhlciBwYXRjaGVzLCBJIGhh
dmVuJ3QgbG9va2VkLgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
