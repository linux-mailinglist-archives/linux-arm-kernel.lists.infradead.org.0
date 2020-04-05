Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C865F19ED2F
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 19:56:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X+0/ijfFEI6TdDGXN1AAL3S5QoX4sJvQujG7d4yap3I=; b=T7zCwPtgqoMWor
	1yMcJIX0MDDBXXyokHiZdqxLHhjmVpSV48KvqVDfSRUbJRpQdpNs7a4GMjv/+G+GnnyF/W0gbMLa8
	2zgpOVIkl07p5w2iT9ek4f0FawaZibMIlsiB7yZ8AFCp2LJBLuEQfouxAf9vn4l6k/hfsHZbR4F2E
	KJBFnUqQrD4h2Dm5y+PSc5bH48jGkRZDrEAhwcIC2xndq0DZfd9/54w+JR6eJ5SCwnTI/F4IbDc1i
	WppUqLWyzRBCsM2rFCozhsuyHeurU6e7HZE+LBTEPKZpFS9TGU5fCS0vaPz5xGeyIiLEM/qBaST17
	J2CHyDzzL3it8qFEz9yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL9Va-0000rW-Ll; Sun, 05 Apr 2020 17:56:34 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL9VU-0000qX-JJ
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 17:56:30 +0000
Received: by mail-wr1-x443.google.com with SMTP id k1so5241634wrm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 10:56:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=baFiJWDIXcDbqRxwMJ7sjjGENTtWwfmj+QDEOMNAPIY=;
 b=Ew9379n9xMZ0UhuAE44iezfeOMtFHGExzsbghmN1UPDmTEl1Jj4YPaBdyHT5H6dUPc
 eEZRPy0AEPX0lV6IM8Q5ezPof/RucQeZcv3vG2+wsGI+vGGS9Z7kiRR5evCGLOrklapM
 9XjMQn1dT+x3bRi4EWpwAXN9e3E275r/6d0BrxbO8jXFapcprOpsc1hrYwBDFKUX9q1/
 Z2Lkcdt2nfRmPi2ZSl0Zs8p/kKfrGpXydSIlbItSID91AX/poOE4i2Qzi8ZUq6gFAYXf
 57Pnf8j9KBduFhulx9aOm3MTA2swsxT9jVELk6LkTpgnM+Z18p+UbT3TZAqeLvZJC/DT
 hF5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=baFiJWDIXcDbqRxwMJ7sjjGENTtWwfmj+QDEOMNAPIY=;
 b=VIivRBj/4BD8eficyr3C/xLb/jU49FGnxHU/ARsdu9F2Js3I7aBJV7FHPmXl2iYVSA
 ybd1s5n4lLM9fEfiitymhIDhNRjEeCx8Naamc7NNcxNn2wObyTJE+Pd0xZpfPbw93GA9
 nZT5BE9cqdGd0ZdyTl1clYX+05/kdDhOMo30nHJDPZD0DZOfQG738GSpy6RezGB6kHXQ
 OplKif9oUkroCNPPti5fbODxlb8QbWqm/+zC2Tr9fhwl8m44mYOnTwnkj4rO2ch3gXw/
 lcHilzWIWmC0bXLs5mVvlMgs8zpA+0pljreBDd/ccH40Rkc4iKrOWPqdE3uo5CL8csgw
 bU9Q==
X-Gm-Message-State: AGi0PuZUZAL7FpWW5gj3ojdgayAc8Y46t2L3aRJhjdgAGQfneNu+V6tj
 Ah1GjfZz2OovdErpbYUBQ9aRdGsu
X-Google-Smtp-Source: APiQypJpoHPcVkTc7Sbv9+VocdPMbPRFiuZ9btg2WSmTqQlCTwA2Qnv4W2UYnjlw4Hcm90XWc/aQkA==
X-Received: by 2002:adf:fdd2:: with SMTP id i18mr19348989wrs.165.1586109386897; 
 Sun, 05 Apr 2020 10:56:26 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id r5sm21037015wmr.15.2020.04.05.10.56.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Apr 2020 10:56:26 -0700 (PDT)
Date: Sun, 5 Apr 2020 19:56:24 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Markus Elfring <Markus.Elfring@web.de>
Subject: Re: [PATCH] crypto: sun8i-ss - Delete an error message in
 sun8i_ss_probe()
Message-ID: <20200405175624.GA24925@Red>
References: <c7e1193f-7d8b-7da3-a2a8-e92ca0fd83b2@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c7e1193f-7d8b-7da3-a2a8-e92ca0fd83b2@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_105628_659809_3F4B6387 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [clabbe.montjoie[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Tang Bin <tangbin@cmss.chinamobile.com>, kernel-janitors@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, linux-crypto@vger.kernel.org,
 Colin Ian King <colin.king@canonical.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU2F0LCBBcHIgMDQsIDIwMjAgYXQgMDU6NDU6MjZQTSArMDIwMCwgTWFya3VzIEVsZnJpbmcg
d3JvdGU6Cj4gRnJvbTogTWFya3VzIEVsZnJpbmcgPGVsZnJpbmdAdXNlcnMuc291cmNlZm9yZ2Uu
bmV0Pgo+IERhdGU6IFNhdCwgNCBBcHIgMjAyMCAxNzozNDo1MyArMDIwMAo+IAo+IFRoZSBmdW5j
dGlvbiDigJxwbGF0Zm9ybV9nZXRfaXJx4oCdIGNhbiBsb2cgYW4gZXJyb3IgYWxyZWFkeS4KPiBU
aHVzIG9taXQgYSByZWR1bmRhbnQgbWVzc2FnZSBmb3IgdGhlIGV4Y2VwdGlvbiBoYW5kbGluZyBp
biB0aGUKPiBjYWxsaW5nIGZ1bmN0aW9uLgo+IAo+IFRoaXMgaXNzdWUgd2FzIGRldGVjdGVkIGJ5
IHVzaW5nIHRoZSBDb2NjaW5lbGxlIHNvZnR3YXJlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1hcmt1
cyBFbGZyaW5nIDxlbGZyaW5nQHVzZXJzLnNvdXJjZWZvcmdlLm5ldD4KPiAtLS0KPiAgZHJpdmVy
cy9jcnlwdG8vYWxsd2lubmVyL3N1bjhpLXNzL3N1bjhpLXNzLWNvcmUuYyB8IDQgKy0tLQo+ICAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvY3J5cHRvL2FsbHdpbm5lci9zdW44aS1zcy9zdW44aS1zcy1jb3JlLmMg
Yi9kcml2ZXJzL2NyeXB0by9hbGx3aW5uZXIvc3VuOGktc3Mvc3VuOGktc3MtY29yZS5jCj4gaW5k
ZXggNmIzMDFhZmZmZDExLi5hMWZiMmZiZGJlN2IgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9jcnlw
dG8vYWxsd2lubmVyL3N1bjhpLXNzL3N1bjhpLXNzLWNvcmUuYwo+ICsrKyBiL2RyaXZlcnMvY3J5
cHRvL2FsbHdpbm5lci9zdW44aS1zcy9zdW44aS1zcy1jb3JlLmMKPiBAQCAtNTM3LDEwICs1Mzcs
OCBAQCBzdGF0aWMgaW50IHN1bjhpX3NzX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCj4gIAkJcmV0dXJuIGVycjsKPiAKPiAgCWlycSA9IHBsYXRmb3JtX2dldF9pcnEocGRldiwg
MCk7Cj4gLQlpZiAoaXJxIDwgMCkgewo+IC0JCWRldl9lcnIoc3MtPmRldiwgIkNhbm5vdCBnZXQg
U2VjdXJpdHlTeXN0ZW0gSVJRXG4iKTsKPiArCWlmIChpcnEgPCAwKQo+ICAJCXJldHVybiBpcnE7
Cj4gLQl9Cj4gCj4gIAlzcy0+cmVzZXQgPSBkZXZtX3Jlc2V0X2NvbnRyb2xfZ2V0KCZwZGV2LT5k
ZXYsIE5VTEwpOwo+ICAJaWYgKElTX0VSUihzcy0+cmVzZXQpKSB7Cj4gLS0KPiAyLjI2LjAKPiAK
CkhlbGxvCgpBY2tlZC1ieTogQ29yZW50aW4gTGFiYmUgPGNsYWJiZS5tb250am9pZUBnbWFpbC5j
b20+CgpUaGFua3MKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
