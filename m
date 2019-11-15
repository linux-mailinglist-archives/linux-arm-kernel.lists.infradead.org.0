Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BD2FD1E5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 01:17:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e2PWIqAxc42ZnrFdKoEcO55fIv/vtGQ/tkgXC17KVrk=; b=RGWNJzG3ybWIYD
	fJcwI2FEYIG9F2C8CVoxkHLA+quvM1UoyzY1pyn1+qeSkJfJlBNs61Q2ZtiUsEIXO6vr4WkSfj0V/
	bTDCvQTZ6PtQJbAxoKg2UJM7MfTCrhB45rSPvsHNbaY8LcsDVdDvOp8lRaoUL6cSUcD/FvdKIqZoS
	4EeUHHtBph2cRgjPMEW9s+8Dm91BbNAQewCv9jE6D8sxcc+BC1az2XJgKlSnmHj6viXvOkKu5Ur/f
	qb11Eg9nvihrolrv5YlfID9r/cVnxAfMmlDqwJDird0VGmD3jQUF3buMK3c5uUlyzFOcRF0oqm+Pt
	NmBXzS1m15HISS61iQhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVPIK-0006NE-5M; Fri, 15 Nov 2019 00:17:00 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVPIA-0006MY-T1; Fri, 15 Nov 2019 00:16:52 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 26C1DAD78;
 Fri, 15 Nov 2019 00:16:49 +0000 (UTC)
Subject: Re: [PATCH 5/7] ARM: dts: rtd1195: Introduce r-bus
To: James Tai <james.tai@realtek.com>
References: <20191111030434.29977-1-afaerber@suse.de>
 <20191111030434.29977-6-afaerber@suse.de>
 <a43d184d74c34e269714858b2635c35e@realtek.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <960a80b9-b1bf-3709-bbb7-fc2a3c3ae1da@suse.de>
Date: Fri, 15 Nov 2019 01:16:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <a43d184d74c34e269714858b2635c35e@realtek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_161651_082049_45134654 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFtZXMsCgpBbSAxMy4xMS4xOSB1bSAwMzo1MyBzY2hyaWViIEphbWVzIFRhaToKPj4gKwkJ
cmJ1czogci1idXNAMTgwMDAwMDAgewo+PiArCQkJY29tcGF0aWJsZSA9ICJzaW1wbGUtYnVzIjsK
Pj4gKwkJCXJlZyA9IDwweDE4MDAwMDAwIDB4MTAwMDAwPjsKPj4gKwkJCSNhZGRyZXNzLWNlbGxz
ID0gPDE+Owo+PiArCQkJI3NpemUtY2VsbHMgPSA8MT47Cj4+ICsJCQlyYW5nZXMgPSA8MHgwIDB4
MTgwMDAwMDAgMHgxMDAwMDA+Owo+PiArCj4gCj4gVGhlIHItYnVzIHNpemUgb2YgUlREMTE5NSBp
cyAweDcwMDAw4oCsLgoKRml4ZWQsIGFsc28gZnVydGhlciBhYm92ZSBmb3IgdGhlIHNvYyBub2Rl
LiBUaGlzIG5vdyBsZWF2ZXMgYSBnYXAgdW50aWwKMHgxODEwMDAwMCAtIGlzIHRoYXQgZ2FwIFJB
TSBvciBub24tci1idXMgcmVnaXN0ZXJzIHRoZW4/CgoJCXJhbmdlcyA9IDwweDE4MDAwMDAwIDB4
MTgwMDAwMDAgMHgwMDA3MDAwMD4sCgkJICAgICAgICAgPDB4MTgxMDAwMDAgMHgxODEwMDAwMCAw
eDAxMDAwMDAwPiwKCQkgICAgICAgICA8MHg0MDAwMDAwMCAweDQwMDAwMDAwIDB4YzAwMDAwMDA+
OwoKRGlkIHlvdSBhbHNvIHJldmlldyB0aGUgb3RoZXIgdHdvIHJhbmdlcz8gVGhlIG1pZGRsZSBv
bmUgd2FzIGxhYmVsZWQgTk9SCmZsYXNoIHNvbWV3aGVyZSAtIGFyZSBzdGFydCBhbmQgc2l6ZSBj
b3JyZWN0PyBUaGUgZmluYWwgb25lIGRlcGVuZHMgb24KdGhlIG1heGltdW0gUkFNIHNpemUgLSBk
b2VzIFJURDExOTUgYWxsb3cgbW9yZSB0aGFuIDEgR2lCIFJBTT8gQWxsCm5vbi1SQU0gcmVnaW9u
cyBzaG91bGQgYmUgY292ZXJlZCBoZXJlLgoKU28gYW5vdGhlciBxdWVzdGlvbiwgYXBwbGljYWJs
ZSB0byBhbGwgU29DczogVGhpcyByZXNlcnZlZCBCb290IFJPTSBhcmVhCmF0IHRoZSBzdGFydCBv
ZiB0aGUgYWRkcmVzcyBzcGFjZSwgaGVyZSBvZiBzaXplIDB4YTgwMCwgaXMgdGhhdCBjb3BpZWQK
aW50byBSQU0sIG9yIGlzIHRoYXQgdGhlIGFjdHVhbCBST00gb3ZlcmxhcHBpbmcgUkFNPyBJZiB0
aGUgbGF0dGVyLCB3ZQpzaG91bGQgZXhjbHVkZSBpdCBmcm9tIC9tZW1vcnlAMCdzIHJlZyAobWFr
aW5nIGl0IC9tZW1vcnlAYTgwMCksIGFuZCBhZGQKaXQgdG8gc29jJ3MgcmFuZ2VzIGhlcmUgZm9y
IGNvcnJlY3RuZXNzLgoKV2l0aCB0aGUgZm9sbG93LXVwIHF1ZXN0aW9uOiBJcyBpdCBjb3JyZWN0
IHRoYXQsIGdpdmVuIHRoZSBzaXplIDB4YTgwMCwKSSBoYXZlIGEgZ2FwIGJldHdlZW4gL21lbXJl
c2VydmUvcyBmcm9tIDB4YTgwMCB0byAweGMwMDAsIG9yIHNob3VsZCB3ZQpyZXNlcnZlIHRoYXQg
Z2FwIGJ5IGV4dGVuZGluZyB0aGUgbmV4dCAvbWVtcmVzZXJ2ZS8gb3IgaW5zZXJ0aW5nIG9uZT8K
ClRoYW5rcywKQW5kcmVhcwoKLS0gClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21i
SApNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkKR0Y6IEZlbGl4IEltZW5k
w7ZyZmZlcgpIUkIgMzY4MDkgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
