Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C775FDEB4D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 13:46:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2FqkBRdhMlFVqFM0uTbwv6uSMQQ7vNemN3ZeUKPsPiI=; b=Bal87aR81lkq4q
	R6eEUQQPPK3g9me+Bn4g1wCD/ETPeNqfnW6jx6EG9osfGUNnTTufZvKFYNb6BuVYpD56l5mIyJo0g
	JCucfGeRHnLopg3IwowmAkFz9/Uq5881sHB0mQyxXm25o/nCpf7r8LkJGolmipuysMGdbHZCenChl
	o4xzggPaMFEyB6ialdvm7D/F8qKM2LhqQEFyQm667XUY2fckwErAjghSU1dz0iMKE8XD8MlnIp42P
	gXBE+++udoNLXP5F+7jRCzbIQOEmCrDCrNvbrWpi56LRv3p87OSN0LklmmuNKgfkiVS3uask3ZG8j
	ynX5qfQ61rIuhyGmPzHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMW96-0001oD-Nl; Mon, 21 Oct 2019 11:46:44 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMW8t-0001nL-Ko
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 11:46:33 +0000
Received: by mail-wr1-x441.google.com with SMTP id e11so4880074wrv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 04:46:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=r99SrmIAWCZFhQdc6QFpd7cI3BE/OyLzeiOHzb6k9dA=;
 b=AMcWdO51d/gm6zTYZOvF3fnk145odN8cyZWo76JC0ghHEXavyH8vzyGV/wfxZXgYVU
 8XO0R/dE8lsMsAr6TglgjDyz9nMN8Rv53iwvQmDiBbuFFbYDR+bFA3CdxPki/htNdtJi
 QtRQdRNKibX7XrlX7Kwn4lBr3sSZS8Q+I2Tvj/DKaGAONzsjEY09lf0Ms8j/jAKmUqPg
 +WAhJE/Az06Wvtg/NyhKSkvQkniMvQHTVTwGAoWgwvCAsdavTxiHULlfspg416S324mc
 LI6mi/Apx61FqeJytQo2Qtjfmal0sQ8ujYiBBnVLvOimamhx1Sil//g2hH7ByN6Ib5UB
 8hyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=r99SrmIAWCZFhQdc6QFpd7cI3BE/OyLzeiOHzb6k9dA=;
 b=sap2fpF1Fqz+OXyRxHu2nBBV3bzu1puBXKGPhUA+4MNbzaCT5JGbhI+MJveaTX5oTu
 03lpLXZ0Zno2GBWx/1Q0mTjIVqSr++fxcFrdFls2I25T+yO7a45i2SAY0QbQHKFDHfNb
 /MIu/IKhDX6cdYzWWdYwMnzuPWq+r54OgVT4Ghp3hgIMPattiMETuOyu5YlEQ1wxqXoH
 f0KL/NDM0u6qv8y/zuhFFfZrD4R8hlBfInCbJFxHJ/LnafI7SYtqtKqsxd9Vro1bYl+d
 r+ZTdo0VSRFvMuvDll+lKHZVYa0wXpW5fxR2ubzmW1P9q8DXO7ZDnsM1hL57+pid00p0
 ayqg==
X-Gm-Message-State: APjAAAXSrbRMh8+Fjc9WOc25zcKpNZDqDyC7d6ezXOBgi4L3uK42g4Nd
 riU/et+cC5E+H9msT28QTr2HbBL+a6k=
X-Google-Smtp-Source: APXvYqz5RaYEnHFOjq+WSQPnFuuDBupuZAPhnGNk9cAwiBNB0sPg6VYeOLxAVLwf8rQBz7C98J8PXQ==
X-Received: by 2002:a5d:66c6:: with SMTP id k6mr12067264wrw.152.1571658389329; 
 Mon, 21 Oct 2019 04:46:29 -0700 (PDT)
Received: from dell ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id q3sm14546759wru.33.2019.10.21.04.46.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 21 Oct 2019 04:46:28 -0700 (PDT)
Date: Mon, 21 Oct 2019 12:46:27 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Daniel Thompson <daniel.thompson@linaro.org>
Subject: Re: [PATCH v2 2/9] mfd: cs5535-mfd: Remove mfd_cell->id hack
Message-ID: <20191021114627.GE4365@dell>
References: <20191021105822.20271-1-lee.jones@linaro.org>
 <20191021105822.20271-3-lee.jones@linaro.org>
 <20191021111137.ey6cbrrb2af3wj5i@holly.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021111137.ey6cbrrb2af3wj5i@holly.lan>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_044631_684729_A17EDC2C 
X-CRM114-Status: GOOD (  19.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: baohua@kernel.org, stephan@gerhold.net, arnd@arndb.de,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAyMSBPY3QgMjAxOSwgRGFuaWVsIFRob21wc29uIHdyb3RlOgoKPiBPbiBNb24sIE9j
dCAyMSwgMjAxOSBhdCAxMTo1ODoxNUFNICswMTAwLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiBUaGUg
Y3VycmVudCBpbXBsZW1lbnRhdGlvbiBhYnVzZXMgdGhlIHBsYXRmb3JtICdpZCcgbWZkX2NlbGwg
bWVtYmVyCj4gPiB0byBpbmRleCBpbnRvIHRoZSBjb3JyZWN0IHJlc291cmNlcyBlbnRyeS4gIElm
IHdlIHBsYWNlIGFsbCBjZWxscwo+ID4gaW50byB0aGVpciBudW1iZXJlZCBzbG90cywgd2UgY2Fu
IGN5Y2xlIHRocm91Z2ggYWxsIHRoZSBjZWxsIGVudHJpZXMKPiA+IGFuZCBvbmx5IHByb2Nlc3Mg
dGhlIHBvcHVsYXRlZCBvbmVzIHdoaWNoIGF2b2lkcyB0aGlzIGJlaGF2aW91ci4KPiA+IAo+ID4g
U2lnbmVkLW9mZi1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KPiA+IC0tLQo+
ID4gIGRyaXZlcnMvbWZkL2NzNTUzNS1tZmQuYyB8IDMxICsrKysrKysrKysrKystLS0tLS0tLS0t
LS0tLS0tLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRp
b25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21mZC9jczU1MzUtbWZkLmMgYi9k
cml2ZXJzL21mZC9jczU1MzUtbWZkLmMKPiA+IGluZGV4IDJjNDdhZmMyMmQyNC4uOWNlNmJiY2Ri
ZGExIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9tZmQvY3M1NTM1LW1mZC5jCj4gPiArKysgYi9k
cml2ZXJzL21mZC9jczU1MzUtbWZkLmMKPiA+IEBAIC02MiwyNiArNjIsMjIgQEAgc3RhdGljIGlu
dCBjczU1MzVfbWZkX3Jlc19kaXNhYmxlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4g
PiAgc3RhdGljIHN0cnVjdCByZXNvdXJjZSBjczU1MzVfbWZkX3Jlc291cmNlc1tOUl9CQVJTXTsK
PiA+ICAKPiA+ICBzdGF0aWMgc3RydWN0IG1mZF9jZWxsIGNzNTUzNV9tZmRfY2VsbHNbXSA9IHsK
PiAKPiBUaGlzIGFycmF5IGlzIHNpemVkIGZyb20gdGhlIGluaXRpYWxpemVyLi4uCj4gCj4gPiAt
CXsKPiA+IC0JCS5pZCA9IFNNQl9CQVIsCj4gPiArCVtTTUJfQkFSXSA9IHsKPiA+ICAJCS5uYW1l
ID0gImNzNTUzNS1zbWIiLAo+ID4gIAkJLm51bV9yZXNvdXJjZXMgPSAxLAo+ID4gIAkJLnJlc291
cmNlcyA9ICZjczU1MzVfbWZkX3Jlc291cmNlc1tTTUJfQkFSXSwKPiA+ICAJfSwKPiA+IC0Jewo+
ID4gLQkJLmlkID0gR1BJT19CQVIsCj4gPiArCVtHUElPX0JBUl0gPSB7Cj4gPiAgCQkubmFtZSA9
ICJjczU1MzUtZ3BpbyIsCj4gPiAgCQkubnVtX3Jlc291cmNlcyA9IDEsCj4gPiAgCQkucmVzb3Vy
Y2VzID0gJmNzNTUzNV9tZmRfcmVzb3VyY2VzW0dQSU9fQkFSXSwKPiA+ICAJfSwKPiA+IC0Jewo+
ID4gLQkJLmlkID0gTUZHUFRfQkFSLAo+ID4gKwlbTUZHUFRfQkFSXSA9IHsKPiA+ICAJCS5uYW1l
ID0gImNzNTUzNS1tZmdwdCIsCj4gPiAgCQkubnVtX3Jlc291cmNlcyA9IDEsCj4gPiAgCQkucmVz
b3VyY2VzID0gJmNzNTUzNV9tZmRfcmVzb3VyY2VzW01GR1BUX0JBUl0sCj4gPiAgCX0sCj4gPiAt
CXsKPiA+IC0JCS5pZCA9IFBNU19CQVIsCj4gPiArCVtQTVNfQkFSXSA9IHsKPiA+ICAJCS5uYW1l
ID0gImNzNTUzNS1wbXMiLAo+ID4gIAkJLm51bV9yZXNvdXJjZXMgPSAxLAo+ID4gIAkJLnJlc291
cmNlcyA9ICZjczU1MzVfbWZkX3Jlc291cmNlc1tQTVNfQkFSXSwKPiA+IEBAIC04OSw4ICs4NSw3
IEBAIHN0YXRpYyBzdHJ1Y3QgbWZkX2NlbGwgY3M1NTM1X21mZF9jZWxsc1tdID0gewo+ID4gIAkJ
LmVuYWJsZSA9IGNzNTUzNV9tZmRfcmVzX2VuYWJsZSwKPiA+ICAJCS5kaXNhYmxlID0gY3M1NTM1
X21mZF9yZXNfZGlzYWJsZSwKPiA+ICAJfSwKPiA+IC0Jewo+ID4gLQkJLmlkID0gQUNQSV9CQVIs
Cj4gPiArCVtBQ1BJX0JBUl0gPSB7Cj4gPiAgCQkubmFtZSA9ICJjczU1MzUtYWNwaSIsCj4gPiAg
CQkubnVtX3Jlc291cmNlcyA9IDEsCj4gPiAgCQkucmVzb3VyY2VzID0gJmNzNTUzNV9tZmRfcmVz
b3VyY2VzW0FDUElfQkFSXSwKPiA+IEBAIC0xMTUsMTYgKzExMCwxNiBAQCBzdGF0aWMgaW50IGNz
NTUzNV9tZmRfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsCj4gPiAgCQlyZXR1cm4gZXJyOwo+
ID4gIAo+ID4gIAkvKiBmaWxsIGluIElPIHJhbmdlIGZvciBlYWNoIGNlbGw7IHN1YmRyaXZlcnMg
aGFuZGxlIHRoZSByZWdpb24gKi8KPiA+IC0JZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUoY3M1
NTM1X21mZF9jZWxscyk7IGkrKykgewo+ID4gLQkJaW50IGJhciA9IGNzNTUzNV9tZmRfY2VsbHNb
aV0uaWQ7Cj4gPiAtCQlzdHJ1Y3QgcmVzb3VyY2UgKnIgPSAmY3M1NTM1X21mZF9yZXNvdXJjZXNb
YmFyXTsKPiA+ICsJZm9yIChpID0gMDsgaSA8IE5SX0JBUlM7IGkrKykgewo+IAo+IC4uLiB3aGlj
aCBtZWFucyB0aGlzIHRyYW5zbGF0aW9uIGZyb20gQVJSQVlfU0laRSgpIHRvIE5SX0JBUlMKPiBp
cyByYXRoZXIgb2RkLgo+IAo+IEkgZG9uJ3QgY2FyZSB3aGV0aGVyIHRoZSBhcnJheSBpcyBzaXpl
ZCB1c2luZyBOUl9CQVJTIG9yIHRoZSBsb29wCj4gdXNlcyBBUlJBWV9TSVpFKCkgYnV0IElNSE8g
dGhlIGxvb3AgYm91bmRhcnkgY29uZGl0aW9uIG11c3QgbWF0Y2gKPiB0aGUgYXJyYXkgZGVjbGFy
YXRpb24uCgpTb3VuZHMgcmVhc29uYWJsZS4KCj4gV2l0aCB0aGF0IGZpeGVkIGZyZWUgdG8gdGhy
b3cgdGhlIGZvbGxvd2luZyBvbnRvIHRoZSBuZXh0IHJldjoKPiBSZXZpZXdlZC1ieTogRGFuaWVs
IFRob21wc29uIDxkYW5pZWwudGhvbXBzb25AbGluYXJvLm9yZz4KClRhLgoKLS0gCkxlZSBKb25l
cyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDi
lIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vi
b29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
