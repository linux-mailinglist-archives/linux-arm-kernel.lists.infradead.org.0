Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B01B99FF2C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 12:10:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=juF4JDU8aRqQhGT62eL7RF6hcwaibxgYr5f7A2xALCw=; b=my6XbSpmQ9JJ+h
	nc8CJO+EElmoXi11HYN6mhXp7biGd2VTy+ciKopBFZvZ3G/3Lb+Xk7Dt8pgGEIjKriacIK6RoiBhV
	S/+IUt0OKaWvnzBlmB2hiRiZoCvnRMrzk6GVFk6+Zzc5rxLsEQWtOZ9BI1oZjwdfY2HFtmWFnNFr/
	I23YLW692p0h919OndloCMvX2nfnlC2pOxrFULr9XznjhZYjjHAAikkqIzzKi+vz5k9j1YQc2ZQHb
	+k+5RQrE/kRzAM2cX0EJrb/mqg6it9MgN9g6WUZdDW4xAAzuFsXrZ3/jcCoNIxXJbe1cV8Pu6I+Aj
	8igt5YQnDqLWHjtk8KrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2uu4-0003pc-3k; Wed, 28 Aug 2019 10:10:12 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2utm-0003om-11
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 10:09:55 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 460C31C0006;
 Wed, 28 Aug 2019 10:09:39 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 <arm@kernel.org>, soc@kernel.org
Subject: [GIT PULL] ARM: mvebu: dt64 for v5.4 (#1)
Date: Wed, 28 Aug 2019 12:09:38 +0200
Message-ID: <875zmhzjml.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_030954_230473_1F81E040 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrew Lunn <andrew@lunn.ch>, linux-kernel@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpIZXJlIGlzIHRoZSBmaXJzdCBwdWxsIHJlcXVlc3QgZm9yIGR0NjQgZm9yIG12ZWJ1IGZv
ciB2NS40LgoKR3JlZ29yeQoKVGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCA1Zjll
ODMyYzEzNzA3NTA0NWQxNWNkNjg5OWFiMDUwNWNmYjJjYTRiOgoKICBMaW51cyA1LjMtcmMxICgy
MDE5LTA3LTIxIDE0OjA1OjM4IC0wNzAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9z
aXRvcnkgYXQ6CgogIGdpdDovL2dpdC5pbmZyYWRlYWQub3JnL2xpbnV4LW12ZWJ1LmdpdCB0YWdz
L212ZWJ1LWR0NjQtNS40LTEKCmZvciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1cCB0byBjMDBiYzM4
MzU0Y2Y4MWNlODNiNjc4ZmYxM2VjZjAxZTc1ZDBlOGRhOgoKICBhcm02NDogZHRzOiBtYXJ2ZWxs
OiBBZGQgY3B1IGNsb2NrIG5vZGUgb24gQXJtYWRhIDdLLzhLICgyMDE5LTA4LTI3IDE2OjM5OjIy
ICswMjAwKQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQptdmVidSBkdDY0IGZvciA1LjQgKHBhcnQgMSkKCiAtIEFkZCBtYWls
Ym94IHN1cHBvcnQgb24gQXJtYWRhIDM3eHgKIC0gQWRkIGNwdSBjbG9jayBub2RlIG5lZWRlZCBm
b3IgQ1BVIGZyZXEgb24gQXJtYWRhIDdLLzhLCiAtIEVuaGFuY2UgQ1AxMTAgQ09NUEhZIHN1cHBv
cnQgdXNlZCBieSBQQ0llLCBVU0IzIGFuZCBTQVRBCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkdyZWdvcnkgQ0xFTUVOVCAo
MSk6CiAgICAgIGFybTY0OiBkdHM6IG1hcnZlbGw6IEFkZCBjcHUgY2xvY2sgbm9kZSBvbiBBcm1h
ZGEgN0svOEsKCk1hcmVrIEJlaMO6biAoMSk6CiAgICAgIGFybTY0OiBkdHM6IG1hcnZlbGw6IGFy
bWFkYS0zN3h4OiBhZGQgbWFpbGJveCBub2RlCgpNaXF1ZWwgUmF5bmFsICg1KToKICAgICAgYXJt
NjQ6IGR0czogbWFydmVsbDogQWRkIENQMTEwIENPTVBIWSBjbG9ja3MKICAgICAgYXJtNjQ6IGR0
czogbWFydmVsbDogQWRkIDdrLzhrIHBlci1wb3J0IFBIWXMgaW4gU0FUQSBub2RlcwogICAgICBh
cm02NDogZHRzOiBtYXJ2ZWxsOiBBZGQgN2svOGsgUEhZcyBpbiBVU0IzIG5vZGVzCiAgICAgIGFy
bTY0OiBkdHM6IG1hcnZlbGw6IEFkZCA3ay84ayBQSFlzIGluIFBDSWUgbm9kZXMKICAgICAgYXJt
NjQ6IGR0czogbWFydmVsbDogQ29udmVydCA3ay84ayB1c2ItcGh5IHByb3BlcnRpZXMgdG8gcGh5
LXN1cHBseQoKIGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtMzd4eC5kdHNpICAg
ICAgIHwgIDcgKysrKwogYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS03MDQwLWRi
LmR0cyAgICAgfCAzNyArKysrKysrKysrKysrLS0tLS0tCiAuLi4vZHRzL21hcnZlbGwvYXJtYWRh
LTgwNDAtY2xlYXJmb2ctZ3QtOGsuZHRzICAgICB8IDIyICsrKysrKysrLS0tCiBhcmNoL2FybTY0
L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLTgwNDAtZGIuZHRzICAgICB8IDQzICsrKysrKysrKysr
KysrKysrKystLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtODA0MC1tY2Jp
bi5kdHNpIHwgMzggKysrKysrKysrKysrKysrLS0tLQogYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2
ZWxsL2FybWFkYS1hcDgwNi1xdWFkLmR0c2kgfCAgNSArKy0KIGFyY2gvYXJtNjQvYm9vdC9kdHMv
bWFydmVsbC9hcm1hZGEtYXA4MDYuZHRzaSAgICAgIHwgIDcgKysrKwogYXJjaC9hcm02NC9ib290
L2R0cy9tYXJ2ZWxsL2FybWFkYS1jcDExMC5kdHNpICAgICAgfCAxMyArKysrKysrCiA4IGZpbGVz
IGNoYW5nZWQsIDEzOSBpbnNlcnRpb25zKCspLCAzMyBkZWxldGlvbnMoLSkKIAotLSAKR3JlZ29y
eSBDbGVtZW50LCBCb290bGluCkVtYmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcK
aHR0cDovL2Jvb3RsaW4uY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
