Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0519812956D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 12:37:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yVqSEmY6whDtgIMR1vsGiRNRRfNiusMqPHN0Xqgmzs4=; b=pKFf4zgRVVu8pW
	oEjxfvxpIS1JAAKCp1CcFeB/Hryr+uzaSIApYX+O00MJIsBR/GNzWe3ZSy68TrHLbMIqIAck3XsYk
	apLKIAeptYQM/Pi1X/iwmHGD36YBw9zPkEaFDfIJcw3/DIy4aDfspl4/eeec7tU3pYj1/zhEJ0aee
	dW++v//e0uimaqJX7HPsXVb2kjwazLqVHCHZ83a3WpcZ4IX2be2bEFllE23qQEesIyPWz0hNoPI9E
	awb2KPyYqYvSIWR7cI1lClE0H/D5emix6ilGF6OatfEmHEIrkX8AuIpwveRKd81Q0KPqEVSAEEV8P
	nn3GqzR/x6CrNcfLMfRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijM18-0000wn-NG; Mon, 23 Dec 2019 11:36:54 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijM0r-0000pU-48
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 11:36:38 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBNBaQd4076186;
 Mon, 23 Dec 2019 05:36:26 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1577100986;
 bh=7PM2ExdFmOb9fTnrkCAvPvStWpyhC4HlYdlnuYMgkPA=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=aThz1c95Y01tgz3j5uHahRmYXBp091MoH635BZu0AoiA+dT7LaZgv/+Q3tLXAwTVQ
 eE2l2Gdi15/vc3ZGHVFzWR5hRYEJRYFv8vrfOi6AJuqwfFzvzYqQw0emR+58sRb2uC
 lUZ91GQPf/+I1DrqFJjCnu0X9OBdGn9A0FIW5wFQ=
Received: from DFLE110.ent.ti.com (dfle110.ent.ti.com [10.64.6.31])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBNBaQ8p064888
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 23 Dec 2019 05:36:26 -0600
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 23
 Dec 2019 05:36:26 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 23 Dec 2019 05:36:26 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBNBaM2E039852;
 Mon, 23 Dec 2019 05:36:23 -0600
Subject: Re: [PATCH v8 14/18] of: irq: Export of_msi_get_domain
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>, <nm@ti.com>,
 <ssantosh@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
References: <20191223110458.30766-1-peter.ujfalusi@ti.com>
 <20191223110458.30766-15-peter.ujfalusi@ti.com>
Message-ID: <f49e6c3f-804b-27d8-5712-b381be49c3f4@ti.com>
Date: Mon, 23 Dec 2019 13:36:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191223110458.30766-15-peter.ujfalusi@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_033637_294366_A10D42F7 
X-CRM114-Status: GOOD (  17.07  )
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

SGkgTWF0dGhpYXMsCgpPbiAyMy8xMi8yMDE5IDEzLjA0LCBQZXRlciBVamZhbHVzaSB3cm90ZToK
PiBGcm9tOiBNYXR0aGlhcyBCcnVnZ2VyIDxtYXR0aGlhcy5iZ2dAZ21haWwuY29tPgo+IAo+IEV4
cG9ydCBvZl9taXNfZ2V0X2RvbWFpbiB0byBlbmFibGUgaXQgZm9yIHVzZXJzIGZyb20gb3V0c2lk
ZS4KCkZZSSwgSSBoYXZlIHBpY2tlZCB0aGlzIG9sZCBwYXRjaCBmcm9tIHlvdS4gSSBjYW4gbm90
IGZpbmQgdGhlIGhpc3RvcnkKd2h5IGl0IGlzIG5vdCBpbiB0aGUga2VybmVsLi4uCgo+IFNpZ25l
ZC1vZmYtYnk6IE1hdHRoaWFzIEJydWdnZXIgPG1icnVnZ2VyQHN1c2UuY29tPgo+IEFja2VkLWJ5
OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgo+IFNpZ25lZC1vZmYtYnk6IFBldGVyIFVq
ZmFsdXNpIDxwZXRlci51amZhbHVzaUB0aS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvb2YvaXJxLmMg
fCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvb2YvaXJxLmMgYi9kcml2ZXJzL29mL2lycS5jCj4gaW5kZXggYTI5NmVhZjUyYTVi
Li43MzAxNzUwNmVmMDAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9vZi9pcnEuYwo+ICsrKyBiL2Ry
aXZlcnMvb2YvaXJxLmMKPiBAQCAtNjczLDYgKzY3Myw3IEBAIHN0cnVjdCBpcnFfZG9tYWluICpv
Zl9tc2lfZ2V0X2RvbWFpbihzdHJ1Y3QgZGV2aWNlICpkZXYsCj4gIAo+ICAJcmV0dXJuIE5VTEw7
Cj4gIH0KPiArRVhQT1JUX1NZTUJPTF9HUEwob2ZfbXNpX2dldF9kb21haW4pOwo+ICAKPiAgLyoq
Cj4gICAqIG9mX21zaV9jb25maWd1cmUgLSBTZXQgdGhlIG1zaV9kb21haW4gZmllbGQgb2YgYSBk
ZXZpY2UKPiAKCi0gUMOpdGVyCgpUZXhhcyBJbnN0cnVtZW50cyBGaW5sYW5kIE95LCBQb3Jra2Fs
YW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5raS4KWS10dW5udXMvQnVzaW5lc3MgSUQ6IDA2MTU1MjEt
NC4gS290aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
