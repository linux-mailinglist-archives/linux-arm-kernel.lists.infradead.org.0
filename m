Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ADA8E472F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 11:29:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mmvs29ccV4iIaogdVDOrbDQonSybHeLmdhbYCnrYby0=; b=knmftgA6qx8g+Y
	3CVNnVPywja2H39IiMSZQ4RoCCQJnUoTpPVH8iJATE3kUliBOJfvpa8HnezNl6aGKbvmlIwhRAENU
	gTANk0HEaKecHhw9zpl8cEKufap6uMVVTVoZOanTV4y5tTqyn5q/WdEw740Tn18QF1Am/5eqSiQuH
	t6w2DuvZtDCxVFF6sLwVNpo/bvnsxVsrYQJ7IpFBOWuSGc6odkwNd/x8gXU5yUBfQEvO3NNtJK4DQ
	D3ja+gKUdrKWxv37SHu+I/iEUKTwOVA4S8G4oFZ5W5W10w2PU2Uvn5dmX2jrOZ4YUvQK+iW0vhKAz
	Y88TELK3CfDvCj5MRTTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNvuk-000253-2G; Fri, 25 Oct 2019 09:29:46 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNvuV-00024K-0x
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 09:29:32 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9P9TO13045068;
 Fri, 25 Oct 2019 04:29:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1571995764;
 bh=HPgJGVv34kaCbmxMyK0unoXFnunk412hxWQRl6+VdGs=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=QIjqKvIafKs5pLDpGkeA2AbWniDt0/nKgA983Uct6RXVus3kYfPTP+pTO4u5SQiUb
 kAZmXEjJ+PFU3ZbNgzdLCD7G8CMRTJ+5IUy1Kx2LviA7CUiDTJoJI1zrvw2DQRiyH4
 +nHfXR1vjDkIFrKYzYw9Xjhv0u991lLBxYTcXdxg=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9P9TOlD053121
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 25 Oct 2019 04:29:24 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 25
 Oct 2019 04:29:13 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 25 Oct 2019 04:29:23 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9P9TKLQ117235;
 Fri, 25 Oct 2019 04:29:20 -0500
Subject: Re: [PATCH v3 02/14] soc: ti: k3: add navss ringacc driver
To: Lokesh Vutla <lokeshvutla@ti.com>, <vkoul@kernel.org>,
 <robh+dt@kernel.org>, <nm@ti.com>, <ssantosh@kernel.org>
References: <20191001061704.2399-1-peter.ujfalusi@ti.com>
 <20191001061704.2399-3-peter.ujfalusi@ti.com>
 <86344789-e0f4-5b29-62da-3fb08025177b@ti.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <0a698278-19d8-bb20-34b9-9695d670b3a8@ti.com>
Date: Fri, 25 Oct 2019 12:30:23 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <86344789-e0f4-5b29-62da-3fb08025177b@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_022931_153876_9F44C54D 
X-CRM114-Status: GOOD (  25.52  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, tony@atomide.com,
 j-keerthy@ti.com, linux-kernel@vger.kernel.org, t-kristo@ti.com,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwOS8xMC8yMDE5IDE2LjI3LCBMb2tlc2ggVnV0bGEgd3JvdGU6Cj4+ICtzdHJ1Y3QgazNf
cmluZ2FjYyB7Cj4+ICsJc3RydWN0IGRldmljZSAqZGV2Owo+PiArCXN0cnVjdCBrM19yaW5nYWNj
X3Byb3h5X2djZmdfcmVncyBfX2lvbWVtICpwcm94eV9nY2ZnOwo+PiArCXZvaWQgX19pb21lbSAq
cHJveHlfdGFyZ2V0X2Jhc2U7Cj4+ICsJdTMyIG51bV9yaW5nczsgLyogbnVtYmVyIG9mIHJpbmdz
IGluIFJpbmdhY2MgbW9kdWxlICovCj4+ICsJdW5zaWduZWQgbG9uZyAqcmluZ3NfaW51c2U7Cj4+
ICsJc3RydWN0IHRpX3NjaV9yZXNvdXJjZSAqcm1fZ3BfcmFuZ2U7Cj4+ICsKPj4gKwlib29sIGRt
YV9yaW5nX3Jlc2V0X3F1aXJrOwo+PiArCXUzMiBudW1fcHJveGllczsKPj4gKwl1bnNpZ25lZCBs
b25nICpwcm94eV9pbnVzZTsKPj4gKwo+PiArCXN0cnVjdCBrM19yaW5nICpyaW5nczsKPj4gKwlz
dHJ1Y3QgbGlzdF9oZWFkIGxpc3Q7Cj4+ICsJc3RydWN0IG11dGV4IHJlcV9sb2NrOyAvKiBwcm90
ZWN0IHJpbmdzIGFsbG9jYXRpb24gKi8KPj4gKwo+PiArCWNvbnN0IHN0cnVjdCB0aV9zY2lfaGFu
ZGxlICp0aXNjaTsKPj4gKwljb25zdCBzdHJ1Y3QgdGlfc2NpX3JtX3JpbmdhY2Nfb3BzICp0aXNj
aV9yaW5nX29wczsKPj4gKwl1MzIgIHRpc2NpX2Rldl9pZDsKPiAKPiBUaGlzIGNhbiBiZSBkcm9w
cGVkIG5vPyBwZGV2LT5pZCBoYXMgaXQgYWxyZWFkeS4KCnBkZXYtPmlkIG1pZ2h0IGhhdmUgaXQg
YnV0IGl0IGlzIHNpbXBsZXIgdG8ga2VlcCBpdCBoZXJlIHRoYW4gZ2V0dGluZwp0aGUgcGRldiB3
aGVuIHdlIG5lZWQgaXQKCi4uLgoKPj4gK3N0cnVjdCBrM19yaW5nICprM19yaW5nYWNjX3JlcXVl
c3RfcmluZyhzdHJ1Y3QgazNfcmluZ2FjYyAqcmluZ2FjYywKPj4gKwkJCQkJaW50IGlkLCB1MzIg
ZmxhZ3MpCj4+ICt7Cj4+ICsJaW50IHByb3h5X2lkID0gSzNfUklOR0FDQ19QUk9YWV9OT1RfVVNF
RDsKPj4gKwo+PiArCW11dGV4X2xvY2soJnJpbmdhY2MtPnJlcV9sb2NrKTsKPj4gKwo+PiArCWlm
IChpZCA9PSBLM19SSU5HQUNDX1JJTkdfSURfQU5ZKSB7Cj4+ICsJCS8qIFJlcXVlc3QgZm9yIGFu
eSBnZW5lcmFsIHB1cnBvc2UgcmluZyAqLwo+PiArCQlzdHJ1Y3QgdGlfc2NpX3Jlc291cmNlX2Rl
c2MgKmdwX3JpbmdzID0KPj4gKwkJCQkJCSZyaW5nYWNjLT5ybV9ncF9yYW5nZS0+ZGVzY1swXTs+
ICsJCXVuc2lnbmVkIGxvbmcgc2l6ZTsKPj4gKwo+PiArCQlzaXplID0gZ3BfcmluZ3MtPnN0YXJ0
ICsgZ3BfcmluZ3MtPm51bTsKPj4gKwkJaWQgPSBmaW5kX25leHRfemVyb19iaXQocmluZ2FjYy0+
cmluZ3NfaW51c2UsIHNpemUsCj4+ICsJCQkJCWdwX3JpbmdzLT5zdGFydCk7Cj4gCj4gdGlfc2Np
X2dldF9mcmVlIHJlc291cmNlIGNhbiBiZSB1c2VkIG5vPyBJbiBjYXNlIGlmIGlkIGlzIHBhc3Nl
ZCwgdGhhdCBiaXQgYWxvbmUKPiBjYW4gYmUgc2V0LgoKSHJtLCBraW5kIG9mIHllcy4KV2UgaGF2
ZSBhIGJpdGZpZWxkIGZvciBfYWxsXyByaW5ncyBtYW5hZ2VkIGxvY2FsbHkgc28gSSBkb24ndCBz
ZWUgbXVjaApiZW5lZml0IHRvIG1hbmFnZSBhbm90aGVyIGJpdGZpbGVkIHVzYWdlLCB3aGljaCBp
cyByZWR1bmRhbnQuCgo+PiArCQlpZiAoaWQgPT0gc2l6ZSkKPj4gKwkJCWdvdG8gZXJyb3I7Cj4+
ICsJfSBlbHNlIGlmIChpZCA8IDApIHsKPj4gKwkJZ290byBlcnJvcjsKPj4gKwl9Cj4+ICsKPj4g
KwlpZiAodGVzdF9iaXQoaWQsIHJpbmdhY2MtPnJpbmdzX2ludXNlKSAmJgo+PiArCSAgICAhKHJp
bmdhY2MtPnJpbmdzW2lkXS5mbGFncyAmIEszX1JJTkdfRkxBR19TSEFSRUQpKQo+PiArCQlnb3Rv
IGVycm9yOwo+PiArCWVsc2UgaWYgKHJpbmdhY2MtPnJpbmdzW2lkXS5mbGFncyAmIEszX1JJTkdf
RkxBR19TSEFSRUQpCj4+ICsJCWdvdG8gb3V0Owo+PiArCj4+ICsJaWYgKGZsYWdzICYgSzNfUklO
R0FDQ19SSU5HX1VTRV9QUk9YWSkgewo+PiArCQlwcm94eV9pZCA9IGZpbmRfbmV4dF96ZXJvX2Jp
dChyaW5nYWNjLT5wcm94eV9pbnVzZSwKPj4gKwkJCQkJICAgICAgcmluZ2FjYy0+bnVtX3Byb3hp
ZXMsIDApOwo+IAo+IE1heSBiZSBhIGR1bXAgcXVlc3Rpb24sIGJ1dCBob3cgZG8gd2UgbWFrZSBz
dXJlIHRoYXQgdGhlc2UgcHJveGllcyBhcmUgbm90IHVzZWQKPiBieSBhbm90aGVyIEhvc3RzPwoK
VGhhdCdzIGEgZ29vZCBxdWVzdGlvbi4gR3J5Z29yaWk/Cgo+IAo+PiArCQlpZiAocHJveHlfaWQg
PT0gcmluZ2FjYy0+bnVtX3Byb3hpZXMpCj4+ICsJCQlnb3RvIGVycm9yOwo+PiArCX0KPj4gKwo+
PiArCWlmICghdHJ5X21vZHVsZV9nZXQocmluZ2FjYy0+ZGV2LT5kcml2ZXItPm93bmVyKSkKPj4g
KwkJZ290byBlcnJvcjsKPj4gKwo+PiArCWlmIChwcm94eV9pZCAhPSBLM19SSU5HQUNDX1BST1hZ
X05PVF9VU0VEKSB7Cj4+ICsJCXNldF9iaXQocHJveHlfaWQsIHJpbmdhY2MtPnByb3h5X2ludXNl
KTsKPj4gKwkJcmluZ2FjYy0+cmluZ3NbaWRdLnByb3h5X2lkID0gcHJveHlfaWQ7Cj4+ICsJCWRl
dl9kYmcocmluZ2FjYy0+ZGV2LCAiR2l2aW5nIHJpbmcjJWQgcHJveHkjJWRcbiIsIGlkLAo+PiAr
CQkJcHJveHlfaWQpOwo+PiArCX0gZWxzZSB7Cj4+ICsJCWRldl9kYmcocmluZ2FjYy0+ZGV2LCAi
R2l2aW5nIHJpbmcjJWRcbiIsIGlkKTsKPj4gKwl9Cj4+ICsKPj4gKwlzZXRfYml0KGlkLCByaW5n
YWNjLT5yaW5nc19pbnVzZSk7Cj4+ICtvdXQ6Cj4+ICsJcmluZ2FjYy0+cmluZ3NbaWRdLnVzZV9j
b3VudCsrOwo+PiArCW11dGV4X3VubG9jaygmcmluZ2FjYy0+cmVxX2xvY2spOwo+PiArCXJldHVy
biAmcmluZ2FjYy0+cmluZ3NbaWRdOwo+PiArCj4+ICtlcnJvcjoKPj4gKwltdXRleF91bmxvY2so
JnJpbmdhY2MtPnJlcV9sb2NrKTsKPj4gKwlyZXR1cm4gTlVMTDsKPj4gK30KPj4gK0VYUE9SVF9T
WU1CT0xfR1BMKGszX3JpbmdhY2NfcmVxdWVzdF9yaW5nKTsKPj4gKwoKLi4uCj4+ICsJcG1fcnVu
dGltZV9lbmFibGUoZGV2KTsKPj4gKwlyZXQgPSBwbV9ydW50aW1lX2dldF9zeW5jKGRldik7Cj4+
ICsJaWYgKHJldCA8IDApIHsKPj4gKwkJcG1fcnVudGltZV9wdXRfbm9pZGxlKGRldik7Cj4+ICsJ
CWRldl9lcnIoZGV2LCAiRmFpbGVkIHRvIGVuYWJsZSBwbSAlZFxuIiwgcmV0KTsKPj4gKwkJZ290
byBlcnI7Cj4+ICsJfQo+IAo+IERvbid0IHlvdSBuZWVkIHBvd2VyLWRvbWFpbnMgcHJvcGVydHkg
aW4gRFQgc28gdGhhdCBwbSBpcyBhY3R1YWxseSB3b3JraW5nPyBJZgo+IHRoYXQgaXMgcG9wdWxh
dGVkLCBkZXYtaWQgY2FuIGJlIGRlcml2ZWQgZnJvbSBwb3dlci1kb21haW5zIHJhdGhlciB0aGFu
IGEKPiBzZXBhcmF0ZSBkdCBwcm9wZXJ0eS4KClJpZ2h0LCBJIG5ldmVyIGZlbHQgY29tZm9ydGFi
bGUgdG8gZmlkZGxlIHdpdGggc29tZXRoaW5nIG91dHNpZGUgb2YgdGhlCnNjb3BlIG9mIHRoZSBk
cml2ZXIuIFdoYXQgaGFwcGVucyAodW5saWtlbHkpIGlmIHRoZSBwb3dlci1kb21haW5zCmJpbmRp
bmcgZ290IGNoYW5nZWQgZm9yIHNvbWUgcmVhc29uPwoKQW5vdGhlciB0aGluZyBpcyB0aGF0IHRo
ZSB3aG9sZSBOQVZTUyBpcyBhbHdheXMgb24sIGl0IGNhbiBub3QgcG93ZXIgb2ZmCmFzIGl0IHdv
dWxkIGxvb3NlIGFsbCBvZiBpdCdzIGNvbmZpZ3VyYXRpb24gaW5jbHVkaW5nIGV2ZW50IG1hcHBp
bmdzLApETUEgY2hhbm5lbCBjb25maWd1cmF0aW9ucywgaW50ZXJydXB0IGNvbmZpZ3MsIHJpbmcg
Y29uZmlndXJhdGlvbnMsCm1haWxib3gsIHRpbWVycywgZXRjLgoKSXQgaXMgYSBjYXRhc3Ryb3Bo
aWMgdGhpbmcgd2hpY2ggY2FuIG9ubHkgYmUgc29sdmVkIHdpdGggYSBoYXJkIHJlYm9vdAphcyB0
aGVyZSBpcyBubyB3YXkgdG8gcmVjb3ZlciBmcm9tIGl0IC0gc3lzdGVtIGZpcm13YXJlIHdvdWxk
IG5lZWQgdG8KcmVib290ZWQgYXMgd2VsbC4KCkluIGN1cnJlbnQgU29DcyBOQVZTUyBjYW4gbm90
IGJlIG9mZi4gV2l0aG91dCBwb3dlci1kb21haW5zIGluIERUIHRoZQpwbV9ydW50aW1lIGlzIE5P
UCwgYnV0IGlmIHRoaXMgY2hhbmdlcyAoTkFWU1MgY291bGQgdHVybiBvZmYpIHdlIG5lZWQgdG8K
cHJldmVudCBOQVZTUyBwb3dlciBvZmYgYW5kIHRoZSBjb2RlIGlzIHJlYWR5IGZvciB0aGF0LCB3
ZSBqdXN0IHBvcCBpbgp0aGUgcG93ZXItZG9tYWlucyB0byBEVC4KCj4gCj4gWy4uLnNuaXAuLl0K
PiAKPiAKPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvc29jL3RpL2szLXJpbmdhY2MuaCBi
L2luY2x1ZGUvbGludXgvc29jL3RpL2szLXJpbmdhY2MuaAo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0
NAo+PiBpbmRleCAwMDAwMDAwMDAwMDAuLjUyNmIyZTM4ZmNjZQo+PiAtLS0gL2Rldi9udWxsCj4+
ICsrKyBiL2luY2x1ZGUvbGludXgvc29jL3RpL2szLXJpbmdhY2MuaAo+PiBAQCAtMCwwICsxLDI0
NSBAQAo+PiArLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAgKi8KPj4gKy8qCj4+
ICsgKiBLMyBSaW5nIEFjY2VsZXJhdG9yIChSQSkgc3Vic3lzdGVtIGludGVyZmFjZQo+PiArICoK
Pj4gKyAqIENvcHlyaWdodCAoQykgMjAxOSBUZXhhcyBJbnN0cnVtZW50cyBJbmNvcnBvcmF0ZWQg
LSBodHRwOi8vd3d3LnRpLmNvbQo+PiArICovCj4+ICsKPj4gKyNpZm5kZWYgX19TT0NfVElfSzNf
UklOR0FDQ19BUElfSF8KPj4gKyNkZWZpbmUgX19TT0NfVElfSzNfUklOR0FDQ19BUElfSF8KPj4g
Kwo+PiArI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+Cj4+ICsKPj4gK3N0cnVjdCBkZXZpY2Vfbm9k
ZTsKPj4gKwo+IAo+IFsuLi5zbmlwLi5dCj4gCj4+ICsKPj4gKy8qKgo+PiArICogazNfcmluZ2Fj
Y19yaW5nX3Jlc2V0IC0gcmluZyByZXNldAo+PiArICogQHJpbmc6IHBvaW50ZXIgb24gUmluZwo+
PiArICoKPj4gKyAqIFJlc2V0cyByaW5nIGludGVybmFsIHN0YXRlICgoaHcpb2NjLCAoaHcpaWR4
KS4KPj4gKyAqIFRPRE9fR1M6ID8gUmluZyBjYW4gYmUgcmV1c2VkIHdpdGhvdXQgcmVjb25maWd1
cmF0aW9uCj4gCj4gVE9ET19HUz8KPiAKPiBUaGFua3MgYW5kIHJlZ2FyZHMsCj4gTG9rZXNoCj4g
CgotIFDDqXRlcgoKVGV4YXMgSW5zdHJ1bWVudHMgRmlubGFuZCBPeSwgUG9ya2thbGFua2F0dSAy
MiwgMDAxODAgSGVsc2lua2kuClktdHVubnVzL0J1c2luZXNzIElEOiAwNjE1NTIxLTQuIEtvdGlw
YWlra2EvRG9taWNpbGU6IEhlbHNpbmtpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
