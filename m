Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C1F1A60C9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 23:58:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YZ62+Fsdrd2fEICM6uMkpZSHdimAP36F2o43Zmvu0Ew=; b=Mj/qYHmc1ec+2hH8Q6ITMA0r6
	ZxYROQhqRDos4HBtKaZX+2Hot9WFo3aYBq75HExT4Cb24uQYT+RP00MXg636fSMri6X7mfTU5hvnK
	HX1YgWu8v+r3k7USGH749Gg1Hsbc5wLIt607AjUfx/5diBl8dHyYdJJaA1VzrG5R1vV/sM5QI2dQr
	XXA8mRMuy9vsDo68eH/hH/7n9lIC9lM8TYKi3SgjLv+nnboeigLNN9jnVrpqVb0kuNL1OefGRb/mI
	kygYhW4mPyh1ER/LQtl7j/zq/s9hU2rBrLXgQHfUZnm+MV/32zs8pENtyrZyzQTWjud3IE72Lnvpt
	HqoCZRN/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNkcO-0008Vn-8M; Sun, 12 Apr 2020 21:58:20 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNkcH-0008U1-Qp; Sun, 12 Apr 2020 21:58:15 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 1A488AC5B;
 Sun, 12 Apr 2020 21:58:07 +0000 (UTC)
Subject: Re: [PATCH] pinctrl: actions: fix function group name for i2c0_group
To: Amit Singh Tomar <amittomer25@gmail.com>, manivannan.sadhasivam@linaro.org
References: <1586702060-3769-1-git-send-email-amittomer25@gmail.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <2d629e23-ddb1-6033-5ea3-fe9e02476e18@suse.de>
Date: Sun, 12 Apr 2020 23:58:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <1586702060-3769-1-git-send-email-amittomer25@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_145814_017360_CEF9B5D9 
X-CRM114-Status: GOOD (  17.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: matheus@castello.eng.br, andre.przywara@arm.com, linus.walleij@linaro.org,
 linux-actions@lists.infradead.org, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpBbSAxMi4wNC4yMCB1bSAxNjozNCBzY2hyaWViIEFtaXQgU2luZ2ggVG9tYXI6Cj4gQWZ0
ZXIgY29tbWl0IDZmODczNTllOGJjYWY4ODM4MWI5YzljMDM4OTI5ZTBlNjg3MmQzMDgoInBpbmN0
cmw6IGFjdGlvbnM6IEZpeAo+IGZ1bmN0aW9ucyBncm91cHMgbmFtZXMgZm9yIFM3MDAgU29DIikg
Zm9sbG93aW5nIGVycm9yIGhhcyBiZWVuIG9ic2VydmVkCj4gd2hpbGUgYm9vdGluZyBMaW51eCBv
biBDdWJpZWJvYXJkNy1saXRlKGJhc2VkIG9uIFM3MDAgU29DKS4KPiAKPiBbICAgIDEuMjA2MjQ1
XSBwaW5jdHJsLXM3MDAgZTAxYjAwMDAucGluY3RybDogaW52YWxpZCBncm91cCAiaTJjMF9tZnAi
IGZvciBmdW5jdGlvbiAiaTJjMCIKPiAKPiBUaGlzIGNvbW1pdCBmaXhlcyBpdCBieSB1c2luZyBj
b3JyZWN0IG5hbWUgZm9yIGkyYzBfZ3JvdXAuCj4gCj4gRml4ZXM6IDZmODczNTkgKCJwaW5jdHJs
OiBhY3Rpb25zOiBGaXggZnVuY3Rpb25zIGdyb3VwcyBuYW1lcyBmb3IgUzcwMCBTb0MiKQoKVGhl
IGNvbW1pdCBoYXNoIHNob3VsZCBoYXZlIDEyIGRpZ2l0cy4KClBsZWFzZSBhbHNvIGNoZWNrIHRo
ZSB3aGl0ZSBzcGFjZXM6IFRoZSBzdWJqZWN0IHNlZW1zIHRvIGhhdmUgdG9vIG1hbnkgCmFmdGVy
ICJhY3Rpb25zOiIsIGFuZCB0aGVyZSdzIG9uZSBtaXNzaW5nIGJlZm9yZSBlYWNoIHBhcmVudGhl
c2lzIGFib3ZlLgoKUmVnYXJkcywKQW5kcmVhcwoKPiBTaWduZWQtb2ZmLWJ5OiBBbWl0IFNpbmdo
IFRvbWFyIDxhbWl0dG9tZXIyNUBnbWFpbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL3BpbmN0cmwv
YWN0aW9ucy9waW5jdHJsLXM3MDAuYyB8IDIgKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BpbmN0cmwv
YWN0aW9ucy9waW5jdHJsLXM3MDAuYyBiL2RyaXZlcnMvcGluY3RybC9hY3Rpb25zL3BpbmN0cmwt
czcwMC5jCj4gaW5kZXggNDdhNGNjZC4uZjU3OWE2NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3Bp
bmN0cmwvYWN0aW9ucy9waW5jdHJsLXM3MDAuYwo+ICsrKyBiL2RyaXZlcnMvcGluY3RybC9hY3Rp
b25zL3BpbmN0cmwtczcwMC5jCj4gQEAgLTE0MzUsNyArMTQzNSw3IEBAIHN0YXRpYyBjb25zdCBj
aGFyICogY29uc3Qgc2QyX2dyb3Vwc1tdID0gewo+ICAgc3RhdGljIGNvbnN0IGNoYXIgKiBjb25z
dCBpMmMwX2dyb3Vwc1tdID0gewo+ICAgCSJ1YXJ0MF9yeF9tZnAiLAo+ICAgCSJ1YXJ0MF90eF9t
ZnAiLAo+IC0JImkyYzBfbWZwX21mcCIsCj4gKwkiaTJjMF9tZnAiLAo+ICAgfTsKPiAgIAo+ICAg
c3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCBpMmMxX2dyb3Vwc1tdID0gewo+IAoKCi0tIApTVVNF
IFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgKTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8
cm5iZXJnLCBHZXJtYW55CkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIKSFJCIDM2ODA5IChBRyBOw7xy
bmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
