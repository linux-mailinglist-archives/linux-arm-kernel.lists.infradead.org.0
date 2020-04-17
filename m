Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9734C1AE1F4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 18:15:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cO+3NQtiDlw47iJbH9ZEZSZkTUuL8/R//LA/BfB/sVI=; b=eqRkPDalNib+Sn
	+8N6DWyqCL0KCyePCIZX/petxtZ+beQnXoze9JceB1T+szhkcw6LyGUpUadIbsBSZpyNXR8PQ3jz8
	YPru67DqVMtYtflhMEBjBFSP5+LdB96ryAQib+xJQmru0SmyAZvkvI4IzkyXMzm7nDuBuUjj3zn4q
	bRVikVkTXXfQ2KqCGcz3y/iYfUs44AoFWS/6YgevZ641Asz+Kxm7K52KjJF81AGlVTgXUqqBjQj2r
	NT0rODFM3l6zB1dNHHI+gnb4KZ5i84MAAUHOsHL0oOQ+qxXMxhY2cEbWjq5SKNuA8MaLCrvjMM+lz
	O8gvqk28ndl/GzBfnSWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPTeN-00025I-Hw; Fri, 17 Apr 2020 16:15:31 +0000
Received: from mailoutvs57.siol.net ([185.57.226.248] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPTeE-00024V-HS
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 16:15:24 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 7E3B3524BB0;
 Fri, 17 Apr 2020 18:15:19 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 8zL-mRWm0sXI; Fri, 17 Apr 2020 18:15:19 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 1358A524C5F;
 Fri, 17 Apr 2020 18:15:19 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 03505524C64;
 Fri, 17 Apr 2020 18:15:17 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: robh+dt@kernel.org, andrew@lunn.ch, f.fainelli@gmail.com,
 Heiner Kallweit <hkallweit1@gmail.com>
Subject: Re: [RFC PATCH 2/4] net: phy: Add support for AC200 EPHY
Date: Fri, 17 Apr 2020 18:15:17 +0200
Message-ID: <6176364.4vTCxPXJkl@jernej-laptop>
In-Reply-To: <0340f85c-987f-900b-53c8-d29b4672a8fa@gmail.com>
References: <20200416185758.1388148-1-jernej.skrabec@siol.net>
 <20200416185758.1388148-3-jernej.skrabec@siol.net>
 <0340f85c-987f-900b-53c8-d29b4672a8fa@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_091522_741585_544839BA 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org, linux@armlinux.org.uk,
 mripard@kernel.org, linux-kernel@vger.kernel.org, wens@csie.org,
 lee.jones@linaro.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG5lIMSNZXRydGVrLCAxNi4gYXByaWwgMjAyMCBvYiAyMjoxODo1MiBDRVNUIGplIEhlaW5lciBL
YWxsd2VpdCBuYXBpc2FsKGEpOgo+IE9uIDE2LjA0LjIwMjAgMjA6NTcsIEplcm5laiBTa3JhYmVj
IHdyb3RlOgo+ID4gQUMyMDAgTUZEIElDIHN1cHBvcnRzIEZhc3QgRXRoZXJuZXQgUEhZLiBBZGQg
YSBkcml2ZXIgZm9yIGl0Lgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBKZXJuZWogU2tyYWJlYyA8
amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+Cj4gPiAtLS0KPiA+IAo+ID4gIGRyaXZlcnMvbmV0L3Bo
eS9LY29uZmlnICB8ICAgNyArKwo+ID4gIGRyaXZlcnMvbmV0L3BoeS9NYWtlZmlsZSB8ICAgMSAr
Cj4gPiAgZHJpdmVycy9uZXQvcGh5L2FjMjAwLmMgIHwgMjA2ICsrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKwo+ID4gIDMgZmlsZXMgY2hhbmdlZCwgMjE0IGluc2VydGlvbnMo
KykKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvcGh5L2FjMjAwLmMKPiA+IAo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3BoeS9LY29uZmlnIGIvZHJpdmVycy9uZXQvcGh5
L0tjb25maWcKPiA+IGluZGV4IDNmYTMzZDI3ZWViYS4uMTZhZjY5ZjY5ZWFmIDEwMDY0NAo+ID4g
LS0tIGEvZHJpdmVycy9uZXQvcGh5L0tjb25maWcKPiA+ICsrKyBiL2RyaXZlcnMvbmV0L3BoeS9L
Y29uZmlnCj4gPiBAQCAtMjg4LDYgKzI4OCwxMyBAQCBjb25maWcgQURJTl9QSFkKPiA+IAo+ID4g
IAkgIC0gQURJTjEzMDAgLSBSb2J1c3QsSW5kdXN0cmlhbCwgTG93IExhdGVuY3kgMTAvMTAwLzEw
MDAgR2lnYWJpdAo+ID4gIAkgIAo+ID4gIAkgICAgRXRoZXJuZXQgUEhZCj4gPiAKPiA+ICtjb25m
aWcgQUMyMDBfUEhZCj4gPiArCXRyaXN0YXRlICJBQzIwMCBFUEhZIgo+ID4gKwlkZXBlbmRzIG9u
IE5WTUVNCj4gPiArCWRlcGVuZHMgb24gT0YKPiA+ICsJaGVscAo+ID4gKwkgIEZhc3QgZXRoZXJu
ZXQgUEhZIGFzIGZvdW5kIGluIFgtUG93ZXJzIEFDMjAwIG11bHRpLWZ1bmN0aW9uIApkZXZpY2Uu
Cj4gPiArCj4gPiAKPiA+ICBjb25maWcgQU1EX1BIWQo+ID4gIAo+ID4gIAl0cmlzdGF0ZSAiQU1E
IFBIWXMiCj4gPiAgCS0tLWhlbHAtLS0KPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0
L3BoeS9NYWtlZmlsZSBiL2RyaXZlcnMvbmV0L3BoeS9NYWtlZmlsZQo+ID4gaW5kZXggMmY1Yzcw
OTNhNjViLi5iMGM1YjkxOTAwZmEgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL25ldC9waHkvTWFr
ZWZpbGUKPiA+ICsrKyBiL2RyaXZlcnMvbmV0L3BoeS9NYWtlZmlsZQo+ID4gQEAgLTUzLDYgKzUz
LDcgQEAgb2JqLSQoQ09ORklHX1NGUCkJCSs9IHNmcC5vCj4gPiAKPiA+ICBzZnAtb2JqLSQoQ09O
RklHX1NGUCkJCSs9IHNmcC1idXMubwo+ID4gIG9iai15CQkJCSs9ICQoc2ZwLW9iai15KSAkKHNm
cC1vYmotbSkKPiA+IAo+ID4gK29iai0kKENPTkZJR19BQzIwMF9QSFkpCQkrPSBhYzIwMC5vCj4g
PiAKPiA+ICBvYmotJChDT05GSUdfQURJTl9QSFkpCQkrPSBhZGluLm8KPiA+ICBvYmotJChDT05G
SUdfQU1EX1BIWSkJCSs9IGFtZC5vCj4gPiAgYXF1YW50aWEtb2JqcwkJCSs9IGFxdWFudGlhX21h
aW4ubwo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvcGh5L2FjMjAwLmMgYi9kcml2
ZXJzL25ldC9waHkvYWMyMDAuYwo+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+IGluZGV4IDAw
MDAwMDAwMDAwMC4uM2Q3ODU2ZmY4ZjkxCj4gPiAtLS0gL2Rldi9udWxsCj4gPiArKysgYi9kcml2
ZXJzL25ldC9waHkvYWMyMDAuYwo+ID4gQEAgLTAsMCArMSwyMDYgQEAKPiA+ICsvLyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCsKPiA+ICsvKioKPiA+ICsgKiBEcml2ZXIgZm9yIEFD
MjAwIEV0aGVybmV0IFBIWQo+ID4gKyAqCj4gPiArICogQ29weXJpZ2h0IChjKSAyMDIwIEplcm5l
aiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4KPiA+ICsgKi8KPiA+ICsKPiA+ICsj
aW5jbHVkZSA8bGludXgva2VybmVsLmg+Cj4gPiArI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgo+
ID4gKyNpbmNsdWRlIDxsaW51eC9tZmQvYWMyMDAuaD4KPiA+ICsjaW5jbHVkZSA8bGludXgvbnZt
ZW0tY29uc3VtZXIuaD4KPiA+ICsjaW5jbHVkZSA8bGludXgvb2YuaD4KPiA+ICsjaW5jbHVkZSA8
bGludXgvcGh5Lmg+Cj4gPiArI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPgo+ID4g
Kwo+ID4gKyNkZWZpbmUgQUMyMDBfRVBIWV9JRAkJCTB4MDA0NDE0MDAKPiA+ICsjZGVmaW5lIEFD
MjAwX0VQSFlfSURfTUFTSwkJMHgwZmZmZmZmMAo+ID4gKwo+IAo+IFlvdSBjb3VsZCB1c2UgUEhZ
X0lEX01BVENIX01PREVMKCkgaGVyZS4KCkhtLi4uIFRoaXMgZG9lc24ndCB3b3JrIHdpdGggZHlu
YW1pY2FsbHkgYWxsb2NhdGVkIG1lbW9yeSwgcmlnaHQ/CgpCZXN0IHJlZ2FyZHMsCkplcm5lagoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
