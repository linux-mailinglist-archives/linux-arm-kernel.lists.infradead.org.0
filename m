Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB471C5CE7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 18:04:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wQmdzNQmH/7Fl9IAnGjq/OFDhGKdFxPxEJfw3oPXqns=; b=QmL5Poyd/dg+7RFqyIqkNZn5A
	bFaUtshI5UPyRvsUT4LnfYgBkgwyVMrAfZz1pKTlJk3NQUFRVSJkQXokRvcV3gUkt/Vqg/C5AaILx
	6oAYiCDvxUQqEMkYQEvzkzBsD8FKt0wXXat4xEbrJrX4UaEAv0Ac/tDcm8L5oRgCdzOf2CMQkWaPn
	fB1B6SD4JUw0E3Jk3kusRSryCiKuir23irRV+dHiKuNfHkeJq3GPeDhYTz6Jgla4hIJTD9blvL2cO
	kbHjANEJ4EYP3tBS0NfnnVpD/fdlJtjSEfJkduNAmSz64tbcoRcRPeG39XqNUctrHFAmmb7SrtLWS
	fq+SfHH4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW03n-0004Kw-CD; Tue, 05 May 2020 16:04:43 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW03g-0004Jo-PL
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 16:04:38 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 882CBAF22;
 Tue,  5 May 2020 16:04:34 +0000 (UTC)
Subject: Re: [PATCH v2 02/15] ARM: actions: Drop unneeded select of COMMON_CLK
To: Geert Uytterhoeven <geert+renesas@glider.be>
References: <20200505150722.1575-1-geert+renesas@glider.be>
 <20200505150722.1575-3-geert+renesas@glider.be>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <89ad77c9-4bc8-039e-1ba5-e8eb67734597@suse.de>
Date: Tue, 5 May 2020 18:04:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200505150722.1575-3-geert+renesas@glider.be>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_090436_965762_509458E4 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 linux-kernel@vger.kernel.org, soc@kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Olof Johansson <olof@lixom.net>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR2VlcnQsCgpBbSAwNS4wNS4yMCB1bSAxNzowNyBzY2hyaWViIEdlZXJ0IFV5dHRlcmhvZXZl
bjoKPiBTdXBwb3J0IGZvciBBY3Rpb25zIFNlbWkgU29DcyBkZXBlbmRzIG9uIEFSQ0hfTVVMVElf
VjcsIGFuZCB0aHVzIG9uCj4gQVJDSF9NVUxUSVBMQVRGT1JNLgo+IEFzIHRoZSBsYXR0ZXIgc2Vs
ZWN0cyBDT01NT05fQ0xLLCB0aGVyZSBpcyBubyBuZWVkIGZvciBBUkNIX0FDVElPTlMgdG8KPiBz
ZWxlY3QgQ09NTU9OX0NMSy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4g
PGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgo+IENjOiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVy
QHN1c2UuZGU+Cj4gQ2M6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNp
dmFtQGxpbmFyby5vcmc+Cj4gQWNrZWQtYnk6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+
Cj4gUmV2aWV3ZWQtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KPiAtLS0K
PiB2MjoKPiAgICAtIEFkZCBBY2tlZC1ieSwgUmV2aWV3ZWQtYnkuCj4gLS0tCj4gICBhcmNoL2Fy
bS9tYWNoLWFjdGlvbnMvS2NvbmZpZyB8IDEgLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgZGVsZXRp
b24oLSkKCkRvIHlvdSBpbnRlbmQgdG8gYXBwbHkgdGhlIHdob2xlIHNlcmllcyB0aHJvdWdoIHNv
YyAobXkgYXNzdW1wdGlvbiBkdWUgCnRvIHNvYyBpbiBUbyksIG9yIHNob3VsZCBJIHBpY2sgdGhp
cyBvbmUgdXAgYXMgbWFpbnRhaW5lcj8KClRoYW5rcywKQW5kcmVhcwoKLS0gClNVU0UgU29mdHdh
cmUgU29sdXRpb25zIEdlcm1hbnkgR21iSApNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcs
IEdlcm1hbnkKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlcgpIUkIgMzY4MDkgKEFHIE7DvHJuYmVyZykK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
