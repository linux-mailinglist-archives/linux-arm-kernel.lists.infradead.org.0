Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6DBA73C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 21:38:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dazqxaefKAuZk1Dt5iDNIxrt1kTrWolBVjzv9914qS0=; b=ia7hl132t5+IDY
	U6JhMeHq/KztyqZYHp6QRnjtbcZ/QqII+cY5iZCUWqtCWa5NcQSgEMQfcynj7G+78hyQbVFeYaI8x
	5R95WH26WRgyFuWx952RFcVrc0gNHcaEabkZYRq7ggQ8SixfRkwgU3R7OZKXIG6Kvpo4Jrz/L+YXS
	Fgnl9qqSjDvkYlaXFb+Vozv3tStCtU4xJQeHPDKxLnuGIXqBK8yUEjYrH/CwP1LpAY7FvBkLr3QkY
	Q9SP+FKFIfKyS/+UsOGp7zQrSkhV3jFSgVdqWev8MwLw5+WY/HbFuVCxAcCTLesxMPbYxMFRn0Ni7
	2nmRwLBgS0fDEMp5VYyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5EdE-0004OZ-6z; Tue, 03 Sep 2019 19:38:24 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Ed1-0004Nl-BX
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 19:38:13 +0000
Received: by mail-pf1-x443.google.com with SMTP id w22so3018241pfi.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 12:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=EJ9I9HAOX6SGbi4tUItHhu+Xn40g6wBb8VQfCiKS7Nw=;
 b=gFPWyt0hDNd8KKYbQE5TmSELtqwJFN4Ot2eQAZjTEbv/TU5W4IQkD/442WNRMVM/hM
 ir/X6QEY6uZQoLgAPJs2Hh0Rb7P+UI72LO+/8rV1oBvK3Yo8pj1qBkiH2Ncro4qrSapp
 vDuBIfMLUSxEdq1NyF5f6+a7ihHlFJJgjWVzZj9renyf5gNXQn5P9RHmpBMOlJbMZ+zL
 D1qsk68QCx4pZ9s0yRNZ8viWnkza5JLtDjUnTGuZJXvlk+D6s0u5OZosFiS+kXN71uAx
 mIPPnMfF6VI9Jbu2F15yR/FbSLFX3xSjf63pfBi47qdZE3h6aOC34UZIYCLsYlRh2EJY
 P7rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=EJ9I9HAOX6SGbi4tUItHhu+Xn40g6wBb8VQfCiKS7Nw=;
 b=Vkfx7yVsPi+JuN1dF3bOMxss9yjCOlYcJS7mTmeO9Lc7FEY0rmt7yxBiVSqIFVN4Ds
 sPMtFtFtO+du+SJhTw5o3EKtF6PhD//4n7Ss+2KrT9Vwewki8dTGyeuhGjncuwYCBKDr
 YVaq7pVThH0wLUqSXa9ViJ1xPf02RtW249Ljr1QotYlaurgzeHYrAl1JKiUUTZqYtCh6
 TsfVg8pN7t0BGIs+kf4FW9rUEiZv4Qq90L512/EEy9rmXwDguegVzYnwhaafmK96WIYM
 LYXYjPVLSL3UW2yujel0ZFVU7ibWuh6KYPdJsaoPt2pR6OuMkS+bN0BRio9WeG8Gfi9B
 /sgw==
X-Gm-Message-State: APjAAAWPanR3NbTpCwZlH/ybKSpq97btITc1x0e2BFkZ7PuOweMPqW5P
 Tp+pVM3NhO401PAOJ6IaUOkvCg==
X-Google-Smtp-Source: APXvYqyNUnEV/nDki7Zpj1Ie7DixMOHJ7RP9KGaXlTPpJHvGZPr+1gO4Z2oMH+0GgdcrnnV++OHNSA==
X-Received: by 2002:a17:90a:b303:: with SMTP id
 d3mr1048885pjr.28.1567539490293; 
 Tue, 03 Sep 2019 12:38:10 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id a11sm308928pju.2.2019.09.03.12.38.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 03 Sep 2019 12:38:09 -0700 (PDT)
Date: Tue, 3 Sep 2019 13:38:07 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v2 11/11] coresight: etm4x: docs: Adds detailed document
 for programming etm4x.
Message-ID: <20190903193807.GA25787@xps15>
References: <20190829213321.4092-1-mike.leach@linaro.org>
 <20190829213321.4092-12-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829213321.4092-12-mike.leach@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_123811_436727_64D7EE0B 
X-CRM114-Status: GOOD (  28.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: corbet@lwn.net, gregkh@linuxfoundation.org, coresight@lists.linaro.org,
 suzuki.poulose@arm.com, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWlrZSwKCk9uIFRodSwgQXVnIDI5LCAyMDE5IGF0IDEwOjMzOjIxUE0gKzAxMDAsIE1pa2Ug
TGVhY2ggd3JvdGU6Cj4gQWRkIGluIGRldGFpbGVkIHByb2dyYW1tZXJzIHJlZmVyZW5jZSBmb3Ig
dXNlcnMgd2FudGluZyB0byBwcm9ncmFtIHRoZQo+IENvcmVTaWdodCBFVE0gNC54IGRyaXZlciB1
c2luZyBzeXNmcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNaWtlIExlYWNoIDxtaWtlLmxlYWNoQGxp
bmFyby5vcmc+Cj4gLS0tCj4gIC4uLi9jb3Jlc2lnaHQvY29yZXNpZ2h0LWV0bTR4LXJlZmVyZW5j
ZS50eHQgICB8IDQ1OCArKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDQ1OCBp
bnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL3RyYWNlL2Nv
cmVzaWdodC9jb3Jlc2lnaHQtZXRtNHgtcmVmZXJlbmNlLnR4dAo+IAo+IGRpZmYgLS1naXQgYS9E
b2N1bWVudGF0aW9uL3RyYWNlL2NvcmVzaWdodC9jb3Jlc2lnaHQtZXRtNHgtcmVmZXJlbmNlLnR4
dCBiL0RvY3VtZW50YXRpb24vdHJhY2UvY29yZXNpZ2h0L2NvcmVzaWdodC1ldG00eC1yZWZlcmVu
Y2UudHh0Cj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAuLmYwYzM3
MDg3MDk5Mgo+IC0tLSAvZGV2L251bGwKPiArKysgYi9Eb2N1bWVudGF0aW9uL3RyYWNlL2NvcmVz
aWdodC9jb3Jlc2lnaHQtZXRtNHgtcmVmZXJlbmNlLnR4dAo+IEBAIC0wLDAgKzEsNDU4IEBACj4g
K0VUTXY0IHN5c2ZzIGxpbnV4IGRyaXZlciBwcm9ncmFtbWluZyByZWZlcmVuY2UgLSB2Mi4KPiAr
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+ICsK
PiArU3VwcGxlbWVudCB0byBleGlzdGluZyBFVE12NCBkcml2ZXIgZG9jdW1lbnRhdGlvbi4KPiAr
Cj4gK1N5c2ZzIGZpbGVzIGFuZCBkaXJlY3Rvcmllcwo+ICstLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KPiArCj4gK1Jvb3Q6IC9zeXMvYnVzL2NvcmVzaWdodC9kZXZpY2VzL2V0bTxOPgo+ICsK
PiArCj4gK1RoZSBmb2xsb3dpbmcgcGFyYWdyYXBocyBleHBsYWluIHRoZSBhc3NvY2lhdGlvbiBi
ZXR3ZWVuIHN5c2ZzIGZpbGVzIGFuZCB0aGUKPiArRVRNdjQgcmVnaXN0ZXJzIHRoYXQgdGhleSBl
ZmZlY3QuIE5vdGUgdGhlIHJlZ2lzdGVyIG5hbWVzIGFyZSBnaXZlbiB3aXRob3V0Cj4gK3RoZSDi
gJhUUkPigJkgcHJlZml4Lgo+ICsKPiArRmlsZQkJOiBtb2RlIChydykKPiArVHJhY2UgUmVnaXN0
ZXJzCToge0NPTkZJR1IgKyBvdGhlcnN9Cj4gK05vdGVzCQk6IEJpdCBzZWxlY3QgdHJhY2UgZmVh
dHVyZXMuIFNlZSDigJhtb2Rl4oCZIHNlY3Rpb24gYmVsb3cuIEJpdHMKPiArCQlpbiB0aGlzIHdp
bGwgY2F1c2UgZXF1aXZhbGVudCBwcm9ncmFtbWluZyBvZiB0cmFjZSBjb25maWcgYW5kCj4gKwkJ
b3RoZXIgcmVnaXN0ZXJzIHRvIGVuYWJsZSB0aGUgZmVhdHVyZXMgcmVxdWVzdGVkLgo+ICtTeW50
YXggJiBlZwk6ICdlY2hvIGJpdGZpZWxkID4gbW9kZScKPiArCQliaXRmaWVsZCB1cCB0byAzMiBi
aXRzIHNldHRpbmcgdHJhY2UgZmVhdHVyZXMuCj4gK0V4YW1wbGUJCTogJD4gZWNobyAweCA+IG1v
ZGUKCkkgc3VzcGVjdCB0aGluZ3MgbG9vayBkaWZmZXJlbnQgb24geW91ciBlbmQgdGhhbiB0aGV5
IGRvIG9uIG1pbmUuICBUaGUgYmlnZ2VzdApwcm9ibGVtIGlzIHJlbGF0ZWQgdG8gbXVsdGktbGlu
ZSBmaWVsZHMuICBGb3IgaW5zdGFuY2UgdGhlIGFib3ZlIGxvb2tzIGxpa2UgdGhpcwpvbiBteSBz
aWRlOgoKRmlsZSAgICAgICAgICAgIDogbW9kZSAocncpClRyYWNlIFJlZ2lzdGVycyA6IHtDT05G
SUdSICsgb3RoZXJzfSAKTm90ZXMgICAgICAgICAgIDogQml0IHNlbGVjdCB0cmFjZSBmZWF0dXJl
cy4gU2VlIOKAmG1vZGXigJkgc2VjdGlvbiBiZWxvdy4gQml0cwogICAgICAgICAgICAgICAgaW4g
dGhpcyB3aWxsIGNhdXNlIGVxdWl2YWxlbnQgcHJvZ3JhbW1pbmcgb2YgdHJhY2UgY29uZmlnIGFu
ZAogICAgICAgICAgICAgICAgb3RoZXIgcmVnaXN0ZXJzIHRvIGVuYWJsZSB0aGUgZmVhdHVyZXMg
cmVxdWVzdGVkLgpTeW50YXggJiBlZyAgICAgOiAnZWNobyBiaXRmaWVsZCA+IG1vZGUnCiAgICAg
ICAgICAgICAgICBiaXRmaWVsZCB1cCB0byAzMiBiaXRzIHNldHRpbmcgdHJhY2UgZmVhdHVyZXMu
CkV4YW1wbGUgICAgICAgICA6ICQ+IGVjaG8gMHggPiBtb2RlCgpJdCB3b3VsZCBiZSBuaWNlciB0
byBoYXZlIG11bHRpLWxpbmUgZmllbGRzIGFsaWduZWQgd2l0aCB0aGUgZmlyc3QgbGluZSwgc3Vj
aAphczoKCkZpbGUgICAgICAgICAgICA6IG1vZGUgKHJ3KQpUcmFjZSBSZWdpc3RlcnMgOiB7Q09O
RklHUiArIG90aGVyc30gCk5vdGVzICAgICAgICAgICA6IEJpdCBzZWxlY3QgdHJhY2UgZmVhdHVy
ZXMuIFNlZSDigJhtb2Rl4oCZIHNlY3Rpb24gYmVsb3cuIEJpdHMKICAgICAgICAgICAgICAgICAg
aW4gdGhpcyB3aWxsIGNhdXNlIGVxdWl2YWxlbnQgcHJvZ3JhbW1pbmcgb2YgdHJhY2UgY29uZmln
IGFuZAogICAgICAgICAgICAgICAgICBvdGhlciByZWdpc3RlcnMgdG8gZW5hYmxlIHRoZSBmZWF0
dXJlcyByZXF1ZXN0ZWQuClN5bnRheCAmIGVnICAgICA6ICdlY2hvIGJpdGZpZWxkID4gbW9kZScK
ICAgICAgICAgICAgICAgICAgYml0ZmllbGQgdXAgdG8gMzIgYml0cyBzZXR0aW5nIHRyYWNlIGZl
YXR1cmVzLgpFeGFtcGxlICAgICAgICAgOiAkPiBlY2hvIDB4ID4gbW9kZQoKSSdtIGFsc28gbm90
IHN1cmUgYWJvdXQgdGhlIHByb21wdCwgaS5lICIkPiIuICBJIHN1c3BlY3QgaXQgc2hvdWxkIGJl
ICIkIiBhbmQKYW4gYWRkaXRpb25hbCAiPiIgZ290IGluc2VydGVkLgoKSSB3YW50ZWQgdG8gcmVh
ZCBvbiBidXQgaXMgaXQgdG9vIGRpZmZpY3VsdCB0byBrbm93IHdoYXQgaXMgaW50ZW50aW9uYWwg
YW5kIHdoYXQKaXNuJ3QuICBQbGVhc2UgYWRkcmVzcyBhbmQgcmVzZW5kLgoKVGhhbmtzLApNYXRo
aWV1Cgo+ICsKPiArRmlsZQkJOiByZXNldCAod28pCj4gK1RyYWNlIFJlZ2lzdGVycwk6IEFsbAo+
ICtOb3RlcwkJOiBSZXNldCBhbGwgcHJvZ3JhbW1pbmcgdG8gdHJhY2Ugbm90aGluZyAvIG5vIGxv
Z2ljIHByb2dyYW1tZWQuCj4gK1N5bnRheAkJOiAnZWNobyAxID4gcmVzZXQnCj4gKwo+ICtGaWxl
CQk6IGVuYWJsZV9zb3VyY2UgKHdvKQo+ICtUcmFjZSBSZWdpc3RlcnMJOiBQUkdDVExSLCBBbGwg
aGFyZHdhcmUgcmVncy4KPiArTm90ZXMJCTogID4wOiBQcm9ncmFtcyB1cCB0aGUgaGFyZHdhcmUg
d2l0aCB0aGUgY3VycmVudCB2YWx1ZXMgaGVsZCBpbgo+ICsJCXRoZSBkcml2ZXIgYW5kIGVuYWJs
ZXMgdHJhY2UuCj4gKwkJMDogZGlzYWJsZSB0cmFjZSBoYXJkd2FyZS4KPiArU3ludGF4CQk6ICdl
Y2hvIDEgPiBlbmFibGVfc291cmNlJwo+ICsKPiArRmlsZQkJOiBjcHUgKHJvKQo+ICtUcmFjZSBS
ZWdpc3RlcnMJOiBOb25lLgo+ICtOb3RlcwkJOiBDUFUgSUQgdGhhdCB0aGlzIEVUTSBpcyBhdHRh
Y2hlZCB0by4KPiArRXhhbXBsZQkJOiQ+IGNhdCBjcHUKPiArCQkkPiAwCj4gKwo+ICtGaWxlCQk6
IGFkZHJfaWR4IChydykKPiArVHJhY2UgUmVnaXN0ZXJzCTogTm9uZS4KPiArTm90ZXMJCTogVmly
dHVhbCByZWdpc3RlciB0byBpbmRleCBhZGRyZXNzIGNvbXBhcmF0b3IgYW5kIHJhbmdlCj4gKwkJ
ZmVhdHVyZXMuIFNldCBpbmRleCBmb3IgZmlyc3Qgb2YgdGhlIHBhaXIgaW4gYSByYW5nZS4KPiAr
U3ludGF4CQk6ICdlY2hvIGlkeCA+IGFkZHJfaWR4Jwo+ICsJCVdoZXJlIGlkeCA8wqAgbnJfYWRk
cl9jbXAgeCAyCj4gKwo+ICtGaWxlCQk6IGFkZHJfcmFuZ2UgKHJ3KQo+ICtUcmFjZSBSZWdpc3Rl
cnMJOiBBQ1ZSW2lkeCwgaWR4KzFdLCBWSUlFQ1RMUgo+ICtOb3RlcwkJOiBQYWlyIG9mIGFkZHJl
c3NlcyBmb3IgYSByYW5nZSBzZWxlY3RlZCBieSBhZGRyX2lkeC4gSW5jbHVkZQo+ICsJCS8gZXhj
bHVkZSBhY2NvcmRpbmcgdG8gdGhlIG9wdGlvbmFsIHBhcmFtZXRlciwgb3IgaWYgb21pdHRlZAo+
ICsJCXVzZXMgdGhlIGN1cnJlbnQg4oCYbW9kZeKAmSBzZXR0aW5nLiBTZWxlY3QgY29tcGFyYXRv
ciByYW5nZSBpbgo+ICsJCWNvbnRyb2wgcmVnaXN0ZXIuIEVycm9yIGlmIGluZGV4IGlzIG9kZCB2
YWx1ZS4KPiArRGVwZW5kcwkJOiBtb2RlLCBhZGRyX2lkeAo+ICtTeW50YXgJCTogJ2VjaG8gYWRk
cjEgYWRkcjIgW2V4Y2x1ZGVdID4gYWRkcl9yYW5nZScKPiArCQlXaGVyZSBhZGRyMSBhbmQgYWRk
cjIgZGVmaW5lIHRoZSByYW5nZSBhbmQgYWRkcjEgPCBhZGRyMi4KPiArCQlPcHRpb25hbCBleGNs
dWRlIHZhbHVlIC0gMCBmb3IgaW5jbHVkZSwgMSBmb3IgZXhjbHVkZS4KPiArRXhhbXBsZQkJOiAk
PiBlY2hvIDB4MDAwMCAweDIwMDAgMCA+IGFkZHJfcmFuZ2UKPiArCj4gK0ZpbGUJCTogYWRkcl9z
aW5nbGUgKHJ3KQo+ICtUcmFjZSBSZWdpc3RlcnMJOiBBQ1ZSW2lkeF0KPiArTm90ZXMJCTogU2V0
IGEgc2luZ2xlIGFkZHJlc3MgY29tcGFyYXRvciBhY2NvcmRpbmcgdG8gYWRkcl9pZHguIFRoaXMK
PiArCQlpcyB1c2VkIGlmIHRoZSBhZGRyZXNzIGNvbXBhcmF0b3IgaXMgdXNlZCBhcyBwYXJ0IG9m
IGV2ZW50Cj4gKwkJZ2VuZXJhdGlvbiBsb2dpYyBldGMuCj4gK0RlcGVuZHMJCTogYWRkcl9pZHgK
PiArU3ludGF4CQk6ICdlY2hvIGFkZHIxID4gYWRkcl9zaW5nbGUnCj4gKwo+ICtGaWxlCQk6IGFk
ZHJfc3RhcnQgKHJ3KQo+ICtUcmFjZSBSZWdpc3RlcnMJOiBBQ1ZSW2lkeF0sIFZJU1NDVExSCj4g
K05vdGVzCQk6IFNldCBhIHRyYWNlIHN0YXJ0IGFkZHJlc3MgY29tcGFyYXRvciBhY2NvcmRpbmcg
dG8gYWRkcl9pZHguCj4gKwkJU2VsZWN0IGNvbXBhcmF0b3IgaW4gY29udHJvbCByZWdpc3Rlci4K
PiArRGVwZW5kcwkJOiBhZGRyX2lkeAo+ICtTeW50YXgJCTogJ2VjaG8gYWRkcjEgPiBhZGRyX3N0
YXJ0Jwo+ICsKPiArRmlsZQkJOiBhZGRyX3N0b3AgKHJ3KQo+ICtUcmFjZSBSZWdpc3RlcnMJOiBB
Q1ZSW2lkeF0sIFZJU1NDVExSCj4gK05vdGVzCQk6IFNldCBhIHRyYWNlIHN0b3AgYWRkcmVzcyBj
b21wYXJhdG9yIGFjY29yZGluZyB0byBhZGRyX2lkeC4KPiArCQlTZWxlY3QgY29tcGFyYXRvciBp
biBjb250cm9sIHJlZ2lzdGVyLgo+ICtEZXBlbmRzCQk6IGFkZHJfaWR4Cj4gK1N5bnRheAkJOiAn
ZWNobyBhZGRyMSA+IGFkZHJfc3RvcCcKPiArCj4gK0ZpbGUJCTogYWRkcl9jb250ZXh0IChydykK
PiArVHJhY2UgUmVnaXN0ZXJzCTogQUNBVFJbaWR4LHs2OjR9XQo+ICtOb3RlcwkJOiBMaW5rIGNv
bnRleHQgSUQgY29tcGFyYXRvciB0byBhZGRyZXNzIGNvbXBhcmF0b3IgYWRkcl9pZHgKPiArRGVw
ZW5kcwkJOiBhZGRyX2lkeC4KPiArU3ludGF4CQk6ICdlY2hvIGN0eHRfaWR4ID4gYWRkcl9jb250
ZXh0Jwo+ICsJCVdoZXJlIGN0eHRfaWR4IGlzIHRoZSBpbmRleCBvZiB0aGUgbGlua2VkIGNvbnRl
eHQgaWQgLyB2bWlkCj4gKwkJY29tcGFyYXRvci4KPiArCj4gK0ZpbGUJCTogYWRkcl9jdHh0eXBl
IChydykKPiArVHJhY2UgUmVnaXN0ZXJzCTogQUNBVFJbaWR4LHszOjJ9XQo+ICtOb3RlcwkJOiBJ
bnB1dCB2YWx1ZSBzdHJpbmcuIFNldCB0eXBlIGZvciBsaW5rZWQgY29udGV4dCBJRCBjb21wYXJh
dG9yCj4gK0RlcGVuZHMJCTogYWRkcl9pZHgKPiArU3ludGF4CQk6ICdlY2hvIHR5cGUgPiBhZGRy
X2N0eHR5cGUnCj4gKwkJVHlwZSBvbmUgb2Yge2FsbCwgdm1pZCwgY3R4aWQsIG5vbmV9Cj4gK0V4
YW1wbGUJCTogJD4gZWNobyBjdHhpZCA+IGFkZHJfY3R4dHlwZQo+ICsKPiArRmlsZQkJOiBhZGRy
X2V4bGV2ZWxfc19ucyAocncpCj4gK1RyYWNlIFJlZ2lzdGVycwk6IEFDQVRSW2lkeCx7MTQ6OH1d
Cj4gK05vdGVzCQk6IFNldCB0aGUgRUx4IHNlY3VyZSBhbmQgbm9uLXNlY3VyZSBtYXRjaGluZyBi
aXRzIGZvciB0aGUKPiArCQlzZWxlY3RlZCBhZGRyZXNzIGNvbXBhcmF0b3IKPiArRGVwZW5kcwkJ
OiBhZGRyX2lkeAo+ICtTeW50YXgJCTogJ2VjaG8gdmFsID4gYWRkcl9leGxldmVsX3NfbnMnCj4g
KwkJdmFsIGlzIGEgNyBiaXQgdmFsdWUgZm9yIGV4Y2VwdGlvbiBsZXZlbHMgdG8gZXhjbHVkZS4g
SW5wdXQKPiArCQl2YWx1ZSBzaGlmdGVkIHRvIGNvcnJlY3QgYml0cyBpbiByZWdpc3Rlci4KPiAr
RXhhbXBsZQkJOiAkPiBlY2hvIDB4NEYgPiBhZGRyX2V4bGV2ZWxfc19ucwo+ICsKPiArRmlsZQkJ
OiBhZGRyX2luc3RkYXRhdHlwZSAocncpCj4gK1RyYWNlIFJlZ2lzdGVycwk6IEFDQVRSW2lkeCx7
MTowfV0KPiArTm90ZXMJCTogU2V0IHRoZSBjb21wYXJhdG9yIGFkZHJlc3MgdHlwZSBmb3IgbWF0
Y2hpbmcuIERyaXZlciBvbmx5Cj4gKwkJc3VwcG9ydHMgc2V0dGluZyBpbnN0cnVjdGlvbiBhZGRy
ZXNzIHR5cGUuCj4gK0RlcGVuZHMJCTogYWRkcl9pZHgKPiArCj4gK0ZpbGUJCTogYWRkcl9jbXBf
dmlldyAocm8pCj4gK1RyYWNlIFJlZ2lzdGVycwk6IEFDVlJbaWR4LCBpZHgrMV0sIEFDQVRSW2lk
eF0sIFZJSUVDVExSCj4gK05vdGVzCQk6IFJlYWQgdGhlIGN1cnJlbnRseSBzZWxlY3RlZCBhZGRy
ZXNzIGNvbXBhcmF0b3IuIElmIHBhcnQgb2YKPiArCQlhZGRyZXNzIHJhbmdlIHRoZW4gZGlzcGxh
eSBib3RoIGFkZHJlc3Nlcy4KPiArRGVwZW5kcwkJOiBhZGRyX2lkeAo+ICtTeW50YXgJCTogJ2Nh
dCBhZGRyX2NtcF92aWV3Jwo+ICtFeGFtcGxlCQk6ICQ+IGNhdCBhZGRyX2NtcF92aWV3Cj4gKwkJ
YWRkcl9jbXBbMF0gcmFuZ2UgMHgwIDB4ZmZmZmZmZmZmZmZmZmZmZiBpbmNsdWRlIGN0cmwoMHg0
YjAwKQo+ICsKPiArRmlsZQkJOiBucl9hZGRyX2NtcCAocm8pCj4gK1RyYWNlIFJlZ2lzdGVycwk6
IEZyb20gSURSNAo+ICtOb3RlcwkJOiBOdW1iZXIgb2YgYWRkcmVzcyBjb21wYXJhdG9yIHBhaXJz
Cj4gKwo+ICtGaWxlCQk6IHNzaG90X2lkeCAocncpCj4gK1RyYWNlIFJlZ2lzdGVycwk6IE5vbmUK
PiArTm90ZXMJCTogU2VsZWN0wqAgc2luZ2xlIHNob3QgcmVnaXN0ZXIgc2V0Lgo+ICsKPiArRmls
ZQkJOiBzc2hvdF9jdHJsIChydykKPiArVHJhY2UgUmVnaXN0ZXJzCTogU1NDQ1JbaWR4XQo+ICtO
b3RlcwkJOiBBY2Nlc3MgYSBzaW5nbGUgc2hvdCBjb21wYXJhdG9yIGNvbnRyb2wgcmVnaXN0ZXIu
Cj4gK0RlcGVuZHMJCTogc3Nob3RfaWR4Cj4gK1N5bnRheAkJOiAnZWNobyB2YWwgPiBzc2hvdF9j
dHJsJwo+ICsJCVdyaXRlcyB2YWwgaW50byB0aGUgc2VsZWN0ZWQgY29udHJvbCByZWdpc3Rlci4K
PiArCj4gK0ZpbGUJCTogc3Nob3Rfc3RhdHVzIChybykKPiArVHJhY2UgUmVnaXN0ZXJzCTogU1ND
U1JbaWR4XQo+ICtOb3RlcwkJOiBSZWFkIGEgc2luZ2xlIHNob3QgY29tcGFyYXRvciBzdGF0dXMg
cmVnaXN0ZXIKPiArRGVwZW5kcwkJOiBzc2hvdF9pZHgKPiArU3ludGF4CQk6ICdjYXQgc3Nob3Rf
c3RhdHVzJwo+ICsJCVJlYWQgc3RhdHVzLgo+ICtFeGFtcGxlCQk6ICQ+IGNhdCBzc2hvdF9zdGF0
dXMKPiArCQkweDEKPiArCj4gK0ZpbGUJCTogc3Nob3RfcGVfY3RybCAocncpCj4gK1RyYWNlIFJl
Z2lzdGVycwk6IFNTUENJQ1JbaWR4XQo+ICtOb3RlcwkJOiBBY2Nlc3MgYSBzaW5nbGUgc2hvdCBQ
RSBjb21wYXJhdG9yIGlucHV0IGNvbnRyb2wgcmVnaXN0ZXIuCj4gK0RlcGVuZHMJCTogc3Nob3Rf
aWR4Cj4gK1N5bnRheAkJOiBlY2hvIHZhbCA+IHNzaG90X3BlX2N0cmwKPiArCQlXcml0ZXMgdmFs
IGludG8gdGhlIHNlbGVjdGVkIGNvbnRyb2wgcmVnaXN0ZXIuCj4gKwo+ICtGaWxlCQk6IG5zX2V4
bGV2ZWxfdmluc3QgKHJ3KQo+ICtUcmFjZSBSZWdpc3RlcnMJOiBWSUNUTFJ7MjM6MjB9Cj4gK05v
dGVzCQk6IFByb2dyYW0gbm9uLXNlY3VyZSBleGNlcHRpb24gbGV2ZWwgZmlsdGVycy4gU2V0IC8g
Y2xlYXIgTlMKPiArCQlleGNlcHRpb24gZmlsdGVyIGJpdHMuIFNldHRpbmcg4oCYMeKAmSBleGNs
dWRlcyB0cmFjZSBmcm9tIHRoZQo+ICsJCWV4Y2VwdGlvbiBsZXZlbC4KPiArU3ludGF4CQk6ICdl
Y2hvIGJpdGZpZWxkID4gbnNfZXhsZXZlbF92aWluc3QnCj4gKwkJV2hlcmUgYml0ZmllbGQgY29u
dGFpbnMgYml0cyB0byBzZXQgY2xlYXIgZm9yIEVMMCB0byBFTDIKPiArRXhhbXBsZQkJOiAlPiBl
Y2hvIDB4NCA+IG5zX2V4bGV2ZWxfdmlpbnN0Cj4gKwkJOyBFeGNsdWRlIEVMMiBOUyB0cmFjZS4K
PiArCj4gK0ZpbGUJCTogdmluc3RfcGVfY21wX3N0YXJ0X3N0b3AgKHJ3KQo+ICtUcmFjZSBSZWdp
c3RlcnMJOiBWSVBDU1NDVExSCj4gK05vdGVzCQk6IEFjY2VzcyBQRSBzdGFydCBzdG9wIGNvbXBh
cmF0b3IgaW5wdXQgY29udHJvbCByZWdpc3RlcnMKPiArCj4gK0ZpbGUJCTogYmJfY3RybCAocncp
Cj4gK1RyYWNlIFJlZ2lzdGVycwk6IEJCQ1RMUgo+ICtOb3RlcwkJOiBEZWZpbmUgcmFuZ2VzIHRo
YXQgQnJhbmNoIEJyb2FkY2FzdCB3aWxsIG9wZXJhdGUgaW4uCj4gKwkJRGVmYXVsdCAoMHgwKSBp
cyBhbGwgYWRkcmVzc2VzLgo+ICtEZXBlbmRzCQk6IEJCIGVuYWJsZWQuCj4gKwo+ICtGaWxlCQk6
IGN5Y190aHJlc2hvbGQgKHJ3KQo+ICtUcmFjZSBSZWdpc3RlcnMJOiBDQ0NUTFIKPiArTm90ZXMJ
CTogU2V0IHRoZSB0aHJlc2hvbGQgZm9yIHdoaWNoIGN5Y2xlIGNvdW50cyB3aWxsIGJlIGVtaXR0
ZWQuCj4gKwkJRXJyb3IgaWYgYXR0ZW1wdCB0byBzZXQgYmVsb3cgbWluaW11bSBkZWZpbmVkIGlu
IElEUjMsIG1hc2tlZAo+ICsJCXRvIHdpZHRoIG9mIHZhbGlkIGJpdHMuCj4gK0RlcGVuZHMJCTog
Q0MgZW5hYmxlZC4KPiArCj4gK0ZpbGUJCTogc3luY2ZyZXEgKHJ3KQo+ICtUcmFjZSBSZWdpc3Rl
cnMJOiBTWU5DUFIKPiArTm90ZXMJCTogU2V0IHRyYWNlIHN5bmNocm9uaXNhdGlvbiBwZXJpb2Qu
IFBvd2VyIG9mIDIgdmFsdWUsIDAgKG9mZikKPiArCQlvciA4LTIwLiBEcml2ZXIgZGVmYXVsdHMg
dG8gMTIgKGV2ZXJ5IDQwOTYgYnl0ZXMpLgo+ICsKPiArRmlsZQkJOiBjbnRyX2lkeCAocncpCj4g
K1RyYWNlIFJlZ2lzdGVycwk6IG5vbmUKPiArTm90ZXMJCTogU2VsZWN0IHRoZSBjb3VudGVyIHRv
IGFjY2Vzcwo+ICtTeW50YXgJCTogJ2VjaG8gaWR4ID4gY250cl9pZHgnCj4gKwkJV2hlcmUgaWR4
IDzCoCBucl9jbnRyCj4gKwo+ICtGaWxlCQk6IGNudHJfY3RybCAocncpCj4gK1RyYWNlIFJlZ2lz
dGVycwk6IENOVENUTFJbaWR4XQo+ICtOb3RlcwkJOiBTZXQgY291bnRlciBjb250cm9sIHZhbHVl
Cj4gK0RlcGVuZHMJCTogY250cl9pZHgKPiArU3ludGF4CQk6ICdlY2hvIHZhbCA+IGNudHJfY3Ry
bCcKPiArCQlXaGVyZSB2YWwgaXMgcGVyIEVUTXY0IHNwZWMuCj4gKwo+ICtGaWxlCQk6IGNudHJs
ZHZyIChydykKPiArVHJhY2UgUmVnaXN0ZXJzCTogQ05UUkxEVlJbaWR4XQo+ICtOb3RlcwkJOiBT
ZXQgY291bnRlciByZWxvYWQgdmFsdWUKPiArRGVwZW5kcwkJOiBjbnRyX2lkeAo+ICtTeW50YXgJ
CTogJ2VjaG8gdmFsID4gY250cmxkdnInCj4gKwkJV2hlcmUgdmFsIGlzIHBlciBFVE12NCBzcGVj
Lgo+ICsKPiArRmlsZQkJOiBucl9jbnRyIChybykKPiArVHJhY2UgUmVnaXN0ZXJzCTogRnJvbSBJ
RFI1Cj4gK05vdGVzCQk6IE51bWJlciBvZiBjb3VudGVycyBpbXBsZW1lbnRlZC4KPiArCj4gK0Zp
bGUJCTogY3R4aWRfaWR4IChydykKPiArVHJhY2UgUmVnaXN0ZXJzCTogTm9uZQo+ICtOb3RlcwkJ
OiBTZWxlY3QgdGhlIGNvbnRleHQgSUQgY29tcGFyYXRvciB0byBhY2Nlc3MKPiArU3ludGF4CQk6
ICdlY2hvIGlkeCA+IGN0eGlkX2lkeCcKPiArCQlXaGVyZSBpZHggPMKgIG51bWNpZGMKPiArCj4g
K0ZpbGUJCTogY3R4aWRfcGlkIChydykKPiArVHJhY2UgUmVnaXN0ZXJzCTogQ0lEQ1ZSW2lkeF0K
PiArTm90ZXMJCTogU2V0IHRoZSBjb250ZXh0IElEIGNvbXBhcmF0b3IgdmFsdWUKPiArRGVwZW5k
cwkJOiBjdHhpZF9pZHgKPiArCj4gK0ZpbGUJCTogY3R4aWRfbWFza3MgKHJ3KQo+ICtUcmFjZSBS
ZWdpc3RlcnMJOiBDSURDQ1RMUjAsIENJRENDVExSMSwgQ0lEQ1ZSPDAtNz4KPiArTm90ZXMJCTog
UGFpciBvZiB2YWx1ZXMgdG8gc2V0IHRoZSBieXRlIG1hc2tzIGZvciAxLTggY29udGV4dCBJRAo+
ICsJCWNvbXBhcmF0b3JzLiBBdXRvbWF0aWNhbGx5IGNsZWFycyBtYXNrZWQgYnl0ZXMgdG8gMCBp
biBDSUQKPiArCQl2YWx1ZSByZWdpc3RlcnMuCj4gK1N5bnRheAkJOiAnZWNobyBtM20ybTFtMCBb
bTdtNm01bTRdID4gY3R4aWRfbWFza3MnCj4gKwkJMzIgYml0IHZhbHVlcyBtYWRlIHVwIG9mIG1h
c2sgYnl0ZXMsIHdoZXJlIG1OIHJlcHJlc2VudHMgYQo+ICsJCWJ5dGUgbWFzayB2YWx1ZSBmb3Ig
Q3R4dCBJRCBjb21wYXJhdG9yIE4uCj4gKwkJU2Vjb25kIHZhbHVlIG5vdCByZXF1aXJlZCBvbiBz
eXN0ZW1zIHRoYXQgaGF2ZSBmZXdlciB0aGFuIDQKPiArCQljb250ZXh0IElEIGNvbXBhcmF0b3Jz
Cj4gKwo+ICtGaWxlCQk6IG51bWNpZGMgKHJvKQo+ICtUcmFjZSBSZWdpc3RlcnMJOiBGcm9tIElE
UjQKPiArTm90ZXMJCTogTnVtYmVyIG9mIENvbnRleHQgSUQgY29tcGFyYXRvcnMKPiArCj4gK0Zp
bGUJCTogdm1pZF9pZHggKHJ3KQo+ICtUcmFjZSBSZWdpc3RlcnMJOiBOb25lCj4gK05vdGVzCQk6
IFNlbGVjdCB0aGUgVk0gSUQgY29tcGFyYXRvciB0byBhY2Nlc3MuCj4gK1N5bnRheAkJOiAnZWNo
byBpZHggPiB2bWlkX2lkeCcKPiArCQlXaGVyZSBpZHggPMKgIG51bXZtaWRjCj4gKwo+ICtGaWxl
CQk6IHZtaWRfdmFsIChydykKPiArVHJhY2UgUmVnaXN0ZXJzCTogVk1JRENWUltpZHhdCj4gK05v
dGVzCQk6IFNldCB0aGUgVk0gSUQgY29tcGFyYXRvciB2YWx1ZQo+ICtEZXBlbmRzCQk6IHZtaWRf
aWR4Cj4gKwo+ICtGaWxlCQk6IHZtaWRfbWFza3MgKHJ3KQo+ICtUcmFjZSBSZWdpc3RlcnMJOiBW
TUlEQ0NUTFIwLCBWTUlEQ0NUTFIxLCBWTUlEQ1ZSPDAtNz4KPiArTm90ZXMJCTogUGFpciBvZiB2
YWx1ZXMgdG8gc2V0IHRoZSBieXRlIG1hc2tzIGZvciAxLTggVk0gSUQKPiArCQljb21wYXJhdG9y
cy4gQXV0b21hdGljYWxseSBjbGVhcnMgbWFza2VkIGJ5dGVzIHRvIDAgaW4gVk1JRAo+ICsJCXZh
bHVlIHJlZ2lzdGVycy4KPiArU3ludGF4CQk6ICdlY2hvIG0zbTJtMW0wIFttN202bTVtNF0gPiB2
bWlkX21hc2tzJwo+ICsJCVdoZXJlIG1OIHJlcHJlc2VudHMgYSBieXRlIG1hc2sgdmFsdWUgZm9y
IFZNSUQgY29tcGFyYXRvciBOLgo+ICsJCVNlY29uZCB2YWx1ZSBub3QgcmVxdWlyZWQgb24gc3lz
dGVtcyB0aGF0IGhhdmUgZmV3ZXIgdGhhbgo+ICsJCTQgVk1JRCBjb21wYXJhdG9ycy4KPiArCj4g
K0ZpbGUJCTogbnVtdm1pZGMgKHJvKQo+ICtUcmFjZSBSZWdpc3RlcnMJOiBGcm9tIElEUjQKPiAr
Tm90ZXMJCTogTnVtYmVyIG9mIFZNSUQgY29tcGFyYXRvcnMKPiArCj4gK0ZpbGUJCTogcmVzX2lk
eCAocncpCj4gK1RyYWNlIFJlZ2lzdGVycwk6IE5vbmUuCj4gK05vdGVzCQk6IFNlbGVjdCB0aGUg
cmVzb3VyY2Ugc2VsZWN0b3IgY29udHJvbCB0byBhY2Nlc3MuIE11c3QgYmUgMiBvcgo+ICsJCWhp
Z2hlciBhcyBzZWxlY3RvcnMgMCBhbmQgMSBhcmUgaGFyZHdpcmVkLgo+ICtTeW50YXgJCTogJ2Vj
aG8gaWR4ID4gcmVzX2lkeCcKPiArCQlXaGVyZSAyIDw9IGlkeCA8IG5yX3Jlc291cmNlIHggMgo+
ICsKPiArRmlsZQkJOiByZXNfY3RybCAocncpCj4gK1RyYWNlIFJlZ2lzdGVycwk6IFJTQ1RMUltp
ZHhdCj4gK05vdGVzCQk6IFNldCByZXNvdXJjZSBzZWxlY3RvciBjb250cm9sIHZhbHVlLiBWYWx1
ZSBwZXIgRVRNdjQgc3BlYy4KPiArRGVwZW5kcwkJOiByZXNfaWR4Cj4gK1N5bnRheAkJOiAnZWNo
byB2YWwgPiByZXNfY250cicKPiArCQlXaGVyZSB2YWwgaXMgcGVyIEVUTXY0IHNwZWMuCj4gKwo+
ICtGaWxlCQk6IG5yX3Jlc291cmNlIChybykKPiArVHJhY2UgUmVnaXN0ZXJzCTogRnJvbSBJRFI0
Cj4gK05vdGVzCQk6IE51bWJlciBvZiByZXNvdXJjZSBzZWxlY3RvciBwYWlycwo+ICsKPiArRmls
ZQkJOiBldmVudCAocncpCj4gK1RyYWNlIFJlZ2lzdGVycwk6IEVWRU5UQ1RSTDBSCj4gK05vdGVz
CQk6IFNldCB1cCB0byA0IGltcGxlbWVudGVkIGV2ZW50IGZpZWxkcy4KPiArU3ludGF4CQk6ICdl
Y2hvIGV2M2V2MmV2MWV2MCA+IGV2ZW50Jwo+ICsJCVdoZXJlIGV2TiBpcyBhbiA4IGJpdCBldmVu
dCBmaWVsZC4gVXAgdG8gNCBldmVudCBmaWVsZHMgbWFrZSB1cAo+ICsJCXRoZSAzMmJpdCBpbnB1
dCB2YWx1ZS4gTnVtYmVyIG9mIHZhbGlkIGZpZWxkcyBpbXBsZW1lbnRhdGlvbgo+ICsJCWRlcGVu
ZGVudCBkZWZpbmVkIGluIElEUjAuCj4gKwo+ICtGaWxlCQk6IGV2ZW50X2luc3RyZW4gKHJ3KQo+
ICtUcmFjZSBSZWdpc3RlcnMJOiBFVkVOVENUUkwxUgo+ICtOb3RlcwkJOiBDaG9vc2UgZXZlbnRz
IHdoaWNoIGluc2VydCBldmVudCBwYWNrZXRzIGludG8gdHJhY2Ugc3RyZWFtLgo+ICtEZXBlbmRz
CQk6IEVWRU5UQ1RSTDBSCj4gK1N5bnRheAkJOiAnZWNobyBiaXRmaWVsZCA+IGV2ZW50X2luc3Ry
ZW4nCj4gKwkJV2hlcmUgYml0ZmllbGQgaXMgdXAgdG8gNCBiaXRzIGFjY29yZGluZyB0byBudW1i
ZXIgb2YgZXZlbnQKPiArCQlmaWVsZHMuCj4gKwo+ICtGaWxlCQk6IGV2ZW50X3RzIChydykKPiAr
VHJhY2UgUmVnaXN0ZXJzCTogVFNDVExSCj4gK05vdGVzCQk6IFNldCB0aGUgZXZlbnQgdGhhdCB3
aWxsIGdlbmVyYXRlIHRpbWVzdGFtcCByZXF1ZXN0cy4KPiArRGVwZW5kcwkJOiBUUyBhY3RpdmF0
ZWQKPiArU3ludGF4CQk6ICdlY2hvIGV2ZmllbGQgPiBldmVudF90cycKPiArCQlXaGVyZSBldmZp
ZWxkIGlzIGFuIDggYml0IGV2ZW50IHNlbGVjdG9yLgo+ICsKPiArRmlsZQkJOiBzZXFfaWR4IChy
dykKPiArVHJhY2UgUmVnaXN0ZXJzCTogTm9uZQo+ICtOb3RlcwkJOiBTZXF1ZW5jZXIgZXZlbnQg
cmVnaXN0ZXIgc2VsZWN0IC0gMCB0byAyCj4gKwo+ICsKPiArRmlsZQkJOiBzZXFfc3RhdGUgKHJ3
KQo+ICtUcmFjZSBSZWdpc3RlcnMJOiBTRVFTVFIKPiArTm90ZXMJCTogU2VxdWVuY2VyIGN1cnJl
bnQgc3RhdGUgLSAwIHRvIDMuCj4gKwo+ICtGaWxlCQk6IHNlcV9ldmVudCAocncpCj4gK1RyYWNl
IFJlZ2lzdGVycwk6IFNFUUVWUltpZHhdCj4gK05vdGVzCQk6IFN0YXRlIHRyYW5zaXRpb24gZXZl
bnQgcmVnaXN0ZXJzCj4gK0RlcGVuZHMJCTogc2VxX2lkeAo+ICtTeW50YXgJCTogJ2VjaG8gZXZC
ZXZGID4gc2VxX2V2ZW50Jwo+ICsJCVdoZXJlIGV2QmV2RiBpcyBhIDE2IGJpdCB2YWx1ZSBtYWRl
IHVwIG9mIHR3byBldmVudCBzZWxlY3RvcnMsCj4gKwkJZXZCIC0gYmFjaywgZXZGIC0gZm9yd2Fy
ZHMuCj4gKwo+ICtGaWxlCQk6IHNlcV9yZXNldF9ldmVudCAocncpCj4gK1RyYWNlIFJlZ2lzdGVy
cwk6IFNFUVJTVEVWUgo+ICtOb3RlcwkJOiBTZXF1ZW5jZXIgcmVzZXQgZXZlbnQKPiArU3ludGF4
CQk6ICdlY2hvIGV2ZmllbGQgPiBzZXFfcmVzZXRfZXZlbnQnCj4gKwkJV2hlcmUgZXZmaWVsZCBp
cyBhbiA4IGJpdCBldmVudCBzZWxlY3Rvci4KPiArCj4gK0ZpbGUJCTogbnJzZXFzdGF0ZSAocm8p
Cj4gK1RyYWNlIFJlZ2lzdGVycwk6IEZyb20gSURSNQo+ICtOb3RlcwkJOiBOdW1iZXIgb2Ygc2Vx
dWVuY2VyIHN0YXRlcyAoMCBvciA0KQo+ICsKPiArRmlsZQkJOiBucl9wZV9jbXAgKHJvKQo+ICtU
cmFjZSBSZWdpc3RlcnMJOiBGcm9tIElEUjQKPiArTm90ZXMJCTogTnVtYmVyIG9mIFBFIGNvbXBh
cmF0b3IgaW5wdXRzCj4gKwo+ICtGaWxlCQk6IG5yX2V4dF9pbnAgKHJvKQo+ICtUcmFjZSBSZWdp
c3RlcnMJOiBGcm9tIElEUjUKPiArTm90ZXMJCTogTnVtYmVyIG9mIGV4dGVybmFsIGlucHV0cwo+
ICsKPiArRmlsZQkJOiBucl9zc19jbXAgKHJvKQo+ICtUcmFjZSBSZWdpc3RlcnMJOiBGcm9tIElE
UjQKPiArTm90ZXMJCTogTnVtYmVyIG9mIFNpbmdsZSBTaG90IGNvbnRyb2wgcmVnaXN0ZXJzCj4g
Kwo+ICtOb3RlOiBXaGVuIHByb2dyYW1taW5nIGFueSBhZGRyZXNzIGNvbXBhcmF0b3IgdGhlIGRy
aXZlciB3aWxsIHRhZyB0aGUKPiArY29tcGFyYXRvciB3aXRoIGEgdHlwZSB1c2VkIC0gaS5lLiBS
QU5HRSwgU0lOR0xFLCBTVEFSVCwgU1RPUC4gT25jZSB0aGlzIHRhZwo+ICtpcyBzZXQsIHRoZW4g
b25seSB0aGUgdmFsdWVzIGNhbiBiZSBjaGFuZ2VkIHVzaW5nIHRoZSBzYW1lIHN5c2ZzIGZpbGUg
LyB0eXBlCj4gK3VzZWQgdG8gcHJvZ3JhbSBpdC4KPiArCj4gK1RodXM6LQo+ICslIGVjaG8gMCA+
IGFkZHJfaWR4CQkgICAgOyBzZWxlY3QgYWRkcmVzcyBjb21wYXJhdG9yIDAKPiArJSBlY2hvIDB4
MTAwMCAweDUwMDAgMCA+IGFkZHJfcmFuZ2UgOyBzZXQgYWRkcmVzcyByYW5nZSBvbiBjb21wYXJh
dG9ycyAwIGFuZCAxLgo+ICslIGVjaG8gMHgyMDAwID4gYWRkcl9zdGFydAkgICAgOyB0aGlzIHdp
bGwgZXJyb3IgYXMgY29tcGFyYXRvciAwIGlzIGEKPiArCQkJCSAgICA7IHJhbmdlIGNvbXBhcmF0
b3IKPiArJSBlY2hvIDIgPiBhZGRyX2lkeAkJICAgIDsgc2VsZWN0IGFkZHJlc3MgY29tcGFyYXRv
ciAyCj4gKyUgZWNobyAweDIwMDAgPiBhZGRyX3N0YXJ0CSAgICA7IHRoaXMgaXMgT0sgYXMgY29t
cGFyYXRvciAyIGlzIHVudXNlZCwKPiArJSBlY2hvIDB4MzAwMCA+IGFkZHJfc3RvcAkgICAgOyB0
aGlzIHdpbGwgZXJyb3IgYXMgY29tcGFyYXRvciAyIGEgc3RhcnQKPiArCQkJCSAgICA7IGFkZHJl
c3MgY29tcGFyYXRvcgo+ICslIGVjaG8gMiA+IGFkZHJfaWR4CQkgICAgOyBzZWxlY3QgYWRkcmVz
cyBjb21wYXJhdG9yIDMKPiArJSBlY2hvIDB4MzAwMCA+IGFkZHJfc3RvcAkgICAgOyB0aGlzIGlz
IE9LCj4gKwo+ICtUbyByZW1vdmUgcHJvZ3JhbW1pbmcgb24gYWxsIHRoZSBjb21wYXJhdG9ycyAo
YW5kIGFsbCB0aGUgb3RoZXIgaGFyZHdhcmUpIHVzZQo+ICt0aGUgcmVzZXQgcGFyYW1ldGVyOgo+
ICsKPiArJSBlY2hvIDEgPiByZXNldAo+ICsKPiArVGhlIOKAmG1vZGXigJkgc3lzZnMgcGFyYW1l
dGVyLgo+ICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiArCj4gK1RoaXMgaXMgYSBiaXRm
aWVsZCBzZWxlY3Rpb24gcGFyYW1ldGVyIHRoYXQgc2V0cyB0aGUgb3ZlcmFsbCB0cmFjZSBtb2Rl
IGZvciB0aGUKPiArRVRNLiBUaGUgdGFibGUgYmVsb3cgZGVzY3JpYmVzIHRoZSBiaXRzLCB1c2lu
ZyB0aGUgZGVmaW5lcyBmcm9tIHRoZSBkcml2ZXIKPiArc291cmNlIGZpbGUsIGFsb25nIHdpdGgg
YSBkZXNjcmlwdGlvbiBvZiB0aGUgZmVhdHVyZSB0aGVzZSByZXByZXNlbnQuIE1hbnkKPiArZmVh
dHVyZXMgYXJlIG9wdGlvbmFsIGFuZCB0aGVyZWZvcmUgZGVwZW5kZW50IG9uIGltcGxlbWVudGF0
aW9uIGluIHRoZQo+ICtoYXJkd2FyZS4KPiArCj4gK0JpdCBhc3NpZ25lbWVudHMgc2hvd24gYmVs
b3c6LQo+ICsKPiArYml0ICgwKQkgICAgOiAjZGVmaW5lIEVUTV9NT0RFX0VYQ0xVREUKPiArZGVz
Y3JpcHRpb24gOiBUaGlzIGlzIHRoZSBkZWZhdWx0IHZhbHVlIGZvciB0aGUgaW5jbHVkZSAvIGV4
Y2x1ZGUgZnVuY3Rpb24gd2hlbgo+ICsJICAgICAgc2V0dGluZyBhZGRyZXNzIHJhbmdlcy4gU2V0
IDEgZm9yIGV4Y2x1ZGUgcmFuZ2UuIFdoZW4gdGhlIG1vZGUKPiArCSAgICAgIHBhcmFtZXRlciBp
cyBzZXQgdGhpcyB2YWx1ZSBpcyBhcHBsaWVkIHRvIHRoZSBjdXJyZW50bHkgaW5kZXhlZAo+ICsJ
ICAgICAgYWRkcmVzcyByYW5nZS4KPiArCj4gK2JpdCAoNCkJICAgIDogI2RlZmluZSBFVE1fTU9E
RV9CQgo+ICtkZXNjcmlwdGlvbiA6IFNldCB0byBlbmFibGUgYnJhbmNoIGJyb2FkY2FzdCBpZiBz
dXBwb3J0ZWQgaW4gaGFyZHdhcmUgW0lEUjBdLgo+ICsKPiArYml0ICg1KQkgICAgOiAjZGVmaW5l
IEVUTXY0X01PREVfQ1lDQUNDCj4gK2Rlc2NyaXB0aW9uIDogU2V0IHRvIGVuYWJsZSBjeWNsZSBh
Y2N1cmF0ZSB0cmFjZSBpZiBzdXBwb3J0ZWQgW0lEUjBdLgo+ICsKPiArYml0ICg2KQkgICAgOiBF
VE12NF9NT0RFX0NUWElECj4gK2Rlc2NyaXB0aW9uIDogU2V0IHRvIGVuYWJsZSBjb250ZXh0IElE
IHRyYWNpbmcgaWYgc3VwcG9ydGVkIGluIGhhcmR3YXJlIFtJRFIyXS4KPiArCj4gK2JpdCAoNykJ
ICAgIDogRVRNX01PREVfVk1JRAo+ICtkZXNjcmlwdGlvbiA6IFNldCB0byBlbmFibGUgdmlydHVh
bCBtYWNoaW5lIElEIHRyYWNpbmcgaWYgc3VwcG9ydGVkIFtJRFIyXS4KPiArCj4gK2JpdCAoMTEp
ICAgIDogRVRNdjRfTU9ERV9USU1FU1RBTVAKPiArZGVzY3JpcHRpb24gOiBTZXQgdG8gZW5hYmxl
IHRpbWVzdGFtcCBnZW5lcmF0aW9uIGlmIHN1cHBvcnRlZCBbSURSMF0uCj4gKwo+ICtiaXQgKDEy
KSAgICA6IEVUTV9NT0RFX1JFVFVSTlNUQUNLCj4gK2Rlc2NyaXB0aW9uIDogU2V0IHRvIGVuYWJs
ZSB0cmFjZSByZXR1cm4gc3RhY2sgdXNlIGlmIHN1cHBvcnRlZCBbSURSMF0uCj4gKwo+ICtiaXQg
KDEzLTE0KSA6IEVUTV9NT0RFX1FFTEVNKHZhbCkKPiArZGVzY3JpcHRpb24gOiDigJh2YWzigJkg
ZGV0ZXJtaW5lcyBsZXZlbCBvZiBRIGVsZW1lbnQgc3VwcG9ydCBlbmFibGVkIGlmCj4gKwkgICAg
aW1wbGVtZW50ZWQgYnkgdGhlIEVUTSBbSURSMF0KPiArCj4gK2JpdCAoMTkpICAgIDogRVRNX01P
REVfQVRCX1RSSUdHRVIKPiArZGVzY3JpcHRpb24gOiBTZXQgdG8gZW5hYmxlIHRoZSBBVEJUUklH
R0VSIGJpdCBpbiB0aGUgZXZlbnQgY29udHJvbCByZWdpc3Rlcgo+ICsJICAgIFtFVkVOVENUTFIx
XSBpZiBzdXBwb3J0ZWQgW0lEUjVdLgo+ICsKPiArYml0ICgyMCkgICAgOiBFVE1fTU9ERV9MUE9W
RVJSSURFCj4gK2Rlc2NyaXB0aW9uIDogU2V0IHRvIGVuYWJsZSB0aGUgTFBPVkVSUklERSBiaXQg
aW4gdGhlIGV2ZW50IGNvbnRyb2wgcmVnaXN0ZXIKPiArCSAgICBbRVZFTlRDVExSMV0sIGlmIHN1
cHBvcnRlZCBbSURSNV0uCj4gKwo+ICtiaXQgKDIxKSAgICA6IEVUTV9NT0RFX0lTVEFMTF9FTgo+
ICtkZXNjcmlwdGlvbiA6IFNldCB0byBlbmFibGUgdGhlIElTVEFMTCBiaXQgaW4gdGhlIHN0YWxs
IGNvbnRyb2wgcmVnaXN0ZXIKPiArCSAgICBbU1RBTExDVExSXQo+ICsKPiArYml0ICgyMykgICAg
OiBFVE1fTU9ERV9JTlNUUFJJTwo+ICtkZXNjcmlwdGlvbiA6IFNldCB0byBlbmFibGUgdGhlIElO
U1RQUklPUklUWSBiaXQgaW4gdGhlIHN0YWxsIGNvbnRyb2wgcmVnaXN0ZXIKPiArCSAgICBbU1RB
TExDVExSXSAsIGlmIHN1cHBvcnRlZCBbSURSMF0uCj4gKwo+ICtiaXQgKDI0KSAgICA6IEVUTV9N
T0RFX05PT1ZFUkZMT1cKPiArZGVzY3JpcHRpb24gOiBTZXQgdG8gZW5hYmxlIHRoZSBOT09WRVJG
TE9XIGJpdCBpbiB0aGUgc3RhbGwgY29udHJvbCByZWdpc3Rlcgo+ICsJICAgIFtTVEFMTENUTFJd
LCBpZiBzdXBwb3J0ZWQgW0lEUjNdLgo+ICsKPiArYml0ICgyNSkgICAgOiBFVE1fTU9ERV9UUkFD
RV9SRVNFVAo+ICtkZXNjcmlwdGlvbiA6IFNldCB0byBlbmFibGUgdGhlIFRSQ1JFU0VUIGJpdCBp
biB0aGUgdmlld2luc3QgY29udHJvbCByZWdpc3Rlcgo+ICsJICAgIFtWSUNUTFJdICwgaWYgc3Vw
cG9ydGVkIFtJRFIzXS4KPiArCj4gK2JpdCAoMjYpICAgIDogRVRNX01PREVfVFJBQ0VfRVJSCj4g
K2Rlc2NyaXB0aW9uIDogU2V0IHRvIGVuYWJsZSB0aGUgVFJDQ1RSTCBiaXQgaW4gdGhlIHZpZXdp
bnN0IGNvbnRyb2wgcmVnaXN0ZXIKPiArCSAgICBbVklDVExSXS4KPiArCj4gK2JpdCAoMjcpICAg
IDogRVRNX01PREVfVklFV0lOU1RfU1RBUlRTVE9QCj4gK2Rlc2NyaXB0aW9uIDogU2V0IHRoZSBp
bml0aWFsIHN0YXRlIHZhbHVlIG9mIHRoZSBWaWV3SW5zdCBzdGFydCAvIHN0b3AgbG9naWMKPiAr
CSAgICBpbiB0aGUgdmlld2luc3QgY29udHJvbCByZWdpc3RlciBbVklDVExSXQo+ICsKPiArYml0
ICgzMCkgICAgOiBFVE1fTU9ERV9FWENMX0tFUk4KPiArZGVzY3JpcHRpb24gOiBTZXQgZGVmYXVs
dCB0cmFjZSBzZXR1cCB0byBleGNsdWRlIGtlcm5lbCBtb2RlIHRyYWNlIChzZWUgbm90ZSBhKQo+
ICsKPiArYml0ICgzMSkgICAgOiBFVE1fTU9ERV9FWENMX1VTRVIKPiArZGVzY3JpcHRpb24gOiBT
ZXQgZGVmYXVsdCB0cmFjZSBzZXR1cCB0byBleGNsdWRlIHVzZXIgc3BhY2UgdHJhY2UgKHNlZSBu
b3RlIGEpCj4gKwo+ICtOb3RlIGEpIE9uIHN0YXJ0dXAgdGhlIEVUTSBpcyBwcm9ncmFtbWVkIHRv
IHRyYWNlIHRoZSBjb21wbGV0ZSBhZGRyZXNzIHNwYWNlCj4gK3VzaW5nIGFkZHJlc3MgcmFuZ2Ug
Y29tcGFyYXRvciAwLiDigJhtb2Rl4oCZIGJpdHMgMzAgLyAzMSBtb2RpZnkgdGhpcyBzZXR0aW5n
IHRvCj4gK3NldCBFTCBleGNsdWRlIGJpdHMgZm9yIE5TIHN0YXRlIGluIGVpdGhlciB1c2VyIHNw
YWNlIChFTDApIG9yIGtlcm5lbCBzcGFjZQo+ICsoRUwxKSBpbiB0aGUgYWRkcmVzcyByYW5nZSBj
b21wYXJhdG9yLiAodGhlIGRlZmF1bHQgc2V0dGluZyBleGNsdWRlcyBhbGwKPiArc2VjdXJlIEVM
LCBhbmQgTlMgRUwyKQo+ICsKPiArT25jZSB0aGUgcmVzZXQgcGFyYW1ldGVyIGhhcyBiZWVuIHVz
ZWQsIGFuZC9vciBjdXN0b20gcHJvZ3JhbW1pbmcgaGFzIGJlZW4KPiAraW1wbGVtZW50ZWQgLSB1
c2luZyB0aGVzZSBiaXRzIHdpbGwgcmVzdWx0IGluIHRoZSBFTCBiaXRzIGZvciBhZGRyZXNzCj4g
K2NvbXBhcmF0b3IgMCBiZWluZyBzZXQgaW4gdGhlIHNhbWUgd2F5Lgo+ICsKPiArTm90ZSBiKSBC
aXRzIDItMywgOC0xMCwgMTUtMTYsIDE4LCAyMiwgY29udHJvbCBmZWF0dXJlcyB0aGF0IG9ubHkg
d29yayB3aXRoCj4gK2RhdGEgdHJhY2UuIEFzIEEgcHJvZmlsZSBkYXRhIHRyYWNlIGlzIGFyY2hp
dGVjdHVyYWxseSBwcm9oaWJpdGVkIGluIEVUTXY0LAo+ICt0aGVzZSBoYXZlIGJlZW4gb21pdHRl
ZCBoZXJlLiBQb3NzaWJsZSB1c2VzIGNvdWxkIGJlIHdoZXJlIGEga2VybmVsIGhhcwo+ICtzdXBw
b3J0IGZvciBjb250cm9sIG9mIFIgb3IgTSBwcm9maWxlIGluZnJhc3RydWN0dXJlIGFzIHBhcnQg
b2YgYSBoZXRlcm9nZW5lb3VzCj4gK3N5c3RlbS4KPiArCj4gK0JpdHMgMTcsIDI4LTI5IGFyZSB1
bnVzZWQuCj4gLS0gCj4gMi4xNy4xCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
