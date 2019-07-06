Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CF761098
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jul 2019 13:47:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xFyipWcyhQpHdpWC8jMLJ2Ije0STcJLLJjM5ge+PShc=; b=J0ocHfB8tvB1FH
	Yc4ycoJ9v8ET0yNxWpS/IqKMN3JIf1YZMd40CfT5CLVOk8PClRoaTAUSfJbt2KKAJ4TrHSrj0jhUP
	TQMtkGM3iWxPvw+5M8tKcVplEGCkLavDGdQRFNvqzuJCVy0/lji/oOtNvLaDuqq8DA4mTIJKVRZ11
	EtyrU3CxCCX7WTiU4ZZiY99VeInJtcZH/bLIFmvng7DWqOVIbpEvpwboKgIuBv6G5GV5S312BP/bR
	8WxBpMH3mUv+NR8qOqzhoaLmBAlz8zJZKMK1fgBfulmhkWJyQODDPhp/VPLJ5PQpapttopgzowhcR
	PJbef/sbaagEeDefN32w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjj9w-0002Qe-QQ; Sat, 06 Jul 2019 11:47:17 +0000
Received: from 177.205.70.5.dynamic.adsl.gvt.net.br ([177.205.70.5]
 helo=coco.lan)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hjj9S-0002M7-Qh; Sat, 06 Jul 2019 11:46:47 +0000
Date: Sat, 6 Jul 2019 08:46:38 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Dave Young <dyoung@redhat.com>
Subject: Re: [PATCH 18/39] docs: admin-guide: add kdump documentation into it
Message-ID: <20190706084638.7dc875f2@coco.lan>
In-Reply-To: <20190705055904.GB2790@localhost.localdomain>
References: <cover.1561724493.git.mchehab+samsung@kernel.org>
 <654e7591c044632c06257e0f069a52c0bb993554.1561724493.git.mchehab+samsung@kernel.org>
 <6911b74c-848f-0060-3db5-b5d7e8061cb5@linux.alibaba.com>
 <20190705055904.GB2790@localhost.localdomain>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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
Cc: Rich Felker <dalias@libc.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Jerry Hoemann <jerry.hoemann@hpe.com>, Harry Wei <harryxiyou@gmail.com>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Alex Shi <alex.shi@linux.alibaba.com>, Will Deacon <will@kernel.org>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Jonathan Corbet <corbet@lwn.net>,
 linux-sh@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Guenter Roeck <linux@roeck-us.net>, linux-watchdog@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@infradead.org>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, Baoquan He <bhe@redhat.com>,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Vivek Goyal <vgoyal@redhat.com>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RW0gRnJpLCA1IEp1bCAyMDE5IDEzOjU5OjA0ICswODAwCkRhdmUgWW91bmcgPGR5b3VuZ0ByZWRo
YXQuY29tPiBlc2NyZXZldToKCj4gT24gMDcvMDUvMTkgYXQgMTE6NDNhbSwgQWxleCBTaGkgd3Jv
dGU6Cj4gPiAKPiA+IAo+ID4g5ZyoIDIwMTkvNi8yOCDkuIvljYg4OjMwLCBNYXVybyBDYXJ2YWxo
byBDaGVoYWIg5YaZ6YGTOiAgCj4gPiA+IFRoZSBLZHVtcCBkb2N1bWVudGF0aW9uIGRlc2NyaWJl
cyBwcm9jZWR1cmVzIHdpdGggYWRtaW5zIHVzZQo+ID4gPiBpbiBvcmRlciB0byBzb2x2ZSBpc3N1
ZXMgb24gdGhlaXIgc3lzdGVtcy4KPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IE1hdXJvIENh
cnZhbGhvIENoZWhhYiA8bWNoZWhhYitzYW1zdW5nQGtlcm5lbC5vcmc+Cj4gPiA+IC0tLQo+ID4g
PiAgRG9jdW1lbnRhdGlvbi9hZG1pbi1ndWlkZS9idWctaHVudGluZy5yc3QgICAgICAgICAgICB8
IDQgKystLQo+ID4gPiAgRG9jdW1lbnRhdGlvbi9hZG1pbi1ndWlkZS9pbmRleC5yc3QgICAgICAg
ICAgICAgICAgICB8IDEgKwo+ID4gPiAgRG9jdW1lbnRhdGlvbi97ID0+IGFkbWluLWd1aWRlfS9r
ZHVtcC9nZGJtYWNyb3MudHh0ICB8IDAKPiA+ID4gIERvY3VtZW50YXRpb24veyA9PiBhZG1pbi1n
dWlkZX0va2R1bXAvaW5kZXgucnN0ICAgICAgfCAxIC0KPiA+ID4gIERvY3VtZW50YXRpb24veyA9
PiBhZG1pbi1ndWlkZX0va2R1bXAva2R1bXAucnN0ICAgICAgfCAwCj4gPiA+ICBEb2N1bWVudGF0
aW9uL3sgPT4gYWRtaW4tZ3VpZGV9L2tkdW1wL3ZtY29yZWluZm8ucnN0IHwgMCAgCj4gPiAKPiA+
IEkgYW0gbm90IHN1cmUgaWYgaXQncyBjb252ZW5pZW5jZSBmb3IgcGVvcGxlIHRvIGhhdmUgbW9y
ZSBsZXZlbHMgaW4gZG9jcy4KPiA+IAo+ID4gQnV0IEkgZ3Vlc3MsIG1vdmUgYXJjaHMgaW50byBh
IERvY3VtZW50YXRpb24vYXJjaC8gZGlyIHNob3VsZCBiZSBmaW5lLiBsaWtlIERvY3VtZW50YXRp
b24vYXJjaC97eDg2LGFybSxhcm02NCxpYTY0LG02OGssczM5MCxwb3dlcnBjLC4uLn0gIAo+IAo+
IEFsZXgsIG1vdmluZyBrZHVtcCB0byBhZG1pbi1ndWlkZSBzb3VuZHMgcmVhc29uYWJsZSB0byBt
ZS4gIEkgYWxzbyBhZ3JlZQo+IHdpdGggeW91IGZvciB0aG9zZSBhcmNoIGRlcGVuZGVudCBmaWxl
cyBjYW4gYmUgbW92ZWQgdG8KPiBEb2N1bWVudGF0aW9uL2FyY2gvLCBtYXliZSB5b3UgYXJlIHRh
bGtpbmcgYWJvdXQgc29tZSBvdGhlciBwYXRjaGVzIGluCj4gdGhlIHNlcmllcyBmb3IgdGhlIGFy
Y2gvPyAKCkFsZXgsCgpJdCBtYWtlcyBzZW5zZSBmb3IgbWUgdG8gaGF2ZSBhIERvY3VtZW50YXRp
b24vYXJjaCBkaXJlY3RvcnksIGFuZCBwbGFjZQp0aGUgYXJjaC1zcGVjaWZpYyBkb2NzIG92ZXIg
dGhlcmUuCgpUaGVyZSdzIGFjdHVhbGx5IGEgdGVjaG5pY2FsIGFkdmFudGFnZSBvbiBkb2luZyB0
aGF0OiBTcGhpbnggaXMgZHVtYgp3aXRoIHJlZ2FyZHMgdG8gUERGL0xhVGVYIG91dHB1dDogaXQg
cmVxdWlyZXMgYWxsIHRvcCBkb2N1bWVudHMgdG8gYmUKbGlzdGVkIGF0IERvY3VtZW50YXRpb24v
Y29uZi5weSwgdW5kZXIgdGhpcyB2YXI6CgoJbGF0ZXhfZG9jdW1lbnRzID0gWwoJCS4uLgoJXQoK
QXMgaXQgY3JlYXRlcyBvbmUgcnVudGltZSBNYWtlZmlsZSBhdCBEb2N1bWVudGF0aW9uL291dHB1
dCBwZXIgbGlzdGVkCmRvY3VtZW50IHRoZXJlLiBTbywgdGhlIG1vcmUgd2UgZ3JvdXAgc3VjaCBk
b2N1bWVudHMsIHRoZSBsZXNzIG1lcmdlCmNvbmZsaWN0cyB3ZSdsbCBoYXZlIGF0IERvY3VtZW50
YXRpb24vY29uZi5weS4KCkJ0dywgdGhlcmUncyBhIFtURUNIIFRPUElDXSBwcm9wb3NhbCBmb3Ig
S1MvMjAxOSBtZWFudCB0byBkaXNjdXNzIApEb2N1bWVudGF0aW9uLgoKSSBzdXNwZWN0IHdlIGNv
dWxkIGRpc2N1c3MgdGhlIHByb3MvY29ucyBvZiBkb2luZyBzdWNoIGNoYW5nZSB0aGVyZS4KCk15
IHBlcnNvbmFsIHZpZXcgaXMgdGhhdCB3ZSBzaG91bGQga2VlcCB0aGUgRG9jdW1lbnRhdGlvbi8g
cm9vdCBkaXIgYXMKY2xlYW4gYXMgcG9zc2libGUgYXMgYSBsb25nIHRlcm0gZ29hbC4KCk9uIHRo
ZSBvdGhlciBoYW5kLCBpdCBtYWtlcyB0aGUgcGF0aCBiaWdnZXIgYW5kIGhhcmRlciB0byByZW5h
bWUuCgpPbiBhIHNpZGUgbm90ZSwgbGFzdCB0aW1lIHdlIGRpc2N1c3NlZCBkb2N1bWVudGF0aW9u
IGF0IEtTIEkgcmVtZW1iZXIKSSBwcm9wb3NlZCB0byBzaG9ydGN1dCAiRG9jdW1lbnRhdGlvbi8i
IHRvIGp1c3QgImRvY3MvIi4gVGhlIGNvbnNlbnN1cwpvbiB0aGF0IHRpbWUgd2VyZSB0byBrZWVw
IHRoZSBiaWcgbmFtZS4gSSBzdGlsbCB0aGluayB0aGF0IGEgc2hvcnRlcgpvbmUgY291bGQgaGVs
cCBwZW9wbGUgdG8gcmVtaW5kIHdoZXJlIGRvY3VtZW50YXRpb24gd2lsbCBiZSBsb2NhdGVkLgoK
VGhhbmtzLApNYXVybwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
