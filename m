Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2F7C264F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 21:45:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:To:
	From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PO5oNN/yPJV4bBEyZWIQCwjFwNIzu/eXMlcGZTXgacs=; b=Jk386LE94Y+MhG
	mJQylTnDgN27wRMkZkaFd5QqwrVlHoF4pC/7SeuYsWyWgqfKfcrfrtIrTI7KAc5Zw3GxjNn9LxLuL
	S54lMVMvGK/q5okL8vjPmuXqJANPKohLr8oUoZx2ZX53I5nWFTFJVsm6c+OOdCH7M5TRDDrOgimCw
	kTYm9nSPAVIeOLJ/oY9PQiz6sjHcKmQKhoAdtktxBT0nh64D3I7b96QrxIt1kmx0vz0yGon4kNxaf
	U4QBKpWligMgoG5QSiIhrjPmygnn/WjS3I/orNEzfewNr5CFTYItdv78dxvyCIFT6ypuUbMy2ITHE
	x6VHbOVkvI89h56m/vBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF1bn-0003bc-0V; Mon, 30 Sep 2019 19:45:23 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF1bR-0003Ye-TK; Mon, 30 Sep 2019 19:45:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1569872652;
 bh=YVn0d0IypIL/I8h6vV2cKfUczuH9hqHhzSGumXeWyH0=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=eTKCa8+71K35r7TYwqI/+Xx9FlyuqUtc6WeALp3Kjs8+nC4zZh/NFQjzDQVdkq5d1
 Acx15kKvwQjDHbo68LylmzJDOlRcwTWQB21DS8LOTl8LJyZsV0Q4qZEM/qicEppr+a
 OLC3yK36j+FTlss1L4HJTGCI4vF1Xu44jmNHgCUo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.208.215.36] ([80.208.215.36]) by web-mail.gmx.net
 (3c-app-gmx-bap76.server.lan [172.19.172.64]) (via HTTP); Mon, 30 Sep 2019
 21:44:12 +0200
MIME-Version: 1.0
Message-ID: <trinity-d5c9e092-508c-4db6-8f36-d5917466a750-1569872652621@3c-app-gmx-bap76>
From: "Frank Wunderlich" <frank-w@public-files.de>
To: "Hsin-hsiung Wang" <hsin-hsiung.wang@mediatek.com>, "Lee Jones"
 <lee.jones@linaro.org>
Subject: Aw: Re:  Re: [BUG] [PATCH v5 02/10] mfd: mt6397: extract irq
 related code from core driver
Date: Mon, 30 Sep 2019 21:44:12 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <1567059876.15320.3.camel@mtksdaap41>
References: <1566531931-9772-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1566531931-9772-3-git-send-email-hsin-hsiung.wang@mediatek.com>
 <trinity-1f82bff1-535e-47cd-9a2f-8faccb56e356-1566562433314@3c-app-gmx-bs11>
 <e8a918ab-3e7a-b487-db77-df28d56518ce@gmail.com>
 <0A87F427-2D81-412A-9549-09A51A021799@public-files.de>
 <b5a21908-faee-17d1-ce26-99b941c0fa70@gmail.com>
 <trinity-a57f08bb-e30e-4e74-911c-c40e335d00da-1566580580817@3c-app-gmx-bs75>
 <1567059876.15320.3.camel@mtksdaap41>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:mOl5gwFlxXjAE9+q+U636kiILkcV8ouZYqUdavCDgk4kn81Id6pYOUZvJ59xPd2j9ozHN
 8waSlJARwZGU/e+50l22obqu3bIr+fL4TvaYl9BbpYpSPN6sD78VLxIX6iCavbN4CWcQixxp0LcY
 5DMu3BAQcL30VwmxUM6nn/+9zZbxJ+jCY8cBjW5TziN0HhvBmsrBmtkIW/5QN9djuXXP1JwXpdK/
 5ni345mWrIhAsZlycA0M1+K7mg7469HwJwnFxncOyxiAT1no+CMD4+aeZeHKqIzsg87h4YZ/pSN+
 5k=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Pr4++bsoB2o=:B0kgEi+jbJEOsR947sHQnQ
 pvRYz0HnOqXoL6zWWSdkbiBdCvVFOKWha/JpHP6XbcuoA3xTsF/ntI94VWm0N2DjkuYZrZLbk
 WbUiB6LW4v3FL5s2jfQm1wJD6K16/+JqqWBubnDlxtARL7CIEyeqgXfhFcth70amROfy+Hae6
 BXVscKBKTmVN3w4gnr07Nx38L5R4Wkw8cyAbDPrJ0t+gERia1pF9YspJn40cpm60OzvQ+W5dw
 6bZPc/QzS/sPjxtiufsfabyngMmE4b4m6AsHuWrBRAH65CtHiMM2pavDxuVMngVnt+ug8i1e6
 vMlBpJAaYOhA5eQapXr4BdavnraX3PZh3E6/hcNmErlIMDoe0oIgQ+knGQLjFhI9s8+emhAJX
 AOnncLb6s+queshGyIE8aCcygXj4MGOmXr/qOCak9ipYpofiVCLnnH5wrRT+Vuv6cUDEA4j4y
 TXwzrxdt21aovj+m7lZviWFY0WJXwC9csNUHPn5FhMV5dwd49MveicyLJG4Kr/qXbVVfhda9l
 fGDyVA4F9K/93VAeukenaRaza7CyV/G/sz5N0q5mNcEdPinZzVW9jxJ7G6BoLYCE24TM9/XGT
 chDquHPVjwQkQ4xprL+2qa0JEqgUpLAb3xrM6v+7JRxU9X7cCLVxzoPGtWVenPVR6RdBIjHSz
 KE9iRKi9SFj3y0JgfX9AfFZWCgkvObsRdbe/HkInahOg5vBHsk5oKTBKspNf+FQfcSYM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_124502_288624_2A13063A 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.22 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Kate Stewart <kstewart@linuxfoundation.org>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>, Sean Wang <sean.wang@mediatek.com>, Liam
 Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org,
 =?UTF-8?Q?=22Ren=C3=A9_van_Dorst=22?= <opensource@vdorst.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thomas
 Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpidWcgaXMgc3RpbGwgcHJlc2VudCBpbiA1LjQtcmMxCgpkbWVzZyBwcmludHMgdGhpcyBs
aW5lIGFuZCBhdCBsZWFzdCBzd2l0Y2ggaXMgbm90IGluaWFsaXplZCBvbiBiYW5hbmFwaS1yMgoK
bXQ2Mzk3IDEwMDBkMDAwLnB3cmFwOm10NjMyMzogdW5zdXBwb3J0ZWQgY2hpcDogMHgwCgpyZWdh
cmRzIEZyYW5rCgoKPiBHZXNlbmRldDogRG9ubmVyc3RhZywgMjkuIEF1Z3VzdCAyMDE5IHVtIDA4
OjI0IFVocgo+IFZvbjogIkhzaW4taHNpdW5nIFdhbmciIDxoc2luLWhzaXVuZy53YW5nQG1lZGlh
dGVrLmNvbT4KPiBBbjogIkZyYW5rIFd1bmRlcmxpY2giIDxmcmFuay13QHB1YmxpYy1maWxlcy5k
ZT4sICJNYXR0aGlhcyBCcnVnZ2VyIiA8bWF0dGhpYXMuYmdnQGdtYWlsLmNvbT4KPiBDYzogbGlu
dXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZywgIk1hcmsgUnV0bGFuZCIgPG1hcmsucnV0
bGFuZEBhcm0uY29tPiwgIkFsZXNzYW5kcm8gWnVtbW8iIDxhLnp1bW1vQHRvd2VydGVjaC5pdD4s
ICJBbGV4YW5kcmUgQmVsbG9uaSIgPGFsZXhhbmRyZS5iZWxsb25pQGJvb3RsaW4uY29tPiwgc3J2
X2hldXBzdHJlYW1AbWVkaWF0ZWsuY29tLCBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZywgIkdy
ZWcgS3JvYWgtSGFydG1hbiIgPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPiwgIlNlYW4gV2Fu
ZyIgPHNlYW4ud2FuZ0BtZWRpYXRlay5jb20+LCAiTGlhbSBHaXJkd29vZCIgPGxnaXJkd29vZEBn
bWFpbC5jb20+LCAiUm9iIEhlcnJpbmciIDxyb2JoK2R0QGtlcm5lbC5vcmc+LCBsaW51eC1rZXJu
ZWxAdmdlci5rZXJuZWwub3JnLCAiUmljaGFyZCBGb250YW5hIiA8cmZvbnRhbmFAcmVkaGF0LmNv
bT4sICJNYXJrIEJyb3duIiA8YnJvb25pZUBrZXJuZWwub3JnPiwgbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnLCAiUmVuw6kgdmFuIERvcnN0IiA8b3BlbnNvdXJjZUB2ZG9yc3Qu
Y29tPiwgIlRob21hcyBHbGVpeG5lciIgPHRnbHhAbGludXRyb25peC5kZT4sICJFZGRpZSBIdWFu
ZyIgPGVkZGllLmh1YW5nQG1lZGlhdGVrLmNvbT4sICJMZWUgSm9uZXMiIDxsZWUuam9uZXNAbGlu
YXJvLm9yZz4sICJLYXRlIFN0ZXdhcnQiIDxrc3Rld2FydEBsaW51eGZvdW5kYXRpb24ub3JnPiwg
bGludXgtcnRjQHZnZXIua2VybmVsLm9yZwo+IEJldHJlZmY6IFJlOiBBdzogUmU6IFtCVUddIFtQ
QVRDSCB2NSAwMi8xMF0gbWZkOiBtdDYzOTc6IGV4dHJhY3QgaXJxIHJlbGF0ZWQgY29kZSBmcm9t
IGNvcmUgZHJpdmVyCj4KPiBIaSBGcmFuay9NYXR0aGlhcywKPiAKPiBPbiBGcmksIDIwMTktMDgt
MjMgYXQgMTk6MTYgKzAyMDAsIEZyYW5rIFd1bmRlcmxpY2ggd3JvdGU6Cj4gPiA+IEdlc2VuZGV0
OiBGcmVpdGFnLCAyMy4gQXVndXN0IDIwMTkgdW0gMTc6NDIgVWhyCj4gPiA+IFZvbjogIk1hdHRo
aWFzIEJydWdnZXIiIDxtYXR0aGlhcy5iZ2dAZ21haWwuY29tPgo+ID4gCj4gPiA+IEkgc3VwcG9z
ZSB0aGF0J3MgYmVjYXVzZSAzLzEwIGhhcyBjb2RlIHRoYXQgc2hvdWxkIGJlIGluIDIvMTAgYW5k
IGZvciBzb21lCj4gPiA+IHJlYXNvbiAzLzEwIHdhcyBub3QgcHVzaGVkIGZvciBsaW51eC1uZXh0
IGluY2x1c2lvbi4gQWx0aG91Z2ggaXQgaGFzIHRoZSBzYW1lCj4gPiA+IEFja2VkLWZvci1tZmQt
YnkgdGFnLgo+ID4gPgo+ID4gPiBARnJhbmssIGNhbiB5b3UgdGVzdCBpZiBhZGRpbmcgMy8xMCB0
byB5b3VyIGNvZGUgYmFzZSBmaXhlcyB0aGUgaXNzdWU/Cj4gPiAKPiA+IGFkZGluZyBwYXJ0IDMg
WzFdIHNlZW1zIHRvIGZpeCB0aGUgaXNzdWUgdG9vCj4gPiAKPiA+IFsgICAgNC45NjAwNTFdIG10
NjMyMy1yZWd1bGF0b3IgbXQ2MzIzLXJlZ3VsYXRvcjogQ2hpcCBJRCA9IDB4MjAyMwo+ID4gCj4g
PiB0aGFua3MKPiA+IAo+ID4gWzFdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gv
MTExMTA1MDkvCj4gVGhhbmtzIGZvciB5b3VyIGNvbW1lbnRzLgo+IFRoZSByb290IGNhdXNlIHNl
ZW1zIEkgZGlkbid0IHNwbGl0IHRoZSBjb2RlIHdlbGwuCj4gSSB3aWxsIGZpeCBpdCBpbiB0aGUg
bmV4dCB2ZXJzaW9uLgo+IAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
