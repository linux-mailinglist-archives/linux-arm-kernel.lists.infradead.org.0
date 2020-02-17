Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69BCA160E54
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 10:20:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mk82d6d6Y2NkLtd8YQJesGy+xjXLai3ORZA6nQFqfsA=; b=FauTHoGvQGSSj+
	qdZlbuRpaFzf6mgZAt/5TQ+mDMz6r8aYWsX9uX6unTr7OVCX3z1uaubKzzqv5Jkez+epTInJMAqKQ
	031XPp+hlqN/lfjGE/vgHo7PZDupayvSbvrZFQwC99FicHb6HHAnOZWdZEa7kfcBwiMCCEHRaZ7YE
	cLl0Hiw2Ct2a7oKMdcv2mw+WMmR6sY4h2Bh6FXTxjLoPhsDR8cdjgZPIzRamIp4k9ajTjE142r46n
	4Tq/Zs3GcgEPIEBfVmkW4nwQqwy6h6xNWUBZXv8Kjwa1SCQ9Hgo2befJiXI0kbic8i7PW6C80ys8D
	wpL/7ADrVtw/nK5lKKbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3cZb-0002rL-9A; Mon, 17 Feb 2020 09:20:15 +0000
Received: from smtpout.aon.at ([195.3.96.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3cZQ-0001sq-Pt
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 09:20:06 +0000
Received: (qmail 24437 invoked from network); 17 Feb 2020 09:19:51 -0000
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 WARSBL507.highway.telekom.at
X-Spam-Level: 
Received: from 91-115-26-168.adsl.highway.telekom.at (HELO DESKTOP26LQET5)
 ([91.115.26.168]) (envelope-sender <stefan-lehner@aon.at>)
 by smarthub82.res.a1.net (qmail-ldap-1.03) with DHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 17 Feb 2020 09:19:51 -0000
X-A1Mail-Track-Id: 1581931190:24380:smarthub82:91.115.26.168:1
From: "Stefan Lehner" <stefan-lehner@aon.at>
To: "'Russell King - ARM Linux admin'" <linux@armlinux.org.uk>
References: <002e01d5ddb1$f5c95520$e15bff60$@at>
 <20200211162439.GJ25745@shell.armlinux.org.uk>
In-Reply-To: <20200211162439.GJ25745@shell.armlinux.org.uk>
Subject: AW: SA-1111 USB OHCI driver (Jornada 720) - overcurrent condition
Date: Mon, 17 Feb 2020 10:19:48 +0100
Message-ID: <001701d5e573$675c9c60$3615d520$@at>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Content-Language: de-at
Thread-Index: AdXg98yDzxbaAApNQGin6RchrLZGzgEdQWig
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_012005_156473_1C5DF8CC 
X-CRM114-Status: GOOD (  11.48  )
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PldlbGwsIGl0IHNlZW1zIHRoaXMgaGFzIG5ldmVyIGJlZW4gdGVzdGVkIHByb3Blcmx5LiAgVGhl
IFNBMTExMSBkb2NzCj5zYXk6Cj4KPuKAoiBVU0JfUFdSX1NFTlNFIC0gVGhpcyBpcyBhIGRlZGlj
YXRlZCBhY3RpdmUgaGlnaCBpbnB1dCB3aGljaCBpcwo+bm9ybWFsbHkgdXNlZCBmb3Igc2Vuc2lu
ZyBwb3J0IG92ZXIgY3VycmVudCBmYXVsdCBjb25kaXRpb25zIG9uCj50aGUgVVNCIHBvd2VyIHN1
cHBseS4gLi4uCj4KPlNvLCBpZiBpdCBpcyB0aWVkIGhpZ2gsIHRoZW4gYnkgZGVmYXVsdCBpdCBp
cyBpbmRpY2F0aW5nIGFuIG92ZXItCj5jdXJyZW50IGNvbmRpdGlvbi4gIFRoZXJlIGlzLCBob3dl
dmVyLCBhIGJpdCB0aGF0IGNhbiBiZSB1c2VkIHRvCj5pbnZlcnQgdGhpcyBzaWduYWwsIGJpdCA2
IG9mIHJlc2V0IHJlZ2lzdGVyLiAgVGhlIGNvZGUgZG9lcyB0aGlzOgo+Cj4gICAgICAgIHVuc2ln
bmVkIGludCB1c2JfcnN0ID0gMDsKPi4uLgo+ICAgICAgICBpZiAobWFjaGluZV9pc194cDg2MCgp
IHx8Cj4gICAgICAgICAgICBtYWNoaW5lX2lzX2Fzc2FiZXQoKSB8fAo+ICAgICAgICAgICAgbWFj
aGluZV9pc19wZnMxNjgoKSB8fAo+ICAgICAgICAgICAgbWFjaGluZV9pc19iYWRnZTQoKSkKPiAg
ICAgICAgICAgICAgICB1c2JfcnN0ID0gVVNCX1JFU0VUX1BXUlNFTlNFTE9XIHwgVVNCX1JFU0VU
X1BXUkNUUkxMT1c7Cj4KPiAgICAgICAgLyoKPiAgICAgICAgICogQ29uZmlndXJlIHRoZSBwb3dl
ciBzZW5zZSBhbmQgY29udHJvbCBsaW5lcy4gIFBsYWNlIHRoZSBVU0IKPiAgICAgICAgICogaG9z
dCBjb250cm9sbGVyIGluIHJlc2V0Lgo+ICAgICAgICAgKi8KPiAgICAgICAgd3JpdGVsX3JlbGF4
ZWQodXNiX3JzdCB8IFVTQl9SRVNFVF9GT1JDRUlGUkVTRVQgfCBVU0JfUkVTRVRfRk9SQ0VIQ1JF
U0VULAo+ICAgICAgICAgICAgICAgICAgICAgIGRldi0+bWFwYmFzZSArIFVTQl9SRVNFVCk7Cj4K
PlNvLCBiaXQgNiBpcyBsZWZ0IHVuc2V0IG9uIEpvcm5hZGEgNzIwLCBhbmQgaGVuY2UgdGhpcyBp
c3N1ZS4KPgo+WW91IHByb2JhYmx5IGFsc28gbmVlZCB0byBpbnZlc3RpZ2F0ZSB3aGV0aGVyIHRo
ZSBVU0JfUFdSQ05UTCBzaWduYWwKPmlzIGFsc28gYWN0aXZlIGhpZ2ggb3IgYWN0aXZlIGxvdywg
YW5kIGNvbnNpZGVyIHdoZXRoZXIgdGhlIHNldHRpbmcKPmZvciB0aGF0IHNpZ25hbCBpcyBhbHNv
IGNvcnJlY3QuICBJZiBVU0JfUkVTRVRfUFdSQ1RSTExPVyBpcyBzZXQsCj50aGVuIFVTQl9QV1JD
VFJMPWxvdyBpcyBzdXBwb3NlZCB0byB0dXJuIF9vbl8gdGhlIHBvd2VyLgoKVGhhbmsgeW91IGZv
ciB5b3VyIHJlcGx5ISAKWW91IGFyZSBhYnNvbHV0ZWx5IHJpZ2h0LiBXaXRoIG15IHdpcmluZywg
YWNjb3JkaW5nIHRvIHRoZSAiU3Ryb25nQVJNwq4gU0EtMTExMSBEZXZlbG9wbWVudCBNb2R1bGUg
U2NoZW1hdGljcyIgdGhlIHBvd2VyIHNlbnNlIGFuZCBjb250cm9sIGxpbmUgaGFzIHRvIGJlIGNv
bmZpZ3VyZWQgYXMgYWN0aXZlIGxvdy4gU2FkbHkgaXQgZG9lcyBub3Qgd29yayBhcyBleHBlY3Rl
ZC4uLgpUaGUgbWFjaGluZSBwb3dlcnMgdXAgdGhlIFVTQiBwb3J0IGFuZCBzb21ldGltZXMgcmVj
b2duaXplcyBhIFVTQiBkZXZpY2UuIEJ1dCBpdCBpcyBub3QgbW91bnRhYmxlL2FjY2Vzc2libGU6
CgpbICAyNTguNjQ0Njk4XSB1c2IgMS0xOiBuZXcgZnVsbC1zcGVlZCBVU0IgZGV2aWNlIG51bWJl
ciAyIHVzaW5nIHNhMTExMS1vaGNpClsgIDI2NC4xMDQ2ODddIHVzYiAxLTE6IGRldmljZSBkZXNj
cmlwdG9yIHJlYWQvNjQsIGVycm9yIC0xMTAKWyAgMjY5Ljc3NDgwOV0gdXNiIDEtMTogdW5hYmxl
IHRvIHJlYWQgY29uZmlnIGluZGV4IDAgZGVzY3JpcHRvci9zdGFydDogLTExMApbICAyNjkuODE5
MzIwXSB1c2IgMS0xOiBjYW4ndCByZWFkIGNvbmZpZ3VyYXRpb25zLCBlcnJvciAtMTEwClsgIDI3
MC4wNTQ3MThdIHVzYiAxLTE6IG5ldyBmdWxsLXNwZWVkIFVTQiBkZXZpY2UgbnVtYmVyIDMgdXNp
bmcgc2ExMTExLW9oY2kKWyAgMjgwLjcyODUyOF0gdXNiIDEtMTogTmV3IFVTQiBkZXZpY2UgZm91
bmQsIGlkVmVuZG9yPTA5MGMsIGlkUHJvZHVjdD0xMDAwClsgIDI4MC43NzIxNzldIHVzYiAxLTE6
IE5ldyBVU0IgZGV2aWNlIHN0cmluZ3M6IE1mcj0xLCBQcm9kdWN0PTIsIFNlcmlhbE51bWJlcj0z
ClsgIDI4MC44MTU2NzldIHVzYiAxLTE6IFByb2R1Y3Q6IFVTQiBESVNLClsgIDI4MC44NTc5Njdd
IHVzYiAxLTE6IE1hbnVmYWN0dXJlcjogU01JIENvcnBvcmF0aW9uClsgIDI4MC45MDAyNjFdIHVz
YiAxLTE6IFNlcmlhbE51bWJlcjogQUEwNDAxMjcwMDAwNzUzNwpbICAyODEuMzEwNTMwXSB1c2It
c3RvcmFnZSAxLTE6MS4wOiBVU0IgTWFzcyBTdG9yYWdlIGRldmljZSBkZXRlY3RlZApbICAyODEu
MzkwMDgxXSBzY3NpIGhvc3QwOiB1c2Itc3RvcmFnZSAxLTE6MS4wClsgIDI4MS40MzQzNDNdIHVz
YmNvcmU6IHJlZ2lzdGVyZWQgbmV3IGludGVyZmFjZSBkcml2ZXIgdXNiLXN0b3JhZ2UKWyAgMjgz
LjA2NTY0MF0gc2NzaSAwOjA6MDowOiBEaXJlY3QtQWNjZXNzICAgICBVU0IgICAgICBGbGFzaCBE
aXNrICAgICAgIDExMDAgUFE6IDAgQU5TSTogMCBDQ1MKWyAgMzAwLjY0NjkzN10gc2QgMDowOjA6
MDogW3NkYV0gMTU4NTg2ODggNTEyLWJ5dGUgbG9naWNhbCBibG9ja3M6ICg4LjEyIEdCLzcuNTYg
R2lCKQpbICAzMDAuODAwNTI5XSBzZCAwOjA6MDowOiBbc2RhXSBXcml0ZSBQcm90ZWN0IGlzIG9m
ZgpbICAzMDAuODQ1NDM0XSBzZCAwOjA6MDowOiBbc2RhXSBNb2RlIFNlbnNlOiA0MyAwMCAwMCAw
MApbICAzMDEuMDk1MTQ3XSBzZCAwOjA6MDowOiBbc2RhXSBObyBDYWNoaW5nIG1vZGUgcGFnZSBm
b3VuZApbICAzMDEuMDk1MTgzXSBzZCAwOjA6MDowOiBbc2RhXSBBc3N1bWluZyBkcml2ZSBjYWNo
ZTogd3JpdGUgdGhyb3VnaAoKClNvbWV0aW1lcyB0aGVyZSBhcmUgb25seSBlcnJvcnMgbGlrZSB0
aGVzZToKWyAgMTc1LjU1NDcwN10gdXNiIDEtMTogbmV3IGZ1bGwtc3BlZWQgVVNCIGRldmljZSBu
dW1iZXIgMiB1c2luZyBzYTExMTEtb2hjaQpbICAxODAuODg0OTk5XSB1c2IgMS0xOiBkZXZpY2Ug
ZGVzY3JpcHRvciByZWFkL2FsbCwgZXJyb3IgLTExMApbICAxODEuMTI0NzE3XSB1c2IgMS0xOiBu
ZXcgZnVsbC1zcGVlZCBVU0IgZGV2aWNlIG51bWJlciAzIHVzaW5nIHNhMTExMS1vaGNpClsgIDE5
Mi4xNDQ2ODJdIHVzYiAxLTE6IGRldmljZSBub3QgYWNjZXB0aW5nIGFkZHJlc3MgMywgZXJyb3Ig
LTExMApbICAxOTIuMzg0Njk3XSB1c2IgMS0xOiBuZXcgZnVsbC1zcGVlZCBVU0IgZGV2aWNlIG51
bWJlciA0IHVzaW5nIHNhMTExMS1vaGNpClsgIDE5Ny41MjU2MjFdIHVzYiAxLTE6IHVuYWJsZSB0
byByZWFkIGNvbmZpZyBpbmRleCAwIGRlc2NyaXB0b3IvYWxsClsgIDE5Ny41NjkxNzJdIHVzYiAx
LTE6IGNhbid0IHJlYWQgY29uZmlndXJhdGlvbnMsIGVycm9yIC0xMTAKWyAgMTk3LjgwNDcwOV0g
dXNiIDEtMTogbmV3IGZ1bGwtc3BlZWQgVVNCIGRldmljZSBudW1iZXIgNSB1c2luZyBzYTExMTEt
b2hjaQpbICAyMDguNTQ0Njc5XSB1c2IgMS0xOiBkZXZpY2Ugbm90IGFjY2VwdGluZyBhZGRyZXNz
IDUsIGVycm9yIC0xMTAKWyAgMjA4LjU4NjY4NV0gdXNiIHVzYjEtcG9ydDE6IHVuYWJsZSB0byBl
bnVtZXJhdGUgVVNCIGRldmljZQoKVGVzdGVkIHdpdGggZGlmZmVyZW50ICh3b3JraW5nKSBmbGFz
aCBkcml2ZXMuCkkgZG9udCBrbm93IGlmIHRoaXMgaXMgYSBLZXJuZWwvZHJpdmVyIHByb2JsZW0g
b3IgaGFyZHdhcmUgcmVsYXRlZC4gSSB0ZXN0ZWQgdGhlIDVWIGxpbmUgdG8gdGhlIHVzYiBwb3J0
IGFuZCB0aGVyZSBpcyBubyB2b2x0YWdlIGRyb3Agb3IgZXhjZXNzaXZlIGN1cnJlbnQgZHJhd24u
Cgpsc3VzYiBvdXRwdXQ6CkJ1cyAwMDEgRGV2aWNlIDAwMzogSUQgMDkwYzoxMDAwIFNpbGljb24g
TW90aW9uLCBJbmMuIC0gVGFpd2FuIChmb3JtZXJseSBGZWl5YSBUZWNobm9sb2d5IENvcnAuKSBG
bGFzaCBEcml2ZQpCdXMgMDAxIERldmljZSAwMDE6IElEIDFkNmI6MDAwMSBMaW51eCBGb3VuZGF0
aW9uIDEuMSByb290IGh1YgoKUmVnYXJkcwpTdGVmYW4KCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
