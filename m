Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18048ED50E
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 22:14:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TI++zCQuNu0xiwsA73eYevrhawWyNLjG92sJyjkYUyI=; b=gSoBwN71oQmWMf
	MaKqqTnyBZhG/LxXgjQJT/i2qEd5Ddn/d28RY6CCZjy366WUYs7KyA2hRIp6QOaQHYLnCaFSTnW38
	8gemO54Bv5BhEcLhknd69yjjjDspKsRrnVnE5Sm3pstAVhbrefG29KubL71zK7/H97JVxfcS7v07t
	Y3ii8XjwpOo8eyzySX23tirG8D5VEwaGa9BYl6hAibaA0IF1R9LuwThh0bZZ09F+je8nCfjg9uPCp
	z1DgWO7k1dfuurex/JmsSqGOqQCMoAsUJUow42TA5LHdzlTRxFgDad+1fsBq5s3yk24Ea7ImJMP6G
	CzN6+Zt2Usjm9Rkh3Etw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRNCr-0004E3-5y; Sun, 03 Nov 2019 21:14:41 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRNCh-0004Dd-LT
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 21:14:33 +0000
X-Originating-IP: 87.231.134.186
Received: from localhost (87-231-134-186.rev.numericable.fr [87.231.134.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id EC9FC240008;
 Sun,  3 Nov 2019 21:14:17 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 <arm@kernel.org>
Subject: [GIT PULL] ARM: mvebu: dt64 for v5.5 (#1)
Date: Sun, 03 Nov 2019 22:14:17 +0100
Message-ID: <87zhhc3bo6.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_131431_979143_2D3C06F6 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpIZXJlIGlzIHRoZSBmaXJzdCBwdWxsIHJlcXVlc3QgZm9yIGR0NjQgZm9yIG12ZWJ1IGZv
ciB2NS41LgoKR3JlZ29yeQoKVGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCA1NGVj
YjhmNzAyOGM1ZWIzZDc0MGJiODJiMGYxZDkwZjJkZjYzYzVjOgoKICBMaW51eCA1LjQtcmMxICgy
MDE5LTA5LTMwIDEwOjM1OjQwIC0wNzAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9z
aXRvcnkgYXQ6CgogIGdpdDovL2dpdC5pbmZyYWRlYWQub3JnL2xpbnV4LW12ZWJ1LmdpdCB0YWdz
L212ZWJ1LWR0NjQtNS41LTEKCmZvciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1cCB0byA0NmQyZjZk
MGM5OWY3Zjk1NjAwZTYzM2M3ZGM3Mjc3NDVmYWFmOTVlOgoKICBhcm02NDogZHRzOiBhcm1hZGEt
MzcyMC10dXJyaXMtbW94OiBhZGQgZmlybXdhcmUgbm9kZSAoMjAxOS0xMC0wOSAwOTozNjo0MiAr
MDIwMCkKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KbXZlYnUgZHQ2NCBmb3IgNS41IChwYXJ0IDEpCgogLSBBZGQgbmV3IE1h
cnZlbGwgQ045MTMwIFNvQyBzdXBwb3J0IChDTjkxMzAgaXMgbWFkZSBvZiBvbmUgQVA4MDcgYW5k
CiAgIG9uZSBpbnRlcm5hbCBDUDExNSwgc2ltaWxhciB0byB0aGUgQXJtYWRhIDdLLzhLIHVzaW5n
IEFQODA2IGFuZAogICBDUDExMCkuCiAtIFJlb3JnYW5pemUgRXNwcmVzc29CaW4gZGV2aWNlIHRy
ZWUgdG8gYWRkIG5ldyB2YXJpYW50IG9mIHRoZSBib2FyZHMKICAgKEFybWFkYSAzMjcwIGJhc2Vk
KQogLSBBZGQgZmlybXdhcmUgbm9kZSBmb3IgdHVycmlzIE1veCAoQXJtYWRhIDM3MjAgYmFzZWQp
CgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tCkJlbiBQZWxlZCAoMSk6CiAgICAgIGR0LWJpbmRpbmdzOiBhcDgweDogcmVwbGFj
ZSBBUDgwNiB3aXRoIEFQODB4CgpHcnplZ29yeiBKYXN6Y3p5ayAoNyk6CiAgICAgIGR0LWJpbmRp
bmdzOiBtYXJ2ZWxsOiBEZWNsYXJlIHRoZSBDTjkxM3ggU29DIGNvbXBhdGlibGVzCiAgICAgIGFy
bTY0OiBkdHM6IG1hcnZlbGw6IEFkZCBBUDgwNi1kdWFsIGNhY2hlIGRlc2NyaXB0aW9uCiAgICAg
IGFybTY0OiBkdHM6IG1hcnZlbGw6IEFkZCBBUDgwNi1xdWFkIGNhY2hlIGRlc2NyaXB0aW9uCiAg
ICAgIGFybTY0OiBkdHM6IG1hcnZlbGw6IEFkZCBBUDgwNy1xdWFkIGNhY2hlIGRlc2NyaXB0aW9u
CiAgICAgIGFybTY0OiBkdHM6IG1hcnZlbGw6IEFkZCBzdXBwb3J0IGZvciBNYXJ2ZWxsIENOOTEz
MC1EQgogICAgICBhcm02NDogZHRzOiBtYXJ2ZWxsOiBBZGQgc3VwcG9ydCBmb3IgTWFydmVsbCBD
TjkxMzEtREIKICAgICAgYXJtNjQ6IGR0czogbWFydmVsbDogQWRkIHN1cHBvcnQgZm9yIE1hcnZl
bGwgQ045MTMyLURCCgpLb25zdGFudGluIFBvcm90Y2hraW4gKDEpOgogICAgICBhcm02NDogZHRz
OiBtYXJ2ZWxsOiBQcmVwYXJlIHRoZSBpbnRyb2R1Y3Rpb24gb2YgQVA4MDcgYmFzZWQgU29DcwoK
TWFyZWsgQmVow7puICgxKToKICAgICAgYXJtNjQ6IGR0czogYXJtYWRhLTM3MjAtdHVycmlzLW1v
eDogYWRkIGZpcm13YXJlIG5vZGUKCk1pcXVlbCBSYXluYWwgKDEyKToKICAgICAgYXJtNjQ6IGR0
czogbWFydmVsbDogRW51bWVyYXRlIHRoZSBmaXJzdCBBUDgwNiBzeXNjb24KICAgICAgYXJtNjQ6
IGR0czogbWFydmVsbDogQWRkIEFQODA2LWR1YWwgbWlzc2luZyBDUFUgY2xvY2tzCiAgICAgIE1B
SU5UQUlORVJTOiBBZGQgbmV3IE1hcnZlbGwgQ045MTMwLWJhc2VkIGZpbGVzIHRvIHRyYWNrCiAg
ICAgIGFybTY0OiBkdHM6IG1hcnZlbGw6IE1vdmUgY2xvY2tzIHRvIEFQODA2IHNwZWNpZmljIGZp
bGUKICAgICAgZHQtYmluZGluZ3M6IG1hcnZlbGw6IENvbnZlcnQgdGhlIFNvQyBjb21wYXRpYmxl
cyBkZXNjcmlwdGlvbiB0byBZQU1MCiAgICAgIGFybTY0OiBkdHM6IG1hcnZlbGw6IEFkZCBzdXBw
b3J0IGZvciBBUDgwNy9BUDgwNy1xdWFkCiAgICAgIGFybTY0OiBkdHM6IG1hcnZlbGw6IEZpeCBD
UDExMCBOQU5EIGNvbnRyb2xsZXIgbm9kZSBtdWx0aS1saW5lIGNvbW1lbnQgYWxpZ25tZW50CiAg
ICAgIGFybTY0OiBkdHM6IG1hcnZlbGw6IFByZXBhcmUgdGhlIGludHJvZHVjdGlvbiBvZiBDUDEx
NQogICAgICBhcm02NDogZHRzOiBtYXJ2ZWxsOiBEcm9wIFBDSWUgSS9PIHJhbmdlcyBmcm9tIENQ
MTF4IGZpbGUKICAgICAgYXJtNjQ6IGR0czogbWFydmVsbDogRXh0ZXJuYWxpemUgUENJZSBtYWNy
b3MgZnJvbSBDUDExeCBmaWxlCiAgICAgIGFybTY0OiBkdHM6IG1hcnZlbGw6IEFkZCBzdXBwb3J0
IGZvciBDUDExNQogICAgICBhcm02NDogZHRzOiBtYXJ2ZWxsOiBBZGQgc3VwcG9ydCBmb3IgTWFy
dmVsbCBDTjkxMzAgU29DIHN1cHBvcnQKClRvbWFzeiBNYWNpZWogTm93YWsgKDEpOgogICAgICBh
cm02NDogZHRzOiBtYXJ2ZWxsOiBhZGQgRVNQUkVTU09iaW4gdmFyaWFudHMKCiAuLi4tY29udHJv
bGxlci50eHQgPT4gYXA4MHgtc3lzdGVtLWNvbnRyb2xsZXIudHh0fSB8ICAxNCArLQogLi4uL2Jp
bmRpbmdzL2FybS9tYXJ2ZWxsL2FybWFkYS03ay04ay50eHQgICAgICAgICAgfCAgMjQgLQogLi4u
L2JpbmRpbmdzL2FybS9tYXJ2ZWxsL2FybWFkYS03ay04ay55YW1sICAgICAgICAgfCAgNjEgKysr
CiBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAg
MyArLQogYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL01ha2VmaWxlICAgICAgICAgICAgICAg
fCAgIDMgKwogLi4uL2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLWVzcHJlc3NvYmluLWVtbWMuZHRz
ICAgfCAgNDIgKysKIC4uLi9tYXJ2ZWxsL2FybWFkYS0zNzIwLWVzcHJlc3NvYmluLXY3LWVtbWMu
ZHRzICAgIHwgIDU5ICsrKwogLi4uL2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLWVzcHJlc3NvYmlu
LXY3LmR0cyAgICAgfCAgMzYgKysKIC4uLi9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLWVz
cHJlc3NvYmluLmR0cyAgIHwgMTg0ICstLS0tLS0KIC4uLi9ib290L2R0cy9tYXJ2ZWxsL2FybWFk
YS0zNzIwLWVzcHJlc3NvYmluLmR0c2kgIHwgMTc3ICsrKysrKysKIC4uLi9ib290L2R0cy9tYXJ2
ZWxsL2FybWFkYS0zNzIwLXR1cnJpcy1tb3guZHRzICAgIHwgICA4ICsKIGFyY2gvYXJtNjQvYm9v
dC9kdHMvbWFydmVsbC9hcm1hZGEtNzB4MC5kdHNpICAgICAgIHwgIDI4ICstCiBhcmNoL2FybTY0
L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLTgwNDAtbWNiaW4uZHRzaSB8ICAgMyArLQogYXJjaC9h
cm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS04MHgwLmR0c2kgICAgICAgfCAgNTYgKy0KIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtYXA4MDYtZHVhbC5kdHNpIHwgIDIzICsK
IGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtYXA4MDYtcXVhZC5kdHNpIHwgIDQy
ICsrCiBhcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLWFwODA2LmR0c2kgICAgICB8
IDQ1NiArLS0tLS0tLS0tLS0tLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRh
LWFwODA3LXF1YWQuZHRzaSB8ICA5MyArKysrCiBhcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwv
YXJtYWRhLWFwODA3LmR0c2kgICAgICB8ICAyOSArKwogYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2
ZWxsL2FybWFkYS1hcDgweC5kdHNpICAgICAgfCA0NDQgKysrKysrKysrKysrKysrKwogYXJjaC9h
cm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS1jb21tb24uZHRzaSAgICAgfCAgIDQgKy0KIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtY3AxMTAuZHRzaSAgICAgIHwgNTc1ICst
LS0tLS0tLS0tLS0tLS0tLS0tLQogYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS1j
cDExNS5kdHNpICAgICAgfCAgMTIgKwogYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFk
YS1jcDExeC5kdHNpICAgICAgfCA1NjggKysrKysrKysrKysrKysrKysrKysKIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvbWFydmVsbC9jbjkxMzAtZGIuZHRzICAgICAgICAgIHwgNDAzICsrKysrKysrKysr
KysrKwogYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2NuOTEzMC5kdHNpICAgICAgICAgICAg
fCAgMzcgKysKIGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9jbjkxMzEtZGIuZHRzICAgICAg
ICAgIHwgMjAyICsrKysrKysrCiBhcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvY245MTMyLWRi
LmR0cyAgICAgICAgICB8IDIyMSArKysrKysrKwogMjggZmlsZXMgY2hhbmdlZCwgMjUzMyBpbnNl
cnRpb25zKCspLCAxMjc0IGRlbGV0aW9ucygtKQogcmVuYW1lIERvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9hcm0vbWFydmVsbC97YXA4MDYtc3lzdGVtLWNvbnRyb2xsZXIudHh0ID0+
IGFwODB4LXN5c3RlbS1jb250cm9sbGVyLnR4dH0gKDkxJSkKIGRlbGV0ZSBtb2RlIDEwMDY0NCBE
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL21hcnZlbGwvYXJtYWRhLTdrLThr
LnR4dAogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9hcm0vbWFydmVsbC9hcm1hZGEtN2stOGsueWFtbAogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gv
YXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtMzcyMC1lc3ByZXNzb2Jpbi1lbW1jLmR0cwog
Y3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtMzcy
MC1lc3ByZXNzb2Jpbi12Ny1lbW1jLmR0cwogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQv
Ym9vdC9kdHMvbWFydmVsbC9hcm1hZGEtMzcyMC1lc3ByZXNzb2Jpbi12Ny5kdHMKIGNyZWF0ZSBt
b2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLTM3MjAtZXNwcmVz
c29iaW4uZHRzaQogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVs
bC9hcm1hZGEtYXA4MDctcXVhZC5kdHNpCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9i
b290L2R0cy9tYXJ2ZWxsL2FybWFkYS1hcDgwNy5kdHNpCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJj
aC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS1hcDgweC5kdHNpCiBjcmVhdGUgbW9kZSAx
MDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS1jcDExNS5kdHNpCiBjcmVh
dGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS1jcDExeC5k
dHNpCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2NuOTEz
MC1kYi5kdHMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwv
Y245MTMwLmR0c2kKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZl
bGwvY245MTMxLWRiLmR0cwogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMv
bWFydmVsbC9jbjkxMzItZGIuZHRzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
