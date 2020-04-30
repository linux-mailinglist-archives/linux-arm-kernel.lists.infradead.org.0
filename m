Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F90B1BF4D4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 12:04:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LFhS1sdrxad3utHSuFvbzByeba4CjPOb7E/ab0U1LfU=; b=TMWmSLdlw9wr7B
	5I5Cxn6JyUbHJMmUnmw1LBeXE1A8kqRYuNqdSN7j2oqG6XgIruCP+/Hsr7D3zSDgPivE4PpRIuNrE
	imTHy1E/enYZiDtvh9DInlyc6FzD5Jo/6Fbc50JeF+M7JP+ruTwwnDTd2Djc1RB9hWC7IlCjzmYkh
	X77P8PQrY8Da8rGuOaW5nOCBhuNbo6ujRYwsSnlFTrWJLEwgawZiLZq28v0KcO730NMaepN72RCtQ
	J8Gp/BXKGX3WRaq62R2EDyq22QkZ/vXJY2jQ0sr8qvKzGapwbB4EdDPUt0ORmyFUchbXePYgJZT4w
	B/UezMKJl2Nr3+QCJiEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU633-0006Fb-PW; Thu, 30 Apr 2020 10:04:05 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU62u-0006El-VA
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 10:03:58 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id A76052007C5;
 Thu, 30 Apr 2020 12:03:55 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9A43D200769;
 Thu, 30 Apr 2020 12:03:55 +0200 (CEST)
Received: from localhost (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 7EB4520397;
 Thu, 30 Apr 2020 12:03:55 +0200 (CEST)
Date: Thu, 30 Apr 2020 13:03:55 +0300
From: Abel Vesa <abel.vesa@nxp.com>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3 01/13] mfd: Add i.MX generic mix support
Message-ID: <20200430100355.zwl7wfbq64cikqxp@fsr-ub1664-175>
References: <1586937773-5836-1-git-send-email-abel.vesa@nxp.com>
 <1586937773-5836-2-git-send-email-abel.vesa@nxp.com>
 <20200417080747.GE2167633@dell>
 <20200422091854.rhtkcfrdptwofngs@fsr-ub1664-175>
 <AM6PR04MB4966B3527BF97918C1689A4580D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <20200424062727.GI3612@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200424062727.GI3612@dell>
User-Agent: NeoMutt/20180622
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_030357_276865_29FAF4D6 
X-CRM114-Status: GOOD (  30.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 "arnd@arndb.de" <arnd@arndb.de>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAtMDQtMjQgMDc6Mjc6MjcsIExlZSBKb25lcyB3cm90ZToKPiBPbiBUaHUsIDIzIEFwciAy
MDIwLCBBaXNoZW5nIERvbmcgd3JvdGU6Cj4gCj4gPiA+IEZyb206IEFiZWwgVmVzYSA8YWJlbC52
ZXNhQG54cC5jb20+Cj4gPiA+IFNlbnQ6IFdlZG5lc2RheSwgQXByaWwgMjIsIDIwMjAgNToxOSBQ
TQo+ID4gPiBPbiAyMC0wNC0xNyAwOTowNzo0NywgTGVlIEpvbmVzIHdyb3RlOgo+ID4gPiA+IE9u
IFdlZCwgMTUgQXByIDIwMjAsIEFiZWwgVmVzYSB3cm90ZToKPiA+ID4gPgo+ID4gPiA+ID4gU29t
ZSBvZiB0aGUgaS5NWCBTb0NzIGhhdmUgYSBJUCBmb3IgaW50ZXJmYWNpbmcgdGhlIGRlZGljYXRl
ZCBJUHMKPiA+ID4gPiA+IHdpdGggY2xvY2tzLCByZXNldHMgYW5kIGludGVycnVwdHMsIHBsdXMg
c29tZSBvdGhlciBzcGVjaWZpYyBjb250cm9sIHJlZ2lzdGVycy4KPiA+ID4gPiA+IFRvIGFsbG93
IHRoZSBmdW5jdGlvbmFsaXR5IHRvIGJlIHNwbGl0IGJldHdlZW4gZHJpdmVycywgdGhpcyBNRkQK
PiA+ID4gPiA+IGRyaXZlciBpcyBhZGRlZCB0aGF0IGhhcyBvbmx5IHR3byBwdXJwb3NlczogcmVn
aXN0ZXIgdGhlIGRldmljZXMgYW5kCj4gPiA+ID4gPiBtYXAgdGhlIGVudGlyZSByZWdpc3RlciBh
ZGRyZXNzZXMuIEV2ZXJ5dGhpbmcgZWxzZSBpcyBsZWZ0IHRvIHRoZQo+ID4gPiA+ID4gZGVkaWNh
dGVkIGRyaXZlcnMgdGhhdCB3aWxsIGJpbmQgdG8gdGhlIHJlZ2lzdGVyZWQgZGV2aWNlcy4KPiA+
ID4gPiA+Cj4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBYmVsIFZlc2EgPGFiZWwudmVzYUBueHAu
Y29tPgo+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiAgZHJpdmVycy9tZmQvS2NvbmZpZyAgIHwgMTEg
KysrKysrKysrKysKPiA+ID4gPiA+ICBkcml2ZXJzL21mZC9NYWtlZmlsZSAgfCAgMSArCj4gPiA+
ID4gPiAgZHJpdmVycy9tZmQvaW14LW1peC5jIHwgNDgKPiA+ID4gPiA+ICsrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ID4gPiA+ID4gIDMgZmlsZXMgY2hh
bmdlZCwgNjAgaW5zZXJ0aW9ucygrKQo+ID4gPiA+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL21mZC9pbXgtbWl4LmMKPiA+ID4gPgo+ID4gPiA+IEZvciBjb21wbGV0ZW5lc3MgLSBBcm5k
J3MgcmVwbHkgdG8gdGhpcyBwYXRjaDoKPiA+ID4gPgo+ID4gPiAKPiA+ID4gSSdtIHJlcGx5aW5n
IGhlcmUgdG8gQXJuZCdzIHJlcGx5Lgo+ID4gPiAKPiA+ID4gSSdtIHRyeWluZyB0byBnaXZlIGhl
cmUgYSB3aG9sZSBwaWN0dXJlIG9mIHRoZSBlbnRpcmUgcHJvYmxlbSB3aGlsZSB0aGUKPiA+ID4g
ZG9jdW1lbnRhdGlvbiBmb3IgaS5NWDhNUCBpcyBfbm90IHlldF8gcHVibGljLgo+ID4gPiAKPiA+
ID4gSGlzdG9yaWNhbGx5LCBlYWNoIElQIHdvdWxkIGhhdmUgaXRzIG93biBlbmNsb3N1cmUgZm9y
IGFsbCB0aGUgcmVsYXRlZCBHUFJzLgo+ID4gPiBTdGFydGluZyB3aXRoIGkuTVg4TVAgc29tZSBH
UFJzIChhbmQgc29tZSBzdWJwYXJ0cykgZnJvbSB0aGUgSVAgd2VyZSBwbGFjZWQKPiA+ID4gaW5z
aWRlIHRoZXNlIG1peGVzLgo+ID4gPiAKPiA+ID4gQXVkaW9taXggZm9yIGV4YW1wbGUsIGhhcyBt
dWx0aXBsZSBTQUlzLCBhIFBMTCwgYW5kIHNvbWUgcmVzZXQgYml0cyBmb3IgRUFSQwo+ID4gPiBh
bmQgc29tZSBHUFJzIGZvciBBdWRpb0RTUC4gVGhpcyBtZWFucyB0aGF0IGkuTVg4TVAgaGFzIDcg
U0FJcywgMSBFQVJDIGFuZAo+ID4gPiAxIEF1ZGlvRFNQLgo+ID4gPiBGdXR1cmUgcGxhdGZvcm1z
IG1pZ2h0IGhhdmUgZGlmZmVyZW50IG51bWJlcnMgb2YgU0FJcywgRUFSQ3Mgb3IgQXVkaW9EU1Bz
Lgo+ID4gPiBUaGUgUExMIGNhbid0IGJlIHBsYWNlZCBpbiBvbmUgb2YgdGhvc2UgU0FJcyBhbmQg
aXQgd2FzIHBsYWNlZCBpbiBhdWRpb21peC4KPiA+ID4gVGhlIGkuTVg4TVAgaGFzIGF0IGxlYXN0
IDQgb2YgdGhlc2UgbWl4ZXMuCj4gPiA+IAo+ID4gPiBOb3csIHRoZSBjb21tb25hbGl0aWVzIGJl
dHdlZW4gYWxsIG1peGVzIGFyZToKPiA+ID4gIC0gaGF2ZSB0aGVpciBvd24gcG93ZXIgZG9tYWlu
cwo+ID4gPiAgLSBkcml2ZW4gYnkgZGVkaWNhdGVkIGNsb2NrIHNsaWNlCj4gPiA+ICAtIGNvbnRh
aW4gY2xvY2tzIGFuZCByZXNldHMKPiA+ID4gIC0gc29tZSB2ZXJ5IHN1YnN5c3RlbSBzcGVjaWZp
YyBHUFJzCj4gPiA+IAo+ID4gPiBLbm93aW5nIHRoYXQgZWFjaCBtaXggaGFzIGl0cyBvd24gcG93
ZXIgZG9tYWluLCBBRkFJQ1QsIGl0IG5lZWRzIHRvIGJlCj4gPiA+IHJlZ2lzdGVyZWQgYXMgYSBz
aW5nbGUgZGV2aWNlLiBDb25zaWRlcmluZyB0aGF0IGl0IGNhbiBoYXZlIGNsb2NrcyAoYXVkaW9t
aXggaGFzCj4gPiA+IGdhdGVzLCBtdXhlcyBhbmQgcGxscyksIEkgYmVsaWV2ZSB0aGF0IG5lZWRz
IGEgY2xvY2sgZHJpdmVyLCBldmVuIG1vcmUgc28gc2luY2UgdGhlCj4gPiA+IG11eGVzIG5lZWQg
dGhlaXIgcGFyZW50cyBmcm9tIHRoZSBwbGF0Zm9ybSBjbG9jayBkcml2ZXIuIFNhbWUgcHJpbmNp
cGxlIGFwcGxpZXMKPiA+ID4gdG8gcmVzZXQgYml0cy4gVGhlIHN1YnN5c3RlbSBzcGVjaWZpYyBH
UFJzIGNhbiBiZSByZWdpc3RlcmVkIGFzIHN5c2NvbiBkZXZpY2VzCj4gPiA+IGFuZCB0YWtlbiBj
YXJlIG9mIGJ5IGl0cyBjb3VudGVycGFydCBJUCAoZS5nLiB0aGUgQXVkaW9EU1Agc3BlY2lmaWMg
cmVncyB3b3VsZCBiZQo+ID4gPiB0YWtlbiBjYXJlIG9mIGJ5IHRoZSBEU1AgZHJpdmVyLCBpZiB0
aGVyZSBpcyBvbmUpLgo+ID4gPiAKPiA+ID4gTm93IGJhc2VkIG9uIGFsbCBvZiB0aGUgYWJvdmUs
IGJ5IHVzaW5nIE1GRCB3ZSB0YWtlIGNhcmUgb2YgdGhlIHBvd2VyIGRvbWFpbgo+ID4gPiBjb250
cm9sIGZvciB0aGUgZW50aXJlIG1peCwgcGx1cywgdGhlIE1GRCBkb2Vzbid0IGhhdmUgYW55IGtp
bmQgb2YgZnVuY3Rpb25hbGl0eQo+ID4gPiBieSBpdHMgb3duLCByZWx5aW5nIG9uIGl0cyBjaGls
ZHJlbiBkZXZpY2VzIHRoYXQgYXJlIHBvcHVsYXRlZCBiYXNlZCBvbiB3aGF0IGlzIGluCj4gPiA+
IHRoZSBtaXggTUZEIGRldmljZXRyZWUgbm9kZS4KPiA+ID4gCj4gPiAKPiA+IEhvdyBhYm91dCBk
b2luZyBsaWtlIHRoaXMgd2hpY2ggbWF5YmUgY2FuIGFkZHJlc3MgQXJuZCdzIGNvbmNlcm5zPwo+
ID4gYXVkaW9taXg6IGF1ZGlvbWl4QDMwZTIwMDAwIHsKPiA+ICAgICAgICAgY29tcGF0aWJsZSA9
ICJmc2wsaW14OG1wLWF1ZGlvbWl4IiwgInN5c2NvbiI7Cj4gPiAgICAgICAgIHJlZyA9IDwweDMw
ZTIwMDAwIHh4eD4sCj4gPiAgICAgICAgICAgICAgIDwweDMwZTIweHh4IHh4eD47Cj4gPiAgICAg
ICAgIHJlZy1uYW1lcyA9ICJhdWRpbyIsICJyZXNldCIsICIuLi4iOwo+ID4gICAgICAgICAjY2xv
Y2stY2VsbHMgPSA8MT47Cj4gPiAgICAgICAgICNyZXNldC1jZWxscyA9IDwxPjsKPiA+ICAgICAg
ICAgcG93ZXItZG9tYWlucyA9IDwmYXVkaW9taXhfcGQ+Owo+ID4gfQo+ID4gCj4gPiBUaGF0IG1l
YW5zIHdlIGhhdmUgb25lIGNvbWJvIGRyaXZlciByZWdpc3RlcmluZyB0d28gY29udHJvbGxlcnMg
KGNsay9yZXNldCksIGJvdGggdXNlCj4gPiB0aGUgc2FtZSBwb3dlciBkb21haW4gYXMgYXVkaW9t
aXguCj4gPiBBbmQgaXQgY2FuIGJlIGVhc2lseSBleHRlbmRlZCB0byBzdXBwb3J0IG1vcmUgc2Vy
dmljZXMgcHJvdmlkZWQgYnkgYXVkaW9taXggb3ZlciBzeXNjb24KPiA+IGlmIG5lZWRlZC4KPiA+
IFRoZW4gdGhlICdkdW1teScgTURGIGRyaXZlciBpcyBub3QgbmVlZGVkIGFueW1vcmUuCj4gPiAK
PiA+IEpvbmVzICYgQXJuZCwKPiA+IEhvdyBkbyB5b3UgdGhpbms/Cj4gCj4gU291bmRzIG9rYXkg
aW4gcHJpbmNpcGxlLiAgQW55dGhpbmcgdGhhdCBwcmV2ZW50cyB0aGUgZXhpc3RlbmNlIG9mIGEK
PiBkdW1teSAoYS5rLmEuIHBvaW50bGVzcykgTUZEIG11c3QgYmUgc2VlbiBhcyBhIHBvc2l0aXZl
IG1vdmUuCj4gCgpPSywgSSdsbCBkbyBpdCBpbiBhIHNpbmdsZSBkcml2ZXIgYW5kIHNpbmdsZSBk
dHMgbm9kZS4KCkJ1dCB0aGVyZSBtaWdodCBiZSBhbiBpc3N1ZSB3aXRoIHRoZSBwbGFjZW1lbnQg
b2YgdGhpcyBuZXcgZHJpdmVyLgoKZHJpdmVycy9jbGsvaW14LyBjb3VsZCBiZSBhbiBvcHRpb24s
IGJ1dCB0aGUgZHJpdmVyIHdpbGwgdXNlIGEgbG90Cm9mIGRpZmZlcmVudCBBUElzIGZyb20gZGlm
ZmVyZW50IHN1YnN5c3RlbXMuIE5vdCB0aGUgYXVkaW9taXgsIGJ1dAp0aGUgZnV0dXJlIG1peGVz
LgoKPiAtLSAKPiBMZWUgSm9uZXMgW+adjueQvOaWr10KPiBMaW5hcm8gU2VydmljZXMgVGVjaG5p
Y2FsIExlYWQKPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNv
Q3MKPiBGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
