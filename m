Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9BE7928F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 19:46:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=295dBikex9+i2rcPv2d/1wqr0uCuCdbYHvWtYthlgdc=; b=rTbAya2Eq0zubd
	l2uB1ZOaHGH58Bte6B+/DkzcLL9fyOjGB7FNkT9waAdWoMd9M6e6w8KiWsVwK68sWiU6eJksRn7/f
	zbmT62tDX1/X0bbf7JxtOk+mu/XMeQOBUSzmdO4vVO0mctZrbCMcFsnbiB2vKl++wpsZZEN70CPnX
	A+Ta3Henks+hEafpurgf31psIMke1TndU6K9o5Q7/AnGufd2PBpkmCc70Dr0N2F7Emuzpn7fsZxGH
	u+dU6z6YVVEZG1HMvSkzEqyfLsM5uwCm6cBKW74K9zLI1A7HDOx9nXC0iCckA78kIvIrFyRiqBSJv
	Lf0zh6NYyfrgy1htzrMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs9ia-0001Db-9m; Mon, 29 Jul 2019 17:45:52 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs9fq-0006EC-7e; Mon, 29 Jul 2019 17:43:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1564422129;
 bh=RdzV7ibrX+DwP2/BCdjL01crPjcknaV01tD0aoWIdDg=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=R9ZrFy29vedWnJJeYzRWI5kBNGitmtGhHhCP3B9ig27ts59fWQFKCzV97vz/8OzDY
 n6mCgzrWb1jtHN57Y6ItnOZCHxkP8tDgVFPdEL5iLjcvrd5ZsiqKmSnZEHKTLgK4Ir
 DeeCkmABc5HnZPTN1+C1vbQYuY0J+H1KK2m2mVGU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([185.76.97.79]) by mail.gmx.com
 (mrgmx001 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0LzskF-1iV7102Ez5-014xXw; Mon, 29 Jul 2019 19:42:09 +0200
From: Frank Wunderlich <frank-w@public-files.de>
To: Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Allison Randal <allison@lohutok.net>,
 "David S. Miller" <davem@davemloft.net>, devicetree@vger.kernel.org,
 Eddie Huang <eddie.huang@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-pm@vger.kernel.org, linux-rtc@vger.kernel.org,
 Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Richard Fontana <rfontana@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Sean Wang <sean.wang@mediatek.com>, Sebastian Reichel <sre@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 "Tianping . Fang" <tianping.fang@mediatek.com>
Subject: [PATCH v3 00/10] implement poweroff for mt6323 / bpi-r2
Date: Mon, 29 Jul 2019 19:41:44 +0200
Message-Id: <20190729174154.4335-1-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:eaB03qW1RdZHhSSwGKsKQ5ipDCg+qmUpRIGapr9mOzrFy6CA0gx
 pz2or5Jz0m/M9Qv2WF+ghf9EH2MsOqsPCwN08N5B7E1g7UGFfTI3HJ+h15PC4DVZUlZl3ms
 Ho9F5fTbpA8NIggLdlvetC6qOgK+0GU9Baeq4OYqZUrc0peTECs3o5j/2V8HKESuUQIOeLd
 mIQqBZ2JLaJTffUIw8qQw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/HfsKFt0IkQ=:O6NiHfNSSWLslNZ2emBoSG
 3VE4lb75JDVpkh0pU4mnlj4DCCz8wrM46AxzVryqq/4jrwBGdE8zf5nHHd8FCHwVeiwF2dQOe
 c4hw7A3ZPyKQSTp+VjcSoY7ViYIocfgEQe1Rmtv1QKyKHYVB8RypT97Hl4xh9rsCNQKov31ZR
 Kh09x91Fe6+V+QVYs1ldQ6ue/UPuf5x7Z5ttCRO4b/C/HupnIX8TELpRf4SJbs/fHjDUowMvS
 s0WsYVHXi3Mf0kbI6w322RGXHO5ouSwsFPfuHMnYJcN6e9hMqg359/xdavduRXNfbjr9+66ag
 b73SyLlBC+VvqVLr7LdZ1ulevSzFTtViC0lqqqQoKxC/YpxF+y2oAegEGos3xSR0NcOJ14tGO
 Ix4oH90ojljyY5lMBZRPEnDIA1ciHvjd8aF1kN+07WPNpF8RfIabSMfgFx0kxDnPEM79DzWYW
 9CmniUHxAVkrLE73XiwRLpmiVxhICUdHtJtykDGiIFRYX1bsNbGRB3+lRVdcTcg1jjJ61Bkzc
 XanCObGqjjwGQBV0lxtpsPoRdhI87GFqURmW+BQsYwKdOSBDqz1UdvzJYJNg5SnrZZcG0+bzW
 v78/pNEbdvPI+PCoOSlFr48xxDQnIPo6FGGZhEX2kFRjDRTnKfl1fIS4nj7ytLwrkkLGZmR9g
 joq8YSOAPXfUBhlR843i8iLLlgpptHakCm1DKZfV3g2nOb68J0iYHCfZYrinZUhhf3GkgJbBQ
 NNfqYzbluzq7X/DH9sBz1gVSviWE+idaU7vg8uwUO1OCDB4ztzqK9ZtnI9mjbloc2zZ0hn8ux
 pyZOmpSHSHtgN4X6EyF0uIwRBRQySv1FoA7QHuIF8WKf9d0sGJDK2xjc9D5mAXdy0e/DS6sG0
 h5SI0fPzvoHtN/Ug6kttZOyAYptN2u5XGvb2fWfoNGaaTnkoSdychfXritF3eC5CsJJqsH2Ss
 rKpjNiKlLZtK8NX+Cxk2dx41HbodyTigWZESf8vxyhdT2aYguOQYmYGWm+QXmEZv44qehYR9p
 Y7riK9MFJTWkINuhFSe9O3LuLnzWJ0CWLgxNCjNKKBlq0EvaFiKjh3aa53x2vHO31WrK0AAcp
 +5qSgXM+s/WGDPtW51uZ1Hg/NqmNalg2b8A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_104302_563701_E7C96395 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Frank Wunderlich <frank-w@public-files.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

bWFpbmxpbmUtZHJpdmVyIGRvZXMgbm90IHN1cHBvcnQgbXQ2MzIzCgp0aGlzIHNlcmllcyBtYWtl
cyBzb21lIGNsZWFudXAgdG8gbXQ2Mzk3LXJ0Yy1kcml2ZXIsIGFkZHMgbXQ2MzIzIGFuZAppbXBs
ZW1lbnQgcG93ZXItY29udHJvbGxlciBvbiBpdC4KCnRlc3RlZCBvbiBiYW5hbmFwaS1yMgoKT3Jp
Z2luYWwgUGF0Y2ggZnJvbSBKb3NlZiBGcmllZGwKCmNoYW5nZXMgc2luY2UgdjI6CgktIFNwbGl0
dGVkIHNvbWUgcGFydHMgYW5kIHJlYmFzZWQgb24gNS4zLXJjMjoKCgl2Mi4xIGR0LWJpbmRpbmdz
OiBhZGQgcG93ZXJjb250cm9sbGVyIOKAkyB0cnkgdG8gbWFrZSBiZXR0ZXIgc3ViamVjdAoJdjIu
MiBzZXBhcmF0ZSBydGMtbXQ2Mzk3LnR4dCAoc3VnZ2VzdGVkIGJ5IEFsZXhhbmRyZSBCZWxsb25p
KQoJCWFkZCBtaXNzaW5nIGNvbW1pdC1tZXNzYWdlIChzdWdnZXN0ZWQgYnkgTWF0dGhpYXMgQnJ1
Z2dlcikKCXYyLjMgZml4IGFsbG9jIGFmdGVyIElSUSAoc3VnZ2VzdGVkIGJ5IEFsZXhhbmRyZSBC
ZWxsb25pKQoJCW5ldyBjb21wYXRpYmxlIChzcGxpdHRpbmcgc3VnZ2VzdGVkIGJ5IEFsZXhhbmRy
ZSBCZWxsb25pKQoJCW5lZWRlZCBkdWUgdG8gZGlmZmVyZW50IHJ0Yy1iYXNlL3NpemUgc2VlICM3
Cgl2Mi40IHNpbXBsaWZpY2F0aW9ucyAoRGVmaW5lLXJlcy1tYWNyb3MpCgkJYWRkIG10NjMyMyBy
dGMrcHdyYwoJdjIuNSBhZGQgcG93ZXJvZmYtZHJpdmVyIChubyBjaGFuZ2UpCgl2Mi42IE1BSU5U
QUlORVJTIChubyBjaGFuZ2UpCgl2Mi43IERUUy1DaGFuZ2VzIChubyBjaGFuZ2UpCgpjaGFuZ2Vz
IHNpbmNlIHYxOgoJLSBzcGxpdHRlZCBpbnRvIGZ1bmN0aW9uYWwgcGFydHMKCS0gbW9yZSBpbmZv
cyBhYm91dCBjaGFuZ2VzCgpKb3NlZiBGcmllZGwgKDEwKToKICBkdC1iaW5kaW5nczogYWRkIHBv
d2VyY29udHJvbGxlcgogIGR0LWJpbmRpbmdzOiBhZGQgbWlzc2luZyBtdDYzOTcgcnRjCiAgcnRj
OiBtdDYzOTc6IG1vdmUgc29tZSBjb21tb24gZGVmaW5pdGlvbnMgaW50byBydGMuaAogIHJ0Yzog
bXQ2Mzk3OiBpbXByb3ZlbWVudHMgb2YgcnRjIGRyaXZlcgogIHJ0YzogbXQ2Mzk3OiBhZGQgY29t
cGF0aWJsZSBmb3IgbXQ2MzIzCiAgbWZkOiBtdDYzMjM6IHNvbWUgaW1wcm92ZW1lbnRzIG9mIG10
NjM5Ny1jb3JlCiAgbWZkOiBtdDYzMjM6IGFkZCBtdDYzMjMgcnRjK3B3cmMKICBwb3dlcjogcmVz
ZXQ6IGFkZCBkcml2ZXIgZm9yIG10NjMyMyBwb3dlcm9mZgogIE1BSU5UQUlORVJTOiBhZGQgTWVk
aWF0ZWsgc2h1dGRvd24gZHJpdmVycwogIGFybTogZHRzOiBtdDYzMjM6IGFkZCBrZXlzLCBwb3dl
ci1jb250cm9sbGVyLCBydGMgYW5kIGNvZGVjCgogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbWZk
L210NjM5Ny50eHQgICAgICAgIHwgIDEwICstCiAuLi4vYmluZGluZ3MvcG93ZXIvcmVzZXQvbXQ2
MzIzLXBvd2Vyb2ZmLnR4dCAgfCAgMjAgKysrKwogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvcnRj
L3J0Yy1tdDYzOTcudHh0ICAgIHwgIDI5ICsrKysrCiBNQUlOVEFJTkVSUyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfCAgIDcgKysKIGFyY2gvYXJtL2Jvb3QvZHRzL210NjMyMy5k
dHNpICAgICAgICAgICAgICAgICB8ICAyNyArKysrKwogZHJpdmVycy9tZmQvbXQ2Mzk3LWNvcmUu
YyAgICAgICAgICAgICAgICAgICAgIHwgIDQwICsrKysrLS0KIGRyaXZlcnMvcG93ZXIvcmVzZXQv
S2NvbmZpZyAgICAgICAgICAgICAgICAgICB8ICAxMCArKwogZHJpdmVycy9wb3dlci9yZXNldC9N
YWtlZmlsZSAgICAgICAgICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvcG93ZXIvcmVzZXQvbXQ2
MzIzLXBvd2Vyb2ZmLmMgICAgICAgICB8ICA5NyArKysrKysrKysrKysrKysrCiBkcml2ZXJzL3J0
Yy9ydGMtbXQ2Mzk3LmMgICAgICAgICAgICAgICAgICAgICAgfCAxMDcgKysrKy0tLS0tLS0tLS0t
LS0tCiBpbmNsdWRlL2xpbnV4L21mZC9tdDYzOTcvY29yZS5oICAgICAgICAgICAgICAgfCAgIDIg
KwogaW5jbHVkZS9saW51eC9tZmQvbXQ2Mzk3L3J0Yy5oICAgICAgICAgICAgICAgIHwgIDcxICsr
KysrKysrKysrKwogMTIgZmlsZXMgY2hhbmdlZCwgMzIzIGluc2VydGlvbnMoKyksIDk4IGRlbGV0
aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9wb3dlci9yZXNldC9tdDYzMjMtcG93ZXJvZmYudHh0CiBjcmVhdGUgbW9kZSAxMDA2NDQg
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3J0Yy9ydGMtbXQ2Mzk3LnR4dAogY3Jl
YXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcG93ZXIvcmVzZXQvbXQ2MzIzLXBvd2Vyb2ZmLmMKIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2xpbnV4L21mZC9tdDYzOTcvcnRjLmgKCi0tCjIuMTcu
MQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
