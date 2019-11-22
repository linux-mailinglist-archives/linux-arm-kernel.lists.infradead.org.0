Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0EF410726A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 13:48:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AhD/JZ6ivvywJT/5NXTMLFZNmZJhLYiDn3yk2AuzEXM=; b=gC8qKSRWpb6BHp
	XJD3orLKbVcEM45dw/DgMb+IOk3PNc+r6DlaDI6KkVtElinjXO2M0tr8Mw+CwXx9gPVEaykJf4QF/
	zIkVLofAhS//JK/f5jQ4SN0tIdoM4O8EvKJL5NSVppU/3T5gJtMlUTDr+kGOlo/0Au0BkS8tyw4R+
	caacH2OedCT9OfgV+K7DwdUcCoiKD+LoalxVCAlbLP4QFG7Q8DTSL90AfK2B8vGkEQG8OlO00lIgZ
	/50pma8WSoydo427h1HaKwOFAuJIQtJ3k9qJcToXQ+9r7M/EhqUXBW50vyo/vvkiIYS5qRBKk28M3
	9ixyNCqaJXS7NScLKatw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY8Mm-0006v9-RY; Fri, 22 Nov 2019 12:48:52 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY8Mf-0006u5-15; Fri, 22 Nov 2019 12:48:46 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 964A4B1B1;
 Fri, 22 Nov 2019 12:48:41 +0000 (UTC)
Subject: Re: [PATCH] arm64: dts: realtek: Add Realtek rtd1619 and mjolnir
To: Marc Zyngier <maz@misterjones.org>, James Tai <james.tai@realtek.com>
References: <43B123F21A8CFE44A9641C099E4196FFCF91BEFA@RTITMBSVM04.realtek.com.tw>
 <25fdd8eb-f1a0-82ae-9c4b-22325b163b0e@suse.de>
 <43B123F21A8CFE44A9641C099E4196FFCF920024@RTITMBSVM04.realtek.com.tw>
 <7a05ac2c-00bc-b2ac-0a33-be0242d33188@suse.de>
 <309cd67da48e4702ae3dcc4ca8ab4309@realtek.com>
 <279fd3a3-17dc-5796-f0b0-e39eb919081f@suse.de>
 <7c94c59649c04442886a98c057c07654@realtek.com>
 <23f44f6f4aec90b412d5d7ff6f4d95f1@www.loen.fr>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <80d0aed8-3b85-1312-1091-0ced3ab1f5d2@suse.de>
Date: Fri, 22 Nov 2019 13:48:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <23f44f6f4aec90b412d5d7ff6f4d95f1@www.loen.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_044845_219011_0A50ED29 
X-CRM114-Status: GOOD (  12.91  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 "'linux-kernel@vger.kernel.org'" <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-realtek-soc@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMjIuMTEuMTkgdW0gMTA6NDMgc2NocmllYiBNYXJjIFp5bmdpZXI6Cj4gT24gMjAxOS0xMS0x
NyAxNTozOSwgSmFtZXMgVGFpIHdyb3RlOgo+PiBIaSBBbmRyZWFzLAo+Pgo+Pj4gPiBTb3JyeSBm
b3IgbXkgbWlzdW5kZXJzdGFuZGluZy4gVGhlIFJBTSByZWdpb24gZG9uJ3QgcmVxdWlyZSB0d28g
Y2VsbHMKPj4+ID4gZm9yIG1lbW9yeSBub2Rlcywgc28gSSdsbCBmaXggaXQgaW4gdjMgcGF0Y2gu
Cj4+Pgo+Pj4gU2hvdWxkIEkgdGhlbiBhbHNvIGNoYW5nZSBSVEQxMzk1IHRvIHVzZSBvbmx5IG9u
ZSBjZWxsLCBvciBkb2VzIGl0Cj4+PiBzdXBwb3J0Cj4+PiBtb3JlIFJBTSB0aGFuIFJURDE2MTk/
Cj4+Cj4+IFllcywgeW91IGNhbi4gVGhlIG1lbW9yeSBjYXBhY2l0eSBvZiBSVEQxMzk1IGFuZCBS
VEQxNjE5IGFyZSB0aGUgc2FtZS4KPj4KPj4+IEJ5IG15IGNhbGN1bGF0aW9uIDB4OTgwMDAwMDAg
aXMgbGVzcyB0aGFuIDIuNCBHaUIhIFNvLCBkb2VzIFJBTSBjb250aW51ZQo+Pj4gYmV0d2VlbiBy
LWJ1cyBhbmQgR0lDLCBzaW1pbGFyIHRvIGhvdyBpdCBkb2VzIG9uIFJURDExOTU/IFRoZW4gd2UK
Pj4+IG5lZWQgdG8KPj4+IGV4Y2x1ZGUgdGhvc2UgUkFNIHJhbmdlcyBmcm9tIHRoZSBTb0Mgbm9k
ZSAoYWRqdXN0aW5nIDB4NjgwMDAwMDApLgo+Pgo+PiBXZSBuZWVkIHRvIHJlc2VydmUgbWVtb3J5
IGFkZHJlc3MgZm9yIHItYnVzIGFuZCBHSUMgYW5kIGV4Y2x1ZGUgdGhvc2UKPj4gUkFNIHJhbmdl
IGZyb20gdGhlIFNvQyBub2RlLgo+IAo+IE1lbW9yeSBmb3IgdGhlIEdJQz8gRm9yIHdoYXQgcHVy
cG9zZT8KCk1NSU8sIGZvciBHSUNEIGFuZCBHSUNSLiBJdCdzIGFib3V0IGZpeGluZyB0aGUgcmFu
Z2VzIG9mIHRoZSAvc29jIG5vZGU6CgpNeSBwcm9wb3NlZApyYW5nZXMgPSA8MHg5ODAwMDAwMCAw
eDk4MDAwMDAwIDB4NjgwMDAwMDA+OwpuZWVkcyB0byBiZSBzcGxpdCwgd2l0aCBhIGdhcCBiZXR3
ZWVuIHItYnVzIGFuZCBHSUMgZm9yIGNvbnRpbnVlZCBSQU0uCgpodHRwczovL2dpdGh1Yi5jb20v
YWZhZXJiZXIvbGludXgvY29tbWl0LzE4ODRlYzZhNTMzYzlkNWMyYjZjYTQwZWUxMzhmZjdlODMx
MmI2YzgKClRoaXMgZ29lcyBiYWNrIHRvIFJvYidzIHJldmlldyBvZiBSVEQxMjk1IFsxXSwgd2hl
cmUgd2UgdGhlbiBmb3IgbGFjayBvZgptZW1vcnkgc3BhY2UgZG9jdW1lbnRhdGlvbiBhc3N1bWVk
IHRoYXQgZXZlcnl0aGluZyBiZXlvbmQgMiBHaUIgd291bGQgYmUKcG90ZW50aWFsIHJlZ2lzdGVy
IHNwYWNlLiBIZXJlIHdlJ3JlIGRlYWxpbmcgd2l0aCB1cCB0byA0IEdpQiB0aG91Z2guCgoKSmFt
ZXMsIGFyZSB5b3UgcGxhbm5pbmcgdG8gc2VuZCBhIGZpeC11cCBwYXRjaCBoZXJlPyBJZiBub3Qs
IHlvdSdsbCBuZWVkCnRvIHRlbGwgbWUgd2hhdCB2YWx1ZXMgdG8gdXNlLCBlLmcuLCBpcyB0aGVy
ZSBhIE5PUiBmbGFzaCByZWdpb24gb24KUlREMTYxOSwgYW5kIGRvZXMgUkFNIGNvbnRpbnVlIGFs
c28gaW4gYmV0d2VlbiBhbmQgYWZ0ZXIgR0lDLCBvciBpcwp0aGVyZSBzb21lIHRpbWVyIHJlZ2lz
dGVyIGJlaGluZCBpdCwgbGlrZSBvbiBSVEQxMTk1PwoKcmFuZ2VzID0gPDB4MDAwMDAwMDAgMHgw
MDAwMDAwMCAweDAwMDMwMDAwPiwgLy8gPz8/IGJvb3QgUk9NIHNpemUKICAgICAgICAgPDB4OTgw
MDAwMDAgMHg5ODAwMDAwMCAweDAwMjAwMDAwPiwgLy8gci1idXMKICAgICAgICAgLy8gYW55dGhp
bmcgaGVyZT8gZS5nLiwgTk9SIGZsYXNoPwogICAgICAgICA8MHhmZjEwMDAwMCAweGZmMTAwMDAw
IDB4MDAwMTAwMDA+LCAvLyBHSUNECiAgICAgICAgIDwweGZmMTQwMDAwIDB4ZmYxNDAwMDAgMHgw
MDBjMDAwMD47IC8vIEdJQ1IKICAgICAgICAgLy8gYW55dGhpbmcgaGVyZT8gZS5nLiwgdGltZXIg
ZW5hYmxlPwoKcmFuZ2VzID0gPDB4MDAwMDAwMDAgMHgwMDAwMDAwMCAweDAwMDMwMDAwPiwKICAg
ICAgICAgPDB4OTgwMDAwMDAgMHg5ODAwMDAwMCAweDAwMjAwMDAwPiwKICAgICAgICAgPDB4ZmYx
MDAwMDAgMHhmZjEwMDAwMCAweDAwMTAwMDAwPjsgLy8gd2hvbGUgR0lDPwoKUmVnYXJkcywKQW5k
cmVhcwoKWzFdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvOTU4ODYxMS8KCi0t
IApTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgKTWF4ZmVsZHN0ci4gNSwgOTA0
MDkgTsO8cm5iZXJnLCBHZXJtYW55CkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIKSFJCIDM2ODA5IChB
RyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
