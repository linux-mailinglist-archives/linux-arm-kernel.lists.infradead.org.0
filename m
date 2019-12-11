Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7FC011AB88
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 14:06:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fx+q4LzvxKPQfgZcCModMuo6bfvKHZPhftvhm1owgXc=; b=XGy38r6yjzOGPM
	0Gr0VrC9C/pf5+ZoQ8JsnBwwe7EZIUgjl/kx9p3MLcx5lC6tsUpaHarnT9+zDxRl2wAKr4BfQKGbx
	JTIqhHcUwXW8ubctsVGPhzJqv58TkOpswbO+W7pj9zWJMXxzp3xaOXgaM0QVN7SaDoj5zp+vA1n1X
	c4+07OCOtyKuUnOvvyvImafj7Zuv1ifSKO1XpHjZzysVFDSkJewVVSf8vzIOW6nhnS5erZwz0qMOX
	aJgc/gbC6lMKiejqo/VIXCmZnF0p7BSRbeCD8YOIT9dVgHJqMPvqMsqLjg1XxWxrV/wkSyz+bH8mc
	DzCtmUpr7omO4yXlq58g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if1gj-00078y-QU; Wed, 11 Dec 2019 13:05:57 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if1gb-00078B-CK
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 13:05:51 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id E878620714;
 Wed, 11 Dec 2019 14:05:45 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id D27A020482;
 Wed, 11 Dec 2019 14:05:45 +0100 (CET)
To: GPIO <linux-gpio@vger.kernel.org>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Trying to understand basic concepts about GPIO reset pin
Message-ID: <e8b645da-9921-0436-ccfa-9abf4ae5b9d6@free.fr>
Date: Wed, 11 Dec 2019 14:05:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Wed Dec 11 14:05:45 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_050549_711596_AB1DEEF6 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 2.0 SPOOFED_FREEMAIL       No description available.
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Uwe Kleine-Konig <u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpJJ3ZlIGFza2VkIGxpbnVzdyBhIGZldyB0aW1lcyBvbiBJUkMsIGFuZCBldmVyeSB0
aW1lLCBJIC90aGluay8gSSB1bmRlcnN0YW5kLAp0aGVuIEkgZ2V0IGNvbmZ1c2VkIGFnYWluIGxh
dGVyLiBTbyBJJ20gdHJ5aW5nIHRvIHVuZGVyc3RhbmQgb25jZSBhbmQgZm9yIGFsbC4KClBsZWFz
ZSBkbyBub3QgaGVzaXRhdGUgdG8gY29ycmVjdCBhbnkgbWlzdGFrZS9taXNjb25jZXB0aW9uIGJl
bG93LgoKSSB3YW50IHRvIGRpc2N1c3MgYSAic2ltcGxlIiBHUElPIHJlc2V0IHBpbi4KCjEpIFdo
ZW4gYSByZXNldCBwaW4gaXMgQUNUSVZFLCB0aGUgY29ycmVzcG9uZGluZyBjaXJjdWl0IGlzICJo
ZWxkIiBpbiByZXNldC4KSW4gb3RoZXIgd29yZHMsIHdoZW4gYSByZXNldCBwaW4gaXMgQUNUSVZF
LCB0aGUgY2lyY3VpdCBpcyBESVNBQkxFRCAvIGRvZXMgbm90CnJlY2VpdmUgcG93ZXIsIGNsb2Nr
cyBkb24ndCB0aWNrLCBub3RoaW5nIGNoYW5nZXMgc3RhdGUuCgoyYSkgSWYgYSBzaWduYWwgaXMg
QUNUSVZFIEhJR0gsIHRoYXQgbWVhbnMgdGhlIHNpZ25hbCBpcyBBQ1RJVkUgd2hlbiB0aGUgdm9s
dGFnZQpvbiB0aGUgbGluZSBpcyBISUdIIChlLmcuIDMuM1Ygb3IgNVYpCgoyYikgSWYgYSBzaWdu
YWwgaXMgQUNUSVZFIExPVywgdGhhdCBtZWFucyB0aGUgc2lnbmFsIGlzIEFDVElWRSB3aGVuIHRo
ZSB2b2x0YWdlCm9uIHRoZSBsaW5lIGlzIExPVyAoZS5nLiAwViwgY29ubmVjdGVkIHRvIGdyb3Vu
ZCkKCjMpIFVzdWFsbHkoPykgYSByZXNldCBzaWduYWwgaXMgQUNUSVZFIExPVy4gVGhhdCB3YXks
IHdoZW4gdGhlIFNvQyBpcyBjb21pbmcgdXAsCmFuZCBjdXJyZW50IGhhcyBub3QgcHJvcGFnYXRl
ZCBldmVyeXdoZXJlLCBMT1cgdm9sdGFnZSBvbiB0aGUgcmVzZXQgcGluIG1lYW5zCnRoZSBjaXJj
dWl0IGlzICJoZWxkIiBpbiByZXNldCwgdW50aWwgd2UgYXJlIHJlYWR5IHRvIHNldCB2b2x0YWdl
IEhJR0ggb24gdGhlCnJlc2V0IHBpbiB0byBkaXNhYmxlIHRoZSByZXNldCwgYW5kIGVuYWJsZSB0
aGUgY2lyY3VpdC4KCgpTdXBwb3NlIGEgY2lyY3VpdCdzIEhXIGRlc2NyaXB0aW9uIHN0YXRlczoK
ClJFU0VUX046CkV4dGVybmFsIFJlc2V0LgpBY3RpdmUgTE9XIHJlc2V0IHNpZ25hbCB0byB0aGUg
ZGV2aWNlLgpTZWUgRmlndXJlIDQuNiBvbiBwYWdlIDIxIGZvciByZXNldCB0aW1pbmcgcmVxdWly
ZW1lbnRzLgpGaWd1cmUgNC42IHNob3dzIHRoZSBtaW5pbXVtIHRpbWluZyBpbnRlcnZhbCBmb3Ig
UkVTRVRfTi4KUkVTRVRfTiBtdXN0IGJlIGRyaXZlbiBMT1cgZm9yIGF0IGxlYXN0IHRoZSBwZXJp
b2Qgb2YgMjAwIMK1cyBiZWZvcmUgYWNjZXNzaW5nIHJlZ2lzdGVycy4KCgo0KSBUaGUgRFQgbm9k
ZSBmb3IgdGhpcyBkZXZpY2Ugc2hvdWxkIGRlc2NyaWJlIHRoZSByZXNldCBwaW4gYXMgR1BJT19B
Q1RJVkVfTE9XOgoKCXJlc2V0LWdwaW9zID0gPCZ0bG1tIDEyIEdQSU9fQUNUSVZFX0xPVz47CgoK
T0ssIG5vdyB3ZSdyZSBnZXR0aW5nIGludG8gdGhlIHBhcnRzIG9mIHRoZSBHUElPIEFQSSBJIGRv
bid0IHVuZGVyc3RhbmQgd2VsbC4KCklmIEkganVzdCBjYWxsCgoJZGV2bV9ncGlvZF9nZXRfb3B0
aW9uYWwoZGV2LCAicmVzZXQiLCBHUElPRF9PVVRfTE9XKTsKCnRoZW4gSSBhbSBhYmxlIHRvIGlu
dGVyYWN0IHdpdGggdGhlIGRldmljZS4gSG93IGNhbiB0aGF0IGJlPwoKSXMgR1BJT0RfT1VUX0xP
VyBhIC9sb2dpY2FsLyBsb3c/CkluIG90aGVyIHdvcmRzLCBkb2VzIHRoZSBjYWxsIGFib3ZlIHJl
YWxseSBzZXQgdGhlIGxpbmUgSElHSAo9PiBSRVNFVCBJTkFDVElWRSA9PiBDSVJDVUlUIEVOQUJM
RUQgPwoKVGhlIHByb2JsZW0gaXMgdGhhdCBpdCBkb2VzIG5vdCBndWFyYW50ZWUgdGhhdCB0aGUg
bGluZSB3YXMgTE9XIGZvciAyMDAgwrVzCmJlZm9yZSBiZWluZyBzZXQgSElHSCwgcmlnaHQ/CgpJ
dCB3b3VsZCBhcHBlYXIgdGhhdCB0aGUgY29ycmVjdCBzZXF1ZW5jZSBvZiBjYWxscyBmb3IgbXkg
Y2lyY3VpdCBzaG91bGQgYmU6CgphKQlyZXNldCA9IGRldm1fZ3Bpb2RfZ2V0X29wdGlvbmFsKGRl
diwgInJlc2V0IiwgR1BJT0RfT1VUX0hJR0gpOwpiKQl1c2xlZXBfcmFuZ2UoMjAwLCAzMDApOwpj
KQlncGlvZF9zZXRfdmFsdWVfY2Fuc2xlZXAocmVzZXQsIDApOwoKSWYgSSB1bmRlcnN0YW5kIGNv
cnJlY3RseToKYSkgY29uZmlndXJlcyB0aGUgcGluIGFzIGFuIG91dHB1dCwgYW5kIHNldHMgaXQg
dG8gTE9HSUNBTCBISUdILCBpLmUuIFBIWVNJQ0FMIExPVwpiKSBrZWVwcyB0aGUgUkVTRVRfTiBz
aWduYWwgYXQgUEhZU0lDQUwgTE9XIGZvciAyMDAtMzAwIMK1cwpjKSBzZXRzIHRoZSBwaW4gdG8g
TE9HSUNBTCAwL0xPVyA9IFBIWVNJQ0FMIEhJR0gKCgpGb3IgbXkgb3duIHJlZmVyZW5jZSwgSSds
bCBwYXN0ZSB0aGUgbGFzdCBjb252ZXJzYXRpb24gSSBoYWQgb24gSVJDOgoKKDEwOjMzOjI5IEFN
KSBtYXJjfGdvbnphbGV6OiBIZXlhISBsaW51c3c6IGZvciBhbiBvcHRpb25hbCByZXNldCBHUElP
IHBpbiwgSUlSQywganVzdCBkb2luZyBkZXZtX2dwaW9kX2dldF9vcHRpb25hbChjZGV2LCAicmVz
ZXQiLCBHUElPRF9PVVRfTE9XKTsgIHdpbGwgaGF2ZSB0aGUgZ3Bpb2QgZnJhbWV3b3JrICJkbyB0
aGUgcmlnaHQgdGhpbmciIHRvIHR3ZWFrL2Zyb2IvdG9nZ2xlIHRoZSBwaW4gdG8gYnJpbmcgdGhl
IGRldmljZSBvdXQgb2YgcmVzZXQuICBBbSBJIG1pc3JlbWVtYmVyaW5nPwooMTA6MzQ6NTMgQU0p
IG1hcmN8Z29uemFsZXo6IGFuZCBhbHNvLCBwcm9wZXJseSBuYW1pbmcgdGhlIHBpbiBpbiB0aGUg
RFQgOiByZXNldC1ncGlvcyA9IDwmdGxtbSA4NCBHUElPX0FDVElWRV9MT1c+OwooMTA6MzU6MDAg
QU0pIHVrbGVpbmVrOiBtYXJjfGdvbnphbGV6OiBJTUhPIHRoaXMgc2hvdWxkIGJlOiBHUElPRF9P
VVRfSU5BQ1RJVkUgKG5vdCBzdXJlIHRoaXMgZXhpc3RzLCBidXQgdGhlIHB1cnBvc2Ugd291bGQg
YmUgbXVjaCBtb3JlIG9idmlvdXMuKQooMTE6MDI6NDUgQU0pIGxpbnVzdzogbWFyY3xnb256YWxl
ejogaXQgd2lsbCBkbyB0aGUgcmlnaHQgdGhpbmcgcHJvdmlkZWQgeW91IGRvbid0IHdhbnQgZGV2
bV9ncGlvZF9nZXRfb3B0aW9uYWwoKSB0byBhc3NlcnQgcmVzZXQsIHNpbmNlIGl0IGlzIGFjdGl2
ZSBsb3csIHRoaXMgd2lsbCBicmluZyBpdCBpbmFjdGl2ZSAoZGUtYXNzZXJ0ZWQpLgooMTE6MDM6
MzMgQU0pIGxpbnVzdzogbWFyY3xnb256YWxlejogeW91IHdvdWxkIGhhdmUgdG8gcmVxdWVzdCBp
dCBHUElPRF9PVVRfSElHSCBpZiB5b3UgYWxzbyB3YW50IGl0IHRvIGFzc2VydCByZXNldCAodGhl
biBsYXRlciB5b3UgbmVlZCB0byB0b2dnbGUgaXQgdG8gbG93IGV4cGxpY2l0bHkpLgooMTE6MDQ6
MTUgQU0pIGxpbnVzdzogbWFyY3xnb256YWxlejogc29tZXRpbWVzIHlvdSB3YW50IHRvIHJlcXVl
c3QgaXQgR1BJT19BU0lTIGFuZCB0YWtlIGZ1bGwgY29udHJvbCBvZiBhc3NlcnRpbmcvZGVhc3Nl
cnRpbmcgdGhlIHJlc2V0LgoKCkFGQUlVLCBsaW51c3cgaXMgcHJlY2lzZWx5IGRlc2NyaWJpbmcg
dGhlIGEpIGIpIGMpIHNlcXVlbmNlIGFib3ZlLgoKSSdkIGJlIGhhcHB5IHRvIHJlYWQgYW55b25l
J3MgdGhvdWdodHMgb24gdGhlIHRvcGljLgoKUmVnYXJkcy4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
