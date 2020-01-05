Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79107130646
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Jan 2020 06:53:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4kpPFm99an6pGhUQBncipvpuUmDcB2ZrzbVPAH2a5s8=; b=XgzQnBZwITHqKCJhJUHwK8/Ct
	o4flpBSlsgQbNsJVRjfIPOSzQGuHvZAxXOvUdNXPKoTiNQyGK+d3xhlBQsbyiZ1p7briydC0T6jZS
	uP+KAgat0El/gaBuvYKMTHXsdYE4uIUV5+lozY3Xgy38n4Iod0ie/vVKfvoumvzi/1C6EwqZRrbcq
	9LuuPDa7NYV2Hx+uUMzz12kVHVb0FjC/ZeoG9DzTyPM8WXvUMN1+R5K7XdlQW7AbrwbUTPJyC2C7I
	VrvY6eBcsOplsVtPU8Q8FgOqhEB9J/u11/5wbWqiDNmRXtLyxx+8KVUjvQ1lkj+YTWpWnKGGm8yYp
	PCtEXAHog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inyqL-0002AS-Fj; Sun, 05 Jan 2020 05:52:53 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inyqD-00029J-FA; Sun, 05 Jan 2020 05:52:48 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id E6471B255;
 Sun,  5 Jan 2020 05:52:41 +0000 (UTC)
Subject: Re: [PATCH v4 2/8] ARM: Prepare Realtek RTD1195
To: linux-realtek-soc@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Olof Johansson <olof@lixom.net>,
 Arnd Bergmann <arnd@arndb.de>
References: <20191123203759.20708-1-afaerber@suse.de>
 <20191123203759.20708-3-afaerber@suse.de>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <bfe6448c-0e06-f0cd-460f-6aabc667f5e2@suse.de>
Date: Sun, 5 Jan 2020 06:52:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191123203759.20708-3-afaerber@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_215246_623089_4C118FE7 
X-CRM114-Status: GOOD (  17.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMjMuMTEuMTkgdW0gMjE6Mzcgc2NocmllYiBBbmRyZWFzIEbDpHJiZXI6Cj4gSW50cm9kdWNl
IEFSQ0hfUkVBTFRFSyBLY29uZmlnIG9wdGlvbiBhbHNvIGZvciAzMi1iaXQgQXJtLgo+IAo+IE92
ZXJyaWRlIHRoZSB0ZXh0IG9mZnNldCB0byBjb3BlIHdpdGggYm9vdCBST00gb2NjdXB5aW5nIGZp
cnN0IDB4YTgwMAo+IGJ5dGVzIGFuZCBmdXJ0aGVyIHJlc2VydmF0aW9ucyB1cCB0byAweGY0MDAw
IChjb21wYXJlIERldmljZSBUcmVlKS4KPiAKPiBBZGQgYSBjdXN0b20gbWFjaGluZV9kZXNjIHRv
IGVuZm9yY2UgbWVtb3J5IGNhcnZlb3V0IGZvciBJL08gcmVnaXN0ZXJzLgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KPiAtLS0KPiAgIHYzIC0+
IHY0Ogo+ICAgKiBBZGRlZCByZXNlcnZhdGlvbiBvZiBib290IFJPTSAoSmFtZXMpCj4gICAKPiAg
IHYyIC0+IHYzOgo+ICAgKiBGaXhlZCByLWJ1cyBzaXplIGluIC5yZXNlcnZlIGZyb20gMHgxMDAw
MDAgdG8gMHg3MDAwMCAoSmFtZXMpCj4gICAKPiAgIHYxIC0+IHYyOgo+ICAgKiBEcm9wcGVkIHNl
bGVjdGlvbiBvZiBDT01NT05fQ0xLIChBcm5kKQo+ICAgKiBEcm9wcGVkIHNlbGVjdGlvbiBvZiBB
TUJBLCBTQ1UsIFRXRAo+ICAgKiBBZGRlZCBjb21tZW50IGFib3V0IHRleHQgb2Zmc2V0IHRvIGRp
c3Rpbmd1aXNoIGZyb20gSFRDIGNvbW1lbnQgYWJvdmUKPiAgICogQWRkZWQgbWFjaGluZV9kZXNj
IHdpdGggLnJlc2VydmUgdG8gZXhjbHVkZSBwZXJpcGhlcmFsIHNwYWNlcyAoUm9iKQo+ICAgCj4g
ICBhcmNoL2FybS9LY29uZmlnICAgICAgICAgICAgICAgIHwgIDIgKysKPiAgIGFyY2gvYXJtL01h
a2VmaWxlICAgICAgICAgICAgICAgfCAgMyArKysKPiAgIGFyY2gvYXJtL21hY2gtcmVhbHRlay9L
Y29uZmlnICAgfCAxMSArKysrKysrKysrKwo+ICAgYXJjaC9hcm0vbWFjaC1yZWFsdGVrL01ha2Vm
aWxlICB8ICAyICsrCj4gICBhcmNoL2FybS9tYWNoLXJlYWx0ZWsvcnRkMTE5NS5jIHwgNDAgKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAgNSBmaWxlcyBjaGFuZ2Vk
LCA1OCBpbnNlcnRpb25zKCspCj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vbWFjaC1y
ZWFsdGVrL0tjb25maWcKPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9tYWNoLXJlYWx0
ZWsvTWFrZWZpbGUKPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9tYWNoLXJlYWx0ZWsv
cnRkMTE5NS5jCgpUaGlzIHBhdGNoIHdhcyBsYWNraW5nIGEgTUFJTlRBSU5FUlMgdXBkYXRlLiBT
cXVhc2hpbmc6CgpkaWZmIC0tZ2l0IGEvTUFJTlRBSU5FUlMgYi9NQUlOVEFJTkVSUwppbmRleCA3
YjYyNjU2M2ZiM2MuLmI0ODQ2MTczNjk3MSAxMDA2NDQKLS0tIGEvTUFJTlRBSU5FUlMKKysrIGIv
TUFJTlRBSU5FUlMKQEAgLTIyMDQsNiArMjIwNCw3IEBAIE06ICAgICAgICBBbmRyZWFzIEbDpHJi
ZXIgPGFmYWVyYmVyQHN1c2UuZGU+CiAgTDogICAgIGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZyAobW9kZXJhdGVkIGZvciAKbm9uLXN1YnNjcmliZXJzKQogIEw6ICAgICBsaW51
eC1yZWFsdGVrLXNvY0BsaXN0cy5pbmZyYWRlYWQub3JnIChtb2RlcmF0ZWQgZm9yIApub24tc3Vi
c2NyaWJlcnMpCiAgUzogICAgIE1haW50YWluZWQKK0Y6ICAgICBhcmNoL2FybS9tYWNoLXJlYWx0
ZWsvCiAgRjogICAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay8KICBGOiAgICAgRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yZWFsdGVrLnlhbWwKCgpVbmZvcnR1bmF0
ZWx5IHRoaXMgb24gdjUuNi9zb2MgYnJhbmNoIHdpbGwgY29uZmxpY3Qgd2l0aCBhZGRpbmcgYW4g
ZW50cnkgCmZvciB0aGUgRFRzIG9uIHY1LjYvZHQgYnJhbmNoLCBzbyBJIGd1ZXNzIHRoZSBiZXN0
IHdheSB0byBoYW5kbGUgdGhpcyAKd2lsbCBiZSBhIGZvbGxvdy11cCBwYXRjaCBmb3IgdGhlIHY1
LjYvc29jIGJyYW5jaCAod2hpY2ggbWF5IHRyaWdnZXIgCnBhdHRlcm4gd2FybmluZ3MgZHVlIHRv
IHRoZSBmaWxlcyBnZXR0aW5nIGFkZGVkIG9uIGEgZGlmZmVyZW50IGJyYW5jaCk/CgpkaWZmIC0t
Z2l0IGEvTUFJTlRBSU5FUlMgYi9NQUlOVEFJTkVSUwppbmRleCBiNDg0NjE3MzY5NzEuLjAxMDgx
YmVhMjQ4OCAxMDA2NDQKLS0tIGEvTUFJTlRBSU5FUlMKKysrIGIvTUFJTlRBSU5FUlMKQEAgLTIy
MDQsNiArMjIwNCw3IEBAIE06ICAgICAgICBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2Uu
ZGU+CiAgTDogICAgIGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZyAobW9kZXJh
dGVkIGZvciAKbm9uLXN1YnNjcmliZXJzKQogIEw6ICAgICBsaW51eC1yZWFsdGVrLXNvY0BsaXN0
cy5pbmZyYWRlYWQub3JnIChtb2RlcmF0ZWQgZm9yIApub24tc3Vic2NyaWJlcnMpCiAgUzogICAg
IE1haW50YWluZWQKK0Y6ICAgICBhcmNoL2FybS9ib290L2R0cy9ydGQqCiAgRjogICAgIGFyY2gv
YXJtL21hY2gtcmVhbHRlay8KICBGOiAgICAgYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrLwog
IEY6ICAgICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JlYWx0ZWsueWFt
bAoKUmVnYXJkcywKQW5kcmVhcwoKLS0gClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkg
R21iSApNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkKR0Y6IEZlbGl4IElt
ZW5kw7ZyZmZlcgpIUkIgMzY4MDkgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
