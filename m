Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E120C19EAB2
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 13:23:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l39OLnjYBmbupmiolGdhvooN3zUz5T1+aLzOtf2x2WU=; b=LZteB481/Wdt3C
	/FuuJoDpb42tBFICPue227eyn6Jgjw9W2+dtxNYPGSeEJfZBn7MffgL6PSXHSS/4yQupmvWYsBPzG
	Mlk5Ne9Odru7FK2+FQol8gGVJs+gtoja0lrdzaiugSTyZbTiYkIdgumM56S7SDL9NQ75h9U2LyCgE
	wcJ96RMvLv3s1TKgEdor2swCpE3Yu3/QMIkpFWhCGm6/YKFFsrChX/k8xYQfV/OE+u2pNBAJRgkyJ
	R4u7BgSOtrqt+Nyqky7Q8aJqKiGuf8XVqafxsOTy2SeksWo54tGiT/i0rD1mCSTTUuNR9XEcF7EbK
	VN1w+/ekmvkyd11niLZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL3NB-00011U-Mj; Sun, 05 Apr 2020 11:23:29 +0000
Received: from mout.web.de ([212.227.17.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL3N4-0000zt-6X; Sun, 05 Apr 2020 11:23:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1586085787;
 bh=bgK3xwLWxipoZhNigNcDnx54QrzQkey9ZhjORtkbjjg=;
 h=X-UI-Sender-Class:To:Cc:From:Subject:Date;
 b=TJrUOVGFnJnDWw5QZ0Vmt3bld9nMEWR7VBpaCiQAQPn/W6XF2R4Yw8YI6a+mWnWoj
 7wX+X+oqNrsL8wFKGi8vxKub5/2NGkHtkg0qse7vyg45/t1DZRzPJv9vGHZk089Khi
 0BjaBXNg40qkgb3LOy3wJIMNb9P6+OQZnETi7iew=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.3] ([93.131.99.70]) by smtp.web.de (mrweb101
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MIvPJ-1jIZKE2XAf-002XIo; Sun, 05
 Apr 2020 13:23:07 +0200
To: dri-devel@lists.freedesktop.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Kevin Hilman <khilman@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: [PATCH] drm/meson: Delete an error message in meson_dw_hdmi_bind()
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <76f24122-4d3f-7670-9f06-edb4731a0661@web.de>
Date: Sun, 5 Apr 2020 13:23:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:jIH44cL5ff/53XO6FY9rhkiaPwSihkaHpVJXF9fblVIPyKl4nQc
 x6S1oCrQA/3nGj8URCr/aMXDXsPukBZP4UlgtBGpU9uNHtkGEIr+T2isVdSjYo/pwGt0WpK
 3nZ9xsPoErd91by17YD+wnwyQCIDH9Bz3J9ta17KopXSx8agKBJxBw/7dVwIunWGLfD1719
 daMeVctCru9sbm7t2EoCg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4HRCdynSaAk=:Q/tIEajrmy/O/1iFN2xcAR
 0YXl+pGmfqrDXeCctVU4GITDp9Wdmc4tbh3JWTXzy9BPEY7M8xRdREH665Vq53tB7RDv4GSKe
 SD3cqyyUjXryiAu9DzAQIHtDKmA0TRhEIm5Ek9dHntH5H7ievZ1YPHtG+VyF5wHvCExHLZIXl
 MlnoBH0/wjUuoOkxhIpbS6IQP+06wwn72yIIubdk/zy2nFsKUu5VE9prKgSUY/FeqxpUp1Q8H
 rwlHEnI6kSrGd/ZDD1YhQ2LTLL0KL/5cJQzlM700P7oMMWVlqzSsY/48A94XMoBBGmJtTnthJ
 NeZSTpTUcriGoLhkqFOHjxXu0IZKyO00g5ZlEGo6XpQdb4rFSyFxTXoENzOyw47d0Uwe9V0yp
 QJ0Wss05HEXmTPKntOqaU0C2bHmU6Dll1ZCczdazdYbMmykNJ7m82daCZ898TlrGXkUXABnla
 hcG+a/Ku3RSrpOR+8DiH4yOQHkGVz17DOp+8I7fbpWfbnguXamhtE7vWzszVEHJp18eecyt0x
 4U46F9AW0eVkZs3dGHZhjO0H7wB0YqFO18gGgumWqE5vUCqtklCfqqvn6DqnR7A4XU2a0lyS+
 8/Jcb3fAr6t/M0N/CeCdFlnrpNH/VQvm9N/zcMcgKW3ZVjO+3XE6iEBECzNrGSNckCR4xYuKt
 J/WJ85/rLxO6AR2DwmlyTmocY2u7Od/dGiJCQtpEbL9pe7KBG29wyo0CPDvHnof8VBn9jvFMr
 yVDI9aeVr16KyjDR7Yu+nlW+Pog7MQLrBb5fcAt7ksjClFmjz9od0X479/ZEJfGJMCviGrsn0
 EXLwMGHZBbfPWOcQUhoTPi6RDgOdVzqqbgGzouc38Okx8tXQs5MX7+F2ie9SsmtnLQgbWHhMs
 /BPn5N1qaP7wnYTfMSZ9K/VM06in1VQG6c4/qsEJ1VKayw7Guma329HoODqMziK0chawTMVlf
 rXfuW3iUsCluUibtkS1typOXeRNnPvueJY6/Ybjy+Pbr5zb883teoX/wuid6lLh2o6/R2j9ck
 D2ysLV6IV3FJoA3Kwj4pEhm6VguSKZbvJPhbnBEhh5LNu6wBNT/3+MtWRDRuNSk8WPi7wRMDj
 0lKajTGSfuSenekl3HNCOT3MfAWcyygw4FU344hotes9UPY1/p1vtz1afWZPNFUXAewGUWNGD
 PgnsXnjBDNg4bW1vaT4yVUy8MvvANL+dE6BR2ZRPUDOsMIZ9P5YDgOQGGOZZUPIt9GVGGkID1
 plaBipocdjPhxmnJ4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_042322_571322_F312D6A7 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.12 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [markus.elfring[at]web.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.17.12 listed in wl.mailspike.net]
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
Cc: kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Tang Bin <tangbin@cmss.chinamobile.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWFya3VzIEVsZnJpbmcgPGVsZnJpbmdAdXNlcnMuc291cmNlZm9yZ2UubmV0PgpEYXRl
OiBTdW4sIDUgQXByIDIwMjAgMTM6MTM6MDMgKzAyMDAKClRoZSBmdW5jdGlvbiDigJxwbGF0Zm9y
bV9nZXRfaXJx4oCdIGNhbiBsb2cgYW4gZXJyb3IgYWxyZWFkeS4KVGh1cyBvbWl0IGEgcmVkdW5k
YW50IG1lc3NhZ2UgZm9yIHRoZSBleGNlcHRpb24gaGFuZGxpbmcgaW4gdGhlCmNhbGxpbmcgZnVu
Y3Rpb24uCgpUaGlzIGlzc3VlIHdhcyBkZXRlY3RlZCBieSB1c2luZyB0aGUgQ29jY2luZWxsZSBz
b2Z0d2FyZS4KClNpZ25lZC1vZmYtYnk6IE1hcmt1cyBFbGZyaW5nIDxlbGZyaW5nQHVzZXJzLnNv
dXJjZWZvcmdlLm5ldD4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vbWVzb24vbWVzb25fZHdfaGRtaS5j
IHwgNCArLS0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDMgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21lc29uL21lc29uX2R3X2hkbWkuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9tZXNvbi9tZXNvbl9kd19oZG1pLmMKaW5kZXggZThjOTQ5MTVhNGZjLi42
NGNiNmJhNGJjNDIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tZXNvbi9tZXNvbl9kd19o
ZG1pLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL21lc29uL21lc29uX2R3X2hkbWkuYwpAQCAtMTAz
NCwxMCArMTAzNCw4IEBAIHN0YXRpYyBpbnQgbWVzb25fZHdfaGRtaV9iaW5kKHN0cnVjdCBkZXZp
Y2UgKmRldiwgc3RydWN0IGRldmljZSAqbWFzdGVyLAogCQlyZXR1cm4gUFRSX0VSUihkd19wbGF0
X2RhdGEtPnJlZ20pOwoKIAlpcnEgPSBwbGF0Zm9ybV9nZXRfaXJxKHBkZXYsIDApOwotCWlmIChp
cnEgPCAwKSB7Ci0JCWRldl9lcnIoZGV2LCAiRmFpbGVkIHRvIGdldCBoZG1pIHRvcCBpcnFcbiIp
OworCWlmIChpcnEgPCAwKQogCQlyZXR1cm4gaXJxOwotCX0KCiAJcmV0ID0gZGV2bV9yZXF1ZXN0
X3RocmVhZGVkX2lycShkZXYsIGlycSwgZHdfaGRtaV90b3BfaXJxLAogCQkJCQlkd19oZG1pX3Rv
cF90aHJlYWRfaXJxLCBJUlFGX1NIQVJFRCwKLS0KMi4yNi4wCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
