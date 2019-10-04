Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D67CBF46
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 17:35:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Op6t0nanKczyXdp4JC6RmJgeVjhN8lB4g/TRlZup450=; b=X5jLcj9lywcVwEK/WnA3VqzJ9
	69cQOYKkfFytdyh81tr2RxVx4djgYqBS3C3+rSittJ57s2I0bqV901hy9w5jasPgu39GN5E34q1+O
	10A9U4Abj4FmIKHqTLtBli9ovDWUdKxQZuDa/NoOJMKLEAaqyRCMeabvK74vUGV7ds2ctFXcpkAAJ
	oJWYwgyu7H+cwfHtgI7h2WvUakezfnSa/f6oKLrTiwgqZon7Z8CeT1T8Oc/l/ccd3aO9fo8lIyrqD
	MDdpPhwTM+KEj124R6D+QGLh+8Xgnfq5vKhLJMdR1G551JjEWXjFVeYuM+DPQguZvoZ8UHVl5iYVz
	bkr6N2h0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGPc7-0000kD-De; Fri, 04 Oct 2019 15:35:27 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGPbx-0000ji-Uv; Fri, 04 Oct 2019 15:35:22 +0000
Received: from localhost (unknown [192.168.167.159])
 by lucky1.263xmail.com (Postfix) with ESMTP id 789145D238;
 Fri,  4 Oct 2019 23:35:07 +0800 (CST)
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.1.105] (unknown [220.200.58.210])
 by smtp.263.net (postfix) whith ESMTP id
 P1804T140286170752768S1570203303468576_; 
 Fri, 04 Oct 2019 23:35:04 +0800 (CST)
X-UNIQUE-TAG: <6cb28cb4058574c829144504cfbbc6dd>
X-RL-SENDER: shawn.lin@rock-chips.com
X-SENDER: lintao@rock-chips.com
X-LOGIN-NAME: shawn.lin@rock-chips.com
X-FST-TO: linux-arm-kernel@lists.infradead.org
X-SENDER-IP: 220.200.58.210
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_3/3=5d_arm64=3a_dts=3a_rockchip=3a_fix_Roc?=
 =?UTF-8?B?a1BybzY0IHNkbW1jIHNldHRpbmdz44CQ6K+35rOo5oSP77yM6YKu5Lu255SxbGlu?=
 =?UTF-8?Q?ux-rockchip-bounces+shawn=2elin=3drock-chips=2ecom=40lists=2einfr?=
 =?UTF-8?B?YWRlYWQub3Jn5Luj5Y+R44CR?=
To: Robin Murphy <robin.murphy@arm.com>, Soeren Moch <smoch@web.de>,
 Heiko Stuebner <heiko@sntech.de>
References: <20191003215036.15023-1-smoch@web.de>
 <20191003215036.15023-3-smoch@web.de>
 <31181f3c-20ec-e717-1f7e-8b35cd54d96d@arm.com>
 <a8b20c45-0426-ee42-4efc-52e56ea6bb20@web.de>
 <120e2dbc-55eb-2205-b00f-7e50928ec706@rock-chips.com>
 <1c452b8b-853f-8f58-5f3a-0bbecbe20557@web.de>
 <fc7dce53-ad39-26e3-7c19-ab60ff4cc332@arm.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <0c6fdb65-be2a-68e3-a686-14ce9b0a00a4@rock-chips.com>
Date: Fri, 4 Oct 2019 23:33:20 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <fc7dce53-ad39-26e3-7c19-ab60ff4cc332@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_083520_574759_5875D0E4 
X-CRM114-Status: GOOD (  22.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.132 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.132 listed in wl.mailspike.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: linux-rockchip@lists.infradead.org, shawn.lin@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS8xMC80IDIyOjIwLCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4gT24gMDQvMTAvMjAxOSAw
NDozOSwgU29lcmVuIE1vY2ggd3JvdGU6Cj4+Cj4+Cj4+IE9uIDA0LjEwLjE5IDA0OjEzLCBTaGF3
biBMaW4gd3JvdGU6Cj4+PiBPbiAyMDE5LzEwLzQgODo1MywgU29lcmVuIE1vY2ggd3JvdGU6Cj4+
Pj4KPj4+Pgo+Pj4+IE9uIDA0LjEwLjE5IDAyOjAxLCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4+Pj4+
IE9uIDIwMTktMTAtMDMgMTA6NTAgcG0sIFNvZXJlbiBNb2NoIHdyb3RlOgo+Pj4+Pj4gQWNjb3Jk
aW5nIHRvIHRoZSBSb2NrUHJvNjQgc2NoZW1hdGljIFsxXSB0aGUgcmszMzk5IHNkbW1jCj4+Pj4+
PiBjb250cm9sbGVyIGlzCj4+Pj4+PiBjb25uZWN0ZWQgdG8gYSBtaWNyb1NEIChURiBjYXJkKSBz
bG90LCB3aGljaCBjYW5ub3QgYmUgc3dpdGNoZWQgdG8KPj4+Pj4+IDEuOFYuCj4+Pj4+Cj4+Pj4+
IFJlYWxseT8gQUZBSUNTIHRoZSBTRE1NQzAgd2lyaW5nIGxvb2tzIHByZXR0eSBtdWNoIGlkZW50
aWNhbCB0byB0aGUKPj4+Pj4gTmFub1BDLVQ0IHNjaGVtYXRpYyAoaXQncyB0aGUgc2FtZSByZWZl
cmVuY2UgZGVzaWduLCBhZnRlciBhbGwpLCBhbmQgSQo+Pj4+PiBrbm93IHRoYXQgYm9hcmQgY2Fu
IGhhcHBpbHkgZHJpdmUgYSBVSFMtSSBtaWNyb1NEIGNhcmQgd2l0aCAxLjh2IEkvT3MsCj4+Pj4+
IGJlY2F1c2UgbWluZSdzIGRvaW5nIHNvIHJpZ2h0IG5vdy4KPj4+Pj4KPj4+Pj4gUm9iaW4uCj4+
Pj4gT0ssIHRoZSBSb2NrUHJvNjQgZG9lcyBub3QgYWxsb3cgYSBjYXJkIHJlc2V0IChwb3dlciBj
eWNsZSkgc2luY2UKPj4+PiBWQ0MzVjBfU0QgaXMgZGlyZWN0bHkgY29ubmVjdGVkIHRvIFZDQzNW
M19TWVMgKHZpYSBSODk1NTUpLCB0aGUKPj4+PiBTRE1NQzBfUFdIX0ggc2lnbmFsIGlzIG5vdCBj
b25uZWN0ZWQuIFNvIHRoZSBjYXJkIGZhaWxzIHRvIGlkZW50aWZ5Cj4+Pj4gaXRzZWxmIGFmdGVy
IHN1c3BlbmQgb3IgcmVib290IHdoZW4gc3dpdGNoZWQgdG8gMS44ViBvcGVyYXRpb24uCj4gCj4g
QWgsIHRoYW5rcyBmb3IgY2xhcmlmeWluZyAtIEkgZGlkIG92ZXJsb29rIHRoZSBzdWJ0bGV0eSB0
aGF0IFUxMiBhbmQgCj4gZnJpZW5kcyBoYXZlICJOQyIgYXMgYWx0ZXJuYXRpdmUgcGFydCBudW1i
ZXJzLCBldmVuIHRob3VnaCB0aGV5IGFyZW4ndCAKPiBhY3R1YWxseSBtYXJrZWQgYXMgRE5QLiBT
byBpdCdzIHN0aWxsIG5vdCBzbyBtdWNoICJjYW5ub3QgYmUgc3dpdGNoZWQiIAo+IGFzICJzd2l0
Y2hpbmcgY2FuIGxlYWQgdG8gb3RoZXIgcHJvYmxlbXMiLgo+IAo+Pj4KPj4+IEkgYmVsaWV2ZSB3
ZSBhZGRyZXNzZWQgdGhpcyBpc3N1ZSBsb25nIHRpbWUgYWdvLCBwbGVhc2UgY2hlY2s6Cj4+Pgo+
Pj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFs
ZHMvbGludXguZ2l0L2NvbW1pdC8/aWQ9NmExMWZjNDdmMTc1YzhkODcwMThlODljYjU4ZTJkMzZj
NjY1MzRjYiAKPj4+Cj4+Pgo+PiBUaGFua3MgZm9yIHRoZSBwb2ludGVyLgo+PiBJbiB0aGlzIGNh
c2UgSSBndWVzcyBJIHNob3VsZCB1c2UgZm9sbG93aW5nIHBhdGNoIGluc3RlYWQ6Cj4+Cj4+IC0t
LSByazMzOTktcm9ja3BybzY0LmR0cy5iYWsgwqDCoCAyMDE5LTEwLTAzIDIyOjE0OjAwLjA2Nzc0
NTc5OSArMDIwMAo+PiArKysgcmszMzk5LXJvY2twcm82NC5kdHPCoMKgwqAgMjAxOS0xMC0wNCAw
MDowMjo1MC4wNDc4OTIzNjYgKzAyMDAKPj4gQEAgLTYxOSw2ICs2MTksOCBAQAo+PiDCoMKgwqDC
oMKgIG1heC1mcmVxdWVuY3kgPSA8MTUwMDAwMDAwPjsKPj4gwqDCoMKgwqDCoCBwaW5jdHJsLW5h
bWVzID0gImRlZmF1bHQiOwo+PiDCoMKgwqDCoMKgIHBpbmN0cmwtMCA9IDwmc2RtbWNfY2xrICZz
ZG1tY19jbWQgJnNkbW1jX2J1czQ+Owo+PiArwqDCoMKgIHNkLXVocy1zZHIxMDQ7Cj4+ICvCoMKg
wqAgdnFtbWMtc3VwcGx5ID0gPCZ2Y2Nfc2Rpbz47Cj4+IMKgwqDCoMKgwqAgc3RhdHVzID0gIm9r
YXkiOwo+PiDCoMKgfTsKPj4gV2hlbiBJIGRvIHNvLCB0aGUgc2QgY2FyZCBpcyBkZXRlY3RlZCBh
cyBTRFIxMDQsIGJ1dCBhIHJlYm9vdCBoYW5nczoKPj4KPj4gQm9vdDE6IDIwMTgtMDYtMjYsIHZl
cnNpb246IDEuMTQKPj4gQ1BVSWQgPSAweDAKPj4gQ2hpcFR5cGUgPSAweDEwLCAyODYKPj4gU3Bp
X0NoaXBJZCA9IGM4NDAxOAo+PiBubyBmaW5kIHJrcGFydGl0aW9uCj4+IFNwaUJvb3RJbml0OmZm
ZmZmZmZmCj4+IG1tYzogRVJST1I6IFNESENJIEVSUjpjbWQ6MHgxMDIsc3RhdDoweDE4MDAwCj4+
IG1tYzogRVJST1I6IENhcmQgZGlkIG5vdCByZXNwb25kIHRvIHZvbHRhZ2Ugc2VsZWN0IQo+PiBl
bW1jIHJlaW5pdAo+PiBtbWM6IEVSUk9SOiBTREhDSSBFUlI6Y21kOjB4MTAyLHN0YXQ6MHgxODAw
MAo+PiBtbWM6IEVSUk9SOiBDYXJkIGRpZCBub3QgcmVzcG9uZCB0byB2b2x0YWdlIHNlbGVjdCEK
Pj4gZW1tYyByZWluaXQKPj4gbW1jOiBFUlJPUjogU0RIQ0kgRVJSOmNtZDoweDEwMixzdGF0OjB4
MTgwMDAKPj4gbW1jOiBFUlJPUjogQ2FyZCBkaWQgbm90IHJlc3BvbmQgdG8gdm9sdGFnZSBzZWxl
Y3QhCj4+IFNkbW1jSW5pdD0yIDEKPj4gbW1jMDpjbWQ1LDMyCj4+IG1tYzA6Y21kNywzMgo+PiBt
bWMwOmNtZDUsMzIKPj4gbW1jMDpjbWQ3LDMyCj4+IG1tYzA6Y21kNSwzMgo+PiBtbWMwOmNtZDcs
MzIKPj4gU2RtbWNJbml0PTAgMQo+Pgo+PiBTbyBJIGd1ZXNzIEkgc2hvdWxkIHVzZSBhIGRpZmZl
cmVudCBtaW5pbG9hZGVyIGZvciB0aGlzIHJlYm9vdCB0byB3b3JrIT8KPj4gT3Igd2hhdCBlbHNl
IGNvdWxkIGJlIHdyb25nIGhlcmU/Cj4gCj4gSG1tLCBJIGd1ZXNzIHRoaXMgaXMgInRoZSBUaW5r
ZXJib2FyZCBwcm9ibGVtIiBhZ2FpbiAtIHRoZSBwYXRjaCBhYm92ZSAKPiB3b3VsZCBiZSBPSyBp
ZiB3ZSBjb3VsZCBnZXQgYXMgZmFyIGFzIHRoZSBrZXJuZWwsIGJ1dCBjYW4ndCBoZWxwIGlmIHRo
ZSAKCkkgZGlkbid0IHJlYWxpemUgdGhhdCBTRCB3YXMgdXNlZCBhcyBib290IG1lZGl1bSBmb3Ig
Um9ja1BybzY0LCBidXQgSQpkaWQgcGF0Y2ggdGhlIHZlbmRvciB0cmVlIHRvIHNvbHZlIHRoZSBp
c3N1ZSBmb3IgVGlua2VyYm9hcmQsIHNlZQpodHRwczovL2dpdGh1Yi5jb20vcm9ja2NoaXAtbGlu
dXgva2VybmVsL2NvbW1pdC9hNGNjZGUyMWY1YTlmMDRmOTk2ZmIwMjQ3OWNiOWYxNmQzZGM4ZGMw
CgpNeSBpbml0aWFsIHBsYW4gd2FzIHRvIHBhdGNoaW5nIHVwc3RyZWFtIGtlcm5lbCBieSBhZGRp
bmcgLT5zaHV0ZG93bixidXQKbmV2ZXIgZmluaXNoIGl0LgoKPiBvZmZlbmRpbmcgY2FyZCBpcyBp
dHNlbGYgdGhlIGJvb3QgbWVkaXVtLiBUaGVyZSB3YXMgYSBwcm9wb3NhbCBoZXJlOgo+IAo+IGh0
dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTA4MTcyMTcvCgpUaGlzIFJGQyBhbHNv
IGxvb2tzIGdvb2QgdG8gbWUsIGJ1dCBzZWVtcyBpdCBuZWVkcyB2b2x1bnRlZXJzCnRvIHB1c2gg
aXQgYWdhaW4uCgo+IAo+IGFsdGhvdWdoIEknbSBub3Qgc3VyZSB3aGF0IGlmIGFueSBwcm9ncmVz
cyBoYXMgYmVlbiBtYWRlIHNpbmNlIHRoZW4uCj4gCj4gUm9iaW4uCj4gCj4gCj4gCgoKLS0gCkJl
c3QgUmVnYXJkcwpTaGF3biBMaW4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
