Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CC1AFFCA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 17:19:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eB4jSArFS5ZoHQuRi3StgRzKGSCkzFg/ElQQhfmYwsU=; b=FUEYwxQ45QhBYA
	CFOUG+Ir/yp0eiaIAelSjDQfGJW+L1pxV2KAngkZfF2DrzorH5EAPvdClC6Fssz5He9wlJ4c159og
	ZMf22oBK2aQ9eP9/jzrijob87QY95tjHdgZ9luBrfU8I7OsRrNf5fGLNjguN0losok4HB7E9TJzfn
	ejkHueWbB3gRF0IK2LOA8gp/qflYZCFsWD/C6TC1xImRmkex2Clm68houwNBBRzh0yTDIkeyBajhv
	DICfXKxrlR9+rFwJu9X1agMOHhLuCyajuSqJ8QmtAtvu9ToS3Y/rtvORWeR1s1uzgeDhg2qIcq3Th
	uILqz565dW6t1jv4oNjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i84PB-0001cZ-2s; Wed, 11 Sep 2019 15:19:37 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i84Oz-0001bQ-6f
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 15:19:27 +0000
Received: by mail-qk1-x744.google.com with SMTP id h126so13486046qke.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 08:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=ZU9ZAjmx+sYl629AtpqCVueI4p9/wYdOG6Cg3kJEbbA=;
 b=P+MDd2FC4Tc061IIYYh+fnI7tLbvNzMEPGfTHDCLdu2V2A1iaUfoGPOyKo1ZcCp2tM
 vDlQak9qwdFXMTF01sdF9NaWHYqP1Z/eiHE2pYAG4FrrFsTi2bCatToJIx7hX7STqCMC
 e85SYvrxtgXBNTGH/ehZFacewWsbP3akXbDmXt6EUDu/lp7mYlWlv1TyYoYV+BNcPW4F
 TyQwa7/S4+maJvqyBvr3GUHM1ID8EHp3pq+TdjfeKrIVUgE8Tw3I5En61hXz9Gu0JACc
 WwgWy0IYjBit1gDB8Hqa1cVn0uxte+0fby7CvbIJdCpE5oqr9900yYQW4eRFZ2W0lIU6
 oFtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=ZU9ZAjmx+sYl629AtpqCVueI4p9/wYdOG6Cg3kJEbbA=;
 b=nwD6+wAMZwGhm5dv9+LsZSKMBI1R0OHP2rR4taA2CoINvInIa4x3hEW5LKYHt4+eLe
 JtC4XBrjDwStUFfd90C7Gsh0IY4EP5sctH2dN4XBFkoX9txF4Rn4GTsq2BXxPHxa+k5c
 ZnagfPb11ktGy+Q5rXV9MiV/pVEsOedfca5aZMp3CnWE2cHBDSirI+VV2227Xq2iGVfc
 gqpT958pJCA7HmMA1mVcwgp/GK8U7TJcN7lu29YgHvLtMbdFFUesZadEdCEFVUQSr3f2
 O+LNHtdwfVO1FNTvrdaM6M0hBD2wmhSFMSytefhFWhjO0NrFOAYFdf5Nq7uB3q/iikND
 ONKQ==
X-Gm-Message-State: APjAAAUCqwNCK76pF0TUkHnIhDSQJvhdbfnxu5TMWFM+cEJg67RN3RI4
 rIGIKCMdzLooizvuLcy3A9PYyw==
X-Google-Smtp-Source: APXvYqwsPae0vNSwigouHMUxOlp4cnOUahDfeE+W9gnOtVKDwdJdfx2UhKXwYdremGpJnC+o/jmyHQ==
X-Received: by 2002:a37:49d6:: with SMTP id
 w205mr35829035qka.191.1568215161746; 
 Wed, 11 Sep 2019 08:19:21 -0700 (PDT)
Received: from qians-mbp.fios-router.home
 (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id g194sm11256279qke.46.2019.09.11.08.19.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Sep 2019 08:19:20 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH v3] mm/kasan: dump alloc and free stack for page allocator
From: Qian Cai <cai@lca.pw>
In-Reply-To: <20190911083921.4158-1-walter-zh.wu@mediatek.com>
Date: Wed, 11 Sep 2019 11:19:19 -0400
Message-Id: <5E358F4B-552C-4542-9655-E01C7B754F14@lca.pw>
References: <20190911083921.4158-1-walter-zh.wu@mediatek.com>
To: Walter Wu <walter-zh.wu@mediatek.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_081926_029459_D1D29C9C 
X-CRM114-Status: GOOD (  22.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, wsd_upstream@mediatek.com,
 Arnd Bergmann <arnd@arndb.de>, linux-mm@kvack.org,
 Andrey Konovalov <andreyknvl@google.com>, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Alexander Potapenko <glider@google.com>, Vlastimil Babka <vbabka@suse.cz>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIFNlcCAxMSwgMjAxOSwgYXQgNDozOSBBTSwgV2FsdGVyIFd1IDx3YWx0ZXItemgud3VA
bWVkaWF0ZWsuY29tPiB3cm90ZToKPiAKPiBUaGlzIHBhdGNoIGlzIEtBU0FOJ3MgcmVwb3J0IGFk
ZHMgdGhlIGFsbG9jL2ZyZWUgc3RhY2sgZm9yIHBhZ2UgYWxsb2NhdG9yCj4gaW4gb3JkZXIgdG8g
aGVscCBwcm9ncmFtbWVyIHRvIHNlZSBtZW1vcnkgY29ycnVwdGlvbiBjYXVzZWQgYnkgdGhlIHBh
Z2UuCj4gCj4gQnkgZGVmYXVsdCwgS0FTQU4gZG9lc24ndCByZWNvcmQgYWxsb2Mgb3IgZnJlZSBz
dGFjayBmb3IgcGFnZSBhbGxvY2F0b3IuCj4gSXQgaXMgZGlmZmljdWx0IHRvIGZpeCB1cCB0aGUg
cGFnZSB1c2UtYWZ0ZXItZnJlZSBvciBkb3VibGUtZnJlZSBpc3N1ZS4KPiAKPiBXZSBhZGQgdGhl
IGZvbGxvd2luZyBjaGFuZ2luZzoKPiAxKSBLQVNBTiBlbmFibGUgUEFHRV9PV05FUiBieSBkZWZh
dWx0IHRvIGdldCB0aGUgYWxsb2Mgc3RhY2sgb2YgdGhlIHBhZ2UuCj4gMikgQWRkIG5ldyBmZWF0
dXJlIG9wdGlvbiB0byBnZXQgdGhlIGZyZWUgc3RhY2sgb2YgdGhlIHBhZ2UuCj4gCj4gVGhlIG5l
dyBmZWF0dXJlIEtBU0FOX0RVTVBfUEFHRSBkZXBlbmRzIG9uIERFQlVHX1BBR0VBTExPQywgaXQg
d2lsbCBoZWxwCj4gdG8gcmVjb3JkIGZyZWUgc3RhY2sgb2YgdGhlIHBhZ2UsIGl0IGlzIHZlcnkg
aGVscGZ1bCBmb3Igc29sdmluZyB0aGUgcGFnZQo+IHVzZS1hZnRlci1mcmVlIG9yIGRvdWJsZS1m
cmVlIGlzc3VlLgo+IAo+IFdoZW4gS0FTQU5fRFVNUF9QQUdFIGlzIGVuYWJsZWQgdGhlbiBLQVNB
TidzIHJlcG9ydCB3aWxsIHNob3cgdGhlIGxhc3QKPiBhbGxvYyBhbmQgZnJlZSBzdGFjayBvZiB0
aGUgcGFnZSwgaXQgc2hvdWxkIGJlOgo+IAo+IEJVRzogS0FTQU46IHVzZS1hZnRlci1mcmVlIGlu
IGttYWxsb2NfcGFnZWFsbG9jX3VhZisweDcwLzB4ODAKPiBXcml0ZSBvZiBzaXplIDEgYXQgYWRk
ciBmZmZmZmZjMGQ2MGU0MDAwIGJ5IHRhc2sgY2F0LzExNQo+IC4uLgo+IHByZXBfbmV3X3BhZ2Ur
MHgxYzgvMHgyMTgKPiBnZXRfcGFnZV9mcm9tX2ZyZWVsaXN0KzB4MWJhMC8weDI4ZDAKPiBfX2Fs
bG9jX3BhZ2VzX25vZGVtYXNrKzB4MWQ0LzB4MTk3OAo+IGttYWxsb2Nfb3JkZXIrMHgyOC8weDU4
Cj4ga21hbGxvY19vcmRlcl90cmFjZSsweDI4LzB4ZTAKPiBrbWFsbG9jX3BhZ2VhbGxvY191YWYr
MHgyYy8weDgwCj4gcGFnZSBsYXN0IGZyZWUgc3RhY2sgdHJhY2U6Cj4gX19mcmVlX3BhZ2VzX29r
KzB4MTE2Yy8weDE2MzAKPiBfX2ZyZWVfcGFnZXMrMHg1MC8weDc4Cj4ga2ZyZWUrMHgxYzQvMHgy
NTAKPiBrbWFsbG9jX3BhZ2VhbGxvY191YWYrMHgzOC8weDgwCj4gCj4gQ2hhbmdlcyBzaW5jZSB2
MToKPiAtIHNsaW0gcGFnZV9vd25lciBhbmQgbW92ZSBpdCBpbnRvIGthc2FuCj4gLSBlbmFibGUg
dGhlIGZlYXR1cmUgYnkgZGVmYXVsdAo+IAo+IENoYW5nZXMgc2luY2UgdjI6Cj4gLSBlbmFibGUg
UEFHRV9PV05FUiBieSBkZWZhdWx0Cj4gLSB1c2UgREVCVUdfUEFHRUFMTE9DIHRvIGdldCBwYWdl
IGluZm9ybWF0aW9uCj4gCj4gY2M6IEFuZHJleSBSeWFiaW5pbiA8YXJ5YWJpbmluQHZpcnR1b3p6
by5jb20+Cj4gY2M6IFZsYXN0aW1pbCBCYWJrYSA8dmJhYmthQHN1c2UuY3o+Cj4gY2M6IEFuZHJl
eSBLb25vdmFsb3YgPGFuZHJleWtudmxAZ29vZ2xlLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBXYWx0
ZXIgV3UgPHdhbHRlci16aC53dUBtZWRpYXRlay5jb20+Cj4gLS0tCj4gbGliL0tjb25maWcua2Fz
YW4gfCAxNSArKysrKysrKysrKysrKysKPiAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygr
KQo+IAo+IGRpZmYgLS1naXQgYS9saWIvS2NvbmZpZy5rYXNhbiBiL2xpYi9LY29uZmlnLmthc2Fu
Cj4gaW5kZXggNGZhZmJhMWE5MjNiLi40ZDU5NDU4YzBjNWEgMTAwNjQ0Cj4gLS0tIGEvbGliL0tj
b25maWcua2FzYW4KPiArKysgYi9saWIvS2NvbmZpZy5rYXNhbgo+IEBAIC00MSw2ICs0MSw3IEBA
IGNvbmZpZyBLQVNBTl9HRU5FUklDCj4gCXNlbGVjdCBTTFVCX0RFQlVHIGlmIFNMVUIKPiAJc2Vs
ZWN0IENPTlNUUlVDVE9SUwo+IAlzZWxlY3QgU1RBQ0tERVBPVAo+ICsJc2VsZWN0IFBBR0VSX09X
TkVSCj4gCWhlbHAKPiAJICBFbmFibGVzIGdlbmVyaWMgS0FTQU4gbW9kZS4KPiAJICBTdXBwb3J0
ZWQgaW4gYm90aCBHQ0MgYW5kIENsYW5nLiBXaXRoIEdDQyBpdCByZXF1aXJlcyB2ZXJzaW9uIDQu
OS4yCj4gQEAgLTYzLDYgKzY0LDcgQEAgY29uZmlnIEtBU0FOX1NXX1RBR1MKPiAJc2VsZWN0IFNM
VUJfREVCVUcgaWYgU0xVQgo+IAlzZWxlY3QgQ09OU1RSVUNUT1JTCj4gCXNlbGVjdCBTVEFDS0RF
UE9UCj4gKwlzZWxlY3QgUEFHRVJfT1dORVIKPiAJaGVscAo+IAkgIEVuYWJsZXMgc29mdHdhcmUg
dGFnLWJhc2VkIEtBU0FOIG1vZGUuCj4gCSAgVGhpcyBtb2RlIHJlcXVpcmVzIFRvcCBCeXRlIEln
bm9yZSBzdXBwb3J0IGJ5IHRoZSBDUFUgYW5kIHRoZXJlZm9yZQo+IEBAIC0xMzUsNiArMTM3LDE5
IEBAIGNvbmZpZyBLQVNBTl9TMzkwXzRfTEVWRUxfUEFHSU5HCj4gCSAgdG8gM1RCIG9mIFJBTSB3
aXRoIEtBU2FuIGVuYWJsZWQpLiBUaGlzIG9wdGlvbnMgYWxsb3dzIHRvIGZvcmNlCj4gCSAgNC1s
ZXZlbCBwYWdpbmcgaW5zdGVhZC4KPiAKPiArY29uZmlnIEtBU0FOX0RVTVBfUEFHRQo+ICsJYm9v
bCAiRHVtcCB0aGUgbGFzdCBhbGxvY2F0aW9uIGFuZCBmcmVlaW5nIHN0YWNrIG9mIHRoZSBwYWdl
Igo+ICsJZGVwZW5kcyBvbiBLQVNBTgo+ICsJc2VsZWN0IERFQlVHX1BBR0VBTExPQwo+ICsJaGVs
cAo+ICsJICBCeSBkZWZhdWx0LCBLQVNBTiBlbmFibGUgUEFHRV9PV05FUiBvbmx5IHRvIHJlY29y
ZCBhbGxvYyBzdGFjawo+ICsJICBmb3IgcGFnZSBhbGxvY2F0b3IuIEl0IGlzIGRpZmZpY3VsdCB0
byBmaXggdXAgcGFnZSB1c2UtYWZ0ZXItZnJlZQo+ICsJICBvciBkb3VibGUtZnJlZSBpc3N1ZS4K
PiArCSAgVGhpcyBmZWF0dXJlIGRlcGVuZHMgb24gREVCVUdfUEFHRUFMTE9DLCBpdCB3aWxsIGV4
dHJhIHJlY29yZAo+ICsJICBmcmVlIHN0YWNrIG9mIHBhZ2UuIEl0IGlzIHZlcnkgaGVscGZ1bCBm
b3Igc29sdmluZyB0aGUgcGFnZQo+ICsJICB1c2UtYWZ0ZXItZnJlZSBvciBkb3VibGUtZnJlZSBp
c3N1ZS4KPiArCSAgVGhpcyBvcHRpb24gd2lsbCBoYXZlIGEgc21hbGwgbWVtb3J5IG92ZXJoZWFk
Lgo+ICsKPiBjb25maWcgVEVTVF9LQVNBTgo+IAl0cmlzdGF0ZSAiTW9kdWxlIGZvciB0ZXN0aW5n
IEtBU0FOIGZvciBidWcgZGV0ZWN0aW9uIgo+IAlkZXBlbmRzIG9uIG0gJiYgS0FTQU4KPiDigJQg
CgpUaGUgbmV3IGNvbmZpZyBsb29rcyByZWR1bmRhbnQgYW5kIGNvbmZ1c2luZy4gSXQgbG9va3Mg
dG8gbWUgbW9yZSBvZiBhIGRvY3VtZW50IHVwZGF0ZQppbiBEb2N1bWVudGF0aW9uL2Rldi10b29s
cy9rYXNhbi50eHQgdG8gZWR1Y2F0ZSBkZXZlbG9wZXJzIHRvIHNlbGVjdCBQQUdFX09XTkVSIGFu
ZApERUJVR19QQUdFQUxMT0MgaWYgbmVlZGVkLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
