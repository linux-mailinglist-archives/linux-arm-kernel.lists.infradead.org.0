Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B326A83491
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 17:00:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=o1pyG0XPr0F3SR2iam1fim5+ifFPzrSE9YCzdR3tM58=; b=dCG3mnRSWW9AZG
	uwdaXOBYTyxozB/pC61e515pKu8zik0wHGasE/9vv/Y768UgpKhxLX5na4ZPHs4yTuflnh4KJLvUI
	8j6zVgXY0gbPU67QfjuUXjM49MoySnsEwufb5t4yxTm3mcE2DQSu9KFzX7r4EX/7Qpcqnl8ARa90V
	7/mnr/F25O3OiYQ5VVJ5czBK4XjXcyBjFLXO81f35R4bJmvgVuQX1AOZmQJTboG/BFErKR3gQShv/
	//tj/VytQP8PPdhy6PtNPNCapAK47Bw8KW0qFRs2izi9TOFt7TJTWFPryMSH3CHCdayw7pstjOz9k
	Q/A4w2ZrkVUiM54oSCWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv0wM-0003z2-7a; Tue, 06 Aug 2019 14:59:54 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv0sQ-0008H6-Tx
 for linux-arm-kernel@bombadil.infradead.org; Tue, 06 Aug 2019 14:55:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JoLeXv85tk5Rr7ml8aQvKHK+I5b+otXOpBy85XMQPfw=; b=VJ82Qw6VKL0QhySZjYvjmjEqm1
 2WfXpRWGpOH4AK975ZBWPp7ZyIwycIkTzbF67Xx1tt6PkbQncXbrjEixnk2a+B7JeZP33DgVjYrS/
 MiexAkW8iae10cYNqvtZ7JE5ns6wWv+NcLZgCUz7PiUKRp9NtUSuhGqlG2H4Te/6MtJ5qRCZKQ4Ds
 vDXcjeMBh9qyHdccDSM8Dhi87ZZBDDOe0lL3fapJmzuT9XYqWIyQJuxubtAKzbPl5QrqDeDUgNgs5
 g/Hz2rnDqjiCnqDSZZrli7BZQrFjQCfcEaN9ZwNNDBJBl4jv6hXPDqiLWBXCVqMbXzh1ekyDP0Tgv
 lK4F55Lw==;
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv0sM-0003iY-Ro
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 14:55:49 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 69E72E000C;
 Tue,  6 Aug 2019 14:55:02 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 00/20] Add new Marvell CN9130 SoC support
Date: Tue,  6 Aug 2019 16:54:40 +0200
Message-Id: <20190806145500.24109-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Yan Markman <ymarkman@marvell.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpUaGlzIGlzIHRoZSB0aGlyZCBhbmQgbGFzdCBiYXRjaCBvZiBjaGFuZ2VzIHRvIHN1
cHBvcnQgbmV3Ck1hcnZlbGwgQ045MTMwIFNvQ3MuIFRoZSBDTjkxMzAgaXMgbWFkZSBvZiBvbmUg
QVA4MDcgYW5kIG9uZSBpbnRlcm5hbApDUDExNS4gVGhlcmUgYXJlIHRocmVlIGRldmVsb3BtZW50
IGJvYXJkcyB0aGF0IGFyZSBtYWRlIG9mIHRoaXMgU29DOgoqIENOOTEzMC1EQgoqIENOOTEzMS1E
QiAod2l0aCBvbmUgYWRkaXRpb25hbCBtb2R1bGFyIENQMTE1IGNvbXBhcmVkIHRvIENOOTEzMC1E
QikKKiBDTjkxMzItREIgKHdpdGggdHdvIGFkZGl0aW9uYWwgbW9kdWxhciBDUDExNSBjb21wYXJl
ZCB0byBDTjkxMzAtREIpCgpUaGlzIHNlcmllcyBhcHBsaWVzIG9uIHRvcCBvZiB0aGUgQVA4MDYg
YW5kIEFQODA3IGNsb2NrIHNlcmllcyAoc2VlCmJlbG93KSBhbmQgd2lsbCB3b3JrIG9ubHkgaWYg
YXBwbGllZCBvbiB0b3Agb2Y6CiogQ1AxMTAgQ09NUEhZOgpodHRwczovL3BhdGNod29yay5rZXJu
ZWwub3JnL2NvdmVyLzExMDY3NjQ3LwoqIEFQODA2IENQVSBjbG9ja3M6Cmh0dHBzOi8vcGF0Y2h3
b3JrLmtlcm5lbC5vcmcvY292ZXIvMTEwMzg1NzcvCiogQVA4MDcgY2xvY2tzOgpodHRwczovL3Bh
dGNod29yay5rZXJuZWwub3JnL2NvdmVyLzExMDc2NDM1LwoqIENQMTE1IHBpbmN0cmw6Cmh0dHA6
Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9jb3Zlci8xMTQyMTA3LwoKQXMgQ1AxMTAgYW5kIENQMTE1
IChhbHRlcm5hdGl2ZWx5LCBBUDgwNiBhbmQgQVA4MDcpIGFyZSB2ZXJ5IHNpbWlsYXIsCndlIGZp
cnN0IHJlb3JnYW5pemUgRFQgZmlsZXMgdG8gY3JlYXRlIENQMTF4IChhbmQgQVA4MHgpIGdlbmVy
aWMKZmlsZXMsIGJlZm9yZSBpbmNsdWRpbmcgdGhlbSBmcm9tIHRoZSBuZXcgc3BlY2lmaWMgQ1Ax
MTAvQ1AxMTUKKEFQODA2L0FQODA3KSBvbmVzLgoKQSBmZXcgc21hbGwgaW1wcm92ZW1lbnRzL2Zp
eGVzIGluIHRoZXNlIGZpbGVzIGFyZSBhbHNvIGNhcnJpZWQuCgpUaGFua3MsCk1pcXXDqGwKCgpC
ZW4gUGVsZWQgKDEpOgogIGR0LWJpbmRpbmdzOiBhcDgweDogcmVwbGFjZSBBUDgwNiB3aXRoIEFQ
ODB4CgpHcnplZ29yeiBKYXN6Y3p5ayAoNyk6CiAgYXJtNjQ6IGR0czogbWFydmVsbDogQWRkIEFQ
ODA2LWR1YWwgY2FjaGUgZGVzY3JpcHRpb24KICBhcm02NDogZHRzOiBtYXJ2ZWxsOiBBZGQgQVA4
MDYtcXVhZCBjYWNoZSBkZXNjcmlwdGlvbgogIGFybTY0OiBkdHM6IG1hcnZlbGw6IEFkZCBBUDgw
Ny1xdWFkIGNhY2hlIGRlc2NyaXB0aW9uCiAgZHQtYmluZGluZ3M6IG1hcnZlbGw6IERlY2xhcmUg
dGhlIENOOTEzeCBTb0MgY29tcGF0aWJsZXMKICBhcm02NDogZHRzOiBtYXJ2ZWxsOiBBZGQgc3Vw
cG9ydCBmb3IgTWFydmVsbCBDTjkxMzAtREIKICBhcm02NDogZHRzOiBtYXJ2ZWxsOiBBZGQgc3Vw
cG9ydCBmb3IgTWFydmVsbCBDTjkxMzEtREIKICBhcm02NDogZHRzOiBtYXJ2ZWxsOiBBZGQgc3Vw
cG9ydCBmb3IgTWFydmVsbCBDTjkxMzItREIKCktvbnN0YW50aW4gUG9yb3RjaGtpbiAoMSk6CiAg
YXJtNjQ6IGR0czogbWFydmVsbDogUHJlcGFyZSB0aGUgaW50cm9kdWN0aW9uIG9mIEFQODA3IGJh
c2VkIFNvQ3MKCk1pcXVlbCBSYXluYWwgKDExKToKICBhcm02NDogZHRzOiBtYXJ2ZWxsOiBFbnVt
ZXJhdGUgdGhlIGZpcnN0IEFQODA2IHN5c2NvbgogIGFybTY0OiBkdHM6IG1hcnZlbGw6IEFkZCBB
UDgwNi1kdWFsIG1pc3NpbmcgQ1BVIGNsb2NrcwogIE1BSU5UQUlORVJTOiBBZGQgbmV3IE1hcnZl
bGwgQ045MTMwLWJhc2VkIGZpbGVzIHRvIHRyYWNrCiAgYXJtNjQ6IGR0czogbWFydmVsbDogTW92
ZSBjbG9ja3MgdG8gQVA4MDYgc3BlY2lmaWMgZmlsZQogIGFybTY0OiBkdHM6IG1hcnZlbGw6IEFk
ZCBzdXBwb3J0IGZvciBBUDgwNy9BUDgwNy1xdWFkCiAgYXJtNjQ6IGR0czogbWFydmVsbDogRml4
IENQMTEwIE5BTkQgY29udHJvbGxlciBub2RlIG11bHRpLWxpbmUgY29tbWVudAogICAgYWxpZ25t
ZW50CiAgYXJtNjQ6IGR0czogbWFydmVsbDogUHJlcGFyZSB0aGUgaW50cm9kdWN0aW9uIG9mIENQ
MTE1CiAgYXJtNjQ6IGR0czogbWFydmVsbDogRHJvcCBQQ0llIEkvTyByYW5nZXMgZnJvbSBDUDEx
eCBmaWxlCiAgYXJtNjQ6IGR0czogbWFydmVsbDogRXh0ZXJuYWxpemUgUENJZSBtYWNyb3MgZnJv
bSBDUDExeCBmaWxlCiAgYXJtNjQ6IGR0czogbWFydmVsbDogQWRkIHN1cHBvcnQgZm9yIENQMTE1
CiAgYXJtNjQ6IGR0czogbWFydmVsbDogQWRkIHN1cHBvcnQgZm9yIE1hcnZlbGwgQ045MTMwIFNv
QyBzdXBwb3J0CgogLi4ucm9sbGVyLnR4dCA9PiBhcDgweC1zeXN0ZW0tY29udHJvbGxlci50eHR9
IHwgIDE0ICstCiAuLi4vYmluZGluZ3MvYXJtL21hcnZlbGwvYXJtYWRhLTdrLThrLnR4dCAgICAg
fCAgMTMgKy0KIE1BSU5UQUlORVJTICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8
ICAgMyArLQogYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL01ha2VmaWxlICAgICAgICAgIHwg
ICAzICsKIGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtNzB4MC5kdHNpICB8ICAy
OCArLQogLi4uL2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLTgwNDAtbWNiaW4uZHRzaSAgIHwgICAz
ICstCiBhcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLTgweDAuZHRzaSAgfCAgNTYg
Ky0KIC4uLi9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS1hcDgwNi1kdWFsLmR0c2kgICB8ICAyMyAr
CiAuLi4vYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtYXA4MDYtcXVhZC5kdHNpICAgfCAgNDIgKysK
IGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtYXA4MDYuZHRzaSB8IDQ1NiArLS0t
LS0tLS0tLS0tLQogLi4uL2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLWFwODA3LXF1YWQuZHRzaSAg
IHwgIDkzICsrKwogYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS1hcDgwNy5kdHNp
IHwgIDI5ICsKIGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtYXA4MHguZHRzaSB8
IDQ0NCArKysrKysrKysrKysrKwogLi4uL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLWNv
bW1vbi5kdHNpIHwgICA0ICstCiBhcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLWNw
MTEwLmR0c2kgfCA1NzUgKy0tLS0tLS0tLS0tLS0tLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL21h
cnZlbGwvYXJtYWRhLWNwMTE1LmR0c2kgfCAgMTIgKwogYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2
ZWxsL2FybWFkYS1jcDExeC5kdHNpIHwgNTY4ICsrKysrKysrKysrKysrKysrCiBhcmNoL2FybTY0
L2Jvb3QvZHRzL21hcnZlbGwvY245MTMwLWRiLmR0cyAgICAgfCA0MDMgKysrKysrKysrKysrCiBh
cmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvY245MTMwLmR0c2kgICAgICAgfCAgMzcgKysKIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9jbjkxMzEtZGIuZHRzICAgICB8IDIwMiArKysrKysK
IGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9jbjkxMzItZGIuZHRzICAgICB8IDIyMSArKysr
KysrCiAyMSBmaWxlcyBjaGFuZ2VkLCAyMTYxIGluc2VydGlvbnMoKyksIDEwNjggZGVsZXRpb25z
KC0pCiByZW5hbWUgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9tYXJ2ZWxs
L3thcDgwNi1zeXN0ZW0tY29udHJvbGxlci50eHQgPT4gYXA4MHgtc3lzdGVtLWNvbnRyb2xsZXIu
dHh0fSAoOTElKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVs
bC9hcm1hZGEtYXA4MDctcXVhZC5kdHNpCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9i
b290L2R0cy9tYXJ2ZWxsL2FybWFkYS1hcDgwNy5kdHNpCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJj
aC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS1hcDgweC5kdHNpCiBjcmVhdGUgbW9kZSAx
MDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS1jcDExNS5kdHNpCiBjcmVh
dGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS1jcDExeC5k
dHNpCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2NuOTEz
MC1kYi5kdHMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwv
Y245MTMwLmR0c2kKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZl
bGwvY245MTMxLWRiLmR0cwogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMv
bWFydmVsbC9jbjkxMzItZGIuZHRzCgotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
