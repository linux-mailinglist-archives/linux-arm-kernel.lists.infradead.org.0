Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A3E17D67B
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 22:43:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AwxEDtQckie20beIVD1suDWJKLSKLGkyTImAQtAVWOA=; b=U8lZsYy2xD692u
	BWdmAewF9TEKLuwJOIKeulSWZQRGVvcc1rlsre966BP75FJG7D0zok5cmZcZbcjlL9bkmtWYOqcWB
	fMF2aPDzsfnuyZA1BaUtKBRPuC11WqFD63YHdV10B3DnyaZgW66l+vvRUZn9N+X0gXoLe9lDZ2ctY
	n1XtytaZbJlI7dwv9nXefcO5nr88rMHRPL0f92iBtY35o1ypXk2HhBsXg+sC0tjpalWF3ppRwcIMR
	eCH6G7HdQ+6FoWVTyYIcfNdBYa42HN4Z75ATkffmRPpfo9adBLYX0g6slyuCYy8zL3s42HwPq5ozz
	HBjDkdrj6Igva9h2mRaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jB3hD-0007TY-RW; Sun, 08 Mar 2020 21:42:51 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jB3h6-0007Ru-QA
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 21:42:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1583703755;
 bh=QhIwll7TLH2Jreh1ADKlC/MVozajL5VA7trTAIMDJTY=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=LpbH/bwl7AT5TCEiuJ0PCG4rj6Y7/aiCe964zWNDaCL8Z9RzUloJpxT55O9oHi8T9
 n1M1ylgMwtWFGF7Bo3f/0ZMsCzgP2PskpgVJqyU5pGAmgX5SuxUTgK6yI/g2pdxkUh
 +d2O5dovMoDTDstPiM2/JZAHe7frsoMWS052kq5s=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from longitude ([37.201.214.212]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1Mwwdf-1jZcn33e5T-00yMza; Sun, 08
 Mar 2020 22:42:34 +0100
From: =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
To: linux-gpio@vger.kernel.org
Subject: [PATCH] dt-bindings: pinctrl: at91: Fix a typo ("descibe")
Date: Sun,  8 Mar 2020 22:42:30 +0100
Message-Id: <20200308214230.15193-1-j.neuschaefer@gmx.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:Dc3j1YLbf/2HoLi7BPlskXwPB9N0VyEc0ekYYBJEurrvN//f1T9
 lJvedlkrjf1u735amuVjLky9ZkeqHLDHCsORuzaTG7N84iPrIvUBx7jY0rsNcHVLQtSmq88
 w9KzLIlQLKBM5/9lyR0CcMtEuEO3+iLyF0mP4VxMu2f6AYFYjErCE1BZTB7eOltLnTdb7PT
 vABU67GshUVIOGnCKfQ1g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:FTtg1mIMvkg=:/p2vluF2sfmKFocK6e5e1q
 Ih1hIAQhIJKqqZTYQzIxJ70JgO+5D0z2Gzjl7qgn9it8bbaI7pxSna1Rzz7GL7eE06X5KKC/6
 rF53tH7K1cS3lmcXoU2z1Tvq70kuseK2g9VEzYq5xHZo4oumGrybMAXUg4VluZNH8kBlMNPmp
 x1aDCogXkxbDxpaltnQXlWxQMX6ozzhp7EACadjbk1ZLtR91Wd8JZV1s0eSGWhK2QU2Jjfkwg
 MqBs+7kCTrSF472zrXu8uLVqNDsCV9S23czq8Es4fgz0QFKet1EaQkWmY5/dWS2ytpaX9Io3y
 wwV8fR87f1laD/Nc/I1zzB9JQpOCq9W6Kd/5bfPEd0zT+6iEuEa48raeadDBJJ8lops8f9cHn
 5MHhQFPTRMcq8cd2HU1tbwdnCGXaqfuU8ts3a9umUzjpDTyit9UndMZGD66+zWxDOuC6u7HLE
 rk+gG9L+qB/I+QH0GWi8bHPBoJbABYqZ+PJKw0LK1mXYvmDvjnMqtLpR77wEd4Cu2H7u/e5zf
 E79ozeweIaWAz2oawmiVhpb85uwq+9teOzW+v1Pzh2k2n2jv+MCUVIMCTMsiPJw9199gJA3c9
 OWEaRI61wZ3gu/HeDakj4cNlo6B4jPrQFCE284cxDLxCX/myCjY0cTuf+/d4257naDGoyrOnk
 l/deWxOolusgIUn/Ge4eePpWCPD0s2MrJK/d7KHckvUFfoYUeDq24skyd0OqPtK8uypFV4wb9
 wcOrs1bOeioJqsussWY9Srgi1rrhaTq7v+cCaCgYERCrSEslLH7cVX5KOJ1vC7hQR1B/PlkZz
 i3xcrvRmbdwwKh6WfDSbtqt6DdCvEsxLvB5504mhGTqyQlgicoXgcFo9vYkzwwnSDqjQAeVgo
 2HyDtl88vk6qKzZXijoxpb+syL36rlEwnfueUJnHZg2F3/x8FHEsiJogzWHl6wPhfIqD6k+Gt
 141xK1V+WbLpFzl2fmjJ0ALP2ilr+yfYQ3RbMaYXrKIro/zJpL+e1CEmVzU3LZDGcgnofWG+Z
 YmI7mdKbJItJ6gNiChdQuH6m0YCnZlVdt64zSK/xSjKL2ka6I5IC0DbcWNBT8RVecKA3rzaTf
 sTq+/sh4TWiR0YMCo9ZX2PCsf+tg8xc/TqWFE/ZzxqX/Twvkwrn+F6WlDDCmUA4q/8dHgveRW
 ymOEhH87NNPHL8IJ9jQ4mfqFwJNIizoykNDQyEfEL7mJWYBFVnkmha+nnSuQAXD45lKArZMT3
 Yz372AYkA9UuPe8ka
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_144245_143444_C82A80EF 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [j.neuschaefer[at]gmx.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U2lnbmVkLW9mZi1ieTogSm9uYXRoYW4gTmV1c2Now6RmZXIgPGoubmV1c2NoYWVmZXJAZ214Lm5l
dD4KLS0tCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9waW5jdHJsL2F0bWVsLGF0OTEtcGluY3Ry
bC50eHQgICAgICAgICAgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEg
ZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcGluY3RybC9hdG1lbCxhdDkxLXBpbmN0cmwudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3BpbmN0cmwvYXRtZWwsYXQ5MS1waW5jdHJsLnR4dAppbmRleCBlYjM5ZjUw
NTExNTkuLmU4YWJiZGFkN2I1ZCAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3BpbmN0cmwvYXRtZWwsYXQ5MS1waW5jdHJsLnR4dAorKysgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGluY3RybC9hdG1lbCxhdDkxLXBpbmN0cmwudHh0CkBA
IC0zOCw3ICszOCw3IEBAIEJhbms6IDMgKEEsIEIgYW5kIEMpCiAgIDB4ZmZmZmZmZmYgMHg3ZmZm
M2NjZiAgLyogcGlvQiAqLwogICAweGZmZmZmZmZmIDB4MDA3ZmZmZmYgIC8qIHBpb0MgKi8KCi1G
b3IgZWFjaCBwZXJpcGhlcmFsL2Jhbmsgd2Ugd2lsbCBkZXNjaWJlIGluIGEgdTMyIGlmIGEgcGlu
IGNhbiBiZQorRm9yIGVhY2ggcGVyaXBoZXJhbC9iYW5rIHdlIHdpbGwgZGVzY3JpYmUgaW4gYSB1
MzIgaWYgYSBwaW4gY2FuIGJlCiBjb25maWd1cmVkIGluIGl0IGJ5IHB1dHRpbmcgMSB0byB0aGUg
cGluIGJpdCAoMSA8PCBwaW4pCgogTGV0J3MgdGFrZSB0aGUgcGlvQSBvbiBwZXJpcGhlcmFsIEIK
LS0KMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
