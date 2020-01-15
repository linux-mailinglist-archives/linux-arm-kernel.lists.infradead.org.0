Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B5513BCA6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 10:44:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LWpjdjpCS3vGRqPoGVBCj0Uyle9Onsg6m1qgsEU3pH0=; b=Xggw+TLIYkuigQ
	AjpN4VJRQvYVBWlfWJ5H3soWsPqXVqs7x/mRmiT9LEfZpVZIwIPKODok2IS639bFzwMq4+iJTLDVI
	qxkWRteQhnCGjqnouhaILoef6JyUe/usVm/DS35ok4XxJTIvpkITnSmTROgkrSvSBmwv4yHlmKTDN
	9Vls4NYEsvBc707n1sZbgA86sGiGvPNOpeZDHw5ZmI0N53atgbTj95WbI5xW5qE6PtWHfvMaxCfFH
	6Rbt9Xc4zcdSLiLQ2uIl5Q9V6XlMoN8dTPRnIqNU1q+xZqcBhsbj2TMMPQB3qTZ419g0gpbvooTUB
	WmGvMQFLCeDR6Ke9uv+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irfDo-0003Zu-22; Wed, 15 Jan 2020 09:44:20 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irfDb-0003ZU-M5
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 09:44:12 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00F9hunI123963;
 Wed, 15 Jan 2020 03:43:56 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579081436;
 bh=I1GbB9LPbUbIMdwYtUqwmved9scdWddLN73TisHwbc8=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=pR0xeT9JuRIQ161rA/RXCC7rCxdgEQFO6BBN87pGN9iJY6fhVLiQ2Cg2pQvNgYBTW
 vISvIVgt0OWNGpI++9Cu9qycZMARXF9HrLqGcnL3DYS2DYBTQGMYo/LHHnTzlMuPi7
 fgvT3kK+IAGAnclmPFE+6bkaQSPurbAzf53EkyEY=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00F9hu7e089171
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 15 Jan 2020 03:43:56 -0600
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 15
 Jan 2020 03:43:55 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 15 Jan 2020 03:43:55 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00F9hpEC035930;
 Wed, 15 Jan 2020 03:43:51 -0600
Subject: Re: [PATCH v8 02/18] soc: ti: k3: add navss ringacc driver
To: <santosh.shilimkar@oracle.com>, Sekhar Nori <nsekhar@ti.com>,
 <vkoul@kernel.org>, <robh+dt@kernel.org>, <nm@ti.com>,
 <ssantosh@kernel.org>
References: <20191223110458.30766-1-peter.ujfalusi@ti.com>
 <20191223110458.30766-3-peter.ujfalusi@ti.com>
 <6d70686b-a94e-18d1-7b33-ff9df7176089@ti.com>
 <900c2f21-22bf-47f9-5c3c-0a3d95a5d645@oracle.com>
 <ea6a87ae-b978-a786-27eb-db99483a82d9@ti.com>
 <f0230e88-bd9b-cd6d-433d-06d507cafcbd@ti.com>
 <9177657a-71c7-7bd0-a981-3ef1f736d4dc@oracle.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <2c933a6c-37c6-3ef6-7c37-ae36e8c49bf7@ti.com>
Date: Wed, 15 Jan 2020 11:44:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <9177657a-71c7-7bd0-a981-3ef1f736d4dc@oracle.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_014407_823127_974C55BA 
X-CRM114-Status: GOOD (  18.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, vigneshr@ti.com,
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, frowand.list@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxNC8wMS8yMDIwIDIwLjA2LCBzYW50b3NoLnNoaWxpbWthckBvcmFjbGUuY29tIHdyb3Rl
Ogo+Pj4+PiBDYW4geW91IHBsZWFzZSBnaXZlciB5b3VyIEFja2VkLWJ5IGZvciB0aGUgcmluZ2Fj
YyBwYXRjaGVzIGlmIHRoZXkgYXJlCj4+Pj4+IHN0aWxsIE9LIGZyb20geW91ciBwb2ludCBvZiB2
aWV3IGFzIHlvdSBoYWQgb2ZmZXJlZCB0byB0YWtlIHRoZW0KPj4+Pj4gYmVmb3JlCj4+Pj4+IEkg
Z290IGNvbW1lbnRzIGZyb20gTG9rZXNoLgo+Pj4+Pgo+Pj4+IFN1cmUuIEJ1dCB5b3UgcmVhbGx5
IG5lZWQgdG8gc3BsaXQgdGhlIHNlcmllcyBzbyB0aGF0IGRtYSBlbmdpbmUgYW5kCj4+Pj4gc29j
IGRyaXZlciBwYXRjaGVzIGNhbiBiZSBhcHBsaWVkIGluZGVwZW5kZW50bHkuCj4+Pgo+Pj4gVGhl
IHJpbmdhY2MgaXMgYSBidWlsZCBhbmQgcnVudGltZSBkZXBlbmRlbmN5IGZvciB0aGUgRE1BLiBJ
IGhhdmUgaG9wZWQKPj4+IHRoYXQgYWxsIG9mIHRoZW0gY2FuIGdvIHZpYSBETUFlbmdpbmUgKGhl
bmNlIGFza2luZyBmb3IgeW91ciBBQ0sgb24gdGhlCj4+PiBkcml2ZXJzL3NvYy90aS8gcGF0Y2hl
cykgZm9yIDUuNi4KPj4+Cj4+Pj4gQ2FuIHlvdSBwbGVhc2UgZG8gdGhhdD8KPj4+Cj4+PiBUaGlz
IGxhdGUgaW4gdGhlIG1lcmdlIHdpbmRvdyB0aGF0IHdvdWxkIHJlYWxseSBtZWFuIHRoYXQgSSB3
aWxsIG1pc3MKPj4+IGFub3RoZXIgcmVsZWFzZSBmb3IgdGhlIEtTMyBETUEuLi4KPj4+IEkgY2Fu
IGxpdmUgd2l0aCB0aGF0IGlmIHlvdSBjYW4gcGljayB0aGUgcmluZ2FjYyBmb3IgNS42IGFuZCBp
ZiBWaW5vZAo+Pj4gdGFrZXMgdGhlIERNQWVuZ2luZSBjb3JlIGNoYW5nZXMgYXMgd2VsbC4KPj4+
Cj4+PiBUaGF0IHdvdWxkIGxlYXZlIG9ubHkgdGhlIERNQSBkcml2ZXJzIGZvciA1LjcgYW5kIHdl
IGNhbiBhbHNvIHF1ZXVlIHVwCj4+PiBjaGFuZ2VzIGZvciA1Ljcgd2hpY2ggZGVwZW5kcyBvbiB0
aGUgRE1BZW5naW5lIEFQSSAoQVNvQyBjaGFuZ2VzLCBVQVJULAo+Pj4gc2EydWwsIGV0YykuCj4+
Pgo+Pj4gSWYgdGhleSBnbyBpbmRlcGVuZGVudGx5IGFuZCBub3RoaW5nIG1ha2VzIGl0IHRvIDUu
NiB0aGVuIDUuOCBpcyB0aGUKPj4+IHJlYWxpc3RpYyB0YXJnZXQgZm9yIHRoZSBETUEgc3VwcG9y
dCBmb3IgdGhlIEtTMyBmYW1pbHkgb2YgZGV2aWNlcy4uLgo+Pgo+PiBUaGF0cyB0b28gbWFueSBr
ZXJuZWwgdmVyc2lvbnMgdG8gZ2V0IHRoaXMgaW1wb3J0YW50IHBpZWNlIGluLgo+Pgo+PiBTYW50
b3NoLCBpZiB5b3UgZG8gbm90IGhhdmUgYW55dGhpbmcgZWxzZSBxdWV1ZWQgdXAgdGhhdCBjbGFz
aGVzIHdpdGgKPj4gdGhpcywgY2FuIHRoZSB3aG9sZSBzZXJpZXMgYmUgcGlja2VkIHVwIGJ5IFZp
bm9kIHdpdGggeW91ciBhY2sgb24gdGhlCj4+IGRyaXZlcnMvc29jL3RpLyBwaWVjZXM/Cj4+Cj4g
SSB3b3VsZCBwcmVmZXIgZHJpdmVyIHBhdGNoZXMgdG8gZ28gdmlhIGRyaXZlciB0cmVlLgoKTm90
IHN1cmUgd2hhdCB5b3UgbWVhbiBieSAnZHJpdmVyIHBhdGNoZXMnLi4uClRoZSBzZXJpZXMgdG8g
ZW5hYmxlIERNQSBzdXBwb3J0IG9uIFRJJ3MgSzMgcGxhdGZvcm0gY29uc2lzdHM6ClBhdGNoIDEt
MjogUmluZyBBY2NlbGVyYXRvciBfZHJpdmVyXyAoZHJpdmVycy9zb2MvdGkvKQpQYXRjaCAzLTY6
IERNQWVuZ2luZSBjb3JlIHBhdGNoZXMgdG8gYWRkIG5ldyBmZWF0dXJlcyBuZWVkZWQgZm9yIGsz
LXVkbWEKUGF0Y2ggNy0xMTogRE1BIF9kcml2ZXJfIHBhdGNoZXMgZm9yIEszIChkcml2ZXJzL2Rt
YS90aS8pCgpQYXRjaCAxMCBkZXBlbmRzIG9uIHRoZSByaW5nYWNjIGFuZCB0aGUgRE1BZW5naW5l
IGNvcmUgcGF0Y2hlcwpQYXRjaCAxMSBkZXBlbmRzIG9uIHBhdGNoIDEwCgpJIGtlcHQgaXQgYXMg
YSBzaW5nbGUgc2VyaWVzIGluIGhvcGUgdGhhdCB0aGV5IHdpbGwgZ28gdmlhIG9uZSBzdWJzeXN0
ZW0KdHJlZSB0byBhdm9pZCBidWlsZCBkZXBlbmRlbmN5IGlzc3VlcyBhbmQgd2lsbCBoYXZlIGEg
Z29vZCBhbW91bnQgb2YKdGltZSBpbiBsaW51eC1uZXh0IGZvciB0ZXN0aW5nLgoKPj4gVmlub2Qg
Y291bGQgYWxzbyBwZXJoYXBzIHNldHVwIGFuIGltbXV0YWJsZSBicmFuY2ggYmFzZWQgb24gdjUu
NS1yYzEKPj4gd2l0aCBqdXN0IHRoZSBkcml2ZXJzL3NvYy90aSBwYXJ0cyBhcHBsaWVkIHNvIHlv
dSBjYW4gbWVyZ2UgdGhhdCBicmFuY2gKPj4gaW4gY2FzZSB5b3UgZW5kIHVwIGhhdmluZyB0byBz
ZW5kIHVwIGFueXRoaW5nIHRoYXQgY29uZmxpY3RzLgo+Pgo+IEFzIHN1Z2dlc3RlZCBvbiBvdGhl
ciBlbWFpbCB0byBQZXRlciwgdGhlc2UgRE1BIGVuZ2luZSByZWxhdGVkIHBhdGNoZXMKPiBzaG91
bGQgYmUgcXVldWVkIHVwIHNpbmNlIHRoZXkgZG9uJ3QgaGF2ZSBhbnkgZGVwZW5kZW5jeS4gQmFz
ZWQgb24KPiB0aGUgc3RhdHVzIG9mIHRoYXQgcGF0Y2hzZXQsIHdpbGwgdGFrZSBjYXJlIG9mIHB1
bGxpbmcgaW4gdGhlIGRyaXZlcgo+IHBhdGNoZXMgZWl0aGVyIGZvciB0aGlzIG1lcmdlIHdpbmRv
dyBvciBlYXJseSBwYXJ0IG9mIG5leHQgbWVyZ2Ugd2luZG93LgoKT0ssIEknbGwgc2VuZCB0aGUg
dHdvIHBhdGNoIGZvciByaW5nYWNjIGFzIGEgc2VwYXJhdGUgc2VyaWVzLgoKVmlub2Q6IFdvdWxk
IGl0IGJlIHBvc3NpYmxlIGZvciB5b3UgdG8gcGljayB1cCB0aGUgRE1BZW5naW5lIGNvcmUKcGF0
Y2hlcyAocGF0Y2ggMy02KT8KVGhlIFVETUEgZHJpdmVyIHBhdGNoZXMgaGF2ZSBoYXJkIGRlcGVu
ZGVuY3kgb24gRE1BZW5naW5lIGNvcmUgYW5kCnJpbmdhY2MsIG5vdCBzdXJlIGhvdyB0aGV5IGFy
ZSBnb2luZyB0byBnbyBpbi4uLgoKPiBSZWdhcmRzLAo+IFNhbnRvc2gKCi0gUMOpdGVyCgpUZXhh
cyBJbnN0cnVtZW50cyBGaW5sYW5kIE95LCBQb3Jra2FsYW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5r
aS4KWS10dW5udXMvQnVzaW5lc3MgSUQ6IDA2MTU1MjEtNC4gS290aXBhaWtrYS9Eb21pY2lsZTog
SGVsc2lua2kKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
