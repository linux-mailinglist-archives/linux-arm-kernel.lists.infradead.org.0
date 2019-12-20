Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB4C12777B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 09:48:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MNcb2BLvrXUphO9SyooUQZcLdYHbjyhQ9I5Zd1z8c2A=; b=JOjuJtOCn2XhjX
	aNGExR2GpARkbgd8SmVPirvSbb2T3OqApVM66VQUSWhfLBH5smw7G/8rqYLT53Fi9BLQ5GJDj64TD
	xo+c/dvnNjXCSSoKhwxQuP9RJOUtWmZvKuWKkabseO+Q2q6GIQsFz6LEasDGN9zoI8kl9ope6LsdD
	2Ry6ydBHRgi9LzQ70wP4X22hyb4KWEVilOi80Xaz63XtVtErj4FxK5Jd2a7CZVNm81UgGBVUyZP79
	2qyEIiwUTg6S6haY/CftOQe3zxKvGcQV9QdgAtbEe+eLuIiHA11pnD6/S774kzgbdaD9ZgkRDTCEW
	T5v9XCtEW61qmAlTCSXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiDxa-0005uR-6V; Fri, 20 Dec 2019 08:48:34 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiDx0-0005Yg-1i
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 08:48:00 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBK8lkiC080256;
 Fri, 20 Dec 2019 02:47:46 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576831667;
 bh=Y8SJjnPJ2zTuwuUuXvi/iusPn5VXym1DpE2Ni2sJVGo=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=ttjR8bV7NcwEdlkksg4iqfMbc72kqxA+NZTKn9KmxuhtXaL3iKjJXdhaOe2e/Ezqv
 nbs7Au55+6yRYcCGdvlleszGHyIlbb+kJmuFygZ5ljUOwzoBIN2whH0Z78c5MJHrjJ
 Izudz+vTDeyFhiiD6C7C8kAp+755Iw8c7TO64hFI=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBK8lkr6065686;
 Fri, 20 Dec 2019 02:47:46 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 20
 Dec 2019 02:47:46 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 20 Dec 2019 02:47:46 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBK8lgp6045691;
 Fri, 20 Dec 2019 02:47:43 -0600
Subject: Re: [PATCH v7 04/12] dmaengine: Add metadata_ops for
 dma_async_tx_descriptor
To: Vinod Koul <vkoul@kernel.org>
References: <20191209094332.4047-1-peter.ujfalusi@ti.com>
 <20191209094332.4047-5-peter.ujfalusi@ti.com>
 <20191220083216.GK2536@vkoul-mobl>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <8f66594b-3c4a-dae2-9445-0e7d28e017b8@ti.com>
Date: Fri, 20 Dec 2019 10:48:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191220083216.GK2536@vkoul-mobl>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_004758_896356_F03A6206 
X-CRM114-Status: GOOD (  10.90  )
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

SGkgVmlub2QsCgpPbiAyMC8xMi8yMDE5IDEwLjMyLCBWaW5vZCBLb3VsIHdyb3RlOgo+IEhpIFBl
dGVyLAo+IAo+IE9uIDA5LTEyLTE5LCAxMTo0MywgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cj4gCj4+
ICtpbnQgZG1hZW5naW5lX2Rlc2NfYXR0YWNoX21ldGFkYXRhKHN0cnVjdCBkbWFfYXN5bmNfdHhf
ZGVzY3JpcHRvciAqZGVzYywKPj4gKwkJCQkgICB2b2lkICpkYXRhLCBzaXplX3QgbGVuKQo+PiAr
ewo+PiArCWludCByZXQ7Cj4+ICsKPj4gKwlpZiAoIWRlc2MpCj4+ICsJCXJldHVybiAtRUlOVkFM
Owo+PiArCj4+ICsJcmV0ID0gZGVzY19jaGVja19hbmRfc2V0X21ldGFkYXRhX21vZGUoZGVzYywg
REVTQ19NRVRBREFUQV9DTElFTlQpOwo+PiArCWlmIChyZXQpCj4+ICsJCXJldHVybiByZXQ7Cj4+
ICsKPj4gKwlpZiAoIWRlc2MtPm1ldGFkYXRhX29wcyB8fCAhZGVzYy0+bWV0YWRhdGFfb3BzLT5h
dHRhY2gpCj4+ICsJCXJldHVybiAtRU5PVFNVUFA7Cj4+ICsKPj4gKwlyZXR1cm4gZGVzYy0+bWV0
YWRhdGFfb3BzLT5hdHRhY2goZGVzYywgZGF0YSwgbGVuKTsKPiAKPiB0aGlzIGxvb2tzIGdvb2Qg
dG8gbWUsIG9ubHkgdGhpbmcgaXMgd2Ugc2hvdWxkIGNoZWNrIGlmIHBlb3BsZSBhcmUKPiBtaXhp
bmcgdGhlIG1vZGVzIDopCgpkZXNjX2NoZWNrX2FuZF9zZXRfbWV0YWRhdGFfbW9kZSgpIGRvZXMg
dGhlIGNoZWNraW5nIHRvIG1ha2Ugc3VyZSB0aGF0CnRoZSBtb2RlcyBhcmUgbm90IG1peGVkLgoK
LSBQw6l0ZXIKClRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIs
IDAwMTgwIEhlbHNpbmtpLgpZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFp
a2thL0RvbWljaWxlOiBIZWxzaW5raQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
