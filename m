Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D55A3F6E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 23:07:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JQFlGiOxNI9kBpFr/Q6aq4I6tUX1c/dC3df5WubTojI=; b=g2C5PqmhMmX1TQ
	mHis5W2xNoksth+t7UFUDnYDcog0lqmmLWoENvLBYM5wQXWdlEhTJ1Vyy7hhPIuFbfalm4V+Knv28
	s3/Hmxo4cWnU8krjSvTZI5VND3jpt6YgmqKvWb7PDFmAhd2J4qi01jSRDX/bsKAglIQpRNZGy+EDb
	20cFDG9Jp1qxUQvE/rM6/aqk8ZyebVrsgH83XTclTjiar63xIKcHdTXUn86HtsQIg35Mb+9vKAdEU
	GtFdo3gxfMXTsw7hsYO3GoljkQ5jy8/usO41mXr3u/jIfDUggtEC9hZ2jp67LGRF6AnoLfgmbsL8O
	j2nmDIPLyJsFwpgiLV1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3o74-0004YX-Oq; Fri, 30 Aug 2019 21:07:18 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3o6g-0004Q2-U7
 for linux-arm-kernel@bombadil.infradead.org; Fri, 30 Aug 2019 21:06:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h/IQ4hedTyEfCTcc5jbS4dtABQ3IbuNmDwt/iWuNK9Q=; b=Mt7dJnGqxTKDm0H3Xl1RQzct58
 IzZwY6nHGfUVilKQTPfCKrRnjIkc7hwjtzi8K4HIbjKvjNaey1sto6gz3Yhdrki/Dy+o9cWq5CIwC
 pfh87J9uwKvuiGCpM3MeYDh5WdyaVKsGV/JQdzPU0Q82J0u363aGMiT7C07r5cHQEaEwi6PToFUDh
 myedQ+hd+sRUKz0kUzw5YYFRPZ9B4Kw85a+Ol/43OXbEcTntEFiZmoRgBU+7oRSwe3K4ywG6t2DGO
 C1JhuRal85fiPXZAOu2ZzajLKjNYvlIfzaZHKdiWIR3zb6ilN/iIHz7Y4DNtpm9zvPnJrPzmbg6Tb
 o8z7ayUA==;
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3o6d-0001F4-HP
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 21:06:53 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 574FD100003;
 Fri, 30 Aug 2019 21:06:10 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [PATCH 1/3] ASoC: xlnx: add Xilinx logicPD-I2S FPGA IP support
Date: Fri, 30 Aug 2019 23:06:05 +0200
Message-Id: <20190830210607.22644-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, Michal Simek <michal.simek@xilinx.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, alexandre@bootlin.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBJUCBpcyB2ZXJ5IHNpbXBsZSBzbyB0aGlzIGRyaXZlciBtYW5hZ2UgYm90aCB0aGUgREFJ
IGFuZCB0aGUgUENNCnN0cmVhbXMsIGhlbmNlIHRoZSBwcmVzZW5jZSBvZiBib3RoIGNvbXBvbmVu
dHMgaW4gdGhpcyBkcml2ZXIuCgpUaGVyZSBhcmUgcGxlbnR5IGF2YWlsYWJsZSBpbnRlcnJ1cHRp
b25zIHdoZW4gY2FwdHVyaW5nIG9yIHBsYXlpbmcKYmFjayBhdWRpbyB0aGF0IGNhbiBiZSB0cmln
Z2VyZWQgYnV0IHRoZSBvbmx5IG9uZSB0aGF0IGZpdHMgdGhlIEFMU0EKc291bmQgc3lzdGVtIGlz
IHRoZSBYRkVSX0RPTkUgd2hpY2ggaXMgdXNlZCB0byBib3VuZCBzb3VuZApwZXJpb2RzLiBPdGhl
ciBpbnRlcnJ1cHRzIGFyZSBtYXNrZWQuIFBsZWFzZSBub3RlIHRoYXQgY2FwdHVyZSBhbmQKcGxh
eWJhY2sgYXJlIG5vdCBwb3NzaWJsZSBhdCB0aGUgc2FtZSB0aW1lIHRob3VnaC4KCkNhcHR1cmUg
c2VlbXMgdG8gd29yayAoYXQgbGVhc3QgaXQgY3JlYXRlcyBhIGZpbGUgd2l0aCBzb21ldGhpbmcK
aW5zaWRlKSBidXQgSSBoYXZlIG5vIGNhcHR1cmUgbWVjaGFuaXNtIG9uIHRoZSBib2FyZCB0byBh
Y3R1YWxseSB0ZXN0CnRoYXQgaXQgd29ya3MgY29ycmVjdGx5LgoKU2lnbmVkLW9mZi1ieTogTWlx
dWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4KLS0tCgpIZWxsbywKClRoaXMg
aXMgbXkgZmlyc3QgY29udHJpYnV0aW9uIGluIHRoZSBzb3VuZCBzdWJzeXN0ZW0sIEkgaG9wZSBJ
J3ZlCnVuZGVyc3Rvb2QgdGhlIGNvcmUgYnV0IEkgbWlnaHQgYmUgZW50aXJlbHkgd3JvbmcgYXMg
d2VsbCwgc28gcGxlYXNlCmRvIG5vdCBoZXNpdGF0ZSB0byBiZSBjcml0aWNhbCBvbiBteSBjaG9p
Y2VzLgoKVGhhbmtzLApNaXF1w6hsCgogc291bmQvc29jL3hpbGlueC9LY29uZmlnICAgICAgICAg
ICAgfCAgIDcgKwogc291bmQvc29jL3hpbGlueC9NYWtlZmlsZSAgICAgICAgICAgfCAgIDIgKwog
c291bmQvc29jL3hpbGlueC94bG54LWxvZ2ljcGQtaTJzLmMgfCA0NjggKysrKysrKysrKysrKysr
KysrKysrKysrKysrKwogMyBmaWxlcyBjaGFuZ2VkLCA0NzcgaW5zZXJ0aW9ucygrKQogY3JlYXRl
IG1vZGUgMTAwNjQ0IHNvdW5kL3NvYy94aWxpbngveGxueC1sb2dpY3BkLWkycy5jCgpkaWZmIC0t
Z2l0IGEvc291bmQvc29jL3hpbGlueC9LY29uZmlnIGIvc291bmQvc29jL3hpbGlueC9LY29uZmln
CmluZGV4IDQ3ZjYwNmI5MjRlNC4uYjYyY2FlNjc1MGI5IDEwMDY0NAotLS0gYS9zb3VuZC9zb2Mv
eGlsaW54L0tjb25maWcKKysrIGIvc291bmQvc29jL3hpbGlueC9LY29uZmlnCkBAIC03LDYgKzcs
MTMgQEAgY29uZmlnIFNORF9TT0NfWElMSU5YX0kyUwogCSAgUENNIGRhdGEuIEluIHJlY2VpdmVy
IG1vZGUsIElQIHJlY2VpdmVzIFBDTSBhdWRpbyBhbmQKIAkgIGVuY2Fwc3VsYXRlcyBQQ00gaW4g
QUVTIGZvcm1hdCBhbmQgc2VuZHMgQUVTIGRhdGEuCiAKK2NvbmZpZyBTTkRfU09DX1hJTElOWF9M
T0dJQ1BEX0kyUworCXRyaXN0YXRlICJBdWRpbyBzdXBwb3J0IGZvciB0aGUgWGlsaW54IGxvZ2lj
UEQgSTJTIgorCWhlbHAKKwkgIFNlbGVjdCB0aGlzIG9wdGlvbiB0byBlbmFibGUgWGlsaW54IGxv
Z2ljUEQgSTJTIHNsYXZlCisJICB0cmFuc2NlaXZlci4gVGhpcyBlbmFibGVzIEkyUyBwbGF5YmFj
ayBhbmQgY2FwdHVyZSB1c2luZworCSAgWGlsaW54L2xvZ2ljUEQgSVAuCisKIGNvbmZpZyBTTkRf
U09DX1hJTElOWF9BVURJT19GT1JNQVRURVIKICAgICAgICAgdHJpc3RhdGUgIkF1ZGlvIHN1cHBv
cnQgZm9yIHRoZSB0aGUgWGlsaW54IGF1ZGlvIGZvcm1hdHRlciIKICAgICAgICAgaGVscApkaWZm
IC0tZ2l0IGEvc291bmQvc29jL3hpbGlueC9NYWtlZmlsZSBiL3NvdW5kL3NvYy94aWxpbngvTWFr
ZWZpbGUKaW5kZXggZDc5ZmQzOGIwOTRiLi5kMTI3YzMwZjhmZTIgMTAwNjQ0Ci0tLSBhL3NvdW5k
L3NvYy94aWxpbngvTWFrZWZpbGUKKysrIGIvc291bmQvc29jL3hpbGlueC9NYWtlZmlsZQpAQCAt
MSw1ICsxLDcgQEAKIHNuZC1zb2MteGxueC1pMnMtb2JqcyAgICAgIDo9IHhsbnhfaTJzLm8KIG9i
ai0kKENPTkZJR19TTkRfU09DX1hJTElOWF9JMlMpICs9IHNuZC1zb2MteGxueC1pMnMubworc25k
LXNvYy14bG54LWxvZ2ljcGQtaTJzLW9ianMgOj0geGxueC1sb2dpY3BkLWkycy5vCitvYmotJChD
T05GSUdfU05EX1NPQ19YSUxJTlhfTE9HSUNQRF9JMlMpICs9IHNuZC1zb2MteGxueC1sb2dpY3Bk
LWkycy5vCiBzbmQtc29jLXhsbngtZm9ybWF0dGVyLXBjbS1vYmpzIDo9IHhsbnhfZm9ybWF0dGVy
X3BjbS5vCiBvYmotJChDT05GSUdfU05EX1NPQ19YSUxJTlhfQVVESU9fRk9STUFUVEVSKSArPSBz
bmQtc29jLXhsbngtZm9ybWF0dGVyLXBjbS5vCiBzbmQtc29jLXhsbngtc3BkaWYtb2JqcyA6PSB4
bG54X3NwZGlmLm8KZGlmZiAtLWdpdCBhL3NvdW5kL3NvYy94aWxpbngveGxueC1sb2dpY3BkLWky
cy5jIGIvc291bmQvc29jL3hpbGlueC94bG54LWxvZ2ljcGQtaTJzLmMKbmV3IGZpbGUgbW9kZSAx
MDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi4zMjVhNWJiNjk3OGEKLS0tIC9kZXYvbnVsbAorKysg
Yi9zb3VuZC9zb2MveGlsaW54L3hsbngtbG9naWNwZC1pMnMuYwpAQCAtMCwwICsxLDQ2OCBAQAor
Ly8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKKy8qCisgKiBYaWxpbnggbG9naWNQ
RCBsb2dpSTJTIC0gSTJTIHNsYXZlIHRyYW5zY2VpdmVyIHYyIHN1cHBvcnQKKyAqCisgKiBDb3B5
cmlnaHQgKEMpIDIwMTkgQm9vdGxpbgorICoKKyAqIEF1dGhvcjogTWlxdWVsIFJheW5hbCA8bWlx
dWVsLnJheW5hbEBib290bGluLmNvbT4KKyAqLworCisjaW5jbHVkZSA8bGludXgvZG1hLW1hcHBp
bmcuaD4KKyNpbmNsdWRlIDxsaW51eC9pby5oPgorI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgor
I2luY2x1ZGUgPGxpbnV4L29mLmg+CisjaW5jbHVkZSA8bGludXgvb2ZfcGxhdGZvcm0uaD4KKyNp
bmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KKyNpbmNsdWRlIDxzb3VuZC9kbWFlbmdp
bmVfcGNtLmg+CisjaW5jbHVkZSA8c291bmQvcGNtX3BhcmFtcy5oPgorI2luY2x1ZGUgPHNvdW5k
L3NvYy5oPgorCisjZGVmaW5lIERSVl9OQU1FICJ4bG54X2xvZ2ljcGRfaTJzIgorCisjZGVmaW5l
IElQX1ZFUlNJT04gMHgwCisjZGVmaW5lICAgUEFUQ0hfTEVWRUwocmVnKSAoKChyZWcpICYgR0VO
TUFTSyg0LCAwKSkgKyAnYScpCisjZGVmaW5lICAgTUlOT1JfUkVWKHJlZykgKCgocmVnKSAmIEdF
Tk1BU0soMTAsIDUpKSA+PiA1KQorI2RlZmluZSAgIE1BSk9SX1JFVihyZWcpICgoKHJlZykgJiBH
RU5NQVNLKDE2LCAxMSkpID4+IDExKQorI2RlZmluZSAgIExJQ0VOU0VfVFlQRShyZWcpICgoKHJl
ZykgJiBHRU5NQVNLKDE4LCAxNykpID4+IDE3KQorI2RlZmluZSBDT05UUk9MX1JFRyhzKSAoKHMp
ID09IFNORFJWX1BDTV9TVFJFQU1fUExBWUJBQ0sgPyAweDQgOiAweDI0KQorI2RlZmluZSAgIEVO
R0lORV9FTiBCSVQoMCkKKyNkZWZpbmUgICBYRkVSX0RPTkUgQklUKDEpCisjZGVmaW5lIEJVRkZf
QkFTRV9BRERSX1JFRyhzKSAoKHMpID09IFNORFJWX1BDTV9TVFJFQU1fUExBWUJBQ0sgPyAweDgg
OiAweDI4KQorI2RlZmluZSBCVUZGX0xFTl9SRUcocykgKChzKSA9PSBTTkRSVl9QQ01fU1RSRUFN
X1BMQVlCQUNLID8gMHhDIDogMHgyQykKKyNkZWZpbmUgRklGT19TVEFUX1JFRyhzKSAoKHMpID09
IFNORFJWX1BDTV9TVFJFQU1fUExBWUJBQ0sgPyAweDEwIDogMHgzMCkKKyNkZWZpbmUgSU5UUl9N
QVNLX1JFRyhzKSAoKHMpID09IFNORFJWX1BDTV9TVFJFQU1fUExBWUJBQ0sgPyAweDE0IDogMHgz
NCkKKyNkZWZpbmUgICBYRkVSX0RPTkVfSU5UUiBCSVQoMzEpCisjZGVmaW5lIElOVFJfU1RBVF9S
RUcocykgKChzKSA9PSBTTkRSVl9QQ01fU1RSRUFNX1BMQVlCQUNLID8gMHgxOCA6IDB4MzgpCisj
ZGVmaW5lICAgRklGT19DT1VOVChyZWcpICgocmVnKSA+PiAyMCkKKworI2RlZmluZSBCWVRFU19U
T19XT1JEUyhuKSAoKG4pIC8gNCkKKworLyogQXJiaXRyYXJpbHkgY2hvc2VuIHBlcmlvZCBzaXpl
ICovCisjZGVmaW5lIFBDTV9QRVJJT0RfV09SRFMgU1pfOEsKKyNkZWZpbmUgUENNX1BFUklPRF9C
WVRFUyAoUENNX1BFUklPRF9XT1JEUyAqIDQpCisvKiBUaGlzIGlzIHRoZSBhY3R1YWwgbWF4aW11
bSBzaXplIHRoYXQgY2FuIGFjdHVhbGx5IGJlIG1vdmVkIGluIG9uZSBjaHVuayAqLworI2RlZmlu
ZSBQQ01fQlVGX1dPUkRTIChTWl82NEsgLSAxKQorI2RlZmluZSBQQ01fQlVGX0JZVEVTIChQQ01f
QlVGX1dPUkRTICogNCkKKworc3RydWN0IHhsbnhfbG9naWNwZF9pMnM7CisKKy8qKgorICogc3Ry
dWN0IHhsbnhfbG9naWNwZF9zdHJlYW0gLSBJbnRlcm5hbCBzdHJlYW0gcmVwcmVzZW50YXRpb24K
KyAqCisgKiBAaTJzOiBDaGlwIGRhdGEKKyAqIEBzdWJzdHJlYW06IENvcmUgc3Vic3RyZWFtIHN0
cnVjdHVyZQorICogQHBlcmlvZF9pZHg6IEluZGV4IG9mIHRoZSBwZXJpb2Qgd2l0aGluIHRoZSBj
aXJjdWxhciBidWZmZXIKKyAqLworc3RydWN0IHhsbnhfbG9naWNwZF9zdHJlYW0geworCXN0cnVj
dCB4bG54X2xvZ2ljcGRfaTJzICppMnM7CisJc3RydWN0IHNuZF9wY21fc3Vic3RyZWFtICpzdWJz
dHJlYW07CisJdW5zaWduZWQgaW50IHBlcmlvZF9pZHg7Cit9OworCisvKioKKyAqIHN0cnVjdCB4
bG54X2xvZ2ljcGRfaTJzIC0gQ2hpcCBzdHJ1Y3R1cmUKKyAqCisgKiBAYmFzZTogUmVnaXN0ZXJz
IGJhc2UgYWRkcmVzcworICogQHN0cmVhbXM6IFBsYXliYWNrIGFuZCBjYXB0dXJlIHN0cmVhbXMg
aW4gYW4gYXJyYXkKKyAqLworc3RydWN0IHhsbnhfbG9naWNwZF9pMnMgeworCXZvaWQgX19pb21l
bSAqYmFzZTsKKwlzdHJ1Y3QgeGxueF9sb2dpY3BkX3N0cmVhbSBzdHJlYW1zWzJdOworfTsKKwor
c3RhdGljIHN0cnVjdCB4bG54X2xvZ2ljcGRfaTJzICpzdWJzdHJlYW1fdG9fY3B1X2RhaV9jaGlw
KHN0cnVjdCBzbmRfcGNtX3N1YnN0cmVhbSAqc3Vic3RyZWFtKQoreworCXN0cnVjdCBzbmRfc29j
X3BjbV9ydW50aW1lICpydGQgPSBzbmRfcGNtX3N1YnN0cmVhbV9jaGlwKHN1YnN0cmVhbSk7CisK
KwlyZXR1cm4gc25kX3NvY19kYWlfZ2V0X2RydmRhdGEocnRkLT5jcHVfZGFpKTsKK30KKworLyog
UENNIG1ldGhvZHMgKi8KKworc3RhdGljIGNvbnN0IHN0cnVjdCBzbmRfcGNtX2hhcmR3YXJlIHhs
bnhfbG9naWNwZF9wY21faGFyZHdhcmUgPSB7CisJLmluZm8gPSBTTkRSVl9QQ01fSU5GT19NTUFQ
IHwKKwkJU05EUlZfUENNX0lORk9fTU1BUF9WQUxJRCB8CisJCVNORFJWX1BDTV9JTkZPX0lOVEVS
TEVBVkVEIHwKKwkJU05EUlZfUENNX0lORk9fSEFMRl9EVVBMRVgsCisJLmZvcm1hdHMgPSBTTkRS
Vl9QQ01fRk1UQklUX1MxNl9MRSwKKwkucmF0ZXMgPSBTTkRSVl9QQ01fUkFURV84MDAwXzE5MjAw
MCwKKwkucmF0ZV9taW4gPSA4MDAwLAorCS5yYXRlX21heCA9IDE5MjAwMCwKKwkuY2hhbm5lbHNf
bWluID0gMiwKKwkuY2hhbm5lbHNfbWF4ID0gMiwKKwkucGVyaW9kX2J5dGVzX21pbiA9IDAsCisJ
LnBlcmlvZF9ieXRlc19tYXggPSBQQ01fUEVSSU9EX0JZVEVTLAorCS5wZXJpb2RzX21pbiA9IDAs
CisJLnBlcmlvZHNfbWF4ID0gLTEsCisJLmJ1ZmZlcl9ieXRlc19tYXggPSBQQ01fQlVGX0JZVEVT
LAorfTsKKworc3RhdGljIGludCB4bG54X2xvZ2ljcGRfcGNtX29wZW4oc3RydWN0IHNuZF9wY21f
c3Vic3RyZWFtICpzdWJzdHJlYW0pCit7CisJc3RydWN0IHhsbnhfbG9naWNwZF9pMnMgKmkycyA9
IHN1YnN0cmVhbV90b19jcHVfZGFpX2NoaXAoc3Vic3RyZWFtKTsKKwl1bnNpZ25lZCBpbnQgZGly
ID0gc3Vic3RyZWFtLT5zdHJlYW07CisKKwlzbmRfc29jX3NldF9ydW50aW1lX2h3cGFyYW1zKHN1
YnN0cmVhbSwgJnhsbnhfbG9naWNwZF9wY21faGFyZHdhcmUpOworCisJaTJzLT5zdHJlYW1zW2Rp
cl0uc3Vic3RyZWFtID0gc3Vic3RyZWFtOworCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQg
eGxueF9sb2dpY3BkX3BjbV9jbG9zZShzdHJ1Y3Qgc25kX3BjbV9zdWJzdHJlYW0gKnN1YnN0cmVh
bSkKK3sKKwlzdHJ1Y3QgeGxueF9sb2dpY3BkX2kycyAqaTJzID0gc3Vic3RyZWFtX3RvX2NwdV9k
YWlfY2hpcChzdWJzdHJlYW0pOworCXVuc2lnbmVkIGludCBkaXIgPSBzdWJzdHJlYW0tPnN0cmVh
bTsKKworCWkycy0+c3RyZWFtc1tkaXJdLnN1YnN0cmVhbSA9IE5VTEw7CisKKwlyZXR1cm4gMDsK
K30KKworc3RhdGljIGludCB4bG54X2xvZ2ljcGRfcGNtX2h3X3BhcmFtcyhzdHJ1Y3Qgc25kX3Bj
bV9zdWJzdHJlYW0gKnN1YnN0cmVhbSwKKwkJCQkgICAgICBzdHJ1Y3Qgc25kX3BjbV9od19wYXJh
bXMgKnBhcmFtcykKK3sKKwlzdHJ1Y3Qgc25kX3BjbV9ydW50aW1lICpydW50aW1lID0gc3Vic3Ry
ZWFtLT5ydW50aW1lOworCisJc25kX3BjbV9zZXRfcnVudGltZV9idWZmZXIoc3Vic3RyZWFtLCAm
c3Vic3RyZWFtLT5kbWFfYnVmZmVyKTsKKwlydW50aW1lLT5kbWFfYnl0ZXMgPSBwYXJhbXNfYnVm
ZmVyX2J5dGVzKHBhcmFtcyk7CisKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIHNuZF9wY21fdWZy
YW1lc190IHhsbnhfbG9naWNwZF9wY21fcG9pbnRlcihzdHJ1Y3Qgc25kX3BjbV9zdWJzdHJlYW0g
KnN1YnN0cmVhbSkKK3sKKwlzdHJ1Y3QgeGxueF9sb2dpY3BkX2kycyAqaTJzID0gc3Vic3RyZWFt
X3RvX2NwdV9kYWlfY2hpcChzdWJzdHJlYW0pOworCXN0cnVjdCBzbmRfcGNtX3J1bnRpbWUgKnJ1
bnRpbWUgPSBzdWJzdHJlYW0tPnJ1bnRpbWU7CisJdW5zaWduZWQgaW50IHBlcmlvZF9zeiA9IHNu
ZF9wY21fbGliX3BlcmlvZF9ieXRlcyhzdWJzdHJlYW0pOworCXVuc2lnbmVkIGludCBkaXIgPSBz
dWJzdHJlYW0tPnN0cmVhbTsKKworCXJldHVybiBieXRlc190b19mcmFtZXMocnVudGltZSwKKwkJ
CSAgICAgICBpMnMtPnN0cmVhbXNbZGlyXS5wZXJpb2RfaWR4ICogcGVyaW9kX3N6KTsKK30KKwor
c3RhdGljIGludCB4bG54X2xvZ2ljcGRfcGNtX21tYXAoc3RydWN0IHNuZF9wY21fc3Vic3RyZWFt
ICpzdWJzdHJlYW0sCisJCQkJIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hKQoreworCXJldHVy
biByZW1hcF9wZm5fcmFuZ2Uodm1hLCB2bWEtPnZtX3N0YXJ0LAorCQkJICAgICAgIHN1YnN0cmVh
bS0+ZG1hX2J1ZmZlci5hZGRyID4+IFBBR0VfU0hJRlQsCisJCQkgICAgICAgdm1hLT52bV9lbmQg
LSB2bWEtPnZtX3N0YXJ0LCB2bWEtPnZtX3BhZ2VfcHJvdCk7Cit9CisKK3N0YXRpYyBjb25zdCBz
dHJ1Y3Qgc25kX3BjbV9vcHMgeGxueF9sb2dpY3BkX3BjbV9vcHMgPSB7CisJLm9wZW4gPSB4bG54
X2xvZ2ljcGRfcGNtX29wZW4sCisJLmNsb3NlID0geGxueF9sb2dpY3BkX3BjbV9jbG9zZSwKKwku
aW9jdGwgPSBzbmRfcGNtX2xpYl9pb2N0bCwKKwkuaHdfcGFyYW1zID0geGxueF9sb2dpY3BkX3Bj
bV9od19wYXJhbXMsCisJLnBvaW50ZXIgPSB4bG54X2xvZ2ljcGRfcGNtX3BvaW50ZXIsCisJLm1t
YXAgPSB4bG54X2xvZ2ljcGRfcGNtX21tYXAsCit9OworCitzdGF0aWMgaW50IHhsbnhfbG9naWNw
ZF9wY21fbmV3KHN0cnVjdCBzbmRfc29jX3BjbV9ydW50aW1lICpydGQpCit7CisJc3RydWN0IHNu
ZF9wY20gKnBjbSA9IHJ0ZC0+cGNtOworCXN0cnVjdCBzbmRfcGNtX3N1YnN0cmVhbSAqc3Vic3Ry
ZWFtOworCXN0cnVjdCBzbmRfZG1hX2J1ZmZlciAqYnVmOworCWludCBkaXI7CisKKwlmb3IgKGRp
ciA9IFNORFJWX1BDTV9TVFJFQU1fUExBWUJBQ0s7CisJICAgICBkaXIgPD0gU05EUlZfUENNX1NU
UkVBTV9DQVBUVVJFOyBkaXIrKykgeworCQlzdWJzdHJlYW0gPSBwY20tPnN0cmVhbXNbZGlyXS5z
dWJzdHJlYW07CisJCWlmICghc3Vic3RyZWFtKQorCQkJY29udGludWU7CisKKwkJYnVmID0gJnN1
YnN0cmVhbS0+ZG1hX2J1ZmZlcjsKKwkJYnVmLT5hcmVhID0gZG1hX2FsbG9jX2NvaGVyZW50KHBj
bS0+Y2FyZC0+ZGV2LCBQQ01fQlVGX0JZVEVTLAorCQkJCQkgICAgICAgJmJ1Zi0+YWRkciwgR0ZQ
X0tFUk5FTCk7CisJCWJ1Zi0+Ynl0ZXMgPSBQQ01fQlVGX0JZVEVTOworCQlpZiAoIWJ1Zi0+YXJl
YSkKKwkJCXJldHVybiAtRU5PTUVNOworCX0KKworCXJldHVybiAwOworfQorCitzdGF0aWMgdm9p
ZCB4bG54X2xvZ2ljcGRfcGNtX2ZyZWUoc3RydWN0IHNuZF9wY20gKnBjbSkKK3sKKwlzdHJ1Y3Qg
c25kX3BjbV9zdWJzdHJlYW0gKnN1YnN0cmVhbTsKKwlzdHJ1Y3Qgc25kX2RtYV9idWZmZXIgKmJ1
ZjsKKwlpbnQgZGlyOworCisJZm9yIChkaXIgPSBTTkRSVl9QQ01fU1RSRUFNX1BMQVlCQUNLOwor
CSAgICAgZGlyIDw9IFNORFJWX1BDTV9TVFJFQU1fQ0FQVFVSRTsgZGlyKyspIHsKKwkJc3Vic3Ry
ZWFtID0gcGNtLT5zdHJlYW1zW2Rpcl0uc3Vic3RyZWFtOworCQlpZiAoIXN1YnN0cmVhbSkKKwkJ
CWNvbnRpbnVlOworCisJCWJ1ZiA9ICZzdWJzdHJlYW0tPmRtYV9idWZmZXI7CisJCWlmICghYnVm
LT5hcmVhKQorCQkJY29udGludWU7CisKKwkJZG1hX2ZyZWVfY29oZXJlbnQocGNtLT5jYXJkLT5k
ZXYsIGJ1Zi0+Ynl0ZXMsCisJCQkJICBidWYtPmFyZWEsIGJ1Zi0+YWRkcik7CisJCWJ1Zi0+YXJl
YSA9IE5VTEw7CisJfQorfQorCitzdGF0aWMgY29uc3Qgc3RydWN0IHNuZF9zb2NfY29tcG9uZW50
X2RyaXZlciB4bG54X2xvZ2ljcGRfcGNtX2NvbXBvbmVudCA9IHsKKwkubmFtZSA9ICJ4bG54LWxv
Z2ljcC1wY20iLAorCS5vcHMgPSAmeGxueF9sb2dpY3BkX3BjbV9vcHMsCisJLnBjbV9uZXcgPSB4
bG54X2xvZ2ljcGRfcGNtX25ldywKKwkucGNtX2ZyZWUgPSB4bG54X2xvZ2ljcGRfcGNtX2ZyZWUs
Cit9OworCisvKiBEQUkgbWV0aG9kcyAqLworCitzdGF0aWMgdm9pZCB4bG54X2xvZ2ljcGRfZGFp
X2ludF9lbihzdHJ1Y3QgeGxueF9sb2dpY3BkX2kycyAqaTJzLCBpbnQgZGlyKQoreworCXUzMiBy
ZWc7CisKKwlyZWcgPSByZWFkbF9yZWxheGVkKGkycy0+YmFzZSArIElOVFJfTUFTS19SRUcoZGly
KSk7CisJcmVnICY9IH5YRkVSX0RPTkVfSU5UUjsKKwl3cml0ZWwocmVnLCBpMnMtPmJhc2UgKyBJ
TlRSX01BU0tfUkVHKGRpcikpOworfQorCitzdGF0aWMgdm9pZCB4bG54X2xvZ2ljcGRfZGFpX2lu
dF9kaXMoc3RydWN0IHhsbnhfbG9naWNwZF9pMnMgKmkycywgaW50IGRpcikKK3sKKwl1MzIgcmVn
OworCisJcmVnID0gcmVhZGxfcmVsYXhlZChpMnMtPmJhc2UgKyBJTlRSX01BU0tfUkVHKGRpcikp
OworCXJlZyB8PSBYRkVSX0RPTkVfSU5UUjsKKwl3cml0ZWxfcmVsYXhlZChyZWcsIGkycy0+YmFz
ZSArIElOVFJfTUFTS19SRUcoZGlyKSk7Cit9CisKK3N0YXRpYyBpcnFyZXR1cm5fdCB4bG54X2xv
Z2ljcGRfZGFpX2lzcihpbnQgaXJxLCB2b2lkICpkZXZfaWQpCit7CisJc3RydWN0IHhsbnhfbG9n
aWNwZF9zdHJlYW0gKnN0cmVhbSA9IGRldl9pZDsKKwlzdHJ1Y3QgeGxueF9sb2dpY3BkX2kycyAq
aTJzID0gc3RyZWFtLT5pMnM7CisJc3RydWN0IHNuZF9wY21fc3Vic3RyZWFtICpzdWJzdHJlYW0g
PSBzdHJlYW0tPnN1YnN0cmVhbTsKKwl1bnNpZ25lZCBpbnQgcGVyaW9kX3N6ID0gc25kX3BjbV9s
aWJfcGVyaW9kX2J5dGVzKHN1YnN0cmVhbSk7CisJdW5zaWduZWQgaW50IGJ1Zl9zeiA9IHNuZF9w
Y21fbGliX2J1ZmZlcl9ieXRlcyhzdWJzdHJlYW0pOworCWRtYV9hZGRyX3QgYnVmX2FkZHIgPSBz
dWJzdHJlYW0tPmRtYV9idWZmZXIuYWRkcjsKKwl1bnNpZ25lZCBpbnQgZGlyID0gc3Vic3RyZWFt
LT5zdHJlYW07CisJdTMyIHJlZzsKKworCS8qIFJlYWRpbmcgSU5UUl9TVEFUIGRlYXNzZXJ0cyB0
aGUgaG9zdCBpbnRlcnJ1cHQgKi8KKwlyZWcgPSByZWFkbF9yZWxheGVkKGkycy0+YmFzZSArIElO
VFJfU1RBVF9SRUcoZGlyKSk7CisKKwkvKgorCSAqIFdoZW4gdGhlIFhGRVJfRE9ORSBpbnRlcnJ1
cHQgaXMgdHJpZ2dlcmVkLCBpdCBtZWFucyB0aGUgcGVyaW9kIGhhcworCSAqIGJlZW4gZW50aXJl
bHkgc2hpZnRlZCBpbnRvIHRoZSBGSUZPLiBBdCB0aGlzIHBvaW50LCB3ZSBjYW4gbW92ZSB0aGUK
KwkgKiBidWZmZXIgcG9pbnRlciB0byB0aGUgbmV4dCBwZXJpb2QgYW5kIGFzayB0byB0cmFuc2Zl
ciBhbm90aGVyIGNodW5rCisJICogb2YgZGF0YS4gV2hlbmV2ZXIgdGhlIEZJRk8gd2lsbCBiZSBh
dCBpdHMgImFsbW9zdCBmdWxsIiBzdGF0ZSAoNDA5NgorCSAqIHdvcmRzIG1pbnVzIHRoZSB0aHJl
c2hvbGQgb2YgMTAwIHdvcmRzKSB0aGUgaW50ZXJuYWwgRE1BIGVuZ2luZSB3aWxsCisJICogYXV0
b21hdGljYWxseSByZXN0YXJ0IHNoaWZ0aW5nIGRhdGEgdG8gdGhlIEZJRk8gdW50aWwgaXRzIGZ1
bGwgc3RhdGUuCisJICogSGVuY2UsIHRoZSBob3N0IGhhcyB1cCB0byAzOTk2IHdvcmRzIChpbiBv
dXIgY2FzZSwgMzk5NiBmcmFtZXMpIHRvCisJICogc2VydmUgdGhlIGludGVycnVwdCBiZWZvcmUg
YW4gdW5kZXJydW4gdGhhdCB3b3VsZCBoYXBwZW4sIGF0IGVnLgorCSAqIDQ0MTAwSHosIGFmdGVy
IDkwbXMuCisJICovCisJaWYgKHJlZyAmIFhGRVJfRE9ORV9JTlRSKSB7CisJCXVuc2lnbmVkIGlu
dCBvZmZzZXRfaW5fYnVmID0gKytzdHJlYW0tPnBlcmlvZF9pZHggKiBwZXJpb2Rfc3o7CisKKwkJ
aWYgKG9mZnNldF9pbl9idWYgPj0gYnVmX3N6KSB7CisJCQlzdHJlYW0tPnBlcmlvZF9pZHggPSAw
OworCQkJb2Zmc2V0X2luX2J1ZiA9IHN0cmVhbS0+cGVyaW9kX2lkeCAqIHBlcmlvZF9zejsKKwkJ
fQorCisJCS8qIE1vdmUgb24gdG8gdGhlIG5leHQgcGVyaW9kIGluIHRoZSBvdmVyYWxsIGJ1ZmZl
ciAqLworCQl3cml0ZWxfcmVsYXhlZChidWZfYWRkciArIG9mZnNldF9pbl9idWYsCisJCQkgICAg
ICAgaTJzLT5iYXNlICsgQlVGRl9CQVNFX0FERFJfUkVHKGRpcikpOworCQkvKiBUaGUgbGFzdCBw
ZXJpb2QgbWlnaHQgYmUgc21hbGxlciwgdXBkYXRlIGxlbmd0aCBpZiBuZWVkZWQgKi8KKwkJcGVy
aW9kX3N6ID0gbWluKHBlcmlvZF9zeiwgYnVmX3N6IC0gb2Zmc2V0X2luX2J1Zik7CisJCXdyaXRl
bF9yZWxheGVkKEJZVEVTX1RPX1dPUkRTKHBlcmlvZF9zeiksCisJCQkgICAgICAgaTJzLT5iYXNl
ICsgQlVGRl9MRU5fUkVHKGRpcikpOworCisJCS8qIEluZm9ybSB0aGUgUENNIG1pZGRsZS1sYXll
ciAqLworCQlzbmRfcGNtX3BlcmlvZF9lbGFwc2VkKHN1YnN0cmVhbSk7CisJfQorCisJcmV0dXJu
IElSUV9IQU5ETEVEOworfQorCitzdGF0aWMgaW50IHhsbnhfbG9naWNwZF9kYWlfdHJpZ2dlcihz
dHJ1Y3Qgc25kX3BjbV9zdWJzdHJlYW0gKnN1YnN0cmVhbSwKKwkJCQkgICAgaW50IGNtZCwgc3Ry
dWN0IHNuZF9zb2NfZGFpICpkYWkpCit7CisJc3RydWN0IHhsbnhfbG9naWNwZF9pMnMgKmkycyA9
IHNuZF9zb2NfZGFpX2dldF9kcnZkYXRhKGRhaSk7CisJdW5zaWduZWQgaW50IHBlcmlvZF9zeiA9
IHNuZF9wY21fbGliX3BlcmlvZF9ieXRlcyhzdWJzdHJlYW0pOworCWRtYV9hZGRyX3QgYnVmX2Fk
ZHIgPSBzdWJzdHJlYW0tPmRtYV9idWZmZXIuYWRkcjsKKwl1bnNpZ25lZCBpbnQgZGlyID0gc3Vi
c3RyZWFtLT5zdHJlYW07CisKKwlzd2l0Y2ggKGNtZCkgeworCWNhc2UgU05EUlZfUENNX1RSSUdH
RVJfU1RBUlQ6CisJCWkycy0+c3RyZWFtc1tkaXJdLnBlcmlvZF9pZHggPSAwOworCQkvKiBEaXNh
YmxlIHRoZSBvdGhlciBlbmdpbmUgaWYgZW5hYmxlZCAqLworCQlpZiAocmVhZGwoaTJzLT5iYXNl
ICsgQ09OVFJPTF9SRUcoIWRpcikpICYgRU5HSU5FX0VOKQorCQkJd3JpdGVsKDAsIGkycy0+YmFz
ZSArIENPTlRST0xfUkVHKCFkaXIpKTsKKwkJLyogRW5hYmxlIHRoZSBkZXNpcmVkIGVuZ2luZSAq
LworCQl3cml0ZWxfcmVsYXhlZChFTkdJTkVfRU4sIGkycy0+YmFzZSArIENPTlRST0xfUkVHKGRp
cikpOworCQkvKiBTZXQgdGhlIGJ1ZmZlciBzdGFydCBhZGRyZXNzICovCisJCXdyaXRlbF9yZWxh
eGVkKGJ1Zl9hZGRyLCBpMnMtPmJhc2UgKyBCVUZGX0JBU0VfQUREUl9SRUcoZGlyKSk7CisJCS8q
IEVuYWJsZSB0aGUgWEZFUl9ET05FIElSUSwgc2lnbmFsaW5nIHRoZSBlbmQgb2YgdGhlIHBlcmlv
ZCAqLworCQl4bG54X2xvZ2ljcGRfZGFpX2ludF9lbihpMnMsIGRpcik7CisJCS8qIEFjdHVhbGx5
IHN0YXJ0IHRoZSBpbnRlcm5hbCBETUEgZW5naW5lICovCisJCXdyaXRlbChCWVRFU19UT19XT1JE
UyhwZXJpb2Rfc3opLAorCQkgICAgICAgaTJzLT5iYXNlICsgQlVGRl9MRU5fUkVHKGRpcikpOwor
CQlicmVhazsKKwljYXNlIFNORFJWX1BDTV9UUklHR0VSX1NUT1A6CisJCS8qIERpc2FibGUgdGhl
IGludGVycnVwdHMgKi8KKwkJeGxueF9sb2dpY3BkX2RhaV9pbnRfZGlzKGkycywgZGlyKTsKKwkJ
LyogRW5zdXJlIHRoZSBob3N0IElSUSBpcyBkZWFzc2VydGVkICovCisJCXJlYWRsX3JlbGF4ZWQo
aTJzLT5iYXNlICsgSU5UUl9TVEFUX1JFRyhkaXIpKTsKKwkJYnJlYWs7CisJY2FzZSBTTkRSVl9Q
Q01fVFJJR0dFUl9SRVNVTUU6CisJY2FzZSBTTkRSVl9QQ01fVFJJR0dFUl9QQVVTRV9SRUxFQVNF
OgorCWNhc2UgU05EUlZfUENNX1RSSUdHRVJfU1VTUEVORDoKKwljYXNlIFNORFJWX1BDTV9UUklH
R0VSX1BBVVNFX1BVU0g6CisJZGVmYXVsdDoKKwkJcmV0dXJuIC1FSU5WQUw7CisJfQorCisJcmV0
dXJuIDA7Cit9CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgc25kX3NvY19kYWlfb3BzIHhsbnhfbG9n
aWNwZF9kYWlfb3BzID0geworCS50cmlnZ2VyID0geGxueF9sb2dpY3BkX2RhaV90cmlnZ2VyLAor
fTsKKworc3RhdGljIGludCB4bG54X2xvZ2ljcGRfZGFpX3Byb2JlKHN0cnVjdCBzbmRfc29jX2Rh
aSAqZGFpKQoreworCXN0cnVjdCB4bG54X2xvZ2ljcGRfaTJzICppMnMgPSBzbmRfc29jX2RhaV9n
ZXRfZHJ2ZGF0YShkYWkpOworCXVuc2lnbmVkIGludCBkaXI7CisKKwlmb3IgKGRpciA9IFNORFJW
X1BDTV9TVFJFQU1fUExBWUJBQ0s7CisJICAgICBkaXIgPD0gU05EUlZfUENNX1NUUkVBTV9DQVBU
VVJFOyBkaXIrKykgeworCQlpMnMtPnN0cmVhbXNbZGlyXS5pMnMgPSBpMnM7CisKKwkJLyogUmVz
ZXQgdGhlIHRyYW5zbWl0dGVyL3JlY2VpdmVyIGVuZ2luZSAqLworCQl3cml0ZWxfcmVsYXhlZCgw
LCBpMnMtPmJhc2UgKyBDT05UUk9MX1JFRyhkaXIpKTsKKwkJLyogTWFzayBhbGwgaW50ZXJydXB0
cyAqLworCQl3cml0ZWxfcmVsYXhlZChHRU5NQVNLKDMxLCAwKSwgaTJzLT5iYXNlICsgSU5UUl9N
QVNLX1JFRyhkaXIpKTsKKwl9CisKKwlyZXR1cm4gMDsKK30KKworc3RydWN0IHNuZF9zb2NfZGFp
X2RyaXZlciB4bG54X2xvZ2ljcGRfZGFpID0geworCS5uYW1lID0gInh5bGlueC1sb2dpY3BkLWRh
aSIsCisJLnByb2JlID0geGxueF9sb2dpY3BkX2RhaV9wcm9iZSwKKwkuY2FwdHVyZSA9IHsKKwkJ
LnN0cmVhbV9uYW1lID0gIkNhcHR1cmUiLAorCQkuY2hhbm5lbHNfbWluID0gMiwKKwkJLmNoYW5u
ZWxzX21heCA9IDIsCisJCS5yYXRlcyA9IFNORFJWX1BDTV9SQVRFXzgwMDBfMTkyMDAwLAorCQku
cmF0ZV9taW4gPSA4MDAwLAorCQkucmF0ZV9tYXggPSAxOTIwMDAsCisJCS5mb3JtYXRzID0gU05E
UlZfUENNX0ZNVEJJVF9TMTZfTEUsCisJfSwKKwkucGxheWJhY2sgPSB7CisJCS5zdHJlYW1fbmFt
ZSA9ICJQbGF5YmFjayIsCisJCS5jaGFubmVsc19taW4gPSAyLAorCQkuY2hhbm5lbHNfbWF4ID0g
MiwKKwkJLnJhdGVzID0gU05EUlZfUENNX1JBVEVfODAwMF8xOTIwMDAsCisJCS5yYXRlX21pbiA9
IDgwMDAsCisJCS5yYXRlX21heCA9IDE5MjAwMCwKKwkJLmZvcm1hdHMgPSBTTkRSVl9QQ01fRk1U
QklUX1MxNl9MRSwKKwl9LAorCS5zeW1tZXRyaWNfcmF0ZXMgPSAxLAorCS5vcHMgPSAmeGxueF9s
b2dpY3BkX2RhaV9vcHMsCit9OworCitzdGF0aWMgY29uc3Qgc3RydWN0IHNuZF9zb2NfY29tcG9u
ZW50X2RyaXZlciB4bG54X2xvZ2ljcGRfaTJzX2NvbXBvbmVudCA9IHsKKwkubmFtZSA9IERSVl9O
QU1FLAorCS5vcHMgPSAmeGxueF9sb2dpY3BkX3BjbV9vcHMsCit9OworCitzdGF0aWMgY29uc3Qg
c3RydWN0IG9mX2RldmljZV9pZCB4bG54X2xvZ2ljcGRfaTJzX29mX21hdGNoW10gPSB7CisJewor
CQkuY29tcGF0aWJsZSA9ICJ4bG54LGxvZ2ljcGQtaTJzLWRhaSIsCisJfSwKKwl7fSwKK307CitN
T0RVTEVfREVWSUNFX1RBQkxFKG9mLCB4bG54X2xvZ2ljcGRfaTJzX29mX21hdGNoKTsKKworc3Rh
dGljIGludCB4bG54X2xvZ2ljcGRfaTJzX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCit7CisJc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKKwlzdHJ1Y3QgeGxueF9s
b2dpY3BkX2kycyAqaTJzOworCXN0cnVjdCB4bG54X2xvZ2ljcGRfc3RyZWFtICpzdHJlYW07CisJ
aW50IHR4X2lycSwgcnhfaXJxLCByZXQ7CisJdTMyIHJlZzsKKworCWkycyA9IGRldm1fa3phbGxv
YyhkZXYsIHNpemVvZigqaTJzKSwgR0ZQX0tFUk5FTCk7CisJaWYgKCFpMnMpCisJCXJldHVybiAt
RU5PTUVNOworCisJZGV2X3NldF9kcnZkYXRhKGRldiwgaTJzKTsKKworCWkycy0+YmFzZSA9IGRl
dm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZShwZGV2LCAwKTsKKwlpZiAoSVNfRVJSKGkycy0+
YmFzZSkpCisJCXJldHVybiBQVFJfRVJSKGkycy0+YmFzZSk7CisKKwlzdHJlYW0gPSAmaTJzLT5z
dHJlYW1zW1NORFJWX1BDTV9TVFJFQU1fUExBWUJBQ0tdOworCXR4X2lycSA9IHBsYXRmb3JtX2dl
dF9pcnFfYnluYW1lKHBkZXYsICJ0eCIpOworCWlmICh0eF9pcnEgPiAwKSB7CisJCXJldCA9IGRl
dm1fcmVxdWVzdF9pcnEoZGV2LCB0eF9pcnEsIHhsbnhfbG9naWNwZF9kYWlfaXNyLAorCQkJCSAg
ICAgICAwLCAibG9naWNwZC1pMnMtdHgiLCBzdHJlYW0pOworCQlpZiAocmV0KQorCQkJcmV0dXJu
IHJldDsKKwl9IGVsc2UgeworCQlkZXZfZXJyKGRldiwgIlRYIElSUSBub3QgYXZhaWxhYmxlICgl
ZCksIGRpc2FibGluZyBwbGF5YmFja1xuIiwKKwkJCXR4X2lycSk7CisJCXR4X2lycSA9IDA7CisJ
fQorCisJc3RyZWFtID0gJmkycy0+c3RyZWFtc1tTTkRSVl9QQ01fU1RSRUFNX0NBUFRVUkVdOwor
CXJ4X2lycSA9IHBsYXRmb3JtX2dldF9pcnFfYnluYW1lKHBkZXYsICJyeCIpOworCWlmIChyeF9p
cnEgPiAwKSB7CisJCXJldCA9IGRldm1fcmVxdWVzdF9pcnEoZGV2LCByeF9pcnEsIHhsbnhfbG9n
aWNwZF9kYWlfaXNyLAorCQkJCSAgICAgICAwLCAibG9naWNwZC1pMnMtcngiLCBzdHJlYW0pOwor
CQlpZiAocmV0KQorCQkJcmV0dXJuIHJldDsKKwl9IGVsc2UgeworCQlkZXZfZXJyKGRldiwgIlJY
IElSUSBub3QgYXZhaWxhYmxlICglZCksIGRpc2FibGluZyBjYXB0dXJlXG4iLAorCQkJcnhfaXJx
KTsKKwkJcnhfaXJxID0gMDsKKwl9CisKKwlpZiAoIXR4X2lycSAmJiAhcnhfaXJxKQorCQlyZXR1
cm4gLUVJTlZBTDsKKworCXJldCA9IGRldm1fc25kX3NvY19yZWdpc3Rlcl9jb21wb25lbnQoZGV2
LCAmeGxueF9sb2dpY3BkX3BjbV9jb21wb25lbnQsCisJCQkJCSAgICAgIE5VTEwsIDApOworCWlm
IChyZXQpIHsKKwkJZGV2X2VycihkZXYsICJjYW5ub3QgcmVnaXN0ZXIgUENNIGNvbXBvbmVudCAo
JWQpXG4iLCByZXQpOworCQlyZXR1cm4gcmV0OworCX0KKworCXJldCA9IGRldm1fc25kX3NvY19y
ZWdpc3Rlcl9jb21wb25lbnQoZGV2LCAmeGxueF9sb2dpY3BkX2kyc19jb21wb25lbnQsCisJCQkJ
CSAgICAgICZ4bG54X2xvZ2ljcGRfZGFpLCAxKTsKKwlpZiAocmV0KSB7CisJCWRldl9lcnIoZGV2
LCAiY2Fubm90IHJlZ2lzdGVyIEkyUyBjb21wb25lbnQgKCVkKVxuIiwgcmV0KTsKKwkJcmV0dXJu
IHJldDsKKwl9CisKKwlyZWcgPSByZWFkbF9yZWxheGVkKGkycy0+YmFzZSArIElQX1ZFUlNJT04p
OworCWRldl9pbmZvKGRldiwgIiVzIERBSSB2ZXJzaW9uICV1LiV1LiVjIChsaWNlbnNlOiAlcykg
cmVnaXN0ZXJlZFxuIiwKKwkJIHhsbnhfbG9naWNwZF9kYWkubmFtZSwKKwkJICh1bnNpZ25lZCBp
bnQpTUFKT1JfUkVWKHJlZyksCisJCSAodW5zaWduZWQgaW50KU1JTk9SX1JFVihyZWcpLAorCQkg
KGNoYXIpUEFUQ0hfTEVWRUwocmVnKSwKKwkJIExJQ0VOU0VfVFlQRShyZWcpID09IDAgPyAic291
cmNlIiA6CisJCSAoTElDRU5TRV9UWVBFKHJlZykgPT0gMSA/ICJldmFsIiA6ICJyZWxlYXNlIikp
OworCisJcmV0dXJuIHJldDsKK30KKworc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgeGxu
eF9sb2dpY3BkX2kyc19kcml2ZXIgPSB7CisJLmRyaXZlciA9IHsKKwkJLm5hbWUgPSBEUlZfTkFN
RSwKKwkJLm9mX21hdGNoX3RhYmxlID0geGxueF9sb2dpY3BkX2kyc19vZl9tYXRjaCwKKwl9LAor
CS5wcm9iZSA9IHhsbnhfbG9naWNwZF9pMnNfcHJvYmUsCit9OworCittb2R1bGVfcGxhdGZvcm1f
ZHJpdmVyKHhsbnhfbG9naWNwZF9pMnNfZHJpdmVyKTsKKworTU9EVUxFX0FVVEhPUigiTWlxdWVs
IFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4iKTsKK01PRFVMRV9ERVNDUklQVElP
TigiWGlsaW54IGxvZ2ljUEQgSTJTIG1vZHVsZSIpOworTU9EVUxFX0xJQ0VOU0UoIkdQTCB2MiIp
OwotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
