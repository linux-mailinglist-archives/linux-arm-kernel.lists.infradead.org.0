Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52555115162
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 14:52:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AthwlHkbpX2NMxcngKpqiSqL2mOi22cMrY+6f2gavw0=; b=dxuToOA2emPexz
	a7mSYErl0HtA1fUQvWUgflmz2Fh8x45u/dQB8txgErz1EvdZJShgJkYYJvq5UK2Fdz8s6w4nUxSUU
	ERlJHk3183/h3B2uJuJyfFGUD6BQkYEHZT9k2Sps5MpuaR/rmZ0WSusIjjewuKAEwLdn5WuCqCo13
	vJjcjRMc88t3WcbhsyDxBmLd1aWLYoBKXG5KMCCaqkzpLqS6pLpH11umFj63tUHcMcFn0eFXCZ4JV
	QN/Rnt1YZaCLHQvHfAC9A80U4vNGsLIrnfspmiDhB5stQ43fdWmmMjKXeUzZVyVdYCsk9ItQ2LP8A
	GcvE+gPMa0Kfni8qmWEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idE1z-0001wG-8I; Fri, 06 Dec 2019 13:52:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idE1n-0001vX-Cg; Fri, 06 Dec 2019 13:52:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5A82C1FB;
 Fri,  6 Dec 2019 05:52:14 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B257F3F718;
 Fri,  6 Dec 2019 05:52:10 -0800 (PST)
Date: Fri, 6 Dec 2019 13:52:01 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Enric Balletbo Serra <eballetbo@gmail.com>
Subject: Re: [PATCH v3 10/25] PCI: rockchip: Use
 pci_parse_request_of_pci_ranges()
Message-ID: <20191206135151.GA26562@e121166-lin.cambridge.arm.com>
References: <20191028163256.8004-1-robh@kernel.org>
 <20191028163256.8004-11-robh@kernel.org>
 <CAFqH_51-BMWSGGBpoKxA3UK+yPHSpPgok5i=daSC0KS5oc5ueA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFqH_51-BMWSGGBpoKxA3UK+yPHSpPgok5i=daSC0KS5oc5ueA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_055215_521424_8E8FB03C 
X-CRM114-Status: GOOD (  24.21  )
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Rob Herring <robh@kernel.org>, Ryder Lee <ryder.lee@mediatek.com>,
 Michal Simek <michal.simek@xilinx.com>, Christoph Hellwig <hch@infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Simon Horman <horms@verge.net.au>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Ley Foon Tan <lftan@altera.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Scott Branden <sbranden@broadcom.com>, Jingoo Han <jingoohan1@gmail.com>,
 rfi@lists.rocketboards.org, linux-renesas-soc@vger.kernel.org,
 Tom Joseph <tjoseph@cadence.com>, Srinath Mannam <srinath.mannam@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Andrew Murray <andrew.murray@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBEZWMgMDUsIDIwMTkgYXQgMDY6NTY6MDFQTSArMDEwMCwgRW5yaWMgQmFsbGV0Ym8g
U2VycmEgd3JvdGU6Cj4gSGkgUm9iLAo+IAo+IE1pc3NhdGdlIGRlIFJvYiBIZXJyaW5nIDxyb2Jo
QGtlcm5lbC5vcmc+IGRlbCBkaWEgZGwuLCAyOCBk4oCZb2N0LiAyMDE5Cj4gYSBsZXMgMTc6Mzg6
Cj4gPgo+ID4gQ29udmVydCB0aGUgUm9ja2NoaXAgaG9zdCBicmlkZ2UgdG8gdXNlIHRoZSBjb21t
b24KPiA+IHBjaV9wYXJzZV9yZXF1ZXN0X29mX3BjaV9yYW5nZXMoKS4KPiA+Cj4gPiBUaGVyZSdz
IG5vIG5lZWQgdG8gYXNzaWduIHRoZSByZXNvdXJjZXMgdG8gYSB0ZW1wb3JhcnkgbGlzdCBmaXJz
dC4gSnVzdAo+ID4gdXNlIGJyaWRnZS0+d2luZG93cyBkaXJlY3RseSBhbmQgcmVtb3ZlIGFsbCB0
aGUgdGVtcG9yYXJ5IGxpc3QgaGFuZGxpbmcuCj4gPgo+ID4gQ2M6IFNoYXduIExpbiA8c2hhd24u
bGluQHJvY2stY2hpcHMuY29tPgo+ID4gQ2M6IExvcmVuem8gUGllcmFsaXNpIDxsb3JlbnpvLnBp
ZXJhbGlzaUBhcm0uY29tPgo+ID4gQ2M6IEFuZHJldyBNdXJyYXkgPGFuZHJldy5tdXJyYXlAYXJt
LmNvbT4KPiA+IENjOiBCam9ybiBIZWxnYWFzIDxiaGVsZ2Fhc0Bnb29nbGUuY29tPgo+ID4gQ2M6
IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4gPiBDYzogbGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gU2lnbmVkLW9mZi1ieTogUm9iIEhlcnJpbmcgPHJvYmhA
a2VybmVsLm9yZz4KPiA+IC0tLQo+IAo+IEkganVzdCB0ZXN0ZWQgbWFpbmxpbmUgb24gbXkgU2Ft
c3VuZyBDaHJvbWVib29rIFBsdXMsIGFuZCBzaW5jZQo+IHllc3RlcmRheSBJJ20gZ2V0dGluZyBh
ICJzeW5jaHJvbm91cyBleHRlcm5hbCBhYm9ydCIgWzFdLiBBZnRlciBhCj4gYmlzZWN0aW9uLCBJ
IGZvdW5kIHRoYXQgdGhpcyBwYXRjaCB0cmlnZ2VycyB0aGUgaXNzdWUgKHRoaXMgcGF0Y2ggd2Fz
Cj4gbWVyZ2VkIHllc3RlcmRheSkKPiAKPiBJIGRpZG4ndCBsb29rIGluIGRldGFpbCB5ZXQsIGJ1
dCBpZiB5b3UgaGF2ZSBhbnkgaWRlYSBvZiB3aGF0IGNvdWxkIGJlCj4gdGhlIHByb2JsZW0sIHRo
YXQgd291bGQgYmUgZ3JlYXQuCj4gCj4gVGhhbmtzLAo+ICBFbnJpYwo+IAo+IFsxXSBodHRwczov
L2hhc3RlYmluLmNvbS9hZGFzZWdpaGl3LnJiCgpDb3VsZCB5b3UgcGxlYXNlIHBvc3QgdGhlIGtl
cm5lbCBsb2cgYWdhaW4gPwoKTG9yZW56bwoKPiA+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3Bj
aWUtcm9ja2NoaXAtaG9zdC5jIHwgMzYgKysrKy0tLS0tLS0tLS0tLS0tLS0tCj4gPiAgMSBmaWxl
IGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMjkgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1ob3N0LmMgYi9kcml2
ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5jCj4gPiBpbmRleCBlZjhlNjc3
Y2U5ZDEuLjhkMmU2ZjJlMTQxZSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xs
ZXIvcGNpZS1yb2NrY2hpcC1ob3N0LmMKPiA+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
cGNpZS1yb2NrY2hpcC1ob3N0LmMKPiA+IEBAIC05NTAsMTQgKzk1MCwxMCBAQCBzdGF0aWMgaW50
IHJvY2tjaGlwX3BjaWVfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+ICAg
ICAgICAgc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKPiA+ICAgICAgICAgc3RydWN0
IHBjaV9idXMgKmJ1cywgKmNoaWxkOwo+ID4gICAgICAgICBzdHJ1Y3QgcGNpX2hvc3RfYnJpZGdl
ICpicmlkZ2U7Cj4gPiArICAgICAgIHN0cnVjdCByZXNvdXJjZSAqYnVzX3JlczsKPiA+ICAgICAg
ICAgc3RydWN0IHJlc291cmNlX2VudHJ5ICp3aW47Cj4gPiAtICAgICAgIHJlc291cmNlX3NpemVf
dCBpb19iYXNlOwo+ID4gLSAgICAgICBzdHJ1Y3QgcmVzb3VyY2UgKm1lbTsKPiA+IC0gICAgICAg
c3RydWN0IHJlc291cmNlICppbzsKPiA+ICAgICAgICAgaW50IGVycjsKPiA+Cj4gPiAtICAgICAg
IExJU1RfSEVBRChyZXMpOwo+ID4gLQo+ID4gICAgICAgICBpZiAoIWRldi0+b2Zfbm9kZSkKPiA+
ICAgICAgICAgICAgICAgICByZXR1cm4gLUVOT0RFVjsKPiA+Cj4gPiBAQCAtOTk1LDI5ICs5OTEs
MjAgQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZp
Y2UgKnBkZXYpCj4gPiAgICAgICAgIGlmIChlcnIgPCAwKQo+ID4gICAgICAgICAgICAgICAgIGdv
dG8gZXJyX2RlaW5pdF9wb3J0Owo+ID4KPiA+IC0gICAgICAgZXJyID0gZGV2bV9vZl9wY2lfZ2V0
X2hvc3RfYnJpZGdlX3Jlc291cmNlcyhkZXYsIDAsIDB4ZmYsCj4gPiAtICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJnJlcywgJmlvX2Jhc2UpOwo+ID4g
KyAgICAgICBlcnIgPSBwY2lfcGFyc2VfcmVxdWVzdF9vZl9wY2lfcmFuZ2VzKGRldiwgJmJyaWRn
ZS0+d2luZG93cywgJmJ1c19yZXMpOwo+ID4gICAgICAgICBpZiAoZXJyKQo+ID4gICAgICAgICAg
ICAgICAgIGdvdG8gZXJyX3JlbW92ZV9pcnFfZG9tYWluOwo+ID4KPiA+IC0gICAgICAgZXJyID0g
ZGV2bV9yZXF1ZXN0X3BjaV9idXNfcmVzb3VyY2VzKGRldiwgJnJlcyk7Cj4gPiAtICAgICAgIGlm
IChlcnIpCj4gPiAtICAgICAgICAgICAgICAgZ290byBlcnJfZnJlZV9yZXM7Cj4gPiArICAgICAg
IHJvY2tjaGlwLT5yb290X2J1c19uciA9IGJ1c19yZXMtPnN0YXJ0Owo+ID4KPiA+ICAgICAgICAg
LyogR2V0IHRoZSBJL08gYW5kIG1lbW9yeSByYW5nZXMgZnJvbSBEVCAqLwo+ID4gLSAgICAgICBy
ZXNvdXJjZV9saXN0X2Zvcl9lYWNoX2VudHJ5KHdpbiwgJnJlcykgewo+ID4gKyAgICAgICByZXNv
dXJjZV9saXN0X2Zvcl9lYWNoX2VudHJ5KHdpbiwgJmJyaWRnZS0+d2luZG93cykgewo+ID4gICAg
ICAgICAgICAgICAgIHN3aXRjaCAocmVzb3VyY2VfdHlwZSh3aW4tPnJlcykpIHsKPiA+ICAgICAg
ICAgICAgICAgICBjYXNlIElPUkVTT1VSQ0VfSU86Cj4gPiAgICAgICAgICAgICAgICAgICAgICAg
ICBpbyA9IHdpbi0+cmVzOwo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgaW8tPm5hbWUgPSAi
SS9PIjsKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgIHJvY2tjaGlwLT5pb19zaXplID0gcmVz
b3VyY2Vfc2l6ZShpbyk7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICByb2NrY2hpcC0+aW9f
YnVzX2FkZHIgPSBpby0+c3RhcnQgLSB3aW4tPm9mZnNldDsKPiA+IC0gICAgICAgICAgICAgICAg
ICAgICAgIGVyciA9IHBjaV9yZW1hcF9pb3NwYWNlKGlvLCBpb19iYXNlKTsKPiA+IC0gICAgICAg
ICAgICAgICAgICAgICAgIGlmIChlcnIpIHsKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgZGV2X3dhcm4oZGV2LCAiZXJyb3IgJWQ6IGZhaWxlZCB0byBtYXAgcmVzb3VyY2UgJXBS
XG4iLAo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBlcnIsIGlv
KTsKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29udGludWU7Cj4gPiAtICAg
ICAgICAgICAgICAgICAgICAgICB9Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICByb2NrY2hp
cC0+aW8gPSBpbzsKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+ID4gICAgICAg
ICAgICAgICAgIGNhc2UgSU9SRVNPVVJDRV9NRU06Cj4gPiBAQCAtMTAyNiw5ICsxMDEzLDYgQEAg
c3RhdGljIGludCByb2NrY2hpcF9wY2llX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICByb2NrY2hpcC0+bWVtX3NpemUgPSByZXNv
dXJjZV9zaXplKG1lbSk7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICByb2NrY2hpcC0+bWVt
X2J1c19hZGRyID0gbWVtLT5zdGFydCAtIHdpbi0+b2Zmc2V0Owo+ID4gICAgICAgICAgICAgICAg
ICAgICAgICAgYnJlYWs7Cj4gPiAtICAgICAgICAgICAgICAgY2FzZSBJT1JFU09VUkNFX0JVUzoK
PiA+IC0gICAgICAgICAgICAgICAgICAgICAgIHJvY2tjaGlwLT5yb290X2J1c19uciA9IHdpbi0+
cmVzLT5zdGFydDsKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+ID4gICAgICAg
ICAgICAgICAgIGRlZmF1bHQ6Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsK
PiA+ICAgICAgICAgICAgICAgICB9Cj4gPiBAQCAtMTAzNiwxNSArMTAyMCwxNCBAQCBzdGF0aWMg
aW50IHJvY2tjaGlwX3BjaWVfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+
Cj4gPiAgICAgICAgIGVyciA9IHJvY2tjaGlwX3BjaWVfY2ZnX2F0dShyb2NrY2hpcCk7Cj4gPiAg
ICAgICAgIGlmIChlcnIpCj4gPiAtICAgICAgICAgICAgICAgZ290byBlcnJfdW5tYXBfaW9zcGFj
ZTsKPiA+ICsgICAgICAgICAgICAgICBnb3RvIGVycl9yZW1vdmVfaXJxX2RvbWFpbjsKPiA+Cj4g
PiAgICAgICAgIHJvY2tjaGlwLT5tc2dfcmVnaW9uID0gZGV2bV9pb3JlbWFwKGRldiwgcm9ja2No
aXAtPm1zZ19idXNfYWRkciwgU1pfMU0pOwo+ID4gICAgICAgICBpZiAoIXJvY2tjaGlwLT5tc2df
cmVnaW9uKSB7Cj4gPiAgICAgICAgICAgICAgICAgZXJyID0gLUVOT01FTTsKPiA+IC0gICAgICAg
ICAgICAgICBnb3RvIGVycl91bm1hcF9pb3NwYWNlOwo+ID4gKyAgICAgICAgICAgICAgIGdvdG8g
ZXJyX3JlbW92ZV9pcnFfZG9tYWluOwo+ID4gICAgICAgICB9Cj4gPgo+ID4gLSAgICAgICBsaXN0
X3NwbGljZV9pbml0KCZyZXMsICZicmlkZ2UtPndpbmRvd3MpOwo+ID4gICAgICAgICBicmlkZ2Ut
PmRldi5wYXJlbnQgPSBkZXY7Cj4gPiAgICAgICAgIGJyaWRnZS0+c3lzZGF0YSA9IHJvY2tjaGlw
Owo+ID4gICAgICAgICBicmlkZ2UtPmJ1c25yID0gMDsKPiA+IEBAIC0xMDU0LDcgKzEwMzcsNyBA
QCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikKPiA+Cj4gPiAgICAgICAgIGVyciA9IHBjaV9zY2FuX3Jvb3RfYnVzX2JyaWRnZShicmlk
Z2UpOwo+ID4gICAgICAgICBpZiAoZXJyIDwgMCkKPiA+IC0gICAgICAgICAgICAgICBnb3RvIGVy
cl91bm1hcF9pb3NwYWNlOwo+ID4gKyAgICAgICAgICAgICAgIGdvdG8gZXJyX3JlbW92ZV9pcnFf
ZG9tYWluOwo+ID4KPiA+ICAgICAgICAgYnVzID0gYnJpZGdlLT5idXM7Cj4gPgo+ID4gQEAgLTEw
NjgsMTAgKzEwNTEsNiBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfcHJvYmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKPiA+ICAgICAgICAgcGNpX2J1c19hZGRfZGV2aWNlcyhidXMp
Owo+ID4gICAgICAgICByZXR1cm4gMDsKPiA+Cj4gPiAtZXJyX3VubWFwX2lvc3BhY2U6Cj4gPiAt
ICAgICAgIHBjaV91bm1hcF9pb3NwYWNlKHJvY2tjaGlwLT5pbyk7Cj4gPiAtZXJyX2ZyZWVfcmVz
Ogo+ID4gLSAgICAgICBwY2lfZnJlZV9yZXNvdXJjZV9saXN0KCZyZXMpOwo+ID4gIGVycl9yZW1v
dmVfaXJxX2RvbWFpbjoKPiA+ICAgICAgICAgaXJxX2RvbWFpbl9yZW1vdmUocm9ja2NoaXAtPmly
cV9kb21haW4pOwo+ID4gIGVycl9kZWluaXRfcG9ydDoKPiA+IEBAIC0xMDk3LDcgKzEwNzYsNiBA
QCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpCj4gPgo+ID4gICAgICAgICBwY2lfc3RvcF9yb290X2J1cyhyb2NrY2hpcC0+cm9vdF9i
dXMpOwo+ID4gICAgICAgICBwY2lfcmVtb3ZlX3Jvb3RfYnVzKHJvY2tjaGlwLT5yb290X2J1cyk7
Cj4gPiAtICAgICAgIHBjaV91bm1hcF9pb3NwYWNlKHJvY2tjaGlwLT5pbyk7Cj4gPiAgICAgICAg
IGlycV9kb21haW5fcmVtb3ZlKHJvY2tjaGlwLT5pcnFfZG9tYWluKTsKPiA+Cj4gPiAgICAgICAg
IHJvY2tjaGlwX3BjaWVfZGVpbml0X3BoeXMocm9ja2NoaXApOwo+ID4gLS0KPiA+IDIuMjAuMQo+
ID4KPiA+Cj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+ID4gTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0Cj4gPiBMaW51eC1tZWRpYXRla0BsaXN0
cy5pbmZyYWRlYWQub3JnCj4gPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LW1lZGlhdGVrCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
