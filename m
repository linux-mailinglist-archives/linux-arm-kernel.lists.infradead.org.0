Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4008019E634
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 17:46:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z+UsF37aPIr/tCMVqn7mpWJMBSFroaqDQ6G0dAr2yUA=; b=C20d7HeLG9vj2T
	AvCULOOBtQre7kiG7ePO9kOLCCecCMtWuURL5jfyDrVa56X5WhFuUKrYOl2KnX0jc5ezuq2tuBfvg
	IXh8KILO6vtbVGn4xv+2DzQ+DoZZBRW+1XHUPBRLLak52VVpve7oifHEeLDT8ye/3MJRehSl1ZWm9
	BH3x+Vxc73CZBz1FhKfe17fLocWtkUjlb1hGOfzyQfEa6tJ/vgfchTP8RVrOYHGITYUwCtdnrQEYu
	WYVEsFTZ7fn0y3ReCMaMx3I0PUhVkmoEM0HiIhsIJWhIs7h1Tb3iNRTwn5IscPcpNmhfUy+PPj2zJ
	3CTBs+UEqMH8+vlgNJqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKl0D-0004hr-Dz; Sat, 04 Apr 2020 15:46:33 +0000
Received: from mout.web.de ([212.227.17.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKl06-0004hS-I4
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Apr 2020 15:46:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1586015133;
 bh=KyZgrczXO1krNBmQKvyLbqtYplTFmZVQJf5tbfA9XAQ=;
 h=X-UI-Sender-Class:To:From:Subject:Cc:Date;
 b=rv/r05mv0bWQEBoppGvuBm7ghbmsMeciPx+aPne91DIO611O1oUD/TG8D0vALtTKw
 2ns84eIp+dhVzT4zAF/bXkG+dWN+F57/KIrjIWLWLZlfiysHZpN8VVM+WpQmI6o+ts
 XPPhd6BgiMz8EzCq+QV8MsjN7zFu6+YLZeQSLBnw=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.3] ([93.132.181.229]) by smtp.web.de (mrweb103
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0LvjrE-1jFAOn0ImK-017RWz; Sat, 04
 Apr 2020 17:45:33 +0200
To: linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, Colin Ian King <colin.king@canonical.com>,
 Corentin Labbe <clabbe.montjoie@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Herbert Xu <herbert@gondor.apana.org.au>, Maxime Ripard <mripard@kernel.org>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: [PATCH] crypto: sun8i-ss - Delete an error message in sun8i_ss_probe()
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <c7e1193f-7d8b-7da3-a2a8-e92ca0fd83b2@web.de>
Date: Sat, 4 Apr 2020 17:45:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:5FpBcij+BqOT5cKfMWMBchVp2+6GIQ1CHyZL6N5QI8MkwA+O2Y/
 p+TJVNMRqZYn1e7bnPMHnFMzKgN39KQhIJiEq7PKeT1pKnlSy/EX8Iddy9Didxe39peh21j
 s/J4i9Uxd91JkSaS4pAM7JrhRUndYCix3Mn0PsQKzujGxemw0gtFswfvFa93GQsOUorpFsU
 7Ia7W6sahLiDignwC8gjQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zQK96incmDI=:eomnBbkuIuiqgCU+A935Is
 YmUsLZRJlPk7iguUUreebPM92qLvn/xDTrRj5V4L2c7ADdAY6KqATOyTgAxWxBrhjboWo+ur/
 ejH60oYqgME00FUUqetvAxM3y8MDL0epgVcZDIFKxju0NxW07gOWFOhMkFFJibOghuM1FQKCD
 y3fxDI2cO2EiXEbSWfE2HpjZ/UH/5CKPXj5yNNBGvm1YBKl/xtBD4+Kc9GEL5sb06gq4O8wGO
 2qvYGtbpzIfaUlXAYul4ugxrm28TtOx5spmbOhY5hUN3jwWMEFn8uCgoYy8xkN00l1UZzxMPa
 wRKQkLe9607pG9nZ1mOjBJ/LxLy/1L2PZWWidYV3MlCHl/Tv9fzZJIYlqNdRB0vibxLf6+OdV
 qk9BQOPjD/O7SScwCY+weXd/fxpLc9hcY9MQzqJj5JRxHkgWdFJpB5BjQd6Si/uHAquCn+cAB
 Jrgw15d6egWJ/W8iSykIa+eZ67vt4PvoulS1TeGI0YBAs8GSfuG2L6JFkn1De9b0eFNphMzEF
 4JUXNZlTo26pDycPV2u6UmOUca1K70BUJwejRexC2YJHwlCLoNq94NlmE5zmtJRyd7qvPnvNa
 EP1xiQtXkEe0YHY2uHDRtH9aBlRmgSAHLSGGkiW9GHtk3sH+ZUJK9HFwmqxIlG53JkHApH9Bj
 vwXRoo2KBy0336qnKeTPdOqj+T7x7+dD/AgGEgA65XXB/Nz/Iq3aOOIHZCkMj/wmPylFmiScX
 NeTzdZ919cMEWQpBjmMCirqr9HgtNg2snF3XSgxFC750qiSQeVLwqPKFXZRko5hOcukwzAISD
 q75Fjg806E2uo+KF4Fo6uARGG5hxbQoMWV2by9F168i47PexgEmlitC+x64rVSU05qr3E2f1V
 qAgSkfKBe89l4JEDVUI4IMBsQJM+4GAs9I/0JGPg3u758Jek7w3AkMBhrHtXm80wJbllvUuqq
 FbOG4sKsCXZ9lYIH8+Kqw4sh+7Q7Qrj5mcLcpQkSoMfVw2IG7tT5It5YPLmJU97j7gNKHfm4I
 MZx7cnVl03QqSxuBLCsRvbjrgYnLyW98UHkBZyymPx+Vj6yPfeIzG84x3oS4z35VKbeo69cgQ
 JcXsgFmIEZtKnA3YnqtXkOCAX1GifcGJDKLHsaA77P4Fzonp4EETMciiFTPIney0En+FZdFTX
 FiLSc4ygy5gJQZNP/QjCpQ7W5qgJwCxc4gZDdfrSSIqfC5Z2JatjN2b2DtQNCJDRK4Ldvkj55
 C9cuyhZFlMQppOhXF
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_084626_883549_0B6D8614 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.12 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [markus.elfring[at]web.de]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.17.12 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Tang Bin <tangbin@cmss.chinamobile.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWFya3VzIEVsZnJpbmcgPGVsZnJpbmdAdXNlcnMuc291cmNlZm9yZ2UubmV0PgpEYXRl
OiBTYXQsIDQgQXByIDIwMjAgMTc6MzQ6NTMgKzAyMDAKClRoZSBmdW5jdGlvbiDigJxwbGF0Zm9y
bV9nZXRfaXJx4oCdIGNhbiBsb2cgYW4gZXJyb3IgYWxyZWFkeS4KVGh1cyBvbWl0IGEgcmVkdW5k
YW50IG1lc3NhZ2UgZm9yIHRoZSBleGNlcHRpb24gaGFuZGxpbmcgaW4gdGhlCmNhbGxpbmcgZnVu
Y3Rpb24uCgpUaGlzIGlzc3VlIHdhcyBkZXRlY3RlZCBieSB1c2luZyB0aGUgQ29jY2luZWxsZSBz
b2Z0d2FyZS4KClNpZ25lZC1vZmYtYnk6IE1hcmt1cyBFbGZyaW5nIDxlbGZyaW5nQHVzZXJzLnNv
dXJjZWZvcmdlLm5ldD4KLS0tCiBkcml2ZXJzL2NyeXB0by9hbGx3aW5uZXIvc3VuOGktc3Mvc3Vu
OGktc3MtY29yZS5jIHwgNCArLS0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDMg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9jcnlwdG8vYWxsd2lubmVyL3N1bjhp
LXNzL3N1bjhpLXNzLWNvcmUuYyBiL2RyaXZlcnMvY3J5cHRvL2FsbHdpbm5lci9zdW44aS1zcy9z
dW44aS1zcy1jb3JlLmMKaW5kZXggNmIzMDFhZmZmZDExLi5hMWZiMmZiZGJlN2IgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvY3J5cHRvL2FsbHdpbm5lci9zdW44aS1zcy9zdW44aS1zcy1jb3JlLmMKKysr
IGIvZHJpdmVycy9jcnlwdG8vYWxsd2lubmVyL3N1bjhpLXNzL3N1bjhpLXNzLWNvcmUuYwpAQCAt
NTM3LDEwICs1MzcsOCBAQCBzdGF0aWMgaW50IHN1bjhpX3NzX3Byb2JlKHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2UgKnBkZXYpCiAJCXJldHVybiBlcnI7CgogCWlycSA9IHBsYXRmb3JtX2dldF9pcnEo
cGRldiwgMCk7Ci0JaWYgKGlycSA8IDApIHsKLQkJZGV2X2Vycihzcy0+ZGV2LCAiQ2Fubm90IGdl
dCBTZWN1cml0eVN5c3RlbSBJUlFcbiIpOworCWlmIChpcnEgPCAwKQogCQlyZXR1cm4gaXJxOwot
CX0KCiAJc3MtPnJlc2V0ID0gZGV2bV9yZXNldF9jb250cm9sX2dldCgmcGRldi0+ZGV2LCBOVUxM
KTsKIAlpZiAoSVNfRVJSKHNzLT5yZXNldCkpIHsKLS0KMi4yNi4wCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
