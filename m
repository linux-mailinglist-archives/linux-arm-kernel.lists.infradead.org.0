Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6678613A130
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 07:58:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dR4gBvTt4ipJhU1UIA1xCMVEGQOKrEYxZR/4j/HWnJQ=; b=iZdYvku3qWtT+B
	Zi/HPMk4m2UyskLiQw2zB4JjOtncC6AyCbw4a4K/UcJg/iioSzSswDyhg9L0BG1fk+8QtIynDaslB
	tL9JtqmGElEZGVJm8KFr2ENWIvMW54TV95mPU0g2QPQFCDLg/JLrZrhddCF00YML7u+sy08TO0uMb
	EZ0gAvv+qB6GjR8sdpFm9mY64ZuRs3IYexiTVwy+UkTUbi6lHuLUFPSbJFmsdIk1CdO1A6vk4tOoX
	nTHqq2wJwJiR/BxbLWi5S1Wu91DYRwzdUkIew//ah96/I9R0ygh5mQi18SiVobcHLGY3t2yPeImIb
	EVz0uTrMIEW0ER990kAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irG9j-0005k5-E6; Tue, 14 Jan 2020 06:58:27 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irG9Y-0005jP-Tx
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 06:58:18 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00E6w9uc083037;
 Tue, 14 Jan 2020 00:58:09 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578985089;
 bh=9cisbpiJjEXM+HQ9q627buGSbHVcnQI341z9kbrIfpk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=E2zln4VLdz+OvOKCRs6j5Z7Du0EDOzB9HIjUXdSW05jU87ywExFVwbW3XoLMMBCOG
 vdFFGdRPyLYLuSpIJZuhUKxzt/DieuQRL7BEBvkufGpUUoUxlskTSuvu0Eh9TQPh6v
 mogPdLTRMSX0bxCiRxZygH1dpbHen2EaZUVzcg6E=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00E6w9ZU098404
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 14 Jan 2020 00:58:09 -0600
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 14
 Jan 2020 00:58:09 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 14 Jan 2020 00:58:09 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00E6w5OR034860;
 Tue, 14 Jan 2020 00:58:06 -0600
Subject: Re: [PATCH v8 02/18] soc: ti: k3: add navss ringacc driver
To: <santosh.shilimkar@oracle.com>, <vkoul@kernel.org>, <robh+dt@kernel.org>, 
 <nm@ti.com>, <ssantosh@kernel.org>
References: <20191223110458.30766-1-peter.ujfalusi@ti.com>
 <20191223110458.30766-3-peter.ujfalusi@ti.com>
 <6d70686b-a94e-18d1-7b33-ff9df7176089@ti.com>
 <900c2f21-22bf-47f9-5c3c-0a3d95a5d645@oracle.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <ea6a87ae-b978-a786-27eb-db99483a82d9@ti.com>
Date: Tue, 14 Jan 2020 08:58:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <900c2f21-22bf-47f9-5c3c-0a3d95a5d645@oracle.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_225817_092720_BEC7301F 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

SGkgU2FudG9zaCwKCk9uIDEzLzAxLzIwMjAgMjMuMjgsIHNhbnRvc2guc2hpbGlta2FyQG9yYWNs
ZS5jb20gd3JvdGU6Cj4gCj4gCj4gT24gMTIvMjMvMTkgMzozOCBBTSwgUGV0ZXIgVWpmYWx1c2kg
d3JvdGU6Cj4+IEhpIFNhbnRvc2gsCj4+Cj4+IE9uIDIzLzEyLzIwMTkgMTMuMDQsIFBldGVyIFVq
ZmFsdXNpIHdyb3RlOgo+Pj4gRnJvbTogR3J5Z29yaWkgU3RyYXNoa28gPGdyeWdvcmlpLnN0cmFz
aGtvQHRpLmNvbT4KPj4+Cj4+PiBUaGUgUmluZyBBY2NlbGVyYXRvciAoUklOR0FDQyBvciBSQSkg
cHJvdmlkZXMgaGFyZHdhcmUgYWNjZWxlcmF0aW9uIHRvCj4+PiBlbmFibGUgc3RyYWlnaHRmb3J3
YXJkIHBhc3Npbmcgb2Ygd29yayBiZXR3ZWVuIGEgcHJvZHVjZXIgYW5kIGEKPj4+IGNvbnN1bWVy
Lgo+Pj4gVGhlcmUgaXMgb25lIFJJTkdBQ0MgbW9kdWxlIHBlciBOQVZTUyBvbiBUSSBBTTY1eCBT
b0NzLgo+Pj4KPj4+IFRoZSBSSU5HQUNDIGNvbnZlcnRzIGNvbnN0YW50LWFkZHJlc3MgcmVhZCBh
bmQgd3JpdGUgYWNjZXNzZXMgdG8KPj4+IGVxdWl2YWxlbnQKPj4+IHJlYWQgb3Igd3JpdGUgYWNj
ZXNzZXMgdG8gYSBjaXJjdWxhciBkYXRhIHN0cnVjdHVyZSBpbiBtZW1vcnkuIFRoZQo+Pj4gUklO
R0FDQwo+Pj4gZWxpbWluYXRlcyB0aGUgbmVlZCBmb3IgZWFjaCBETUEgY29udHJvbGxlciB3aGlj
aCBuZWVkcyB0byBhY2Nlc3MgcmluZwo+Pj4gZWxlbWVudHMgZnJvbSBoYXZpbmcgdG8ga25vdyB0
aGUgY3VycmVudCBzdGF0ZSBvZiB0aGUgcmluZyAoYmFzZQo+Pj4gYWRkcmVzcywKPj4+IGN1cnJl
bnQgb2Zmc2V0KS4gVGhlIERNQSBjb250cm9sbGVyIHBlcmZvcm1zIGEgcmVhZCBvciB3cml0ZSBh
Y2Nlc3MgdG8gYQo+Pj4gc3BlY2lmaWMgYWRkcmVzcyByYW5nZSAod2hpY2ggbWFwcyB0byB0aGUg
c291cmNlIGludGVyZmFjZSBvbiB0aGUKPj4+IFJJTkdBQ0MpCj4+PiBhbmQgdGhlIFJJTkdBQ0Mg
cmVwbGFjZXMgdGhlIGFkZHJlc3MgZm9yIHRoZSB0cmFuc2FjdGlvbiB3aXRoIGEgbmV3Cj4+PiBh
ZGRyZXNzCj4+PiB3aGljaCBjb3JyZXNwb25kcyB0byB0aGUgaGVhZCBvciB0YWlsIGVsZW1lbnQg
b2YgdGhlIHJpbmcgKGhlYWQgZm9yCj4+PiByZWFkcywKPj4+IHRhaWwgZm9yIHdyaXRlcykuIFNp
bmNlIHRoZSBSSU5HQUNDIG1haW50YWlucyB0aGUgc3RhdGUsIG11bHRpcGxlIERNQQo+Pj4gY29u
dHJvbGxlcnMgb3IgY2hhbm5lbHMgYXJlIGFsbG93ZWQgdG8gY29oZXJlbnRseSBzaGFyZSB0aGUg
c2FtZQo+Pj4gcmluZ3MgYXMKPj4+IGFwcGxpY2FibGUuIFRoZSBSSU5HQUNDIGlzIGFibGUgdG8g
cGxhY2UgZGF0YSB3aGljaCBpcyBkZXN0aW5lZCB0b3dhcmRzCj4+PiBzb2Z0d2FyZSBpbnRvIGNh
Y2hlZCBtZW1vcnkgZGlyZWN0bHkuCj4+Pgo+Pj4gU3VwcG9ydGVkIHJpbmcgbW9kZXM6Cj4+PiAt
IFJpbmcgTW9kZQo+Pj4gLSBNZXNzYWdpbmcgTW9kZQo+Pj4gLSBDcmVkZW50aWFscyBNb2RlCj4+
PiAtIFF1ZXVlIE1hbmFnZXIgTW9kZQo+Pj4KPj4+IFRJLVNDSSBpbnRlZ3JhdGlvbjoKPj4+Cj4+
PiBUZXhhcyBJbnN0cnVtZW50J3MgU3lzdGVtIENvbnRyb2wgSW50ZXJmYWNlIChUSS1TQ0kpIE1l
c3NhZ2UgUHJvdG9jb2wKPj4+IG5vdwo+Pj4gaGFzIGNvbnRyb2wgb3ZlciBSaW5nYWNjIG1vZHVs
ZSByZXNvdXJjZXMgbWFuYWdlbWVudCAoUk0pIGFuZCBSaW5ncwo+Pj4gY29uZmlndXJhdGlvbi4K
Pj4+Cj4+PiBUaGUgY29ycmVzcG9uZGluZyBzdXBwb3J0IG9mIFRJLVNDSSBSaW5nYWNjIG1vZHVs
ZSBSTSBwcm90b2NvbAo+Pj4gaW50cm9kdWNlZCBhcyBvcHRpb24gdGhyb3VnaCBEVCBwYXJhbWV0
ZXJzOgo+Pj4gLSB0aSxzY2k6IHBoYW5kbGUgb24gVEktU0NJIGZpcm13YXJlIGNvbnRyb2xsZXIg
RFQgbm9kZQo+Pj4gLSB0aSxzY2ktZGV2LWlkOiBUSS1TQ0kgZGV2aWNlIGlkZW50aWZpZXIgYXMg
cGVyIFRJLVNDSSBmaXJtd2FyZSBzcGVjCj4+Pgo+Pj4gaWYgYm90aCBwYXJhbWV0ZXJzIHByZXNl
bnQgLSBSaW5nYWNjIGRyaXZlciB3aWxsIGNvbmZpZ3VyZS9mcmVlL3Jlc2V0Cj4+PiBSaW5ncwo+
Pj4gdXNpbmcgVEktU0NJIE1lc3NhZ2UgUmluZ2FjYyBSTSBQcm90b2NvbC4KPj4+Cj4+PiBUaGUg
UmluZ2FjYyBkcml2ZXIgbWFuYWdlcyBSaW5ncyBhbGxvY2F0aW9uIGJ5IGl0c2VsZiBub3cgYW5k
IHJlcXVlc3RzCj4+PiBUSS1TQ0kgZmlybXdhcmUgdG8gYWxsb2NhdGUgYW5kIGNvbmZpZ3VyZSBz
cGVjaWZpYyBSaW5ncyBvbmx5LiBJdCdzIGRvbmUKPj4+IHRoaXMgd2F5IGJlY2F1c2UsIExpbnV4
IGRyaXZlciBpbXBsZW1lbnRzIHR3byBzdGFnZSBSaW5ncyBhbGxvY2F0aW9uIGFuZAo+Pj4gY29u
ZmlndXJhdGlvbiAoYWxsb2NhdGUgcmluZyBhbmQgY29uZmlndXJlIHJpbmcpIHdoaWxlIFRJLVND
SSBNZXNzYWdlCj4+PiBQcm90b2NvbCBzdXBwb3J0cyBvbmx5IG9uZSBjb21iaW5lZCBvcGVyYXRp
b24gKGFsbG9jYXRlK2NvbmZpZ3VyZSkuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogR3J5Z29yaWkg
U3RyYXNoa28gPGdyeWdvcmlpLnN0cmFzaGtvQHRpLmNvbT4KPj4+IFNpZ25lZC1vZmYtYnk6IFBl
dGVyIFVqZmFsdXNpIDxwZXRlci51amZhbHVzaUB0aS5jb20+Cj4+PiBSZXZpZXdlZC1ieTogVGVy
byBLcmlzdG8gPHQta3Jpc3RvQHRpLmNvbT4KPj4+IFRlc3RlZC1ieTogS2VlcnRoeSA8ai1rZWVy
dGh5QHRpLmNvbT4KPj4KPj4gQ2FuIHlvdSBwbGVhc2UgZ2l2ZXIgeW91ciBBY2tlZC1ieSBmb3Ig
dGhlIHJpbmdhY2MgcGF0Y2hlcyBpZiB0aGV5IGFyZQo+PiBzdGlsbCBPSyBmcm9tIHlvdXIgcG9p
bnQgb2YgdmlldyBhcyB5b3UgaGFkIG9mZmVyZWQgdG8gdGFrZSB0aGVtIGJlZm9yZQo+PiBJIGdv
dCBjb21tZW50cyBmcm9tIExva2VzaC4KPj4KPiBTdXJlLiBCdXQgeW91IHJlYWxseSBuZWVkIHRv
IHNwbGl0IHRoZSBzZXJpZXMgc28gdGhhdCBkbWEgZW5naW5lIGFuZAo+IHNvYyBkcml2ZXIgcGF0
Y2hlcyBjYW4gYmUgYXBwbGllZCBpbmRlcGVuZGVudGx5LgoKVGhlIHJpbmdhY2MgaXMgYSBidWls
ZCBhbmQgcnVudGltZSBkZXBlbmRlbmN5IGZvciB0aGUgRE1BLiBJIGhhdmUgaG9wZWQKdGhhdCBh
bGwgb2YgdGhlbSBjYW4gZ28gdmlhIERNQWVuZ2luZSAoaGVuY2UgYXNraW5nIGZvciB5b3VyIEFD
SyBvbiB0aGUKZHJpdmVycy9zb2MvdGkvIHBhdGNoZXMpIGZvciA1LjYuCgo+IENhbiB5b3UgcGxl
YXNlIGRvIHRoYXQ/CgpUaGlzIGxhdGUgaW4gdGhlIG1lcmdlIHdpbmRvdyB0aGF0IHdvdWxkIHJl
YWxseSBtZWFuIHRoYXQgSSB3aWxsIG1pc3MKYW5vdGhlciByZWxlYXNlIGZvciB0aGUgS1MzIERN
QS4uLgpJIGNhbiBsaXZlIHdpdGggdGhhdCBpZiB5b3UgY2FuIHBpY2sgdGhlIHJpbmdhY2MgZm9y
IDUuNiBhbmQgaWYgVmlub2QKdGFrZXMgdGhlIERNQWVuZ2luZSBjb3JlIGNoYW5nZXMgYXMgd2Vs
bC4KClRoYXQgd291bGQgbGVhdmUgb25seSB0aGUgRE1BIGRyaXZlcnMgZm9yIDUuNyBhbmQgd2Ug
Y2FuIGFsc28gcXVldWUgdXAKY2hhbmdlcyBmb3IgNS43IHdoaWNoIGRlcGVuZHMgb24gdGhlIERN
QWVuZ2luZSBBUEkgKEFTb0MgY2hhbmdlcywgVUFSVCwKc2EydWwsIGV0YykuCgpJZiB0aGV5IGdv
IGluZGVwZW5kZW50bHkgYW5kIG5vdGhpbmcgbWFrZXMgaXQgdG8gNS42IHRoZW4gNS44IGlzIHRo
ZQpyZWFsaXN0aWMgdGFyZ2V0IGZvciB0aGUgRE1BIHN1cHBvcnQgZm9yIHRoZSBLUzMgZmFtaWx5
IG9mIGRldmljZXMuLi4KClJlZ2FyZHMsCi0gUMOpdGVyCgpUZXhhcyBJbnN0cnVtZW50cyBGaW5s
YW5kIE95LCBQb3Jra2FsYW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5raS4KWS10dW5udXMvQnVzaW5l
c3MgSUQ6IDA2MTU1MjEtNC4gS290aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
