Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 045FE2004F4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 11:24:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AsDHFlQ4HU0pky53SrraKI0Z7mC6w5eWQXRIKWsLCl0=; b=HibSgOM03RngQu
	Zldwj26vOykEEwW6vQrFGoD8dQVq+eghiqqeUfniRZ29X+um/VcU4XwOH7VVtg2Okbxhdo8+KPsI/
	KYuqAa77Nb5GzCk5o0I/7W/98UMbiVy1zKLZBa18HthfS2Q3OlsQfeTPKFWhqvXd1xBPaPz4xiItK
	D71XoUq/Zx8c4QZtsT23mC8FZzebWuQQbPRhYU39plIMXFbfJFFor+HFAneTjjQb7TExh27ZpYcHQ
	Lwxsd36Yf3GIzdw4utOp496PhivdhVTlTe+12wwZU+CgEX+0evmRsHZMwSsS8xYzdwUpuTHO5VgWt
	ZJL4ByzjlaOT0sjXzrqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmDG1-0005Rs-RU; Fri, 19 Jun 2020 09:24:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmDFt-0005Qe-Rn
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 09:24:15 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jmDFj-0003J1-B5; Fri, 19 Jun 2020 11:24:03 +0200
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jmDFc-0005gQ-2L; Fri, 19 Jun 2020 11:23:56 +0200
Message-ID: <8eca5ec8f892f38d2b174c4d4b26c7d4fbdd69c4.camel@pengutronix.de>
Subject: Re: [PATCH v4 2/2] phy: bcm63xx-usbh: Add BCM63xx USBH driver
From: Philipp Zabel <p.zabel@pengutronix.de>
To: =?ISO-8859-1?Q?=C1lvaro_Fern=E1ndez?= Rojas <noltari@gmail.com>, 
 simon@fire.lp0.eu, jonas.gorski@gmail.com, kishon@ti.com, vkoul@kernel.org,
 robh+dt@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com,  krzk@kernel.org,
 gregkh@linuxfoundation.org, alcooperx@gmail.com, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org
Date: Fri, 19 Jun 2020 11:23:55 +0200
In-Reply-To: <20200619085124.4029400-3-noltari@gmail.com>
References: <20200619085124.4029400-1-noltari@gmail.com>
 <20200619085124.4029400-3-noltari@gmail.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_022413_900035_DC95042E 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgw4FsdmFybywKCk9uIEZyaSwgMjAyMC0wNi0xOSBhdCAxMDo1MSArMDIwMCwgw4FsdmFybyBG
ZXJuw6FuZGV6IFJvamFzIHdyb3RlOgo+IEFkZCBCQ002M3h4IFVTQkggUEhZIGRyaXZlciBmb3Ig
Qk1JUFMuCj4gCj4gU2lnbmVkLW9mZi1ieTogw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0
YXJpQGdtYWlsLmNvbT4KPiAtLS0KPiAgdjQ6IHNldmVyYWwgaW1wcm92ZW1lbnRzOgo+ICAgLSBV
c2UgZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlLgo+ICAgLSBDb2RlIGNsZWFudXBzLgo+
ICAgLSBJbXByb3ZlIGRldmljZSBtb2RlIGNvbmZpZzoKPiAgICAgLSBNb3ZlIFVTQkhfU1dBUF9D
T05UUk9MIGRldmljZSBtb2RlIHZhbHVlIHRvIHZhcmlhbnQgdmFyaWFibGUuCj4gICAgIC0gU2V0
IFVTQkhfVVRNSV9DT05UUk9MMSByZWdpc3RlciB2YWx1ZSAodmFyaWFudCB2YXJpYWJsZSkuCj4g
IHYzOiBpbnRyb2R1Y2UgY2hhbmdlcyBzdWdnZXN0ZWQgYnkgRmxvcmlhbjoKPiAgIC0gQWRkIHN1
cHBvcnQgZm9yIGRldmljZSBtb2RlLgo+ICB2MjogaW50cm9kdWNlIGNoYW5nZXMgc3VnZ2VzdGVk
IGJ5IEZsb3JpYW46Cj4gICAtIERyb3AgT0YgZGVwZW5kZW5jeSAodXNlIGRldmljZV9nZXRfbWF0
Y2hfZGF0YSkuCj4gICAtIERyb3AgX19pbml0Y29uc3QgZnJvbSB2YXJpYW50IHRhYmxlcy4KPiAg
IC0gVXNlIGRldm1fY2xrX2dldF9vcHRpb25hbC4KPiAKPiAgZHJpdmVycy9waHkvYnJvYWRjb20v
S2NvbmZpZyAgICAgICAgICAgIHwgICA5ICsKPiAgZHJpdmVycy9waHkvYnJvYWRjb20vTWFrZWZp
bGUgICAgICAgICAgIHwgICAxICsKPiAgZHJpdmVycy9waHkvYnJvYWRjb20vcGh5LWJjbTYzeHgt
dXNiaC5jIHwgNDU3ICsrKysrKysrKysrKysrKysrKysrKysrKwo+ICAzIGZpbGVzIGNoYW5nZWQs
IDQ2NyBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3BoeS9icm9h
ZGNvbS9waHktYmNtNjN4eC11c2JoLmMKPiAKWy4uLl0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9w
aHkvYnJvYWRjb20vcGh5LWJjbTYzeHgtdXNiaC5jIGIvZHJpdmVycy9waHkvYnJvYWRjb20vcGh5
LWJjbTYzeHgtdXNiaC5jCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAw
MDAuLjc5ZjkxM2Q4NmRlZgo+IC0tLSAvZGV2L251bGwKPiArKysgYi9kcml2ZXJzL3BoeS9icm9h
ZGNvbS9waHktYmNtNjN4eC11c2JoLmMKWy4uLl0KPiArc3RhdGljIGludCBfX2luaXQgYmNtNjN4
eF91c2JoX3BoeV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICt7Cj4gKwlz
dHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2Owo+ICsJc3RydWN0IGJjbTYzeHhfdXNiaF9w
aHkJKnVzYmg7Cj4gKwljb25zdCBzdHJ1Y3QgYmNtNjN4eF91c2JoX3BoeV92YXJpYW50ICp2YXJp
YW50Owo+ICsJc3RydWN0IHBoeSAqcGh5Owo+ICsJc3RydWN0IHBoeV9wcm92aWRlciAqcGh5X3By
b3ZpZGVyOwo+ICsKPiArCXVzYmggPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKnVzYmgpLCBH
RlBfS0VSTkVMKTsKPiArCWlmICghdXNiaCkKPiArCQlyZXR1cm4gLUVOT01FTTsKPiArCj4gKwl2
YXJpYW50ID0gZGV2aWNlX2dldF9tYXRjaF9kYXRhKGRldik7Cj4gKwlpZiAoIXZhcmlhbnQpCj4g
KwkJcmV0dXJuIC1FSU5WQUw7Cj4gKwl1c2JoLT52YXJpYW50ID0gdmFyaWFudDsKPiArCj4gKwl1
c2JoLT5iYXNlID0gZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlKHBkZXYsIDApOwo+ICsJ
aWYgKElTX0VSUih1c2JoLT5iYXNlKSkKPiArCQlyZXR1cm4gUFRSX0VSUih1c2JoLT5iYXNlKTsK
PiArCj4gKwl1c2JoLT5yZXNldCA9IGRldm1fcmVzZXRfY29udHJvbF9nZXQoZGV2LCBOVUxMKTsK
ClBsZWFzZSB1c2UgZGV2bV9yZXNldF9jb250cm9sX2dldF9leGNsdXNpdmUoKSBpbnN0ZWFkLgoK
cmVnYXJkcwpQaGlsaXBwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
