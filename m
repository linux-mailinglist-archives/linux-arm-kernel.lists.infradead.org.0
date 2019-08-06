Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCFB836F4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 18:30:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XA/p63K6Zxva46pgfIz3HDHT2A9raCZ8UcxxN4yEvc8=; b=V3IzQSfFVd7aHe
	CkIdmuv8eRsaOqUCC+Pg0I93MfJb9orsmxkf/HdswO+od38RNrBMiWsDrUea/LuaauOwcaUkDJLRs
	OQCBfBH9cr8jQIwimJmPK+fd6Y0x+mm40ODfWe/+iAbiOpYZ6Go1wU+hbEpWU30WdOEHE5mRQ2Q/1
	6cyJCXY+u9USvgRosE1HwzC8nzn+KLgjt10F831ABQn/qSsiWT/KTsrhLc8kNMdu1RI99KZgScLLl
	+95WBskfqConbc4L0wLCzvEU8BJqzTBzjVxu8CZjxFCVOVogQ8Qs65TVtYp4fduK1V2M4px2K2LNH
	ENjN63nELu4ysSBz/YwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv2Lc-0001k2-Md; Tue, 06 Aug 2019 16:30:04 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv2KU-0000Tn-TA; Tue, 06 Aug 2019 16:28:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565108877;
 bh=xGvBBhBv8mIQUww1OPe1/FCAqKvtmv/lhpMvp7Optzo=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=BSfD2+tA0aFUeRWZUCCocQ7jVyr4dAsFDcSNF064B7Iw+MZQxKnTCLGg5sxQ4LloC
 QjZegJ6sNrw5PcK19M7/KIcsV2i2q/Dx1tuiQ5oQKm/JmC2GFkERV5QeLMhit7Nqwm
 /DF5TEImzOdzQt0nQiTjiaFu4BEYB4qOR68brwpc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([217.61.153.94]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0MgsVY-1hhvJc3Ibg-00M5Kb; Tue, 06 Aug 2019 18:27:56 +0200
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
Subject: [PATCH v4 00/10] implement poweroff for mt6323 / bpi-r2
Date: Tue,  6 Aug 2019 18:27:35 +0200
Message-Id: <20190806162745.8414-1-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:fDGgKZ6spNEPfINJWpjM4TL6DAKb4WwwHdcrKqACYngUW5cxd34
 UZ0Ho8Wdo+kM1XFugD0+bBIsncohO47Y/sc/RusG2Zb7ILZYqlMpyXGwEgIhoisr16zD0un
 YDZ+MewnWXpQezMt+h+8894slE/RbtsTaGLPHyMnNHkGqHrjfuww/avOiQJ2WeZ7o/KEC1I
 zQAEPiRtVQ33nCYGGyFEA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:gTunm3r6LcY=:+rmQ5RPc3CYtKjH56Fxl5y
 vdyanBHcAMIOsE31w0gi6hFSfzJhhsOufq774CqVZBjjb/ijn4jYzA12RCL+zCl5P/5ysvUpH
 UJ4/PISlMpUSzkVPnaZ4ikA21TgNkQvltXlJUh5AZBvcOYbpWU/U/KIZfDVZV7x2GSCzVB6Ov
 4Z9Ds35L9fOJ4DOB8HpCllPXK9Zwn3PVS0/O5FJULdJTBYvw4zKUMFb/aAQYPzNm6O1tAASLP
 ZK5UW6wFuwisdCGk2aczDlK6PQSsVzvj+3IQsH8xtgpZKP6GGRSgyMDS0EkIJVk3wXOzTab1a
 e6lfBJZgs2royFjjJk7mtoeUMMnXkXu5VaGVDbo9rJHA6PmNSBxpeIuTHxX1+wN94R0gFxrY4
 11tq/wO1MS5Fl0HrWMhzj9T7xsP7V0m/htbEb2Ckkd6y2zAhc5zDFDJvw+jJmxJeeM/LUEKFN
 mIxjwe21KxXFdGLHvL0+Au9kqAns25TfeIZoSOALUeFtmfspB+gkSoyoZwlIIAROWs7ko5r3L
 fGISutTiyK63UI0Mzx2JJoSZQeFl+3IjxhD9BEEv0D68NgcmQ+OorS+OpA5hMeSdDXXK9YgWE
 eeiz1jCZ2L1q1WxxAQX+0ml95KUWAaOuw7a7Cu/By/qTFT/5XPvJinje9KvXs+LBSsWTmbaqn
 Li2QFfIzL1NvY4LGMM91uer4Y5Af57CdBQAwu5uQvwAnwyPsuk0xmD/C9++rMqZawP5v0HUsl
 SMNkbhrdHRNKQKAfP4EQ3UNNB/XVMaLNSehJLXUBwXYkD7jcr+udDBDjXqewNP2qlr4NxLJf1
 ed+GSlbU6HjIJDM41eet0w7Zx5ckQ2Y+5nAyq+yvnsXDBdICORm5jFxS03CTJ7SGkLIxR7EHg
 lQ27xFMC4eyzw/ssfpiYW1FKmWz8aq1/Ndr0Rka2p/ricCEaFb1EU9LAbmB8CoG47DLAq8dja
 +udTuoRvPkWg/62YQtWhTYFx8Ev8lgPQnTVWL1vYKfFsEOnd1T1px4DRZtAogiSbrfJe8XRqf
 DM+kLIMjACgDT5aiRCXGQjwckMtqCRPHkQ3l09EqUetTmAmR4yz3a/5zTWtQsKzr+UWzff34P
 zJXVD4E/SzPHxUcl1t5Xmwhn6ANLJNRYAIFE25H4bt/+U5SxFTXk7lInkfB+/NSM5fP9K38pk
 /6GDw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_092855_230018_3FEA151F 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Z2luYWwgUGF0Y2ggZnJvbSBKb3NlZiBGcmllZGwKCmNoYW5nZXMgc2luY2UgdjM6CgktIG1vdmVk
IFNPQiBpbiAyLzEwIGFuZCA5LzEwCgktIG1vdmVkIHBhcnQgNSB0byA2IHRvIGJlIG5lYXIgZHJp
dmVyLWNoYW5nZQoJLSBjaGFuZ2VoaXN0b3J5IG9mIHBhdGNoZXMgYmVsb3cgLS0tCgpjaGFuZ2Vz
IHNpbmNlIHYyOgoJLSBTcGxpdHRlZCBzb21lIHBhcnRzIGFuZCByZWJhc2VkIG9uIDUuMy1yYzI6
CgoJdjIuMSBkdC1iaW5kaW5nczogYWRkIHBvd2VyY29udHJvbGxlciDigJMgdHJ5IHRvIG1ha2Ug
YmV0dGVyIHN1YmplY3QKCXYyLjIgc2VwYXJhdGUgcnRjLW10NjM5Ny50eHQgKHN1Z2dlc3RlZCBi
eSBBbGV4YW5kcmUgQmVsbG9uaSkKCQlhZGQgbWlzc2luZyBjb21taXQtbWVzc2FnZSAoc3VnZ2Vz
dGVkIGJ5IE1hdHRoaWFzIEJydWdnZXIpCgl2Mi4zIGZpeCBhbGxvYyBhZnRlciBJUlEgKHN1Z2dl
c3RlZCBieSBBbGV4YW5kcmUgQmVsbG9uaSkKCQluZXcgY29tcGF0aWJsZSAoc3BsaXR0aW5nIHN1
Z2dlc3RlZCBieSBBbGV4YW5kcmUgQmVsbG9uaSkKCQluZWVkZWQgZHVlIHRvIGRpZmZlcmVudCBy
dGMtYmFzZS9zaXplIHNlZSAjNwoJdjIuNCBzaW1wbGlmaWNhdGlvbnMgKERlZmluZS1yZXMtbWFj
cm9zKQoJCWFkZCBtdDYzMjMgcnRjK3B3cmMKCXYyLjUgYWRkIHBvd2Vyb2ZmLWRyaXZlciAobm8g
Y2hhbmdlKQoJdjIuNiBNQUlOVEFJTkVSUyAobm8gY2hhbmdlKQoJdjIuNyBEVFMtQ2hhbmdlcyAo
bm8gY2hhbmdlKQoKCkpvc2VmIEZyaWVkbCAoMTApOgogIGR0LWJpbmRpbmdzOiBhZGQgcG93ZXJj
b250cm9sbGVyCiAgZHQtYmluZGluZ3M6IGFkZCBtaXNzaW5nIG10NjM5NyBydGMKICBydGM6IG10
NjM5NzogbW92ZSBzb21lIGNvbW1vbiBkZWZpbml0aW9ucyBpbnRvIHJ0Yy5oCiAgcnRjOiBtdDYz
OTc6IGltcHJvdmVtZW50cyBvZiBydGMgZHJpdmVyCiAgbWZkOiBtdDYzMjM6IHNvbWUgaW1wcm92
ZW1lbnRzIG9mIG10NjM5Ny1jb3JlCiAgcnRjOiBtdDYzOTc6IGFkZCBjb21wYXRpYmxlIGZvciBt
dDYzMjMKICBtZmQ6IG10NjMyMzogYWRkIG10NjMyMyBydGMrcHdyYwogIHBvd2VyOiByZXNldDog
YWRkIGRyaXZlciBmb3IgbXQ2MzIzIHBvd2Vyb2ZmCiAgTUFJTlRBSU5FUlM6IGFkZCBNZWRpYXRl
ayBzaHV0ZG93biBkcml2ZXJzCiAgYXJtOiBkdHM6IG10NjMyMzogYWRkIGtleXMsIHBvd2VyLWNv
bnRyb2xsZXIsIHJ0YyBhbmQgY29kZWMKCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvbXQ2
Mzk3LnR4dCAgICAgICAgfCAgMTAgKy0KIC4uLi9iaW5kaW5ncy9wb3dlci9yZXNldC9tdDYzMjMt
cG93ZXJvZmYudHh0ICB8ICAyMCArKysrCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9ydGMvcnRj
LW10NjM5Ny50eHQgICAgfCAgMjkgKysrKysKIE1BSU5UQUlORVJTICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB8ICAgNyArKwogYXJjaC9hcm0vYm9vdC9kdHMvbXQ2MzIzLmR0c2kg
ICAgICAgICAgICAgICAgIHwgIDI3ICsrKysrCiBkcml2ZXJzL21mZC9tdDYzOTctY29yZS5jICAg
ICAgICAgICAgICAgICAgICAgfCAgNDAgKysrKystLQogZHJpdmVycy9wb3dlci9yZXNldC9LY29u
ZmlnICAgICAgICAgICAgICAgICAgIHwgIDEwICsrCiBkcml2ZXJzL3Bvd2VyL3Jlc2V0L01ha2Vm
aWxlICAgICAgICAgICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9wb3dlci9yZXNldC9tdDYzMjMt
cG93ZXJvZmYuYyAgICAgICAgIHwgIDk3ICsrKysrKysrKysrKysrKysKIGRyaXZlcnMvcnRjL3J0
Yy1tdDYzOTcuYyAgICAgICAgICAgICAgICAgICAgICB8IDEwNyArKysrLS0tLS0tLS0tLS0tLS0K
IGluY2x1ZGUvbGludXgvbWZkL210NjM5Ny9jb3JlLmggICAgICAgICAgICAgICB8ICAgMiArCiBp
bmNsdWRlL2xpbnV4L21mZC9tdDYzOTcvcnRjLmggICAgICAgICAgICAgICAgfCAgNzEgKysrKysr
KysrKysrCiAxMiBmaWxlcyBjaGFuZ2VkLCAzMjMgaW5zZXJ0aW9ucygrKSwgOTggZGVsZXRpb25z
KC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3Bvd2VyL3Jlc2V0L210NjMyMy1wb3dlcm9mZi50eHQKIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcnRjL3J0Yy1tdDYzOTcudHh0CiBjcmVhdGUg
bW9kZSAxMDA2NDQgZHJpdmVycy9wb3dlci9yZXNldC9tdDYzMjMtcG93ZXJvZmYuYwogY3JlYXRl
IG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvbWZkL210NjM5Ny9ydGMuaAoKLS0KMi4xNy4xCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
