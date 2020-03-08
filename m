Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ACA917D4D0
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 17:34:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=62PaKUGSMh3v+qujAHaYJbPURTsl/8/Vbu15D2sGHuc=; b=jEgztc8gnIvqcr
	zGGaYHFofvrE0qTvckKF01DlJPU3/guXo/sf4q+gJtgNQek6C2WhXct1uTRa+3tgFQAUHKHQNvtT7
	pDtESskOao3Tz8bPtv8CztkPg+F+Ee7mr1E0SIAuMJCPLx1rtMsyQPinA4Z+EhuZLfywuq1q3emOD
	z9rgJP0i3dnzCKUNGQs3OP6i3n7wCbXMtW2GCvn8XYwrS4Ak/0VGn3t1QmEg17i9U95ViVhZJkOBc
	ng/L4nMmac0uL34jNzUAlXytgrzBUxQwJHGbyaZbIIhTCJBlVGfGvIhs1YeVLVfvtWhVDJTWvEI/G
	jitLQCRpUPD3Yy8ZdVaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAysA-0001EC-S7; Sun, 08 Mar 2020 16:33:50 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAyrF-0000dV-Fj
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 16:32:56 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 61ED5AD77;
 Sun,  8 Mar 2020 16:32:45 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC 00/11] ARM: Initial Sunplus Plus1 SP7021 and BPI-F2S support
Date: Sun,  8 Mar 2020 17:32:18 +0100
Message-Id: <20200308163230.4002-1-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_093253_816635_06434600 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 =?UTF-8?q?Wells=20Lu=20=E5=91=82=E8=8A=B3=E9=A8=B0?=
 <wells.lu@sunplus.com>, Dvorkin Dmitry <dvorkin@tibbo.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-serial@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Jason Cooper <jason@lakedaemon.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpUaGlzIHBhdGNoIHNlcmllcyBhZGRzIGluaXRpYWwgZHJpdmVycyBhbmQgRGV2aWNl
IFRyZWVzIGZvciBTdW5wbHVzIFBsdXMxCnNlcmllcyAoY29kZW5hbWUgUGVudGFncmFtKSBTUDcw
MjEgU29DIGFuZCBCYW5hbmEgUGkgQlBJLUYyUyBTQkMuCgpGaXJzdCwgbWluaW1hbCBLY29uZmln
LCBEVCBhbmQgZWFybHljb24gZHJpdmVyIGFyZSBwcmVwYXJlZCB0byBnZXQgc2VyaWFsCm91dHB1
dCBhdCBhbGwuIE5leHQsIGludGVycnVwdCBjb250cm9sbGVyIGFuZCBmdWxsIHNlcmlhbCBkcml2
ZXIgYXJlIGFkZGVkCnRoYXQgYWxsb3cgdG8gYm9vdCBpbnRvIGFuIGluaXRyZCB3aXRoIGludGVy
YWN0aXZlIHNlcmlhbCBjb25zb2xlLgoKRGV2aWNlIFRyZWUgZmlsZXMgYWRkZWQgYXJlIGZvciB0
aGUgQ1BVLUNoaXAgKGFrYSBBLUNoaXApIHdpdGggcXVhZCBDb3J0ZXgtQTcsCmJ1dCB0aGUgZmls
ZSBzcGxpdCBwcmVwYXJlcyBmb3IgYWxzbyBhZGRpbmcgdGhlIFBlcmlwaGVyYWwtQ2hpcCAoQi1D
aGlwKSB3aXRoCkFSTTkgbGF0ZXIuIEhvd2V2ZXIsIGZvciBub3cgdGhpcyBpcyBub3QgcmVmbGVj
dGVkIGluIHRoZSAuZHRzIGZpbGVuYW1lOyB0aGlzCmNvcnJlc3BvbmRzIHRvIHRoZSB2ZjYxMC0g
dnMuIHZmNjEwbTQtIG5hbWluZyBzY2hlbWUsIHdoZXJlYXMgYW4gYWx0ZXJuYXRpdmUKd291bGQg
YmUgdG8gdXNlIHNwNzAyMS1jY2hpcC0gdnMuIC1wY2hpcC0gcHJlZml4IChhcyBzcDcwMjEtY3B1
LSBsb29rcyB3ZWlyZCkuCkl0IGlzIGFzc3VtZWQgd2UgY2FuIHJldXNlIHRoZSBzYW1lIFNvQyBh
bmQgYm9hcmQgYmluZGluZ3MgZm9yIENBNyBhbmQgQVJNOQphbmQgb25seSBkaWZmZXIgZm9yIElQ
IGJsb2NrcyB3aGVyZSBuZWVkZWQuCgpNeSBpbnF1aXJ5IHRvIFN1bnBsdXMgYWJvdXQgdGhlaXIg
R0lDIChhbnRpY2lwYXRpbmcgY29tcGxhaW50cyBmcm9tIE1hcmMpCnJlbWFpbmVkIHVuYW5zd2Vy
ZWQsIHNvIEkndmUgYWRkZWQgdGhlIHR3byBleHRyYSByZWdpb25zIGFuZCBpcnEgbXlzZWxmLAp3
aXRob3V0IGJlaW5nIGFibGUgdG8gdGVzdCBLVk0gZHVlIHRvIEJTUCBVLUJvb3Qgbm90IGJvb3Rp
bmcgaW4gSFlQIG1vZGUuCkFjY29yZGluZyB0byBTdW5wbHVzIHRoZSBtb2RlIGNhbiBiZSBjaGFu
Z2VkIGluIFUtQm9vdCAoYnV0IHdoZXJlL2hvdz8pLgoKU2ltaWxhcmx5LCB0aGUgYXJjaGl0ZWN0
dXJhbCB0aW1lciBpcyBub3QgcHJvcGVybHkgaW5pdGlhbGl6ZWQgaW4gQlNQIFUtQm9vdCwKc28g
dGhhdCBJIGN1cnJlbnRseSBoYXZlIGEgbWFjaC0gaGFjayBpbiBteSB0cmVlIGJlbG93LiBVbmxp
a2UgUlREMTE5NSwKd2UgZG8gaGF2ZSBVLUJvb3Qgc291cmNlcyAodjIwMTkuMDQgYmFzZWQpLCBz
byBzaG91bGQgYmUgYWJsZSB0byBmaXggdGhpcwppbiB0aGUgYm9vdGxvYWRlciByYXRoZXIgdGhh
biBpbiB0aGUga2VybmVsLCB0aHVzIG5vdCBpbmNsdWRlZCBhcyBwYXRjaCBoZXJlLgoKQmFzZWQg
b24gU29DIG9ubGluZSBtYW51YWwgWzFdIGFuZCBkb3duc3RyZWFtIEJQSS1GMlMgQlNQIHRyZWUg
WzJdIGFzIHdlbGwgYXMKbXkgcHJldmlvdXMgQWN0aW9ucyBzZXJpYWwgYW5kIFJlYWx0ZWsgaXJx
Y2hpcCBkcml2ZXJzIGFuZCBEVHMuCgpNb3JlIGRldGFpbHMgYXQ6Cmh0dHBzOi8vZW4ub3BlbnN1
c2Uub3JnL0hDTDpCYW5hbmFQaV9GMlMKCkxhdGVzdCBleHBlcmltZW50YWwgcGF0Y2hlcyBhdDoK
aHR0cHM6Ly9naXRodWIuY29tL2FmYWVyYmVyL2xpbnV4L2NvbW1pdHMvZjJzLW5leHQKCkhhdmUg
YSBsb3Qgb2YgZnVuIQoKQ2hlZXJzLApBbmRyZWFzCgpbMV0gaHR0cHM6Ly9zdW5wbHVzLXRpYmJv
LmF0bGFzc2lhbi5uZXQvd2lraS9zcGFjZXMvZG9jL3BhZ2VzLzQ3MDQ1MDI1Mi9TUDcwMjErVGVj
aG5pY2FsK01hbnVhbApbMl0gaHR0cHM6Ly9naXRodWIuY29tL0JQSS1TSU5PVk9JUC9CUEktRjJT
LWJzcAoKQ2M6IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnCkNjOiBSb2IgSGVycmluZyA8cm9i
aCtkdEBrZXJuZWwub3JnPgpDYzogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3Vu
ZGF0aW9uLm9yZz4KQ2M6IGxpbnV4LXNlcmlhbEB2Z2VyLmtlcm5lbC5vcmcKQ2M6IFRob21hcyBH
bGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPgpDYzogSmFzb24gQ29vcGVyIDxqYXNvbkBsYWtl
ZGFlbW9uLm5ldD4KQ2M6IE1hcmMgWnluZ2llciA8bWF6QGtlcm5lbC5vcmc+CkNjOiBXZWxscyBM
dSDlkYLoirPpqLAgPHdlbGxzLmx1QHN1bnBsdXMuY29tPgpDYzogRHZvcmtpbiBEbWl0cnkgPGR2
b3JraW5AdGliYm8uY29tPgoKQW5kcmVhcyBGw6RyYmVyICgxMSk6CiAgZHQtYmluZGluZ3M6IHZl
bmRvci1wcmVmaXhlczogQWRkIFN1bnBsdXMKICBkdC1iaW5kaW5nczogYXJtOiBBZGQgU3VucGx1
cyBTUDcwMjEgYW5kIEJhbmFuYSBQaSBCUEktRjJTCiAgQVJNOiBQcmVwYXJlIFN1bnBsdXMgUGx1
czEgU29DIGZhbWlseQogIGR0LWJpbmRpbmdzOiBpbnRlcnJ1cHQtY29udHJvbGxlcjogQWRkIFN1
bnBsdXMgU1A3MDIxIG11eAogIGR0LWJpbmRpbmdzOiBzZXJpYWw6IEFkZCBTdW5wbHVzIFNQNzAy
MSBVQVJUCiAgdHR5OiBzZXJpYWw6IEFkZCBTdW5wbHVzIFBsdXMxIFVBUlQgZWFybHljb24KICBB
Uk06IGR0czogQWRkIFN1bnBsdXMgUGx1czEgU1A3MDIxIGFuZCBCYW5hbmEgUGkgRjJTCiAgdHR5
OiBzZXJpYWw6IHN1bnBsdXM6IEltcGxlbWVudCBmdWxsIFVBUlQgZHJpdmVyCiAgaXJxY2hpcDog
QWRkIFN1bnBsdXMgU1A3MDIxIGludGVycnVwdCAobXV4KSBjb250cm9sbGVyCiAgQVJNOiBkdHM6
IHNwNzAyMS1jcHU6IEFkZCBpbnRlcnJ1cHQgY29udHJvbGxlciBub2RlCiAgQVJNOiBkdHM6IHNw
NzAyMS1jcHU6IEFkZCBkdW1teSBVQVJUMCBjbG9jayBhbmQgaW50ZXJydXB0CgogRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9zdW5wbHVzLnlhbWwgfCAgMjIgKwogLi4uL3N1
bnBsdXMscGVudGFncmFtLWludGMueWFtbCAgICAgICAgICAgICAgICAgICAgfCAgNTAgKysKIC4u
Li9iaW5kaW5ncy9zZXJpYWwvc3VucGx1cyxwZW50YWdyYW0tdWFydC55YW1sICAgIHwgIDI0ICsK
IC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3ZlbmRvci1wcmVmaXhlcy55YW1sICAgICAgIHwgICAy
ICsKIGFyY2gvYXJtL0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwg
ICAyICsKIGFyY2gvYXJtL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwgICAxICsKIGFyY2gvYXJtL2Jvb3QvZHRzL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAg
ICAgIHwgICAyICsKIGFyY2gvYXJtL2Jvb3QvZHRzL3BlbnRhZ3JhbS1zcDcwMjEtYnBpLWYycy5k
dHMgICAgIHwgIDI5ICsKIGFyY2gvYXJtL2Jvb3QvZHRzL3BlbnRhZ3JhbS1zcDcwMjEtY3B1LmR0
c2kgICAgICAgIHwgIDkzICsrKwogYXJjaC9hcm0vYm9vdC9kdHMvcGVudGFncmFtLXNwNzAyMS5k
dHNpICAgICAgICAgICAgfCAgNjEgKysKIGFyY2gvYXJtL21hY2gtc3VucGx1cy9LY29uZmlnICAg
ICAgICAgICAgICAgICAgICAgIHwgIDEwICsKIGRyaXZlcnMvaXJxY2hpcC9NYWtlZmlsZSAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvaXJxY2hpcC9pcnEtc3A3MDIx
LmMgICAgICAgICAgICAgICAgICAgICAgIHwgMjg1ICsrKysrKysrCiBkcml2ZXJzL3R0eS9zZXJp
YWwvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgICB8ICAxOSArCiBkcml2ZXJzL3R0eS9z
ZXJpYWwvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMSArCiBkcml2ZXJzL3R0
eS9zZXJpYWwvc3VucGx1cy11YXJ0LmMgICAgICAgICAgICAgICAgICB8IDc3MCArKysrKysrKysr
KysrKysrKysrKysKIGluY2x1ZGUvdWFwaS9saW51eC9zZXJpYWxfY29yZS5oICAgICAgICAgICAg
ICAgICAgIHwgICAzICsKIDE3IGZpbGVzIGNoYW5nZWQsIDEzNzUgaW5zZXJ0aW9ucygrKQogY3Jl
YXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vc3Vu
cGx1cy55YW1sCiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL3N1bnBsdXMscGVudGFncmFtLWludGMueWFtbAog
Y3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zZXJp
YWwvc3VucGx1cyxwZW50YWdyYW0tdWFydC55YW1sCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9h
cm0vYm9vdC9kdHMvcGVudGFncmFtLXNwNzAyMS1icGktZjJzLmR0cwogY3JlYXRlIG1vZGUgMTAw
NjQ0IGFyY2gvYXJtL2Jvb3QvZHRzL3BlbnRhZ3JhbS1zcDcwMjEtY3B1LmR0c2kKIGNyZWF0ZSBt
b2RlIDEwMDY0NCBhcmNoL2FybS9ib290L2R0cy9wZW50YWdyYW0tc3A3MDIxLmR0c2kKIGNyZWF0
ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9tYWNoLXN1bnBsdXMvS2NvbmZpZwogY3JlYXRlIG1vZGUg
MTAwNjQ0IGRyaXZlcnMvaXJxY2hpcC9pcnEtc3A3MDIxLmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL3R0eS9zZXJpYWwvc3VucGx1cy11YXJ0LmMKCi0tIAoyLjE2LjQKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
