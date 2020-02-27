Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E49D61722F7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 17:15:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KaG4DezdSr8MOsly+WMghfZMlxawYtaSdw5HvNdeLFI=; b=TrQA60jJ0vdKZE
	1SOTup/jp8qslBrebwC4ADexZQuEYm5LzZlDeRBRji6EqTekXRuZWQVnOvdXyiMKA78DngaDPexQp
	UN2oSfGf/IIhOAQEOH+qgFvcEZ0cJaB6FY8lbnnXVjMm+7jMUMIru6lqcQbGeFqIGjKtKOnMQ1hqR
	TvCkiEIfD1Szd4IDWkin6clNZSxf76NUVXCo36t9xWIoA2Ys03479a/c2tl4xyzuTuROPTQisIhLL
	LE02Iw3TpPwXOqMrwvwxVGzWwd0eLkL0PCPmY/jrZnRO5+gN/LyRfCnDNQxgYqGzk2dFYjimVWPb6
	tGz4DYdryVOlMQngORuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7LpI-0007fq-AR; Thu, 27 Feb 2020 16:15:52 +0000
Received: from smtpout.aon.at ([195.3.96.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Lp9-0007fB-2L
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 16:15:45 +0000
Received: (qmail 30701 invoked from network); 27 Feb 2020 16:15:33 -0000
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 WARSBL507.highway.telekom.at
X-Spam-Level: 
Received: from 188-23-227-115.adsl.highway.telekom.at (HELO DESKTOP26LQET5)
 ([188.23.227.115]) (envelope-sender <stefan-lehner@aon.at>)
 by smarthub82.res.a1.net (qmail-ldap-1.03) with DHE-RSA-AES256-GCM-SHA384
 encrypted SMTP
 for <linux-arm-kernel@lists.infradead.org>; 27 Feb 2020 16:15:33 -0000
X-A1Mail-Track-Id: 1582820132:30535:smarthub82:188.23.227.115:1
From: "Stefan Lehner" <stefan-lehner@aon.at>
To: <linux-arm-kernel@lists.infradead.org>
References: <002e01d5ddb1$f5c95520$e15bff60$@at>
 <20200211162439.GJ25745@shell.armlinux.org.uk>
 <001701d5e573$675c9c60$3615d520$@at>
In-Reply-To: <001701d5e573$675c9c60$3615d520$@at>
Subject: AW: SA-1111 USB OHCI driver (Jornada 720) - overcurrent condition 
Date: Thu, 27 Feb 2020 17:15:31 +0100
Message-ID: <003301d5ed89$22fb61a0$68f224e0$@at>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdXg98yDzxbaAApNQGin6RchrLZGzgEdQWigAgbAioA=
Content-Language: de-at
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_081543_584221_BCA09081 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [195.3.96.115 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [stefan-lehner[at]aon.at]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.3.96.115 listed in wl.mailspike.net]
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkhCkkgbWFkZSBhIFBDQiBhY2NvcmRpbmcgdG8gdGhlICJTdHJvbmdBUk3CriBTQS0xMTExIERl
dmVsb3BtZW50IE1vZHVsZSBTY2hlbWF0aWNzIiBhbmQgd2lyZWQgZXZlcnl0aGluZyB1cC4gU28g
SGFyZHdhcmUgaXMgMTAwJSBvay4gClNvbWVvbmUgZXZlciBtYW5hZ2VkIHRvIGdldCBVU0IgaG9z
dCB3b3JraW5nIG9uIGEgU0EtMTExMT8KSW4gdGhpcyBjYXNlIGkgdHJpZWQgd2l0aCBLZXJuZWwg
VmVyc2lvbiA0LjguNy4gQnV0IGl0IGFsc28gZG9lc250IHdvcmsgd2l0aCAzLjE2LjgyIG9yIDQu
OSAuLi4KVGhlIGZ1bm55IHRoaW5nIGlzLCBzb21ldGltZXMgaXQgd29ya3MgZm9yIGEgc2hvcnQg
cGVyaW9kIG9mIHRpbWUuIEJ1dCBtb3N0IG9mIHRoZSB0aW1lIEkgZ2V0IHRoaXMgc3RyYW5nZSAt
MTEwIHRpbWVvdXQgZXJyb3IuLi4KCkhvcGVmdWxseSBzb21lb25lIGNhbiBoZWxwIG1lLgoKUmVn
YXJkcwpTdGVmYW4gTGVobmVyCgoKLS0tLS1VcnNwcsO8bmdsaWNoZSBOYWNocmljaHQtLS0tLQpW
b246IGxpbnV4LWFybS1rZXJuZWwgW21haWx0bzpsaW51eC1hcm0ta2VybmVsLWJvdW5jZXNAbGlz
dHMuaW5mcmFkZWFkLm9yZ10gSW0gQXVmdHJhZyB2b24gU3RlZmFuIExlaG5lcgpHZXNlbmRldDog
TW9udGFnLCAxNy4gRmVicnVhciAyMDIwIDEwOjIwCkFuOiAnUnVzc2VsbCBLaW5nIC0gQVJNIExp
bnV4IGFkbWluJwpDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCkJldHJl
ZmY6IEFXOiBTQS0xMTExIFVTQiBPSENJIGRyaXZlciAoSm9ybmFkYSA3MjApIC0gb3ZlcmN1cnJl
bnQgY29uZGl0aW9uCgo+V2VsbCwgaXQgc2VlbXMgdGhpcyBoYXMgbmV2ZXIgYmVlbiB0ZXN0ZWQg
cHJvcGVybHkuICBUaGUgU0ExMTExIGRvY3MKPnNheToKPgo+4oCiIFVTQl9QV1JfU0VOU0UgLSBU
aGlzIGlzIGEgZGVkaWNhdGVkIGFjdGl2ZSBoaWdoIGlucHV0IHdoaWNoIGlzCj5ub3JtYWxseSB1
c2VkIGZvciBzZW5zaW5nIHBvcnQgb3ZlciBjdXJyZW50IGZhdWx0IGNvbmRpdGlvbnMgb24KPnRo
ZSBVU0IgcG93ZXIgc3VwcGx5LiAuLi4KPgo+U28sIGlmIGl0IGlzIHRpZWQgaGlnaCwgdGhlbiBi
eSBkZWZhdWx0IGl0IGlzIGluZGljYXRpbmcgYW4gb3Zlci0KPmN1cnJlbnQgY29uZGl0aW9uLiAg
VGhlcmUgaXMsIGhvd2V2ZXIsIGEgYml0IHRoYXQgY2FuIGJlIHVzZWQgdG8KPmludmVydCB0aGlz
IHNpZ25hbCwgYml0IDYgb2YgcmVzZXQgcmVnaXN0ZXIuICBUaGUgY29kZSBkb2VzIHRoaXM6Cj4K
PiAgICAgICAgdW5zaWduZWQgaW50IHVzYl9yc3QgPSAwOwo+Li4uCj4gICAgICAgIGlmIChtYWNo
aW5lX2lzX3hwODYwKCkgfHwKPiAgICAgICAgICAgIG1hY2hpbmVfaXNfYXNzYWJldCgpIHx8Cj4g
ICAgICAgICAgICBtYWNoaW5lX2lzX3BmczE2OCgpIHx8Cj4gICAgICAgICAgICBtYWNoaW5lX2lz
X2JhZGdlNCgpKQo+ICAgICAgICAgICAgICAgIHVzYl9yc3QgPSBVU0JfUkVTRVRfUFdSU0VOU0VM
T1cgfCBVU0JfUkVTRVRfUFdSQ1RSTExPVzsKPgo+ICAgICAgICAvKgo+ICAgICAgICAgKiBDb25m
aWd1cmUgdGhlIHBvd2VyIHNlbnNlIGFuZCBjb250cm9sIGxpbmVzLiAgUGxhY2UgdGhlIFVTQgo+
ICAgICAgICAgKiBob3N0IGNvbnRyb2xsZXIgaW4gcmVzZXQuCj4gICAgICAgICAqLwo+ICAgICAg
ICB3cml0ZWxfcmVsYXhlZCh1c2JfcnN0IHwgVVNCX1JFU0VUX0ZPUkNFSUZSRVNFVCB8IFVTQl9S
RVNFVF9GT1JDRUhDUkVTRVQsCj4gICAgICAgICAgICAgICAgICAgICAgZGV2LT5tYXBiYXNlICsg
VVNCX1JFU0VUKTsKPgo+U28sIGJpdCA2IGlzIGxlZnQgdW5zZXQgb24gSm9ybmFkYSA3MjAsIGFu
ZCBoZW5jZSB0aGlzIGlzc3VlLgo+Cj5Zb3UgcHJvYmFibHkgYWxzbyBuZWVkIHRvIGludmVzdGln
YXRlIHdoZXRoZXIgdGhlIFVTQl9QV1JDTlRMIHNpZ25hbAo+aXMgYWxzbyBhY3RpdmUgaGlnaCBv
ciBhY3RpdmUgbG93LCBhbmQgY29uc2lkZXIgd2hldGhlciB0aGUgc2V0dGluZwo+Zm9yIHRoYXQg
c2lnbmFsIGlzIGFsc28gY29ycmVjdC4gIElmIFVTQl9SRVNFVF9QV1JDVFJMTE9XIGlzIHNldCwK
PnRoZW4gVVNCX1BXUkNUUkw9bG93IGlzIHN1cHBvc2VkIHRvIHR1cm4gX29uXyB0aGUgcG93ZXIu
CgpUaGFuayB5b3UgZm9yIHlvdXIgcmVwbHkhIApZb3UgYXJlIGFic29sdXRlbHkgcmlnaHQuIFdp
dGggbXkgd2lyaW5nLCBhY2NvcmRpbmcgdG8gdGhlICJTdHJvbmdBUk3CriBTQS0xMTExIERldmVs
b3BtZW50IE1vZHVsZSBTY2hlbWF0aWNzIiB0aGUgcG93ZXIgc2Vuc2UgYW5kIGNvbnRyb2wgbGlu
ZSBoYXMgdG8gYmUgY29uZmlndXJlZCBhcyBhY3RpdmUgbG93LiBTYWRseSBpdCBkb2VzIG5vdCB3
b3JrIGFzIGV4cGVjdGVkLi4uClRoZSBtYWNoaW5lIHBvd2VycyB1cCB0aGUgVVNCIHBvcnQgYW5k
IHNvbWV0aW1lcyByZWNvZ25pemVzIGEgVVNCIGRldmljZS4gQnV0IGl0IGlzIG5vdCBtb3VudGFi
bGUvYWNjZXNzaWJsZToKClsgIDI1OC42NDQ2OThdIHVzYiAxLTE6IG5ldyBmdWxsLXNwZWVkIFVT
QiBkZXZpY2UgbnVtYmVyIDIgdXNpbmcgc2ExMTExLW9oY2kKWyAgMjY0LjEwNDY4N10gdXNiIDEt
MTogZGV2aWNlIGRlc2NyaXB0b3IgcmVhZC82NCwgZXJyb3IgLTExMApbICAyNjkuNzc0ODA5XSB1
c2IgMS0xOiB1bmFibGUgdG8gcmVhZCBjb25maWcgaW5kZXggMCBkZXNjcmlwdG9yL3N0YXJ0OiAt
MTEwClsgIDI2OS44MTkzMjBdIHVzYiAxLTE6IGNhbid0IHJlYWQgY29uZmlndXJhdGlvbnMsIGVy
cm9yIC0xMTAKWyAgMjcwLjA1NDcxOF0gdXNiIDEtMTogbmV3IGZ1bGwtc3BlZWQgVVNCIGRldmlj
ZSBudW1iZXIgMyB1c2luZyBzYTExMTEtb2hjaQpbICAyODAuNzI4NTI4XSB1c2IgMS0xOiBOZXcg
VVNCIGRldmljZSBmb3VuZCwgaWRWZW5kb3I9MDkwYywgaWRQcm9kdWN0PTEwMDAKWyAgMjgwLjc3
MjE3OV0gdXNiIDEtMTogTmV3IFVTQiBkZXZpY2Ugc3RyaW5nczogTWZyPTEsIFByb2R1Y3Q9Miwg
U2VyaWFsTnVtYmVyPTMKWyAgMjgwLjgxNTY3OV0gdXNiIDEtMTogUHJvZHVjdDogVVNCIERJU0sK
WyAgMjgwLjg1Nzk2N10gdXNiIDEtMTogTWFudWZhY3R1cmVyOiBTTUkgQ29ycG9yYXRpb24KWyAg
MjgwLjkwMDI2MV0gdXNiIDEtMTogU2VyaWFsTnVtYmVyOiBBQTA0MDEyNzAwMDA3NTM3ClsgIDI4
MS4zMTA1MzBdIHVzYi1zdG9yYWdlIDEtMToxLjA6IFVTQiBNYXNzIFN0b3JhZ2UgZGV2aWNlIGRl
dGVjdGVkClsgIDI4MS4zOTAwODFdIHNjc2kgaG9zdDA6IHVzYi1zdG9yYWdlIDEtMToxLjAKWyAg
MjgxLjQzNDM0M10gdXNiY29yZTogcmVnaXN0ZXJlZCBuZXcgaW50ZXJmYWNlIGRyaXZlciB1c2It
c3RvcmFnZQpbICAyODMuMDY1NjQwXSBzY3NpIDA6MDowOjA6IERpcmVjdC1BY2Nlc3MgICAgIFVT
QiAgICAgIEZsYXNoIERpc2sgICAgICAgMTEwMCBQUTogMCBBTlNJOiAwIENDUwpbICAzMDAuNjQ2
OTM3XSBzZCAwOjA6MDowOiBbc2RhXSAxNTg1ODY4OCA1MTItYnl0ZSBsb2dpY2FsIGJsb2Nrczog
KDguMTIgR0IvNy41NiBHaUIpClsgIDMwMC44MDA1MjldIHNkIDA6MDowOjA6IFtzZGFdIFdyaXRl
IFByb3RlY3QgaXMgb2ZmClsgIDMwMC44NDU0MzRdIHNkIDA6MDowOjA6IFtzZGFdIE1vZGUgU2Vu
c2U6IDQzIDAwIDAwIDAwClsgIDMwMS4wOTUxNDddIHNkIDA6MDowOjA6IFtzZGFdIE5vIENhY2hp
bmcgbW9kZSBwYWdlIGZvdW5kClsgIDMwMS4wOTUxODNdIHNkIDA6MDowOjA6IFtzZGFdIEFzc3Vt
aW5nIGRyaXZlIGNhY2hlOiB3cml0ZSB0aHJvdWdoCgoKU29tZXRpbWVzIHRoZXJlIGFyZSBvbmx5
IGVycm9ycyBsaWtlIHRoZXNlOgpbICAxNzUuNTU0NzA3XSB1c2IgMS0xOiBuZXcgZnVsbC1zcGVl
ZCBVU0IgZGV2aWNlIG51bWJlciAyIHVzaW5nIHNhMTExMS1vaGNpClsgIDE4MC44ODQ5OTldIHVz
YiAxLTE6IGRldmljZSBkZXNjcmlwdG9yIHJlYWQvYWxsLCBlcnJvciAtMTEwClsgIDE4MS4xMjQ3
MTddIHVzYiAxLTE6IG5ldyBmdWxsLXNwZWVkIFVTQiBkZXZpY2UgbnVtYmVyIDMgdXNpbmcgc2Ex
MTExLW9oY2kKWyAgMTkyLjE0NDY4Ml0gdXNiIDEtMTogZGV2aWNlIG5vdCBhY2NlcHRpbmcgYWRk
cmVzcyAzLCBlcnJvciAtMTEwClsgIDE5Mi4zODQ2OTddIHVzYiAxLTE6IG5ldyBmdWxsLXNwZWVk
IFVTQiBkZXZpY2UgbnVtYmVyIDQgdXNpbmcgc2ExMTExLW9oY2kKWyAgMTk3LjUyNTYyMV0gdXNi
IDEtMTogdW5hYmxlIHRvIHJlYWQgY29uZmlnIGluZGV4IDAgZGVzY3JpcHRvci9hbGwKWyAgMTk3
LjU2OTE3Ml0gdXNiIDEtMTogY2FuJ3QgcmVhZCBjb25maWd1cmF0aW9ucywgZXJyb3IgLTExMApb
ICAxOTcuODA0NzA5XSB1c2IgMS0xOiBuZXcgZnVsbC1zcGVlZCBVU0IgZGV2aWNlIG51bWJlciA1
IHVzaW5nIHNhMTExMS1vaGNpClsgIDIwOC41NDQ2NzldIHVzYiAxLTE6IGRldmljZSBub3QgYWNj
ZXB0aW5nIGFkZHJlc3MgNSwgZXJyb3IgLTExMApbICAyMDguNTg2Njg1XSB1c2IgdXNiMS1wb3J0
MTogdW5hYmxlIHRvIGVudW1lcmF0ZSBVU0IgZGV2aWNlCgpUZXN0ZWQgd2l0aCBkaWZmZXJlbnQg
KHdvcmtpbmcpIGZsYXNoIGRyaXZlcy4KSSBkb250IGtub3cgaWYgdGhpcyBpcyBhIEtlcm5lbC9k
cml2ZXIgcHJvYmxlbSBvciBoYXJkd2FyZSByZWxhdGVkLiBJIHRlc3RlZCB0aGUgNVYgbGluZSB0
byB0aGUgdXNiIHBvcnQgYW5kIHRoZXJlIGlzIG5vIHZvbHRhZ2UgZHJvcCBvciBleGNlc3NpdmUg
Y3VycmVudCBkcmF3bi4KCmxzdXNiIG91dHB1dDoKQnVzIDAwMSBEZXZpY2UgMDAzOiBJRCAwOTBj
OjEwMDAgU2lsaWNvbiBNb3Rpb24sIEluYy4gLSBUYWl3YW4gKGZvcm1lcmx5IEZlaXlhIFRlY2hu
b2xvZ3kgQ29ycC4pIEZsYXNoIERyaXZlCkJ1cyAwMDEgRGV2aWNlIDAwMTogSUQgMWQ2YjowMDAx
IExpbnV4IEZvdW5kYXRpb24gMS4xIHJvb3QgaHViCgpSZWdhcmRzClN0ZWZhbgoKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
