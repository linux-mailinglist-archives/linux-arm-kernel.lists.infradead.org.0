Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA641FA65C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 04:17:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:MIME-Version:In-Reply-To:
	Subject:To:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=zXK8QHUF4+qcF1JI1VidHoyfNaUioQTyWS632TO4GvQ=; b=aPDMIOVB7BLsMA
	rKHyphnFP8Prwxh92cVTqawLg7VEsX+RX+IR1Wq1rZwqyPexKMeXLbJpVwx43J1EasWVg5dNIANdK
	EgPcEv9lLovvhJNJMWIL7RHZJGdiBu1+10gxYc6LlGAgetUGhm/26hY/VUm/t7IVU9iIxGVJUTr9J
	PEUbFJvChHoWIjPSZoeGy64Tel0btbtV5rDwOKyZmlHLlagPBpOH2RDU5x86jr26W2/9cKQUpHw2r
	UqIggzkFRVLNrC4Aj3Lklm+pKdIEJ+rmEdBmqZqxOUEtBTlVXopoV47CKif79MOsYNC8UFESkqrNA
	GRubz9Xggl44hVCzj7Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl1AL-0007ah-QU; Tue, 16 Jun 2020 02:17:33 +0000
Received: from m176149.mail.qiye.163.com ([59.111.176.149])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl1AB-0007Zn-Lk
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 02:17:26 +0000
Received: from vivo.com (wm-9.qy.internal [127.0.0.1])
 by m176149.mail.qiye.163.com (Hmail) with ESMTP id 136E3281F35;
 Tue, 16 Jun 2020 10:16:40 +0800 (CST)
Message-ID: <AGQAVQB8CJTteCgzBUXE5Kra.3.1592273800065.Hmail.bernard@vivo.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Subject: =?UTF-8?B?UmU6UmU6IFtQQVRDSF0gZHJtL21lZGlhdGVrOiByZW1vdmUgdW5uZWNlc3NhcnkgY29udmVyc2lvbiB0byBib29s?=
X-Priority: 3
X-Mailer: HMail Webmail Server V2.0 Copyright (c) 2016-163.com
X-Originating-IP: 14.29.82.33
In-Reply-To: <CAAOTY__sSV2f4MqSLJYvSW9TGV=bCKXz+zELYREaEOFVjA6XQQ@mail.gmail.com>
MIME-Version: 1.0
Received: from bernard@vivo.com( [14.29.82.33) ] by ajax-webmail ( [127.0.0.1]
 ) ; Tue, 16 Jun 2020 10:16:40 +0800 (GMT+08:00)
From: Bernard <bernard@vivo.com>
Date: Tue, 16 Jun 2020 10:16:40 +0800 (GMT+08:00)
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgYFAkeWUFZS1VLWVdZKFlBSE83V1ktWUFJV1kPCR
 oVCBIfWUFZGU4YGh8fGhgYGRpKVkpOQklJTEhDS0tKSktVEwETFhoSFyQUDg9ZV1kWGg8SFR0UWU
 FZT0tIVUpKS0hKTFVKS0tZBg++
X-HM-Sender-Digest: e1kJHlYWEh9ZQUhDSEhKTExPTUJLN1dZDB4ZWUEPCQ4eV1kSHx4VD1lB
 WUc6PCo6LSo5QzgxLw8eOBwBOS4jPk4wCRpVSFVKTkJJSUxIQ0tLTUhCVTMWGhIXVRkeCRUaCR87
 DRINFFUYFBZFWVdZEgtZQVlKT1VJQlVDSVVISFlXWQgBWUFOSUNCNwY+
X-HM-Tid: 0a72baea0b989395kuws136e3281f35
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_191724_119438_091FC506 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [59.111.176.149 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [59.111.176.149 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, opensource.kernel@vivo.com,
 David Airlie <airlied@linux.ie>, linux-kernel <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, Joe Perches <joe@perches.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgrlj5Hku7bkurrvvJpDaHVuLUt1YW5nIEh1IDxjaHVua3VhbmcuaHVAa2VybmVsLm9yZz4K5Y+R
6YCB5pel5pyf77yaMjAyMC0wNi0xNSAyMjowMDo1MgrmlLbku7bkurrvvJpKb2UgUGVyY2hlcyA8
am9lQHBlcmNoZXMuY29tPgrmioTpgIHkurrvvJpCZXJuYXJkIFpoYW8gPGJlcm5hcmRAdml2by5j
b20+LENodW4tS3VhbmcgSHUgPGNodW5rdWFuZy5odUBrZXJuZWwub3JnPixQaGlsaXBwIFphYmVs
IDxwLnphYmVsQHBlbmd1dHJvbml4LmRlPixEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGludXguaWU+
LERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4sTWF0dGhpYXMgQnJ1Z2dlciA8bWF0dGhp
YXMuYmdnQGdtYWlsLmNvbT4sRFJJIERldmVsb3BtZW50IDxkcmktZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnPixMaW51eCBBUk0gPGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
Zz4sIm1vZGVyYXRlZCBsaXN0OkFSTS9NZWRpYXRlayBTb0Mgc3VwcG9ydCIgPGxpbnV4LW1lZGlh
dGVrQGxpc3RzLmluZnJhZGVhZC5vcmc+LGxpbnV4LWtlcm5lbCA8bGludXgta2VybmVsQHZnZXIu
a2VybmVsLm9yZz4sb3BlbnNvdXJjZS5rZXJuZWxAdml2by5jb20K5Li76aKY77yaUmU6IFtQQVRD
SF0gZHJtL21lZGlhdGVrOiByZW1vdmUgdW5uZWNlc3NhcnkgY29udmVyc2lvbiB0byBib29sPkpv
ZSBQZXJjaGVzIDxqb2VAcGVyY2hlcy5jb20+IOaWvCAyMDIw5bm0NuaciDE15pelIOmAseS4gCDk
uIrljYg0OjQx5a+r6YGT77yaCj4+Cj4+IE9uIEZyaSwgMjAyMC0wNi0xMiBhdCAyMDo0MCArMDgw
MCwgQmVybmFyZCBaaGFvIHdyb3RlOgo+PiA+IEluIGZ1bmN0aW9uIG10a19kc2lfY2xrX2hzX3N0
YXRlLCByZW1vdmUgdW5uZWNlc3NhcnkgY29udmVyc2lvbgo+PiA+IHRvIGJvb2wgcmV0dXJuLCB0
aGlzIGNoYW5nZSBpcyB0byBtYWtlIHRoZSBjb2RlIGEgYml0IHJlYWRhYmxlLgo+PiBbXQo+PiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RzaS5jIGIvZHJpdmVy
cy9ncHUvZHJtL21lZGlhdGVrL210a19kc2kuYwo+PiBbXQo+PiA+IEBAIC0zMTksNyArMzE5LDcg
QEAgc3RhdGljIGJvb2wgbXRrX2RzaV9jbGtfaHNfc3RhdGUoc3RydWN0IG10a19kc2kgKmRzaSkK
Pj4gPiAgICAgICB1MzIgdG1wX3JlZzE7Cj4+ID4KPj4gPiAgICAgICB0bXBfcmVnMSA9IHJlYWRs
KGRzaS0+cmVncyArIERTSV9QSFlfTENDT04pOwo+PiA+IC0gICAgIHJldHVybiAoKHRtcF9yZWcx
ICYgTENfSFNfVFhfRU4pID09IDEpID8gdHJ1ZSA6IGZhbHNlOwo+PiA+ICsgICAgIHJldHVybiAo
KHRtcF9yZWcxICYgTENfSFNfVFhfRU4pID09IDEpOwo+Pgo+PiBHaXZlbjoKPj4KPj4gZHJpdmVy
cy9ncHUvZHJtL21lZGlhdGVrL210a19kc2kuYzojZGVmaW5lIExDX0hTX1RYX0VOICAgICAgICAg
ICAgICAgICAgQklUKDApCj4+Cj4+IFRoaXMgaXMgbGlrZWx5IGNsZWFyZXIgYXMKPj4KPj4gICAg
ICAgICByZXR1cm4gdG1wX3JlZzEgJiBMQ19IU19UWF9FTjsKPj4KPj4gb3IgZXZlbgo+Pgo+PiBz
dGF0aWMgYm9vbCBtdGtfZHNpX2Nsa19oc19zdGF0ZShzdHJ1Y3QgbXRrX2RzaSAqZHNpKQo+PiB7
Cj4+ICAgICAgICAgcmV0dXJuIHJlYWRsKGRzaS0+cmVncyArIERTSV9QSFlfTENDT04pICYgTENf
SFNfVFhfRU47Cj4+IH0KPgo+SSBsaWtlIHRoZSBzZWNvbmQgb25lLgoKSGk6CgpUaGlzIG1vZGlm
aWNhdGlvbiBpcyBjbGVhciBhbmQgZWFzeSB0byB1bmRlcnN0YW5kLgpJIHdpbGwgdXBkYXRlIHRo
ZSBwYXRjaCBhbmQgcmVzdWJtaXQuClRoYW5rcyEKCkJSLy9CZXJuYXJkCgo+Pgo+Pgo+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBkcmktZGV2ZWwg
bWFpbGluZyBsaXN0Cj4+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPj4gaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwKDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
