Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93468FC12E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 09:09:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wb75BoPgDcH6gApJNB7J8VsP3+pMyPcqDApHpvxTSgY=; b=mo9vbnVl0ma7i9
	Zq7vUBvwqYxQS1CXIpBwuXvQ/mhNkCdQRp6616wA+mdlgXbw1ZhnnZbgoQ3PmTqsR7I71YiTuwJ1O
	Rhs1Jhc9d8EPjU4+nrrjcYWxIie+fyEh6i0kqqr9BJnjSV06SrLqaUSQKB9IPbJFgru9qesIyfVT8
	03kPJeVMOPcCNVGmVnRmMzGeQe5Y8htBdIITngT7QwBiY3fNn6IJPRI8AhNs6O1ldLQn3HRdnvRra
	Ulso4Mjezppk1xLSQnbiNQ/4+csmJrmpIddRRIKQNYOLLS26nwYrzE0Pbrh2a0plMBHHAx9wNSyOH
	0jJzNm4Rpqz96tZJxVfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVABU-0005nR-EW; Thu, 14 Nov 2019 08:08:56 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVABJ-0005n0-W2
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 08:08:47 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAE88TAI087495;
 Thu, 14 Nov 2019 02:08:29 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573718909;
 bh=39b7nZ1qRF2Y+FLYhjNIYsRZV7qmctGWElYWFg7WX+c=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=jz3+gAJ3tZEIyJcZzYoDt3ibitF3wiUAMwOW2S5lRPPY58xnjxyQg4oFQkUEHkTUk
 3TUmRmXZAr4W+u8/Rwj3JafK+izUYxskI6nlAaLVuwLwSdjSJQZdhhMgEEaqdda8nJ
 iO4BKurruUwtjfW9CuZlD+vuGD4UGU9pZ6l3e74k=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAE88SDs112761;
 Thu, 14 Nov 2019 02:08:28 -0600
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 14
 Nov 2019 02:08:22 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 14 Nov 2019 02:08:22 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAE88H8G125696;
 Thu, 14 Nov 2019 02:08:17 -0600
Subject: Re: [PATCH 7/9] spi: s3c64xx: Use dma_request_chan() directly for
 channel request
To: Andi Shyti <andi@etezian.org>
References: <20191113094256.1108-1-peter.ujfalusi@ti.com>
 <20191113094256.1108-8-peter.ujfalusi@ti.com>
 <20191113234049.GA1249@jack.zhora.eu>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <e453c716-7658-a9fd-324d-4d95ff1aa29c@ti.com>
Date: Thu, 14 Nov 2019 10:09:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191113234049.GA1249@jack.zhora.eu>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_000846_131632_8D66BCFD 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: jonathanh@nvidia.com, alexandre.belloni@bootlin.com, s.hauer@pengutronix.de,
 linux-arm-msm@vger.kernel.org, radu_nicolae.pirea@upb.ro, broonie@kernel.org,
 linux-kernel@vger.kernel.org, krzk@kernel.org, linux-spi@vger.kernel.org,
 vkoul@kernel.org, kgene@kernel.org, ldewangan@nvidia.com, agross@kernel.org,
 linux-tegra@vger.kernel.org, thierry.reding@gmail.com,
 bjorn.andersson@linaro.org, shawnguo@kernel.org, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxNC8xMS8yMDE5IDEuNDAsIEFuZGkgU2h5dGkgd3JvdGU6Cj4gSGkgUGV0ZXIsCj4gCj4+
ICAJaWYgKCFpc19wb2xsaW5nKHNkZCkpIHsKPj4gIAkJLyogQWNxdWlyZSBETUEgY2hhbm5lbHMg
Ki8KPj4gLQkJc2RkLT5yeF9kbWEuY2ggPSBkbWFfcmVxdWVzdF9zbGF2ZV9jaGFubmVsX3JlYXNv
bigmcGRldi0+ZGV2LAo+PiAtCQkJCQkJCQkgICJyeCIpOwo+PiArCQlzZGQtPnJ4X2RtYS5jaCA9
IGRtYV9yZXF1ZXN0X2NoYW4oJnBkZXYtPmRldiwgInJ4Iik7Cj4gCj4gSSBoYXZlIGEgbGl0dGxl
IGNvbmNlcm4gaGVyZS4gV2UgaGF2ZSB0d28gZnVuY2lvbnMKPiAnZG1hX3JlcXVlc3RfY2hhbicg
YW5kICAnZG1hX3JlcXVlc3RfY2hhbm5lbCcgZG9uJ3Qgd2UgZW5kIHVwCj4gbWFraW5nIHNvbWUg
Y29uZnVzaW9uIGhlcmU/Cj4gCj4gV291bGRuJ3QgaXQgbWFrZSBtb3JlIHNlbnNlIHJlbmFtaW5n
ICdkbWFfcmVxdWVzdF9jaGFuJyB0bwo+ICdkbWFfcmVxdWVzdF9zbGF2ZV9jaGFubmVsX3JlYXNv
bic/CgpUaGUgZG1hX3JlcXVlc3RfY2hhbm5lbCgpIHNob3VsZCBnbyBhd2F5LiBJdCB3YXMgdGhl
IG9sZCBBUEkgYmVmb3JlIHdlCmdvdCB0aGUgZG1hX3NsYXZlX21hcCBmb3Igbm9uIERUIChhbmQg
bm9uIEFDUEkpIHBsYXRmb3JtcyBzbyB3ZSBjYW4gZ2V0CnJpZCBvZiB0aGUgZmlsdGVyIGZ1bmN0
aW9uIGV4cG9ydHMgZnJvbSBETUEgZHJpdmVycyB0byBjbGllbnRzIGFsbCBvdmVyCnRoZSBwbGFj
ZS4KCkkga25vdyB0aGVyZSBhcmUgdXNlcnMgd2hlcmUgdGhleSBwcm92aWRlIGR1bW15IGZpbHRl
ciBmdW5jdGlvbi4KCkF0IHRoZSBlbmQgdGhlIG1haW4gQVBJIHRvIHJlcXVlc3Qgc2xhdmUgRE1B
IGNoYW5uZWwgc2hvdWxkIGJlCmRtYV9yZXF1ZXN0X2NoYW4oKQpGb3Igbm9uIHNsYXZlIGNoYW5u
ZWxzIChub3QgSFcgdHJpZ2dlcmVkKSB3ZSBoYXZlIGRtYV9yZXF1ZXN0X2NoYW5fYnlfbWFzaygp
CgpJbW9oIHRoZSBkbWFfcmVxdWVzdF9zbGF2ZV9jaGFubmVsX2NvbXBhdCgpIHNob3VsZCBhbHNv
IGdvIGF3YXkgd2l0aCB0aW1lLgoKPiAKPiBUaGFua3MsCj4gQW5kaQo+IAo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
PiAKCi0gUMOpdGVyCgpUZXhhcyBJbnN0cnVtZW50cyBGaW5sYW5kIE95LCBQb3Jra2FsYW5rYXR1
IDIyLCAwMDE4MCBIZWxzaW5raS4KWS10dW5udXMvQnVzaW5lc3MgSUQ6IDA2MTU1MjEtNC4gS290
aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
