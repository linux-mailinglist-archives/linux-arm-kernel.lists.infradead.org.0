Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 471421A84A6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 18:25:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EvP05HkVj5f6n89EXvoCaR/gEo8saPTxnY/PvUd9kpQ=; b=GitFHuSBt4hDC4
	YijKVO9Uei5PeXtV2cQJsdt++NV7ed33wi1IMnbGK/dAk3ix+t6/oNSfzuStma3s/ih/cXJow51Z5
	3esh9337kZp+Q/RvULrTQXne/Beuoj7gWpdSrpV92gaDwLq+NSJQO2gBvVcUjLu6cnUPZj62SjCiZ
	f8OGIMrKFxbPFxaYqmGpWtEavHmee6Y8MIEkkUJMmU/VWGAv4WcfFSTqyoFEDzzcdDY0LvG+cehRJ
	XXn0U15X/9ImGJWHTKbrNwtN7vMYl8PSGgHGXR5nX6+3OQM3OaQqczAA2XAu0E3D9QlWfZpkJhlXV
	6no+GcSO2Pb6IRtwjSng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOONB-0007bo-PW; Tue, 14 Apr 2020 16:25:17 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOMw-00058M-AN
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 16:25:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586881501;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yW8t58m2bp1NhazlqC7/k8J+nPWsrZBYDWUsjTyk2qQ=;
 b=NsgcQPq0gDRRzr+WCv6O+IejAhACeGf91UcZUch7xVIEkk4F0++6WsAKwkQ+6nkMoq/jD7
 lzSV3f1EuKP3Hxnp2JivHQcF6Vr/Z22M++foNVb8RdxR7eWsyL6QJbeO4NazIgQ9svAhXl
 7AFa78Hn9YCF68TMh9hKXOVlm2kXUcc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-87-m_CJjLwlPvyXxruKyZ4cKA-1; Tue, 14 Apr 2020 12:24:56 -0400
X-MC-Unique: m_CJjLwlPvyXxruKyZ4cKA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 12123107ACC4;
 Tue, 14 Apr 2020 16:24:50 +0000 (UTC)
Received: from llong.remote.csb (ovpn-118-173.rdu2.redhat.com [10.10.118.173])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0E02D118DEE;
 Tue, 14 Apr 2020 16:24:36 +0000 (UTC)
Subject: Re: [PATCH v2 2/2] crypto: Remove unnecessary memzero_explicit()
To: Christophe Leroy <christophe.leroy@c-s.fr>,
 Andrew Morton <akpm@linux-foundation.org>,
 David Howells <dhowells@redhat.com>,
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
 James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, Joe Perches
 <joe@perches.com>, Matthew Wilcox <willy@infradead.org>,
 David Rientjes <rientjes@google.com>
References: <20200413211550.8307-1-longman@redhat.com>
 <20200413222846.24240-1-longman@redhat.com>
 <eca85e0b-0af3-c43a-31e4-bd5c3f519798@c-s.fr>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <e194a51f-a5e5-a557-c008-b08cac558572@redhat.com>
Date: Tue, 14 Apr 2020 12:24:36 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <eca85e0b-0af3-c43a-31e4-bd5c3f519798@c-s.fr>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_092502_475814_067C2066 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: samba-technical@lists.samba.org, virtualization@lists.linux-foundation.org,
 linux-mm@kvack.org, linux-sctp@vger.kernel.org, target-devel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, devel@driverdev.osuosl.org,
 linux-s390@vger.kernel.org, linux-scsi@vger.kernel.org, x86@kernel.org,
 kasan-dev@googlegroups.com, cocci@systeme.lip6.fr, linux-wpan@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-crypto@vger.kernel.org,
 linux-pm@vger.kernel.org, ecryptfs@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-cifs@vger.kernel.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, linux-security-module@vger.kernel.org,
 keyrings@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 wireguard@lists.zx2c4.com, linux-ppp@vger.kernel.org,
 linux-integrity@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNC8xNC8yMCAyOjA4IEFNLCBDaHJpc3RvcGhlIExlcm95IHdyb3RlOgo+Cj4KPiBMZSAxNC8w
NC8yMDIwIMOgIDAwOjI4LCBXYWltYW4gTG9uZyBhIMOpY3JpdMKgOgo+PiBTaW5jZSBrZnJlZV9z
ZW5zaXRpdmUoKSB3aWxsIGRvIGFuIGltcGxpY2l0IG1lbXplcm9fZXhwbGljaXQoKSwgdGhlcmUK
Pj4gaXMgbm8gbmVlZCB0byBjYWxsIG1lbXplcm9fZXhwbGljaXQoKSBiZWZvcmUgaXQuIEVsaW1p
bmF0ZSB0aG9zZQo+PiBtZW16ZXJvX2V4cGxpY2l0KCkgYW5kIHNpbXBsaWZ5IHRoZSBjYWxsIHNp
dGVzLiBGb3IgYmV0dGVyIGNvcnJlY3RuZXNzLAo+PiB0aGUgc2V0dGluZyBvZiBrZXlsZW4gaXMg
YWxzbyBtb3ZlZCBkb3duIGFmdGVyIHRoZSBrZXkgcG9pbnRlciBjaGVjay4KPj4KPj4gU2lnbmVk
LW9mZi1ieTogV2FpbWFuIExvbmcgPGxvbmdtYW5AcmVkaGF0LmNvbT4KPj4gLS0tCj4+IMKgIC4u
Li9hbGx3aW5uZXIvc3VuOGktY2Uvc3VuOGktY2UtY2lwaGVyLmPCoMKgwqDCoMKgIHwgMTkgKysr
KystLS0tLS0tLS0tLS0tCj4+IMKgIC4uLi9hbGx3aW5uZXIvc3VuOGktc3Mvc3VuOGktc3MtY2lw
aGVyLmPCoMKgwqDCoMKgIHwgMjAgKysrKystLS0tLS0tLS0tLS0tLQo+PiDCoCBkcml2ZXJzL2Ny
eXB0by9hbWxvZ2ljL2FtbG9naWMtZ3hsLWNpcGhlci5jwqDCoCB8IDEyICsrKy0tLS0tLS0tCj4+
IMKgIGRyaXZlcnMvY3J5cHRvL2luc2lkZS1zZWN1cmUvc2FmZXhjZWxfaGFzaC5jwqAgfMKgIDMg
Ky0tCj4+IMKgIDQgZmlsZXMgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgNDAgZGVsZXRpb25z
KC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2NyeXB0by9hbGx3aW5uZXIvc3VuOGktY2Uv
c3VuOGktY2UtY2lwaGVyLmMKPj4gYi9kcml2ZXJzL2NyeXB0by9hbGx3aW5uZXIvc3VuOGktY2Uv
c3VuOGktY2UtY2lwaGVyLmMKPj4gaW5kZXggYWE0ZThmZGMyYjMyLi44MzU4ZmFjOTg3MTkgMTAw
NjQ0Cj4+IC0tLSBhL2RyaXZlcnMvY3J5cHRvL2FsbHdpbm5lci9zdW44aS1jZS9zdW44aS1jZS1j
aXBoZXIuYwo+PiArKysgYi9kcml2ZXJzL2NyeXB0by9hbGx3aW5uZXIvc3VuOGktY2Uvc3VuOGkt
Y2UtY2lwaGVyLmMKPj4gQEAgLTM2NiwxMCArMzY2LDcgQEAgdm9pZCBzdW44aV9jZV9jaXBoZXJf
ZXhpdChzdHJ1Y3QgY3J5cHRvX3RmbSAqdGZtKQo+PiDCoCB7Cj4+IMKgwqDCoMKgwqAgc3RydWN0
IHN1bjhpX2NpcGhlcl90Zm1fY3R4ICpvcCA9IGNyeXB0b190Zm1fY3R4KHRmbSk7Cj4+IMKgIC3C
oMKgwqAgaWYgKG9wLT5rZXkpIHsKPj4gLcKgwqDCoMKgwqDCoMKgIG1lbXplcm9fZXhwbGljaXQo
b3AtPmtleSwgb3AtPmtleWxlbik7Cj4+IC3CoMKgwqDCoMKgwqDCoCBrZnJlZShvcC0+a2V5KTsK
Pj4gLcKgwqDCoCB9Cj4+ICvCoMKgwqAga2ZyZWVfc2Vuc2l0aXZlKG9wLT5rZXkpOwo+PiDCoMKg
wqDCoMKgIGNyeXB0b19mcmVlX3N5bmNfc2tjaXBoZXIob3AtPmZhbGxiYWNrX3RmbSk7Cj4+IMKg
wqDCoMKgwqAgcG1fcnVudGltZV9wdXRfc3luY19zdXNwZW5kKG9wLT5jZS0+ZGV2KTsKPj4gwqAg
fQo+PiBAQCAtMzkxLDE0ICszODgsMTEgQEAgaW50IHN1bjhpX2NlX2Flc19zZXRrZXkoc3RydWN0
IGNyeXB0b19za2NpcGhlcgo+PiAqdGZtLCBjb25zdCB1OCAqa2V5LAo+PiDCoMKgwqDCoMKgwqDC
oMKgwqAgZGV2X2RiZyhjZS0+ZGV2LCAiRVJST1I6IEludmFsaWQga2V5bGVuICV1XG4iLCBrZXls
ZW4pOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7Cj4+IMKgwqDCoMKgwqAg
fQo+PiAtwqDCoMKgIGlmIChvcC0+a2V5KSB7Cj4+IC3CoMKgwqDCoMKgwqDCoCBtZW16ZXJvX2V4
cGxpY2l0KG9wLT5rZXksIG9wLT5rZXlsZW4pOwo+PiAtwqDCoMKgwqDCoMKgwqAga2ZyZWUob3At
PmtleSk7Cj4+IC3CoMKgwqAgfQo+PiAtwqDCoMKgIG9wLT5rZXlsZW4gPSBrZXlsZW47Cj4+ICvC
oMKgwqAga2ZyZWVfc2Vuc2l0aXZlKG9wLT5rZXkpOwo+PiDCoMKgwqDCoMKgIG9wLT5rZXkgPSBr
bWVtZHVwKGtleSwga2V5bGVuLCBHRlBfS0VSTkVMIHwgR0ZQX0RNQSk7Cj4+IMKgwqDCoMKgwqAg
aWYgKCFvcC0+a2V5KQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FTk9NRU07Cj4+ICvC
oMKgwqAgb3AtPmtleWxlbiA9IGtleWxlbjsKPgo+IERvZXMgaXQgbWF0dGVyIGF0IGFsbCB0byBl
bnN1cmUgb3AtPmtleWxlbiBpcyBub3Qgc2V0IHdoZW4gb2YtPmtleSBpcwo+IE5VTEwgPyBJJ20g
bm90IHN1cmUuCj4KPiBCdXQgaWYgaXQgZG9lcywgdGhlbiBvcC0+a2V5bGVuIHNob3VsZCBiZSBz
ZXQgdG8gMCB3aGVuIGZyZWVpbmcgb3AtPmtleS4gCgpNeSB0aGlua2luZyBpcyB0aGF0IGlmIG1l
bW9yeSBhbGxvY2F0aW9uIGZhaWxzLCB3ZSBqdXN0IGRvbid0IHRvdWNoCmFueXRoaW5nIGFuZCBy
ZXR1cm4gYW4gZXJyb3IgY29kZS4gSSB3aWxsIG5vdCBleHBsaWNpdGx5IHNldCBrZXlsZW4gdG8g
MAppbiB0aGlzIGNhc2UgdW5sZXNzIGl0IGlzIHNwZWNpZmllZCBpbiB0aGUgQVBJIGRvY3VtZW50
YXRpb24uCgpDaGVlcnMsCkxvbmdtYW4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
