Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 942F51278FB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 11:13:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dWjo0eOXL0hVpjjbFMhKRue3O48gjgFvfejj9x2Rg0M=; b=ECdQ+sZMXEtE7H
	ftYpzUDcYyi4Xn+tTHzp/cvZ580b9LjAEP/9+qTx0nEKuIXGQTbZlumR4+lnrg1tpNzXzgRb0h+sN
	L5P2oAcinrJse7J0Fh8P7Q3L9zWVSk7mDeALjEXqwnHoYMNCiUO72QApUim1GO25+BWfxjjGo7Pnu
	Pe4WoufkTtSdyk9btMfiYPBkiHRB2GVYVgOazVqKicRkBnxMZnU11ibgwQEzjlOL2l8XeqzdvpcQq
	fCAoonxjU1MljMXR1rz0sc3HNhBXhYY9KV+Hc+6n4QKjO7EjlLtB2vcb4tm/ZXe+lZi0AVOHBq1sn
	QWNkTgcsLRuwFXc6+cXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiFHk-0001Tm-8A; Fri, 20 Dec 2019 10:13:28 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiFHb-0001TL-D8
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 10:13:20 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBKADDQe056920;
 Fri, 20 Dec 2019 04:13:13 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576836793;
 bh=9DmEO+OYxJgAdf+riV2ejuQ1fMZXsgBMxnnPcmuwnhE=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=whFIJrJD4FprTZAOiJ8wEeSEisPM8Fr46QZ4DUg2HBS0RzHmsZClqBvWZG7dtqXXX
 jBMa+TkyD+euyhiIO3PtCHaVpBXU2f2wIAOuIYSQHgMCRnWeO20FdKHDL2SMCMSLz4
 WAcpB+HHQOqrcVsItNufA43SY3GMKqEpJPdlA8mk=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBKADCSi014986
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 20 Dec 2019 04:13:12 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 20
 Dec 2019 04:13:05 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 20 Dec 2019 04:13:05 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBKAD1TA072417;
 Fri, 20 Dec 2019 04:13:02 -0600
Subject: Re: [PATCH v7 05/12] dmaengine: Add support for reporting DMA cached
 data amount
To: Vinod Koul <vkoul@kernel.org>
References: <20191209094332.4047-1-peter.ujfalusi@ti.com>
 <20191209094332.4047-6-peter.ujfalusi@ti.com>
 <20191220083713.GL2536@vkoul-mobl>
 <f28301f7-4624-b4f8-d781-7ebfa4ae7856@ti.com>
 <20191220095755.GN2536@vkoul-mobl>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <ea912bfb-a315-a230-85e9-9c9110b3f0d7@ti.com>
Date: Fri, 20 Dec 2019 12:13:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191220095755.GN2536@vkoul-mobl>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_021319_525167_F4858A59 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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
 vigneshr@ti.com, lokeshvutla@ti.com, j-keerthy@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, tony@atomide.com,
 robh+dt@kernel.org, ssantosh@kernel.org, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyMC8xMi8yMDE5IDExLjU3LCBWaW5vZCBLb3VsIHdyb3RlOgo+IE9uIDIwLTEyLTE5LCAx
MDo0OSwgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cj4gCj4+Pj4gK3N0YXRpYyBpbmxpbmUgdm9pZCBk
bWFfc2V0X2luX2ZsaWdodF9ieXRlcyhzdHJ1Y3QgZG1hX3R4X3N0YXRlICpzdGF0ZSwKPj4+PiAr
CQkJCQkgICB1MzIgaW5fZmxpZ2h0X2J5dGVzKQo+Pj4+ICt7Cj4+Pj4gKwlpZiAoc3RhdGUpCj4+
Pj4gKwkJc3RhdGUtPmluX2ZsaWdodF9ieXRlcyA9IGluX2ZsaWdodF9ieXRlczsKPj4+PiArfQo+
Pj4KPj4+IFRoaXMgd291bGQgYmUgdXNlZCBieSBkbWFlbmdpbmUgZHJpdmVycyByaWdodCwgc28g
bGV0cyBtb3ZlIGl0IHRvIGRyaXZlcnMvZG1hL2RtYWVuZ2luZS5oCj4+Pgo+Pj4gbGV0cyBub3Qg
ZXhwb3NlIHRoaXMgdG8gdXNlcnMgOikKPj4KPj4gSSBoYXZlIHB1dCBpdCB3aGVyZSB0aGUgZG1h
X3NldF9yZXNpZHVlKCkgd2FzLgo+PiBJIGNhbiBhZGQgYSBwYXRjaCBmaXJzdCB0byBtb3ZlIGRt
YV9zZXRfcmVzaWR1ZSgpIHRoZW4gYWRkCj4gCj4gbm90IHN1cmUgSSBmb2xsb3csIGJ1dCBkbWFf
c2V0X3Jlc2lkdWUoKSBpbiBhbHJlYWR5IGluIGRyaXZlcnMvZG1hL2RtYWVuZ2luZS5oCgphbmQg
dGhpcyBwYXRjaCBhZGRzIHRoZSBkbWFfc2V0X2luX2ZsaWdodF9ieXRlcygpIHRvCmRyaXZlcnMv
ZG1hL2RtYWVuZ2luZS5oCgppbiBpbmNsdWRlL2xpbnV4L2RtYWVuZ2luZS5oIHRoZSBkbWFfdHhf
c3RhdGUgc3RydWN0IGlzIHVwZGF0ZWQgb25seS4KCi0gUMOpdGVyCgpUZXhhcyBJbnN0cnVtZW50
cyBGaW5sYW5kIE95LCBQb3Jra2FsYW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5raS4KWS10dW5udXMv
QnVzaW5lc3MgSUQ6IDA2MTU1MjEtNC4gS290aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
