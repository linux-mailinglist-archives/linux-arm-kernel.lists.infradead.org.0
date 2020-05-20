Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8CA1DB9BE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 18:38:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/QPk8AOwZiHPt62h8MwhLjVC6sctMdh/4D9Y3hjTh0g=; b=Wqk/3asg6s8R+M
	k8d+Mhnfm/Gusi1aVBH6yFToTmKAMQwqlJGugDf0Zk5tL7X6TXsitJREpsYRuYZ7VEwFMt6Xj1uuo
	gc0Hp+TXzsJzDbkSRSaE8oIx08dl9g+JWUMcRXhpu+urbkdYU8MQkLQXZ3ivAHZ3+D/yG6n4S7/uG
	10DFU1eeqgYnB+GxuAZ6wrNg0MCrDqTMnUc6w+wfFDX9qNrMZwNuf7i0xoHyBi9Vb76VLAfrF0zVt
	EF/iS3XKwxxkMRpzRbgaHKaarfRBzSprtaYNTlG+gow5tarH2Sem6iuPU911d4LSYB3eBubMMmAYc
	gI57M28Gab2yyu1iM98w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbRjH-00020I-81; Wed, 20 May 2020 16:38:03 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbRd5-0004AN-EJ
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 16:31:41 +0000
X-Originating-IP: 91.175.115.186
Received: from localhost (91-175-115-186.subs.proxad.net [91.175.115.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 36312E0006;
 Wed, 20 May 2020 16:31:35 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 <arm@kernel.org>, soc@kernel.org
Subject: [GIT PULL] ARM: mvebu: dt64 for v5.8 (#1)
Date: Wed, 20 May 2020 18:31:34 +0200
Message-ID: <878shmeffd.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_093139_674577_15BAF928 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpIZXJlIGlzIHRoZSBmaXJzdCBwdWxsIHJlcXVlc3QgZm9yIGR0NjQgZm9yIG12ZWJ1IGZv
ciB2NS44LgoKR3JlZ29yeQoKVGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCA4ZjNk
OWYzNTQyODY3NDVjNzUxMzc0ZjVmMWZjYWZlZTZiM2YzMTM2OgoKICBMaW51eCA1LjctcmMxICgy
MDIwLTA0LTEyIDEyOjM1OjU1IC0wNzAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9z
aXRvcnkgYXQ6CgogIGdpdDovL2dpdC5pbmZyYWRlYWQub3JnL2xpbnV4LW12ZWJ1LmdpdCB0YWdz
L212ZWJ1LWR0NjQtNS44LTEKCmZvciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1cCB0byBjMjY3MWFj
YmJiZDgyMmVmMDc3Y2MxNjg5OTFlMGE3ZGJlMjE3MmM5OgoKICBhcm02NDogZHRzOiBhcm1hZGEt
MzcyMC10dXJyaXMtbW94OiBmaXggU0ZQIGJpbmRpbmcgKDIwMjAtMDUtMTcgMTg6NTc6NDggKzAy
MDApCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCm12ZWJ1IGR0NjQgZm9yIDUuOCAocGFydCAxKQoKQXJtYWRhIDM3MjAgYmFz
ZWQgU29DOgoKKyBGaXggUENJZSBzdXBwb3J0IGFsbG93aW5nIHRvIHVzZSBDb21wZXggd2lmaSBj
YXJkcwoKKyBUdXJyaXMgTU9YIGJvYXJkOgogIC0gZml4IFNGUCBiaW5kaW5nCiAgLSBmb3JiaWQg
U0RSMTA0IG9uIFNESU8gdG8gcGFzcyBlbGVjdHJvbWFnbmV0aWMgaW50ZXJmZXJlbmNlIGNlcnRp
ZmljYXRpb25zCgorIHVEUFUgYm9hcmQ6IGFkZCBpMmMgcmVjb3Zlcnkgc3VwcG9ydAoKQXJtYWRh
IDgwNDAgYmFzZWQgU29DOiBTb2xpZFJ1biA4MDQwOiB1cGRhdGUgcGh5IGludGVyZmFjZQoKLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQpCYXJ1Y2ggU2lhY2ggKDEpOgogICAgICBhcm02NDogZHRzOiBtYXJ2ZWxsOiBkcm9wIGky
YyB0aW1lb3V0LW1zIHByb3BlcnR5CgpNYXJlayBCZWjDum4gKDQpOgogICAgICBhcm02NDogZHRz
OiBtYXJ2ZWxsOiBhcm1hZGEtMzd4eDogU2V0IHBjaWVfcmVzZXRfcGluIHRvIGdwaW8gZnVuY3Rp
b24KICAgICAgYXJtNjQ6IGR0czogbWFydmVsbDogYXJtYWRhLTM3eHg6IE1vdmUgUENJZSBjb21w
aHkgaGFuZGxlIHByb3BlcnR5CiAgICAgIGFybTY0OiBkdHM6IGFybWFkYS0zNzIwLXR1cnJpcy1t
b3g6IGZvcmJpZCBTRFIxMDQgb24gU0RJTyBmb3IgRkNDIHB1cnBvc2VzCiAgICAgIGFybTY0OiBk
dHM6IGFybWFkYS0zNzIwLXR1cnJpcy1tb3g6IGZpeCBTRlAgYmluZGluZwoKUGFsaSBSb2jDoXIg
KDEpOgogICAgICBhcm02NDogZHRzOiBtYXJ2ZWxsOiBhcm1hZGEtMzd4eDogTW92ZSBQQ0llIG1h
eC1saW5rLXNwZWVkIHByb3BlcnR5CgpSdXNzZWxsIEtpbmcgKDIpOgogICAgICBhcm02NDogZHRz
OiB1cGRhdGUgU29saWRSdW4gQXJtYWRhIDgwNDAgcGh5IGludGVyZmFjZSB0eXBlcwogICAgICBh
cm02NDogZHRzOiBhZGQgdURQVSBpMmMgYnVzIHJlY292ZXJ5CgogYXJjaC9hcm02NC9ib290L2R0
cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLWRiLmR0cyAgICAgfCAgMyArKysKIC4uLi9ib290L2R0cy9t
YXJ2ZWxsL2FybWFkYS0zNzIwLWVzcHJlc3NvYmluLmR0c2kgIHwgIDIgKy0KIC4uLi9ib290L2R0
cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLXR1cnJpcy1tb3guZHRzICAgIHwgMTAgKysrLS0tLS0tLQog
YXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLXVEUFUuZHRzICAgfCAyMiAr
KysrKysrKysrKysrKysrKysrKy0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRh
LTM3eHguZHRzaSAgICAgICB8ICA0ICsrKy0KIC4uLi9kdHMvbWFydmVsbC9hcm1hZGEtODA0MC1j
bGVhcmZvZy1ndC04ay5kdHMgICAgIHwgIDIgKy0KIC4uLi9kdHMvbWFydmVsbC9hcm1hZGEtODA0
MC1tY2Jpbi1zaW5nbGVzaG90LmR0cyAgIHwgIDQgKystLQogYXJjaC9hcm02NC9ib290L2R0cy9t
YXJ2ZWxsL2FybWFkYS04MDQwLW1jYmluLmR0cyAgfCAgNCArKy0tCiBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL21hcnZlbGwvYXJtYWRhLWFwODB4LmR0c2kgICAgICB8ICAxIC0KIDkgZmlsZXMgY2hhbmdl
ZCwgMzUgaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0KLS0gCkdyZWdvcnkgQ2xlbWVudCwg
Qm9vdGxpbgpFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVuZ2luZWVyaW5nCmh0dHA6Ly9ib290
bGluLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
