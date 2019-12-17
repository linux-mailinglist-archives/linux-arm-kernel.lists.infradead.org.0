Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4FF7122D29
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 14:42:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QEz5mrvOUGomamc8Zua9iiYJxW3F2GB5BoeE1dARA/8=; b=NFfmgOSyWEWr7S
	qfT/LrO7wBRy1o3F5jrMQpYsmI2EaT87TzJSq66eE9GQCW0ocUyuw7UGn5hZE5b5BKJf+elh1qIRD
	dG2M3V3SV7om72fHGK5NVHqtHmdD53rJBRyRCF8NwqVOfSJdCCFFwk5eCKCT2pBFBoFGksCbRRCF7
	oD4XKwBv2W79gMlB37GvG2uYjtjni738fM6T7K5r7iidHsq9h/azWlMjd9+z+mq5S/Y8zFqOzPPZf
	IAUgTmiWqE6V5gl13Sfbv7bfoCWAVRKEiU3UHfHxPEKlbCpsNd1dflzhRUX/s+YjXPCRkDD4cPla7
	l/qFRulzTSJ+/ZwNDqXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihD75-0002s2-At; Tue, 17 Dec 2019 13:42:11 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihD6u-0002r0-5B
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 13:42:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1576590114; bh=6t8Uyc2t+Hfu7WNUKCMbkr4L5H0F8zqAfk4qlpdk8x0=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=FzufCbM2RGiDa9KFXYh0vsRZPe9nbbhyIHzSdQd52wvGFJkd5ZK0G66OD7aV8hDXi
 qIqLxNfM/QYUQ5tEvNr5Pn7IOWSHGm26DeX5swmUsLYsM1orNDDIYQf7QTuNUtp9Rm
 MjcdSsmiIdOgK8PxdtrqvsdMvmoGQAqwKawP1lo4=
Date: Tue, 17 Dec 2019 14:41:54 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH V4 01/10] bluetooth: hci_bcm: Fix RTS handling during
 startup
Message-ID: <20191217134154.zrvukziiqe272pq6@core.my.home>
Mail-Followup-To: Stefan Wahren <wahrenst@gmx.net>,
 Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 linux-bluetooth@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
 <1570375708-26965-2-git-send-email-wahrenst@gmx.net>
 <61789264-a4c2-ac85-9d74-d186213ec70a@gmx.net>
 <20191216132509.ofqcdpwxsd7324ql@core.my.home>
 <6f05f4d8-fa84-ae81-ac4f-00ab12fabeea@gmx.net>
 <5bbda434-d0e4-7162-8634-9900a4fa9148@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5bbda434-d0e4-7162-8634-9900a4fa9148@gmx.net>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_054200_541342_B0B58CB6 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Johan Hedberg <johan.hedberg@gmail.com>, Marcel Holtmann <marcel@holtmann.org>,
 linux-bluetooth@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3RlZmFuLAoKT24gVHVlLCBEZWMgMTcsIDIwMTkgYXQgMDE6NTk6MjZQTSArMDEwMCwgU3Rl
ZmFuIFdhaHJlbiB3cm90ZToKPiBIaSBPbmRyZWosCj4gCj4gQW0gMTYuMTIuMTkgdW0gMTk6Mjgg
c2NocmllYiBTdGVmYW4gV2FocmVuOgo+ID4gSGkgT25kcmVqLAo+ID4KPiA+IEFtIDE2LjEyLjE5
IHVtIDE0OjI1IHNjaHJpZWIgT25kxZllaiBKaXJtYW46Cj4gPj4KPiA+PiBNZWFud2hpbGUgaSB3
aWxsIHBsYXkgd2l0aCBtb2RpZmljYXRpb25zIG9mIG9yaWdpbmFsIHBhdGNoIG9uIHRoZQo+ID4+
IFJhc3BiZXJyeSBQaSA0IGFuZCBjb21lIGJhY2sgdG8geW91Lgo+IAo+IGNvdWxkIHlvdSBwbGVh
c2UgdGVzdCB0aGlzIHBhdGNoIFsyXSBvbiB0b3Agb2YgY3VycmVudCBibHVldG9vdGgtbmV4dD8K
PiAKPiBUaGlzIGlzIHRoZSBzb2x1dGlvbiBpbiBjYXNlIHdlIGRvbid0IGZpbmQgdGhlIGNhdXNl
IG9mIHRoaXMgaXNzdWUuIEkKPiBkb24ndCBwcmVmZXIgdGhpcyBvbmUsIGJlY2F1c2UgdGhpcyBp
cyBuZXh0IHN0dWZmIGFuZCB3ZSBuZWVkIHRvIHJldmVydAo+IHRoZSBvZmZlbmRpbmcgcGF0Y2gg
Zm9yIExpbnV4IDUuNS4KPiAKPiBbMl0gLSBodHRwczovL2dpc3QuZ2l0aHViLmNvbS9sYXRlZ29v
ZGJ5ZS8zZDM5ZTRiMDdkNDAxZjA3ZmE5ZjljMmYxMWUxZjE3ZAoKVGhhdCBsb29rcyBlcXVpdmFs
ZW50IHRvIHRoZSByZXZlcnQgYW5kIGl0IHdpbGwgb2J2aW91c2x5IGF2b2lkIHRoZSBpc3N1ZSwK
YmVjYXVzZSBPcmFuZ2UgUGkgMyBoYXMgYSBkaWZmZXJlbnQgYmx1ZXRvb3RoIGRldmljZSBjb21w
YXRpYmxlLgoKcmVnYXJkcywKCW8uCgo+ID4KPiA+IFRoYW5rcwo+ID4gU3RlZmFuCj4gPgo+ID4g
WzFdIC0KPiA+IGh0dHA6Ly93d3cuc3BhcmtsYW4uY29tL3AyLXByb2R1Y3RzLWRldGFpbC5waHA/
UEtleT00OTg0RlZ1a2pjcHlsemlmUWlNLVRHRkUtSUtYRC0tQkN3ZjRQMTVLZnJVJkFQNjI1Ngo+
ID4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
