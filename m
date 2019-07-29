Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A8A78652
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 09:24:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Z6sFM+QBPiPr6G5onDegLQ0gInOqoN8lKHrxYsBDks=; b=SMiIu/QGXMkLp2
	ODPNGW/wgyxhVeN42/qraL9zqxNgJCV6yZCNiI4Kw1Asi2dG+pkJ2ZgvZnC2aDmuWNHHHbC+11Flf
	U2jlemt6ETtwQ/rlJW1tdtOf//S85hsoiIN4/wKegH6dEjWD0ITbjb9a8/gVXqq238ilaMJDxEc92
	mto9qLvN9cOKV3xWSaYUcVZ2Mi1IMzZnzdD+lOoLrOmODDE7zWSOcKwdt6oLiG4p8x/de85JTy9Z6
	LO2JlIyhLca5ka0yz07eUl+4yQKWp4LpDHmVeSIiM7MDOWhQpeHZJeuBkcBNkWGmlJMwxGkbZiIxS
	8EZuKhOwJjAyMAUV5hmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs018-0000VI-Uw; Mon, 29 Jul 2019 07:24:23 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs00o-0000Rj-51
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 07:24:03 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6T7O05q063261;
 Mon, 29 Jul 2019 02:24:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1564385040;
 bh=jyzoUZmqFM2f9WcSg37xGVe3DkW9H2JccRBPXsHov58=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=t3dNsH51xUyl8tOw9CJfzzyw733FrMGYrhqm44RbVCImI/a4CDiawPKu+4VLJrVnp
 X1K4eAvfiJkIBe8UuWY4mXHtelJqmKUr7AZt08CMDTLugGfwgI/YOithDGyKsLZWS/
 ySCsjrBJRg9yBSGYpCDfI3EqGG3ANuu115oGFe3c=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6T7Nxo2125100
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 29 Jul 2019 02:24:00 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 29
 Jul 2019 02:23:59 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 29 Jul 2019 02:23:59 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6T7Nu8Y044640;
 Mon, 29 Jul 2019 02:23:57 -0500
Subject: Re: [PATCH v5 0/3] dmaengine: ti: edma: Polled completion support
To: Vinod Koul <vkoul@kernel.org>
References: <20190716082655.1620-1-peter.ujfalusi@ti.com>
 <20190729064209.GF12733@vkoul-mobl.Dlink>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <fe201b5b-916d-1889-31b0-dcac20733b65@ti.com>
Date: Mon, 29 Jul 2019 10:24:00 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729064209.GF12733@vkoul-mobl.Dlink>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_002402_316148_EE26BCFA 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Vmlub2QsCgpPbiAyOS8wNy8yMDE5IDkuNDIsIFZpbm9kIEtvdWwgd3JvdGU6Cj4gT24gMTYtMDct
MTksIDExOjI2LCBQZXRlciBVamZhbHVzaSB3cm90ZToKPj4gSGksCj4+Cj4+IENoYW5nZXMgc2lu
Y2UgdjQ6Cj4+IC0gU3BsaXQgdGhlIERNQV9DT01QTEVURSBhbmQgIXR4c3RhdGUgY2hlY2sgYXMg
Vmlub2Qgc3VnZ2VzdGVkCj4+Cj4+IENoYW5nZSBzaW5jZSB2MzoKPj4gLSBmaXggRE1BIHBvaW50
ZXIgdHJhY2tpbmcgZm9yIG1lbWNweQo+PiAtIGNvbXBsZXRpb24gcG9sbGluZyBpcyBvbmx5IGRv
bmUgd2hlbiBpdCBpcyBhc2tlZCBieSBub3QgcHJvdmlkaW5nCj4+ICAgRE1BX1BSRVBfSU5URVJS
VVBUIGZvciBtZW1jcHkKPj4KPj4gQ2hhbmdlcyBzaW5jZSB2MjoKPj4gLSBGaXggdHlwbyBpbiB0
aGUgY29tbWVudCBmb3IgcGF0Y2ggMAo+Pgo+PiBDaGFuZ2VzIHNpbmNlIHYxOgo+PiAtIENsZWFu
dXAgcGF0Y2ggZm9yIHRoZSBhcnJheSByZWdpc3RlciBoYW5kbGluZwo+PiAtIHR5cG8gZml4ZWQg
aW4gcGF0Y2gyIGNvbW1pdCBtZXNzYWdlCj4+Cj4+IFRoZSBjb2RlIGFyb3VuZCB0aGUgYXJyYXkg
cmVnaXN0ZXIgYWNjZXNzIHdhcyBwcmV0dHkgY29uZnVzaW5nIGZvciB0aGUgZmlyc3QKPj4gbG9v
aywgc28gY2xlYW4gdGhlbSB1cCBmaXJzdCB0aGVuIHVzZSB0aGUgY2xlYW5lciB3YXkgaW4gdGhl
IHBvbGxlZCBoYW5kbGluZy4KPj4KPj4gV2hlbiBhIERNQSBjbGllbnQgZHJpdmVyIGRvZXMgbm90
IHNldCB0aGUgRE1BX1BSRVBfSU5URVJSVVBUIGJlY2F1c2UgaXQKPj4gZG9lcyBub3Qgd2FudCB0
byB1c2UgaW50ZXJydXB0cyBmb3IgRE1BIGNvbXBsZXRpb24gb3IgYmVjYXVzZSBpdCBjYW4gbm90
Cj4+IHJlbHkgb24gRE1BIGludGVycnVwdHMgZHVlIHRvIGV4ZWN1dGluZyB0aGUgbWVtY3B5IHdo
ZW4gaW50ZXJydXB0cyBhcmUKPj4gZGlzYWJsZWQgaXQgd2lsbCBwb2xsIHRoZSBzdGF0dXMgb2Yg
dGhlIHRyYW5zZmVyLgo+Pgo+PiBTaW5jZSB3ZSBjYW4gbm90IHRlbGwgZnJvbSBhbnkgRURNQSBy
ZWdpc3RlciB0aGF0IHRoZSB0cmFuc2ZlciBpcwo+PiBjb21wbGV0ZWQsIHdlIGNhbiBvbmx5IGtu
b3cgdGhhdCB0aGUgcGFSQU0gc2V0IGhhcyBiZWVuIHNlbnQgdG8gVFBUQyBmb3IKPj4gcHJvY2Vz
c2luZyB3ZSBuZWVkIHRvIGNoZWNrIHRoZSByZXNpZHVlIG9mIHRoZSB0cmFuc2ZlciwgaWYgaXQg
aXMgMCB0aGVuCj4+IHRoZSB0cmFuc2ZlciBpcyBjb21wbGV0ZWQuCj4+Cj4+IFRoZSBwb2xsZWQg
Y29tcGxldGlvbiBjYW4gYnZlIHRlc3RlZCBieSBhcHBseWluZzoKPj4gaHR0cHM6Ly9wYXRjaHdv
cmsua2VybmVsLm9yZy9wYXRjaC8xMDk2NjQ5OS8KClNob3VsZCBJIHJlc2VuZCB0aGlzIHBhdGNo
IHNvIHRoZSBwb2xsZWQgbW9kZSBjYW4gYmUgdGVzdGVkIGluIHVwc3RyZWFtPwoKLSBQw6l0ZXIK
ClRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhl
bHNpbmtpLgpZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWlj
aWxlOiBIZWxzaW5raQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
