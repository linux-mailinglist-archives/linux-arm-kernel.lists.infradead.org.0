Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38052127782
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 09:50:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JyBg+QeRi0VeKFjn97G/+HbKShY3xPJ3a2aIB301J7g=; b=a1wIFVeM2/Kd4I
	IQ3bndiiqu4n6flMPTXzYutQiE2IzOc3rBENeDFIcLGIs8neuwiEuwynjnPqwR2kEXkzxkUXW+gzQ
	SRaOVP2xFFE5eP4SP3FucHr8uzVuum9s1V4z0cET4q3lb6GVyZkLbtrONBpvOk2fOHpbPWoAgmSKB
	NAahjsRFLj2TyByC5kA0lOc53GUKR5+hB5rOqSOlSRAR1LGjgqoupPNTGp3R68Dasu0QClVFDM5b+
	lVLRa21Zi4o2Ok0iw0fk2gx/Sf3Vjgmql7VUoFjjsTUTJyu4zqsSRLsx/rrHifRLWbHi3Qbxayutt
	lW1MUpbwqYug+MvJllyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiDz2-0006GQ-3y; Fri, 20 Dec 2019 08:50:04 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiDyk-0006Fz-EK
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 08:49:47 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBK8ndb2019139;
 Fri, 20 Dec 2019 02:49:39 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576831779;
 bh=tk22WolYB8BNRlJKA3l1OQpPiF/uHGCR6nzT2IFL+64=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Y5xUQt7tZox9pBfIRCjAS8Pe5hD6nPL90Q+qFhpq4R27TBM/lCNt97e7E+Ue2r1G7
 1+Wh0mF+fBvsBgmK/3AvX3yIKf8NJOvqameS1fLTvAXQ2uxT1EA7EZRANU3cHfAcyP
 YoqH7TmF9pTPaprsyqjDeCDrUZIFRqQLDvIW8rn4=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBK8ndZT097784
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 20 Dec 2019 02:49:39 -0600
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 20
 Dec 2019 02:49:38 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 20 Dec 2019 02:49:38 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBK8nYH9105823;
 Fri, 20 Dec 2019 02:49:35 -0600
Subject: Re: [PATCH v7 05/12] dmaengine: Add support for reporting DMA cached
 data amount
To: Vinod Koul <vkoul@kernel.org>
References: <20191209094332.4047-1-peter.ujfalusi@ti.com>
 <20191209094332.4047-6-peter.ujfalusi@ti.com>
 <20191220083713.GL2536@vkoul-mobl>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <f28301f7-4624-b4f8-d781-7ebfa4ae7856@ti.com>
Date: Fri, 20 Dec 2019 10:49:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191220083713.GL2536@vkoul-mobl>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_004946_566396_69EF66E3 
X-CRM114-Status: GOOD (  16.61  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 vigneshr@ti.com, lokeshvutla@ti.com, j-keerthy@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, tony@atomide.com,
 robh+dt@kernel.org, ssantosh@kernel.org, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyMC8xMi8yMDE5IDEwLjM3LCBWaW5vZCBLb3VsIHdyb3RlOgo+IE9uIDA5LTEyLTE5LCAx
MTo0MywgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cj4+IEEgRE1BIGhhcmR3YXJlIGNhbiBoYXZlIGJp
ZyBjYWNoZSBvciBGSUZPIGFuZCB0aGUgYW1vdW50IG9mIGRhdGEgc2l0dGluZyBpbgo+PiB0aGUg
RE1BIGZhYnJpYyBjYW4gYmUgYW4gaW50ZXJlc3QgZm9yIHRoZSBjbGllbnRzLgo+Pgo+PiBGb3Ig
ZXhhbXBsZSBpbiBhdWRpbyB3ZSB3YW50IHRvIGtub3cgdGhlIGRlbGF5IGluIHRoZSBkYXRhIGZs
b3cgYW5kIGluIGNhc2UKPj4gdGhlIERNQSBoYXZlIHNpZ25pZmljYW50bHkgbGFyZ2UgRklGTy9j
YWNoZSwgaXQgY2FuIGFmZmVjdCB0aGUgbGF0ZW5jL2RlbGF5Cj4+Cj4+IFNpZ25lZC1vZmYtYnk6
IFBldGVyIFVqZmFsdXNpIDxwZXRlci51amZhbHVzaUB0aS5jb20+Cj4+IFJldmlld2VkLWJ5OiBU
ZXJvIEtyaXN0byA8dC1rcmlzdG9AdGkuY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMvZG1hL2RtYWVu
Z2luZS5oICAgfCA4ICsrKysrKysrCj4+ICBpbmNsdWRlL2xpbnV4L2RtYWVuZ2luZS5oIHwgMiAr
Kwo+PiAgMiBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2RtYS9kbWFlbmdpbmUuaCBiL2RyaXZlcnMvZG1hL2RtYWVuZ2luZS5oCj4+IGlu
ZGV4IDUwMWMwYjA2M2Y4NS4uYjBiOTc0NzU3MDdhIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2Rt
YS9kbWFlbmdpbmUuaAo+PiArKysgYi9kcml2ZXJzL2RtYS9kbWFlbmdpbmUuaAo+PiBAQCAtNzcs
NiArNzcsNyBAQCBzdGF0aWMgaW5saW5lIGVudW0gZG1hX3N0YXR1cyBkbWFfY29va2llX3N0YXR1
cyhzdHJ1Y3QgZG1hX2NoYW4gKmNoYW4sCj4+ICAJCXN0YXRlLT5sYXN0ID0gY29tcGxldGU7Cj4+
ICAJCXN0YXRlLT51c2VkID0gdXNlZDsKPj4gIAkJc3RhdGUtPnJlc2lkdWUgPSAwOwo+PiArCQlz
dGF0ZS0+aW5fZmxpZ2h0X2J5dGVzID0gMDsKPj4gIAl9Cj4+ICAJcmV0dXJuIGRtYV9hc3luY19p
c19jb21wbGV0ZShjb29raWUsIGNvbXBsZXRlLCB1c2VkKTsKPj4gIH0KPj4gQEAgLTg3LDYgKzg4
LDEzIEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBkbWFfc2V0X3Jlc2lkdWUoc3RydWN0IGRtYV90eF9z
dGF0ZSAqc3RhdGUsIHUzMiByZXNpZHVlKQo+PiAgCQlzdGF0ZS0+cmVzaWR1ZSA9IHJlc2lkdWU7
Cj4+ICB9Cj4+ICAKPj4gK3N0YXRpYyBpbmxpbmUgdm9pZCBkbWFfc2V0X2luX2ZsaWdodF9ieXRl
cyhzdHJ1Y3QgZG1hX3R4X3N0YXRlICpzdGF0ZSwKPj4gKwkJCQkJICAgdTMyIGluX2ZsaWdodF9i
eXRlcykKPj4gK3sKPj4gKwlpZiAoc3RhdGUpCj4+ICsJCXN0YXRlLT5pbl9mbGlnaHRfYnl0ZXMg
PSBpbl9mbGlnaHRfYnl0ZXM7Cj4+ICt9Cj4gCj4gVGhpcyB3b3VsZCBiZSB1c2VkIGJ5IGRtYWVu
Z2luZSBkcml2ZXJzIHJpZ2h0LCBzbyBsZXRzIG1vdmUgaXQgdG8gZHJpdmVycy9kbWEvZG1hZW5n
aW5lLmgKPiAKPiBsZXRzIG5vdCBleHBvc2UgdGhpcyB0byB1c2VycyA6KQoKSSBoYXZlIHB1dCBp
dCB3aGVyZSB0aGUgZG1hX3NldF9yZXNpZHVlKCkgd2FzLgpJIGNhbiBhZGQgYSBwYXRjaCBmaXJz
dCB0byBtb3ZlIGRtYV9zZXRfcmVzaWR1ZSgpIHRoZW4gYWRkCmRtYV9zZXRfaW5fZmxpZ2h0X2J5
dGVzKCkgdGhlcmUgYXMgd2VsbD8KCi0gUMOpdGVyCgpUZXhhcyBJbnN0cnVtZW50cyBGaW5sYW5k
IE95LCBQb3Jra2FsYW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5raS4KWS10dW5udXMvQnVzaW5lc3Mg
SUQ6IDA2MTU1MjEtNC4gS290aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
