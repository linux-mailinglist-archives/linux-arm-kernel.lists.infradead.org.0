Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB9EC17D4D2
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 17:34:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3BLWvHiMhjtTcye4KhuAe+P3+hrB3VUckNuUR1nkyBM=; b=NRjklxj/5J57vh
	xOmOnQcBPE9IH5Et/p9eXx4eDNDu9CYTmVrXPoYFRhnBeP7AS9jDu2DXCMDhy0wfEn3UYdzSvlju4
	3gK4/Znd9CuV5tOvfTMS/ryoXuz4V4qrIWiNax/qTrC+Nlw1fcLCUsXsyP6WV1DLZcvCvNi2lKX02
	Ana6ZKXCz4Z7wwCIV2SZXzexv25HD21jMD0Y8R/3oDm2+S63OIA644sojE+BHW15xDlDKCiOEcQmg
	S7yiCiOh2+DF16xu8GiKPLj9s0JK72L/RBTqdXCYLCJVvu73kfyKblWssReI2CcEzsG85IFvnHeMl
	gtPfreWItqQemS2eV0TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAysL-0001Rl-Aw; Sun, 08 Mar 2020 16:34:01 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAyrF-0000db-FV
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 16:32:56 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id DD49BB053;
 Sun,  8 Mar 2020 16:32:46 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC 04/11] dt-bindings: interrupt-controller: Add Sunplus SP7021 mux
Date: Sun,  8 Mar 2020 17:32:22 +0100
Message-Id: <20200308163230.4002-5-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20200308163230.4002-1-afaerber@suse.de>
References: <20200308163230.4002-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_093253_668459_CE362392 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Dvorkin Dmitry <dvorkin@tibbo.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 =?UTF-8?q?Wells=20Lu=20=E5=91=82=E8=8A=B3=E9=A8=B0?= <wells.lu@sunplus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIFN1bnBsdXMgU1A3MDIxIFNvQyBoYXMgYW4gaW50ZXJydXB0IG11eC4KCkNjOiBXZWxscyBM
dSDlkYLoirPpqLAgPHdlbGxzLmx1QHN1bnBsdXMuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbmRyZWFz
IEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQogLi4uL3N1bnBsdXMscGVudGFncmFtLWlu
dGMueWFtbCAgICAgICAgICAgICAgICAgICAgfCA1MCArKysrKysrKysrKysrKysrKysrKysrCiAx
IGZpbGUgY2hhbmdlZCwgNTAgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9zdW5wbHVz
LHBlbnRhZ3JhbS1pbnRjLnlhbWwKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvc3VucGx1cyxwZW50YWdyYW0taW50Yy55
YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2ludGVycnVwdC1jb250cm9s
bGVyL3N1bnBsdXMscGVudGFncmFtLWludGMueWFtbApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRl
eCAwMDAwMDAwMDAwMDAuLmJhYWY3YmNkNGE3MQotLS0gL2Rldi9udWxsCisrKyBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9zdW5wbHVzLHBl
bnRhZ3JhbS1pbnRjLnlhbWwKQEAgLTAsMCArMSw1MCBAQAorIyBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogR1BMLTIuMC1vci1sYXRlciBPUiBCU0QtMi1DbGF1c2UKKyVZQU1MIDEuMgorLS0tCisk
aWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL2ludGVycnVwdC1jb250cm9sbGVyL3N1
bnBsdXMscGVudGFncmFtLWludGMueWFtbCMKKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9y
Zy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIworCit0aXRsZTogU3VucGx1cyBQZW50YWdyYW0gU29D
IEludGVycnVwdCBDb250cm9sbGVyCisKK21haW50YWluZXJzOgorICAtIEFuZHJlYXMgRsOkcmJl
ciA8YWZhZXJiZXJAc3VzZS5kZT4KKworYWxsT2Y6CisgIC0gJHJlZjogL3NjaGVtYXMvaW50ZXJy
dXB0LWNvbnRyb2xsZXIueWFtbCMKKworcHJvcGVydGllczoKKyAgY29tcGF0aWJsZToKKyAgICBj
b25zdDogc3VucGx1cyxzcDcwMjEtaW50YworCisgIHJlZzoKKyAgICBtYXhJdGVtczogMgorCisg
IGludGVycnVwdHM6CisgICAgbWF4SXRlbXM6IDIKKworICBpbnRlcnJ1cHQtY29udHJvbGxlcjog
dHJ1ZQorCisgICIjaW50ZXJydXB0LWNlbGxzIjoKKyAgICBjb25zdDogMgorCityZXF1aXJlZDoK
KyAgLSBjb21wYXRpYmxlCisgIC0gcmVnCisgIC0gaW50ZXJydXB0LWNvbnRyb2xsZXIKKwordW5l
dmFsdWF0ZWRQcm9wZXJ0aWVzOiBmYWxzZQorCitleGFtcGxlczoKKyAgLSB8CisgICAgI2luY2x1
ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2FybS1naWMuaD4KKworICAgIGlu
dGVycnVwdC1jb250cm9sbGVyQDljMDAwNzgwIHsKKyAgICAgICAgY29tcGF0aWJsZSA9ICJzdW5w
bHVzLHNwNzAyMS1pbnRjIjsKKyAgICAgICAgcmVnID0gPDB4OWMwMDA3ODAgMHg4MD4sCisgICAg
ICAgICAgICAgIDwweDljMDAwYTgwIDB4ODA+OworICAgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19T
UEkgNSBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKKyAgICAgICAgICAgICAgICAgICAgIDxHSUNfU1BJ
IDYgSVJRX1RZUEVfTEVWRUxfSElHSD47CisgICAgICAgIGludGVycnVwdC1jb250cm9sbGVyOwor
ICAgICAgICAjaW50ZXJydXB0LWNlbGxzID0gPDI+OworICAgIH07CisuLi4KLS0gCjIuMTYuNAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
