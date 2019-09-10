Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 374EFAE44A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 09:09:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SFYOEAPlE6l6iqR3Bz73djdqJMopnF19OFz5X3HbeUY=; b=t8UU+ALczn8RwL
	9Dc0I1qD/FVFhikkBHEZZZ5IhNeBPbJHc1+inmxR5HaNJbCHtYhNDu6WXkjMAyKEVzxA3qAuwnv/Z
	cycoLSIRs5EhOQ5Yx/lPYG9owQW0mMSAzlnu7yBEiBespaJAB70dfRk17AROkZ/7w71QYo6xcHyWy
	taKdY2AfdIpOUZhb+Qvr2RKbyUljITxsJqlUlktwIuoHTNzGgJECxWZ7Ll1KqMMc5M/Skcm8bpXi5
	seMpfK7KUn27PbwmqIMyPVO8chRngXsD1/8dz5LI0L+tV0lOdRmY3244kRjXHjFDyCjNhjoQqOx9F
	9h99hTG7zc1ay4zuMcpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7aHG-0000Ke-RE; Tue, 10 Sep 2019 07:09:26 +0000
Received: from mxwww.masterlogin.de ([2a03:2900:1:1::b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7aDL-0007rG-EZ; Tue, 10 Sep 2019 07:05:25 +0000
Received: from mxout1.routing.net (unknown [192.168.10.81])
 by new.mxwww.masterlogin.de (Postfix) with ESMTPS id A088C962BA;
 Tue, 10 Sep 2019 07:05:11 +0000 (UTC)
Received: from mxbox2.masterlogin.de (unknown [192.168.10.253])
 by mxout1.routing.net (Postfix) with ESMTP id ED6A343E8B;
 Tue, 10 Sep 2019 07:05:11 +0000 (UTC)
Received: from localhost.localdomain (fttx-pool-185.75.73.135.bambit.de
 [185.75.73.135])
 by mxbox2.masterlogin.de (Postfix) with ESMTPSA id C3943100B88;
 Tue, 10 Sep 2019 07:05:10 +0000 (UTC)
From: Frank Wunderlich <frank-w@public-files.de>
To: linux-mediatek@lists.infradead.org
Subject: [PATCH v7 0/7] implement poweroff for mt6323 / bpi-r2
Date: Tue, 10 Sep 2019 09:04:39 +0200
Message-Id: <20190910070446.639-1-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_000524_375572_2EA4FAF6 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a03:2900:1:1:0:0:0:b listed in] [list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Sean Wang <sean.wang@mediatek.com>, Alessandro Zummo <a.zummo@towertech.it>,
 linux-pm@vger.kernel.org, Frank Wunderlich <frank-w@public-files.de>,
 Josef Friedl <josef.friedl@speed.at>, linux-kernel@vger.kernel.org,
 Tianping Fang <tianping.fang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 Sebastian Reichel <sre@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>, Eddie Huang <eddie.huang@mediatek.com>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

bWFpbmxpbmUtZHJpdmVyIGRvZXMgbm90IHN1cHBvcnQgbXQ2MzIzCgp0aGlzIHNlcmllcyBtYWtl
cyBzb21lIGNsZWFudXAgdG8gbXQ2Mzk3LXJ0Yy1kcml2ZXIsIGFkZHMgbXQ2MzIzIGFuZAppbXBs
ZW1lbnQgcG93ZXItY29udHJvbGxlciBvbiBpdC4KCnRlc3RlZCBvbiBiYW5hbmFwaS1yMgoKT3Jp
Z2luYWwgUGF0Y2ggZnJvbSBKb3NlZiBGcmllZGwKCmNoYW5nZXMgc2luY2UgdjY6CgktIHJlYmFz
ZWQgb24gNS4zLXJjOAoJLSBwb3N0IG9ubHkgNyBQYXRjaGVzIGJlY2F1c2UgNiBhcmUgYWxyZWFk
eSBhcHBsaWVkIHRvIG5leHQKCS0gdXBkYXRlIGNvcHlyaWdodCBpbiAibW92ZSBzb21lIGNvbW1v
biBkZWZpbml0aW9ucyBpbnRvIHJ0Yy5oIgpjaGFuZ2VzIHNpbmNlIHY1OgoJLSBzcGxpdHRlZCBw
YXJ0IDEgdG8gc2VwYXJhdGUgY2hhbmdlcyBhbmQgYWRkaXRpb25zIG5vdCByZWxhdGVkIHRvIHB3
cmMKCS0gbW92ZSBtZmQvbXQ2Mzk3L2NvcmUuaCBmcm9tIHY0LjggaW4gc2VwYXJhdGUgcGF0Y2gg
ImFkZCBtdXRleCBpbmNsdWRlIgoJLSBjaGFuZ2VkIHJlY2lwaWVudHMgKG1vdmVkIGZyb20gVG8g
dG8gQ2MsIHJlbW92ZWQgY29tbWl0dGVycykKY2hhbmdlcyBzaW5jZSB2NDoKCS0gcmVsYXRpdmUg
cGF0aCBpbiBwYXJ0IDErMgoJLSBkcm9wIGNoYW5nZSBvZiBjb3B5cmlnaHQteWVhciBpbiBwYXJ0
IDUKY2hhbmdlcyBzaW5jZSB2MzoKCS0gbW92ZWQgU09CIGluIDIvMTAgYW5kIDkvMTAKCS0gbW92
ZWQgcGFydCA1IHRvIDYgdG8gYmUgbmVhciBkcml2ZXItY2hhbmdlCgktIGNoYW5nZWhpc3Rvcnkg
b2YgcGF0Y2hlcyBiZWxvdyAtLS0KY2hhbmdlcyBzaW5jZSB2MjoKCS0gU3BsaXR0ZWQgc29tZSBw
YXJ0cyBhbmQgcmViYXNlZCBvbiA1LjMtcmMyOgoKCXYyLjEgZHQtYmluZGluZ3M6IGFkZCBwb3dl
cmNvbnRyb2xsZXIg4oCTIHRyeSB0byBtYWtlIGJldHRlciBzdWJqZWN0Cgl2Mi4yIHNlcGFyYXRl
IHJ0Yy1tdDYzOTcudHh0IChzdWdnZXN0ZWQgYnkgQWxleGFuZHJlIEJlbGxvbmkpCgkgICAgIGFk
ZCBtaXNzaW5nIGNvbW1pdC1tZXNzYWdlIChzdWdnZXN0ZWQgYnkgTWF0dGhpYXMgQnJ1Z2dlcikK
CXYyLjMgZml4IGFsbG9jIGFmdGVyIElSUSAoc3VnZ2VzdGVkIGJ5IEFsZXhhbmRyZSBCZWxsb25p
KQoJICAgICBuZXcgY29tcGF0aWJsZSAoc3BsaXR0aW5nIHN1Z2dlc3RlZCBieSBBbGV4YW5kcmUg
QmVsbG9uaSkKCSAgICAgbmVlZGVkIGR1ZSB0byBkaWZmZXJlbnQgcnRjLWJhc2Uvc2l6ZSBzZWUg
IzcKCXYyLjQgc2ltcGxpZmljYXRpb25zIChEZWZpbmUtcmVzLW1hY3JvcykKCSAgICAgYWRkIG10
NjMyMyBydGMrcHdyYwoJdjIuNSBhZGQgcG93ZXJvZmYtZHJpdmVyIChubyBjaGFuZ2UpCgl2Mi42
IE1BSU5UQUlORVJTIChubyBjaGFuZ2UpCgl2Mi43IERUUy1DaGFuZ2VzIChubyBjaGFuZ2UpCgpK
b3NlZiBGcmllZGwgKDcpOgogIGR0LWJpbmRpbmdzOiBydGM6IG1lZGlhdGVrOiBhZGQgbWlzc2lu
ZyBtdDYzOTcgcnRjCiAgcnRjOiBtdDYzOTc6IG1vdmUgc29tZSBjb21tb24gZGVmaW5pdGlvbnMg
aW50byBydGMuaAogIHJ0YzogbXQ2Mzk3OiBpbXByb3ZlbWVudHMgb2YgcnRjIGRyaXZlcgogIHJ0
YzogbXQ2Mzk3OiBhZGQgY29tcGF0aWJsZSBmb3IgbXQ2MzIzCiAgcG93ZXI6IHJlc2V0OiBhZGQg
ZHJpdmVyIGZvciBtdDYzMjMgcG93ZXJvZmYKICBNQUlOVEFJTkVSUzogYWRkIE1lZGlhdGVrIHNo
dXRkb3duIGRyaXZlcnMKICBhcm06IGR0czogbXQ2MzIzOiBhZGQga2V5cywgcG93ZXItY29udHJv
bGxlciwgcnRjIGFuZCBjb2RlYwoKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3J0Yy9ydGMtbXQ2
Mzk3LnR4dCAgICB8ICAyOSArKysrKwogTUFJTlRBSU5FUlMgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwgICA3ICsrCiBhcmNoL2FybS9ib290L2R0cy9tdDYzMjMuZHRzaSAgICAg
ICAgICAgICAgICAgfCAgMjcgKysrKysKIGRyaXZlcnMvcG93ZXIvcmVzZXQvS2NvbmZpZyAgICAg
ICAgICAgICAgICAgICB8ICAxMCArKwogZHJpdmVycy9wb3dlci9yZXNldC9NYWtlZmlsZSAgICAg
ICAgICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvcG93ZXIvcmVzZXQvbXQ2MzIzLXBvd2Vyb2Zm
LmMgICAgICAgICB8ICA5NyArKysrKysrKysrKysrKysrCiBkcml2ZXJzL3J0Yy9ydGMtbXQ2Mzk3
LmMgICAgICAgICAgICAgICAgICAgICAgfCAxMDcgKysrKy0tLS0tLS0tLS0tLS0tCiBpbmNsdWRl
L2xpbnV4L21mZC9tdDYzOTcvcnRjLmggICAgICAgICAgICAgICAgfCAgNzEgKysrKysrKysrKysr
CiA4IGZpbGVzIGNoYW5nZWQsIDI2MyBpbnNlcnRpb25zKCspLCA4NiBkZWxldGlvbnMoLSkKIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcnRjL3J0
Yy1tdDYzOTcudHh0CiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9wb3dlci9yZXNldC9tdDYz
MjMtcG93ZXJvZmYuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvbWZkL210NjM5
Ny9ydGMuaAoKLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
