Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D32CF84FB9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 17:22:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z+Z7BDAC1S7FjfR8vAPsX9MdlvXSv8S6wAjIAVxYEzs=; b=dO7X/1WS88L7xCa1rhUseiWSI
	L2RmuaQ2TINm6rZpqw72zLHLvO2FmBXXUj2v5uWNUoPyWWTm0Fc0Cgtj2itCOOLSX7lbdDLwtS2u5
	4q53XCApT/Ov5GDHhdR/AE/iebwYezHGWIAI9xvwuBjWeTaf6N9sogYKwU5z7xKVAnVFjQWqr7pHZ
	rbZcvO2ljzx+ypePnyiIvsEEg3zeLGTTfiGlqwxBF8ZY9pZ0QXatu1HEkIoMago1DNX3gTw9tiEJ/
	k94iuZpLH3ecIuQtTEyPFIwKKkhkBt5xecvWoMD6VXiNhA62PPrAr4ygDAsREOXa+Loddd2be7BI+
	9M5ab3UcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvNlk-0000gR-0z; Wed, 07 Aug 2019 15:22:28 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvNlW-0000eX-V8
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 15:22:16 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 08:22:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,357,1559545200"; d="scan'208";a="373804945"
Received: from knguye7-mobl.amr.corp.intel.com (HELO [10.255.81.127])
 ([10.255.81.127])
 by fmsmga005.fm.intel.com with ESMTP; 07 Aug 2019 08:22:12 -0700
Subject: Re: [Sound-open-firmware] [PATCH v2 3/5] ASoC: SOF: Add DT DSP device
 support
To: Daniel Baluta <daniel.baluta@gmail.com>
References: <20190723084104.12639-1-daniel.baluta@nxp.com>
 <20190723084104.12639-4-daniel.baluta@nxp.com>
 <d85909d6-c7cb-c64b-dfa9-6cee6c0da2cb@linux.intel.com>
 <CAEnQRZDr+gj_eiESLNbVUVy1rreRE1nnDgtb3g=CjaRF5Aq9Vw@mail.gmail.com>
 <CAEnQRZDctjdzQ2RjJXhQh+s=d0y_j3Taa51hDaR4bqJ62C=7iQ@mail.gmail.com>
From: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <85b4a2c4-761e-bdcf-f05e-2fb16c06f11e@linux.intel.com>
Date: Wed, 7 Aug 2019 10:22:12 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAEnQRZDctjdzQ2RjJXhQh+s=d0y_j3Taa51hDaR4bqJ62C=7iQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_082215_013362_C5ECA690 
X-CRM114-Status: GOOD (  23.36  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Peng Fan <peng.fan@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Anson Huang <anson.huang@nxp.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, "S.j. Wang" <shengjiu.wang@nxp.com>,
 Marco Felsch <m.felsch@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Olaru <paul.olaru@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 sound-open-firmware@alsa-project.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cj4+Pj4gK3N0YXRpYyBpbnQgc29mX2R0X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCj4+Pj4gK3sKPj4+PiArICAgICBzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2Owo+
Pj4+ICsgICAgIGNvbnN0IHN0cnVjdCBzb2ZfZGV2X2Rlc2MgKmRlc2M7Cj4+Pj4gKyAgICAgLypU
T0RPOiBjcmVhdGUgYSBnZW5lcmljIHNuZF9zb2NfeHh4X21hY2ggKi8KPj4+PiArICAgICBzdHJ1
Y3Qgc25kX3NvY19hY3BpX21hY2ggKm1hY2g7Cj4+Pgo+Pj4gSSB3b25kZXIgaWYgeW91IHJlYWxs
eSBuZWVkIHRvIHVzZSB0aGUgc2FtZSBzdHJ1Y3R1cmVzLiBGb3IgSW50ZWwgd2UgZ2V0Cj4+PiBh
YnNvbHV0ZWx5IHplcm8gaW5mbyBmcm9tIHRoZSBmaXJtd2FyZSBzbyByZWx5IG9uIGFuIEFDUEkg
Y29kZWMgSUQgYXMgYQo+Pj4ga2V5IHRvIGZpbmQgaW5mb3JtYXRpb24gb24gd2hpY2ggZmlybXdh
cmUgYW5kIHRvcG9sb2d5IHRvIHVzZSwgYW5kIHdoaWNoCj4+PiBtYWNoaW5lIGRyaXZlciB0byBs
b2FkLiBZb3UgY291bGQgaGF2ZSBhbGwgdGhpcyBpbmZvcm1hdGlvbiBpbiBhIERUIGJsb2I/Cj4+
Cj4+IFllcy4gSSBzZWUgeW91ciBwb2ludC4gSSB3aWxsIHN0aWxsIG5lZWQgdG8gbWFrZSBhIGdl
bmVyaWMgc3RydWN0dXJlIGZvcgo+PiBzbmRfc29jX2FjcGlfbWFjaCBzbyB0aGF0IGV2ZXJ5b25l
IGNhbiB1c2Ugc29mX25vY29kZWNfc2V0dXAgZnVuY3Rpb24uCj4+Cj4+IE1heWJlIHNvbWV0aGlu
ZyBsaWtlIHRoaXM6Cj4+Cj4+IHN0cnVjdCBzbmRfc29jX21hY2ggewo+PiAgICB1bmlvbiB7Cj4+
ICAgIHN0cnVjdCBzbmRfc29jX2FjcGlfbWFjaCBhY3BpX21hY2g7Cj4+ICAgIHN0cnVjdCBzbmRf
c29jX29mX21hY2ggb2ZfbWFjaDsKPj4gICAgfQo+PiB9Owo+Pgo+PiBhbmQgdGhlbiBjaGFuZ2Ug
dGhlIHByb3RvdHlwZSBvZiBzb2Zfbm9jb2RlY19zZXR1cC4KPiAKPiBIaSBQaWVycmUsCj4gCj4g
SSBmaXhlZCBhbGwgdGhlIGNvbW1lbnRzIGV4Y2VwdCB0aGUgb25lIGFib3ZlLiBSZXBsYWNpbmcg
c25kX3NvY19hY3BpX21hY2gKPiB3aXRoIGEgZ2VuZXJpYyBzbmRfc29jX21hY2ggaXMgbm90IHRy
aXZpYWwgdGFzay4KPiAKPiBJIHdvbmRlciBpZiBpdCBpcyBhY2NlcHRhYmxlIHRvIGdldCB0aGUg
aW5pdGlhbCBwYXRjaGVzIGFzIHRoZXkgYXJlCj4gbm93IGFuZCBsYXRlciBzd2l0Y2ggdG8KPiBn
ZW5lcmljIEFDUEkvT0YgYWJzdHJhY3Rpb24uCj4gCj4gQXNraW5nIHRoaXMgYmVjYXVzZSBmb3Ig
dGhlIG1vbWVudCBvbiB0aGUgaS5NWCBzaWRlIEkgaGF2ZSBvbmx5Cj4gaW1wbGVtZW50ZWQgbm8g
Y29kZWMKPiB2ZXJzaW9uIGFuZCB3ZSBkb24ndCBwcm9iZSBhbnkgb2YgdGhlIG1hY2hpbmUgZHJp
dmVycyB3ZSBoYXZlLgo+IAo+IFNvLCB0aGVyZSBpcyB0aGlzIG9ubHkgb25lIG1lbWJlciBvZiBz
bmRfc29jX2FjcGlfbWFjaCB0aGF0IGlteAo+IHZlcnNpb24gaXMgbWFraW5nIHVzZSBvZjoKPiAK
PiAgICBtYWNoLT5kcnZfbmFtZSA9ICJzb2Ytbm9jb2RlYyI7Cj4gCj4gVGhhdCdzIGFsbC4KPiAK
PiBJIHRoaW5rIHRoZSBjaGFuZ2UgYXMgaXQgaXMgbm93IGlzIHZlcnkgY2xlYW4gYW5kIG5vbi1p
bnRydXNpdmUuIExhdGVyCj4gd2Ugd2lsbCBnZXQgb3B0aW9ucyB0bwo+IHJlYWQgZmlybXdhcmUg
bmFtZSBhbmQgc3R1ZmYgZnJvbSBEVC4KPiAKPiBBbnlob3csIEkgZG9uJ3QgdGhpbmsgd2UgY2Fu
IGdldCByaWQgb2Ygc25kX2Rldl9kZXNjIHN0cnVjdHVyZSBvbgo+IGkuTVguIFRoaXMgd2lsbCBi
ZSB1c2VkCj4gdG8gc3RvcmUgdGhlIGluZm9ybWF0aW9uIHJlYWQgZnJvbSBEVDoKPiAKPiBzdGF0
aWMgc3RydWN0IHNvZl9kZXZfZGVzYyBzb2Zfb2ZfaW14OHF4cF9kZXNjID0gewo+IMK7ICAgICAg
IC5kZWZhdWx0X2Z3X3BhdGggPSAiaW14L3NvZiIsCj4gwrsgICAgICAgLmRlZmF1bHRfdHBsZ19w
YXRoID0gImlteC9zb2YtdHBsZyIsCj4gwrsgICAgICAgLm5vY29kZWNfZndfZmlsZW5hbWUgPSAi
c29mLWlteDgucmkiLAo+IMK7ICAgICAgIC5ub2NvZGVjX3RwbGdfZmlsZW5hbWUgPSAic29mLWlt
eDgtbm9jb2RlYy50cGxnIiwKPiDCuyAgICAgICAub3BzID0gJnNvZl9pbXg4X29wcywKPiB9Owo+
IAo+IEZvciB0aGUgbW9tZW50IHdlIHdpbGwgb25seSB1c2UgdGhlIGRlZmF1bHQgdmFsdWVzLgoK
WWVzLCB0aGF0J3MgZmluZSBmb3Igbm93LiBJZiB5b3UgZG9uJ3QgaGF2ZSBhIHJlYWwgbWFjaGlu
ZSBkcml2ZXIgdGhlbiAKdGhlcmUncyBub3RoaW5nIHVyZ2VudCB0byBjaGFuZ2UuCgpJcyB0aGUg
bmV3IHZlcnNpb24gb24gR2l0SHViPwoKVGhhbmtzCi1QaWVycmUKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
