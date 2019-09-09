Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD13AD76F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 12:59:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CjpyLtx6VIV0r+y1XeNto4WJhZsEnJjnGLSiUtALwMA=; b=P7sDIxBbVUrien
	nB2+5MsbdRLt1pvCABxmJglwA0SHSC+DlOi1BcfLIUiuGHYq6aPUNZPKpf1Iz7htF0Yhr+eQAa7Mr
	E3kgaidIV0dgfiaKRBekIlN3FI4+DUhGTSWVuFPmZ5PDKPB0ua66MRTMWN7d8DD20VDauYiRQzhW4
	EPi64VsQJcVTl1FdAVENRJg0AdDRyNM4AUQod2GWttpbIURvggRmwx/d7qk9zk7NyTwb8lXFxq6OV
	pcplUm09RU0ux4m/oqviOXOmPP4xqzXJVjYcaRc2Y+TdLeLr8FQWgF2NXjCRyjadVe3cFJrIZTh8A
	IQpusCQfHSKqEJodR+Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7HOd-0002Eb-S4; Mon, 09 Sep 2019 10:59:47 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7HOX-0002EI-Eq
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 10:59:42 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x89AxSho114599;
 Mon, 9 Sep 2019 05:59:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1568026768;
 bh=KVTZeU9q6U/tm8mHmG6WMtzijKTyoPy7zWy+jYJUN0w=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Z0kR636WsH3wXes0J12PD38D5hFweyoCxpR+fcSAcWqcaqyeR8AjIXhnnBvTZO8J4
 yPyACWq001MyvsAYus3peKtwX6dQLmuEyzcfdcba/FuVxuwdMwElfDMGTVDMEkAvQH
 /nfb7SUhIcjDJf//GEdyLAhd0tGpVvmHLFG6OG1s=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id x89AxSEJ104990;
 Mon, 9 Sep 2019 05:59:28 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 9 Sep
 2019 05:59:26 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 9 Sep 2019 05:59:25 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x89AxMHW108974;
 Mon, 9 Sep 2019 05:59:23 -0500
Subject: Re: [PATCH v2 06/14] dmaengine: ti: Add cppi5 header for UDMA
To: Vinod Koul <vkoul@kernel.org>
References: <20190730093450.12664-1-peter.ujfalusi@ti.com>
 <20190730093450.12664-7-peter.ujfalusi@ti.com>
 <20190908142528.GP2672@vkoul-mobl>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <8699f999-7834-a083-2c7b-3ea909b1e011@ti.com>
Date: Mon, 9 Sep 2019 13:59:54 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190908142528.GP2672@vkoul-mobl>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_035941_603003_A64E608A 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, robh+dt@kernel.org, ssantosh@kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwOC8wOS8yMDE5IDE3LjI1LCBWaW5vZCBLb3VsIHdyb3RlOgo+IE9uIDMwLTA3LTE5LCAx
MjozNCwgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cj4gCj4+ICsvKioKPj4gKyAqIERlc2NyaXB0b3Ig
aGVhZGVyLCBwcmVzZW50IGluIGFsbCB0eXBlcyBvZiBkZXNjcmlwdG9ycwo+PiArICovCj4+ICtz
dHJ1Y3QgY3BwaTVfZGVzY19oZHJfdCB7Cj4+ICsJdTMyIHBrdF9pbmZvMDsJLyogUGFja2V0IGlu
Zm8gd29yZCAwIChuL2EgaW4gQnVmZmVyIGRlc2MpICovCj4+ICsJdTMyIHBrdF9pbmZvMTsJLyog
UGFja2V0IGluZm8gd29yZCAxIChuL2EgaW4gQnVmZmVyIGRlc2MpICovCj4+ICsJdTMyIHBrdF9p
bmZvMjsJLyogUGFja2V0IGluZm8gd29yZCAyIEJ1ZmZlciByZWNsYW1hdGlvbiBpbmZvICovCj4+
ICsJdTMyIHNyY19kc3RfdGFnOyAvKiBQYWNrZXQgaW5mbyB3b3JkIDMgKG4vYSBpbiBCdWZmZXIg
ZGVzYykgKi8KPiAKPiBDYW4gd2UgbW92ZSB0aGVzZSBjb21tZW50cyB0byBrZXJuZWwtZG9jIHN0
eWxlIHBsZWFzZQoKU3VyZSwgSSdsbCBtb3ZlIGFsbCBzdHJ1Y3QgYW5kIGVudW1zLgoKPj4gKy8q
Kgo+PiArICogY3BwaTVfZGVzY19nZXRfdHlwZSAtIGdldCBkZXNjcmlwdG9yIHR5cGUKPj4gKyAq
IEBkZXNjX2hkcjogcGFja2V0IGRlc2NyaXB0b3IvVFIgaGVhZGVyCj4+ICsgKgo+PiArICogUmV0
dXJucyBkZXNjcmlwdG9yIHR5cGU6Cj4+ICsgKiBDUFBJNV9JTkZPMF9ERVNDX1RZUEVfVkFMX0hP
U1QKPj4gKyAqIENQUEk1X0lORk8wX0RFU0NfVFlQRV9WQUxfTU9OTwo+PiArICogQ1BQSTVfSU5G
TzBfREVTQ19UWVBFX1ZBTF9UUgo+PiArICovCj4+ICtzdGF0aWMgaW5saW5lIHUzMiBjcHBpNV9k
ZXNjX2dldF90eXBlKHN0cnVjdCBjcHBpNV9kZXNjX2hkcl90ICpkZXNjX2hkcikKPj4gK3sKPj4g
KwlXQVJOX09OKCFkZXNjX2hkcik7Cj4gCj4gd2h5IFdBUk5fT04gYW5kIG5vdCByZXR1cm4gZXJy
b3IhCgp0aGVzZSBoZWxwZXJzIHdlcmUgaW50ZW5kZWQgdG8gYmUgYXMgc2ltcGxlIGFzIHBvc3Np
YmxlLgpJIGNhbiBnbyB0aHJvdWdoIHdpdGggYWxsIG9mIHRoZSBXQVJOX09OcyBhbmQgcmVwbGFj
ZSB0aGVtIHdpdGggaWYoKQpwcl93YXJuKCkgYW5kIGVpdGhlciBqdXN0IHJldHVybiBvciByZXR1
cm4gd2l0aCAwLgoKV291bGQgdGhhdCBiZSBhY2NlcHRhYmxlPwoKPj4gKy8qKgo+PiArICogY3Bw
aTVfaGRlc2NfY2FsY19zaXplIC0gQ2FsY3VsYXRlIEhvc3QgUGFja2V0IERlc2NyaXB0b3Igc2l6
ZQo+PiArICogQGVwaWI6IGlzIEVQSUIgcHJlc2VudAo+PiArICogQHBzZGF0YV9zaXplOiBQU0RB
VEEgc2l6ZQo+PiArICogQHN3X2RhdGFfc2l6ZTogU1dEQVRBIHNpemUKPj4gKyAqCj4+ICsgKiBS
ZXR1cm5zIHJlcXVpcmVkIEhvc3QgUGFja2V0IERlc2NyaXB0b3Igc2l6ZQo+PiArICogMCAtIGlm
IFBTREFUQSA+IENQUEk1X0lORk8wX0hERVNDX1BTREFUQV9NQVhfU0laRQo+PiArICovCj4+ICtz
dGF0aWMgaW5saW5lIHUzMiBjcHBpNV9oZGVzY19jYWxjX3NpemUoYm9vbCBlcGliLCB1MzIgcHNk
YXRhX3NpemUsCj4+ICsJCQkJCXUzMiBzd19kYXRhX3NpemUpCj4+ICt7Cj4+ICsJdTMyIGRlc2Nf
c2l6ZTsKPj4gKwo+PiArCWlmIChwc2RhdGFfc2l6ZSA+IENQUEk1X0lORk8wX0hERVNDX1BTREFU
QV9NQVhfU0laRSkKPj4gKwkJcmV0dXJuIDA7Cj4+ICsJLy9UT0RPX0dTOiBhbGlnbgo+IAo+IDop
CgpMZWZ0b3ZlciBUT0RPIGZyb20gR3J5Z29yaWksIHRoZSBhbGlnbiBpcyBhbHJlYWR5IGRvbmUu
CgotIFDDqXRlcgoKVGV4YXMgSW5zdHJ1bWVudHMgRmlubGFuZCBPeSwgUG9ya2thbGFua2F0dSAy
MiwgMDAxODAgSGVsc2lua2kuClktdHVubnVzL0J1c2luZXNzIElEOiAwNjE1NTIxLTQuIEtvdGlw
YWlra2EvRG9taWNpbGU6IEhlbHNpbmtpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
