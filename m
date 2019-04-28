Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF92BBB7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 23:38:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YPUbYfw9gd/hXf0/NGPExskxFp/KB3+0FePEQYfIb7c=; b=lNzmjVPKIg61pn
	JBAjBowKpKBuErw4bG1EJbuHTNTQvjyiq4lMNDv6memAmYQIQA1PAWBuVnIsG66VAP+WHJtuXkyDp
	aTTIOYA93jtbM3DkmhpSIGdLrvIHy+oq1QB5QtUsDzTMBHvabfYtKBbLqwxDQCAzeOBfaf4cMpZFB
	/cpPZr031hcIdFewx3EWpoFzSkNc/fVvUA58hpIJ2b1CYi/lBeIjtUhLeTl+8KIZ0uIm6MMT1Dxg2
	LNzzlnKdfYy72MC8ghiRy5alCpfEEdTDDA5wd11LTP2zcsq1FdSv8gBTuQIYeE4yqJZgWJKL/jeO3
	5+W/Gs4Zd1Nlsz5nV/9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKrVM-0001DK-2L; Sun, 28 Apr 2019 21:38:36 +0000
Received: from mail.nic.cz ([2001:1488:800:400::400])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKrUi-0000f0-0I
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 21:37:59 +0000
Received: from dellmb.labs.office.nic.cz (unknown [172.20.6.125])
 by mail.nic.cz (Postfix) with ESMTP id 1D331635EB;
 Sun, 28 Apr 2019 23:37:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
 t=1556487470; bh=7x5xFVv8+BjU47uM9m7h95sc2gu0LRjw9pk+KQIVj1I=;
 h=From:To:Date;
 b=lj7Je0JJTa8Ch9lCCACOdZuOElon+JaVZS1+pfVuSOJ+ojdaFSa/xa/Ngagc6/vr0
 OBgI57aJVjb8n0z7m1tWqsJ/XgBZcFecqiRRcJTneT4mLTuHGW3Ck5UN0d9VmK4lLS
 pmQnTC4M7/IKopTTIS3Z2isTXVMO1g80hqq4D9S0=
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH v5 armsoc/drivers/bus+gpio 0/5] Add Moxtet bus and GPIO over
 Moxtet bus
Date: Sun, 28 Apr 2019 23:37:44 +0200
Message-Id: <20190428213749.7017-1-marek.behun@nic.cz>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.2 at mail
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_143756_379654_02FDCDC0 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [2001:1488:800:400:0:0:0:400 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: arm@kernel.org, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgp0aGlzIGlzIHRoZSBmaWZ0aCB2ZXJzaW9uIG9mIHBhdGNoZXMgdG8gc3VwcG9ydCB0
aGUgTW94dGV0IGJ1cyBhbmQKR1BJT3Mgb3ZlciBpdC4gTW94dGV0IGlzIGEgVHVycmlzIE1veCBz
cGVjaWZpYyB0aW55IGJ1cyBvdmVyIFNQSS4KClRoZXNlIHBhdGNoZXMgYXBwbHkgdG8gY3VycmVu
dCBhcm0tc29jL2Zvci1uZXh0LCBsaW51eC9tYXN0ZXIsIGxpbnV4LWdwaW8vZGV2ZWwKYW5kIGFy
bS1zb2MvYXJtL2RyaXZlcnMuCgpNYXJlawoKQ2hhbmdlcyBzaW5jZSB2NDoKICAtIHVwZGF0ZWQg
ZHQtYmluZGluZ3MgZG9jdW1lbnRhdGlvbiBhcyByZXF1ZXN0ZWQgYnkgUm9iIEhlcnJpbmcKICAt
IGFkZGVkIFJldmlld2VkLWJ5IHRhZ3MgZnJvbSBMaW51cyBXYWxsZWlqIGFuZCBSb2IgSGVycmlu
ZwoKQ2hhbmdlcyBzaW5jZSB2MzoKICAtIGFkZGVkIG1vZHVsZV9kZXNjcmlwdGlvbiBmaWxlIGlu
IC9zeXMvYnVzL21veHRldC9kZXZpY2VzLyovCiAgLSBtb3ZlZCBkZWJ1Z2dpbmcgaW50byBkZWJ1
Z2ZzOgogICAgLSByZW1vdmVkIGlucHV0X3ZhbHVlIGFuZCBvdXRwdXRfdmFsdWUgZGVidWcgZmls
ZXMgZnJvbQogICAgICAvc3lzL2J1cy9tb3h0ZXQvZGV2aWNlcy8qLwogICAgLSBhZGRlZCBpbnB1
dCBhbmQgb3V0cHV0IGRlYnVnIGZpbGVzIHRvIGRlYnVnZnMvbW94dGV0CiAgLSBhZGRlZCBzdXBw
b3J0IGZvciBpbnRlcnJ1cHRzIGludG8gbW94dGV0IGRyaXZlcjoKICAgIFNvbWUgbW9kdWxlcyBz
ZW5kIGludGVycnVwdCB2aWEgYSBzaGFyZWQgbGluZSBmb3IgYWxsIG1vZHVsZXMuCiAgICBJbiBh
ZGRpdGlvbiB0byB0aGlzLCB0aGV5IGFsc28gc2VuZCBpbnRlcnJ1cHQgaW5mb3JtYXRpb24gdmlh
IHRoZSBTUEkKICAgIHNoaWZ0IHJlZ2lzdGVyLCBzbyB0aGF0IHRoZSBzeXN0ZW0gY2FuIGRpc3Rp
bmd1aXNoIHdoaWNoIG1vZHVsZXMgZXhhY3RseQogICAgc2VudCBpdCBhbmQgd29uJ3QgaGF2ZSB0
byBjaGVjayBhbGwgbW9kdWxlcy4KICAgIFRoaXMgaXMgYWxzbyBuZWVkZWQgdG8gZml4IHNvbWUg
YnVncyB3aGVuIG9uZSBtb2R1bGUgc2VudCBJUlEgYW5kIHRoZW4KICAgIGFub3RoZXIgbW9kdWxl
IHNlbnQgYW5vdGhlciBJUlEgYmVmb3JlIHRoZSBmaXJzdCB3YXMgaGFuZGxlZCBieSB0aGUgc3lz
dGVtLAogICAgYnV0IHRoZSBoYW5kbGluZyB3YXMgYWxyZWFkeSBpbiBwcm9ncmVzcy4gU2luY2Ug
dGhlIHNoYXJlZCBsaW5lIGlzCiAgICBmYWxsaW5nLWVkZ2UsIHRoZSBzZWNvbmQgSVJRIHdhcyBu
ZXZlciBoYW5kbGVkLgogIC0gc2luY2UgbW94dGV0IGRyaXZlciBpcyBub3cgYWxzbyBpbnRlcnJ1
cHQgY29udHJvbGxlciwgZGV2aWNlLXRyZWUgYmluZGluZwogICAgZG9jdW1lbnRhdGlvbiBpcyBh
bHNvIGNoYW5nZWQKCkNoYW5nZXMgc2luY2UgdjI6CiAgLSBhZGRyZXNzZWQgdGhlIGlzc3VlcyBp
biBkZXZpY2UgdHJlZSBkb2N1bWVudGF0aW9uIHBvaW50ZWQgYnkgUm9iIEhlcnJpbmcKICAtIGNv
c21ldGljIGNoYW5nZXMgc3VnZ2VzdGVkIGJ5IExpbnVzIFdhbGxlaWoKICAtIGFkZGVkIHN5c2Zz
IEFCSSBkb2N1bWVudGF0aW9uIGZvciAvc3lzL2J1cy9tb3h0ZXQvZGV2aWNlcyBhdHRyaWJ1dGUg
ZmlsZXMKICAgIGFzIHN1Z2dlc3RlZCBieSBMaW51cyBXYWxsZWlqCgoKTWFyZWsgQmVow7puICg1
KToKICBidXM6IEFkZCBzdXBwb3J0IGZvciBNb3h0ZXQgYnVzCiAgZHQtYmluZGluZ3M6IGJ1czog
RG9jdW1lbnQgbW94dGV0IGJ1cyBiaW5kaW5nCiAgYnVzOiBtb3h0ZXQ6IEFkZCBzeXNmcyBhbmQg
ZGVidWdmcyBkb2N1bWVudGF0aW9uCiAgZHJpdmVyczogZ3BpbzogQWRkIHN1cHBvcnQgZm9yIEdQ
SU9zIG92ZXIgTW94dGV0IGJ1cwogIGR0LWJpbmRpbmdzOiBncGlvOiBEb2N1bWVudCBHUElPcyB2
aWEgTW94dGV0IGJ1cwoKIERvY3VtZW50YXRpb24vQUJJL3Rlc3RpbmcvZGVidWdmcy1tb3h0ZXQg
ICAgICB8ICAyMyArCiAuLi4vQUJJL3Rlc3Rpbmcvc3lzZnMtYnVzLW1veHRldC1kZXZpY2VzICAg
ICAgfCAgMTcgKwogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvYnVzL21veHRldC50eHQgICAgICAg
IHwgIDQ2ICsKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8vZ3Bpby1tb3h0ZXQudHh0ICB8
ICAxOCArCiBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAg
MTIgKwogZHJpdmVycy9idXMvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDEw
ICsKIGRyaXZlcnMvYnVzL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMSAr
CiBkcml2ZXJzL2J1cy9tb3h0ZXQuYyAgICAgICAgICAgICAgICAgICAgICAgICAgfCA4ODYgKysr
KysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwaW8vS2NvbmZpZyAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCAgIDkgKwogZHJpdmVycy9ncGlvL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAg
ICAgIHwgICAxICsKIGRyaXZlcnMvZ3Bpby9ncGlvLW1veHRldC5jICAgICAgICAgICAgICAgICAg
ICB8IDE3OSArKysrCiBpbmNsdWRlL2R0LWJpbmRpbmdzL2J1cy9tb3h0ZXQuaCAgICAgICAgICAg
ICAgfCAgMTYgKwogaW5jbHVkZS9saW51eC9tb3h0ZXQuaCAgICAgICAgICAgICAgICAgICAgICAg
IHwgMTA5ICsrKwogMTMgZmlsZXMgY2hhbmdlZCwgMTMyNyBpbnNlcnRpb25zKCspCiBjcmVhdGUg
bW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9BQkkvdGVzdGluZy9kZWJ1Z2ZzLW1veHRldAogY3Jl
YXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vQUJJL3Rlc3Rpbmcvc3lzZnMtYnVzLW1veHRl
dC1kZXZpY2VzCiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2J1cy9tb3h0ZXQudHh0CiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8vZ3Bpby1tb3h0ZXQudHh0CiBjcmVhdGUgbW9kZSAxMDA2
NDQgZHJpdmVycy9idXMvbW94dGV0LmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwaW8v
Z3Bpby1tb3h0ZXQuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvZHQtYmluZGluZ3MvYnVz
L21veHRldC5oCiBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9saW51eC9tb3h0ZXQuaAoKLS0g
CjIuMjEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
