Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC0ACA43E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 18:29:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BY3cuG+lWCLvoig7I3nxK5nvKU5g+3GYKegGtYZkfVI=; b=hM0pJ9GEnIqVtzyB/Ib8IvUhp
	NDQ05gjly6jJdUst/AMgOZihUK/BOgiX6arbIibqMaqrNLgRDcTo7czRBbYLw3mW4XTPVeKdrDL4g
	xGoVPeteY6uTaVtzVG2wlmt0TxBbLrHADI4cRwr9mq/nHS1K5ZGP4p2eTiKxDOkLCVnyfm3d2hNM5
	nSYRyjU/crZ4NJk5wINKITsYqpaPhoDrnje2CtRCpq1xNWTGwBpdZqnz7rChu79xngBZtDnBg3hd5
	YEY1jXYmJ/bbMA8wN1mVNmWMqHiEjFGp49RQv3uWD/YV2D6/R8yg03VOGm5Ufv/vd/sPRsOj2CN0a
	wlGCqp3Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG3yP-00083p-TM; Thu, 03 Oct 2019 16:29:01 +0000
Received: from avon.wwwdotorg.org ([104.237.132.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG3yG-00082Y-9M
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 16:28:53 +0000
Received: from [10.20.204.51] (unknown [216.228.112.24])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by avon.wwwdotorg.org (Postfix) with ESMTPSA id 2E1E51C0162;
 Thu,  3 Oct 2019 10:28:50 -0600 (MDT)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.100.3 at avon.wwwdotorg.org
Subject: Re: [PATCH 1/4] clk: tegra: Enable fuse clock on Tegra124
To: Dmitry Osipenko <digetx@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 Prashant Gaikwad <pgaikwad@nvidia.com>
References: <20191001211346.104400-1-swarren@wwwdotorg.org>
 <7f8934d9-8192-f88e-a329-630209d42a85@gmail.com>
From: Stephen Warren <swarren@wwwdotorg.org>
Message-ID: <9e192a8a-8129-0fd7-9041-047b436ef848@wwwdotorg.org>
Date: Thu, 3 Oct 2019 10:28:49 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <7f8934d9-8192-f88e-a329-630209d42a85@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_092852_365759_55A9A96D 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Stephen Boyd <sboyd@kernel.org>, linux-tegra@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTAvMy8xOSA1OjIzIEFNLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4gMDIuMTAuMjAxOSAw
MDoxMywgU3RlcGhlbiBXYXJyZW4g0L/QuNGI0LXRgjoKPj4gRnJvbTogU3RlcGhlbiBXYXJyZW4g
PHN3YXJyZW5AbnZpZGlhLmNvbT4KPj4KPj4gRm9yIGEgbGl0dGxlIG92ZXIgYSB5ZWFyLCBVLUJv
b3QgaGFzIGNvbmZpZ3VyZWQgdGhlIGZsb3cgY29udHJvbGxlciB0bwo+PiBwZXJmb3JtIGF1dG9t
YXRpYyBSQU0gcmUtcmVwYWlyIG9uIG9mZi0+b24gcG93ZXIgdHJhbnNpdGlvbnMgb2YgdGhlIENQ
VQo+PiByYWlsMV0uIFRoaXMgaXMgbWFuZGF0b3J5IGZvciBjb3JyZWN0IG9wZXJhdGlvbiBvZiBU
ZWdyYTEyNC4gSG93ZXZlciwgUkFNCj4+IHJlLXJlcGFpciByZWxpZXMgb24gY2VydGFpbiBjbG9j
a3MsIHdoaWNoIHRoZSBrZXJuZWwgbXVzdCBlbmFibGUgYW5kCj4+IGxlYXZlIHJ1bm5pbmcuIFRo
ZSBmdXNlIGNsb2NrIGlzIG9uZSBvZiB0aG9zZSBjbG9ja3MuIEVuYWJsZSB0aGlzIGNsb2NrCj4+
IHNvIHRoYXQgTFAxIHBvd2VyIG1vZGUgKHN5c3RlbSBzdXNwZW5kKSBvcGVyYXRlcyBjb3JyZWN0
bHkuCj4+Cj4+IFsxXSAzY2M3OTQyYTRhZTUgQVJNOiB0ZWdyYTogaW1wbGVtZW50IFJBTSByZXBh
aXIKPj4KPj4gUmVwb3J0ZWQtYnk6IEpvbmF0aGFuIEh1bnRlciA8am9uYXRoYW5oQG52aWRpYS5j
b20+Cj4+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCj4+IFNpZ25lZC1vZmYtYnk6IFN0ZXBo
ZW4gV2FycmVuIDxzd2FycmVuQG52aWRpYS5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvY2xrL3Rl
Z3JhL2Nsay10ZWdyYTEyNC5jIHwgMSArCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay90ZWdyYS9jbGstdGVncmExMjQuYyBi
L2RyaXZlcnMvY2xrL3RlZ3JhL2Nsay10ZWdyYTEyNC5jCj4+IGluZGV4IDAyMjRmZGM0NzY2Zi4u
ZjUzZjYzMTVjNjQ2IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2Nsay90ZWdyYS9jbGstdGVncmEx
MjQuYwo+PiArKysgYi9kcml2ZXJzL2Nsay90ZWdyYS9jbGstdGVncmExMjQuYwo+PiBAQCAtMTI5
MSw2ICsxMjkxLDcgQEAgc3RhdGljIHN0cnVjdCB0ZWdyYV9jbGtfaW5pdF90YWJsZSBjb21tb25f
aW5pdF90YWJsZVtdIF9faW5pdGRhdGEgPSB7Cj4+ICAgfTsKPj4gICAKPj4gICBzdGF0aWMgc3Ry
dWN0IHRlZ3JhX2Nsa19pbml0X3RhYmxlIHRlZ3JhMTI0X2luaXRfdGFibGVbXSBfX2luaXRkYXRh
ID0gewo+PiArCXsgVEVHUkExMjRfQ0xLX0ZVU0UsIC0xLCAwLCAxIH0sCj4+ICAgCXsgVEVHUkEx
MjRfQ0xLX1NPQ19USEVSTSwgVEVHUkExMjRfQ0xLX1BMTF9QLCA1MTAwMDAwMCwgMCB9LAo+PiAg
IAl7IFRFR1JBMTI0X0NMS19DQ0xLX0csIFRFR1JBMTI0X0NMS19DTEtfTUFYLCAwLCAxIH0sCj4+
ICAgCXsgVEVHUkExMjRfQ0xLX0hEQSwgVEVHUkExMjRfQ0xLX1BMTF9QLCAxMDIwMDAwMDAsIDAg
fSwKPj4KPiAKPiBIZWxsbyBTdGVwaGVuLAo+IAo+IERvZXMgdGhpcyBtZWFuIHRoYXQgZGV2aWNl
cyB3aGljaCBhcmUgdXNpbmcgb2xkZXIgVS1Cb290IHZlcnNpb24gd2VyZSBhbHdheXMgaW4gYSB0
cm91YmxlPwoKWWVzLiBSQU0gcmUtcmVwYWlyIHdvdWxkbid0IGhhdmUgYmVlbiBlbmFibGVkLCBz
byBpbiB0aGVvcnkgYW55IGRldmljZSAKY291bGQgZmFpbCBhZnRlciBhbiBMUDEgcmVzdW1lLCBv
ciBpbmRlZWQgYW55dGhpbmcgdGhhdCBjYXVzZWQgdGhlIENQVSAKY29tcGxleCByYWlsIHRvIGJl
IGdhdGVkLgoKPiBJdCBzb3VuZHMgdG8gbWUgdGhhdCB0aGUgUkFNIHJlLXJlcGFpciBzaG91bGQg
YmUgYWxzbyBlbmFibGVkIGJ5IHRoZSBrZXJuZWwncyBmbG93Cj4gY29udHJvbGxlciBkcml2ZXIg
aW4gYSBjYXNlIGlmIGJvb3Rsb2FkZXIgZGlkIG5vdCBlbmFibGUgaXQuCgpZZXMsIHRoYXQgbWln
aHQgYmUgYSBnb29kIGlkZWEgdG9vLgoKPiBJZiBlbmFibGluZyBSQU0gcmUtcmVwYWlyIGlzIGEg
Y2hhbmdlIHRoYXQgd29uJ3QgYmUgZWFzaWx5IGJhY2twb3J0YWJsZSB0byBzdGFibGUga2VybmVs
cywKPiB0aGVuIG1heSBiZSBpdCdzIHdvcnRoIHRvIHNpbXBseSBmb3JjZS1kaXNhYmxlIExQMSBv
biBUMTI0IGZvciB0aGUgb2xkZXIga2VybmVscy4KClRoZSBmaXJzdCB0d28gcGF0Y2hlcyBpbiB0
aGlzIHNlcmllcyBhcmUgYWxsIHRoYXQncyBzdHJpY3RseSByZXF1aXJlZCwgCmFuZCB0aGUgY2hh
bmdlIGFyZSBwcmV0dHkgc21hbGwgYW5kIGlzb2xhdGVkLCBzbyBpdCBzaG91bGQgYmUgZWFzeSB0
byAKYmFjay1wb3J0LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
