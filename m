Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54011115209
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 15:09:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qG51faNPi/b5DhXRsGPa9RR0ZiAsrcnUPQ/c0+6Kc3M=; b=h3nj0ndMFbmoHP
	SZzvXH5/4j+i1RvEWTLcNC4Z7eDYR/NLuxDyQxSLljTpHQNys2bp5odKMZPHHRAUF/7uBK0CQ7Ipv
	LBPVJJyqX7Ww+HZCS4EV6j/1RZ9Denjb+iUOnLM9OYY9UgZTCW5nE09JbI+iR8LSVzCUjFcfqExMX
	JzfVK5waLkBL1SawEOs50EpjQGL9zjny1srbi6+OsMgf2xLiRtnyBnWTUzW+fvkS4zZ1jJStefSX6
	aHzEQ9bzhbVwCozc8OBbeaTTtX5YphFdicoi6aIgVRVyjRXb+N6Nqud+g2IyNESrw1R2YoTQ/kMuQ
	nizrOTAaCvNWWZcMlKgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idEIK-0005hc-RO; Fri, 06 Dec 2019 14:09:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idEIC-0005gE-IV; Fri, 06 Dec 2019 14:09:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9397D1FB;
 Fri,  6 Dec 2019 06:09:07 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F249A3F718;
 Fri,  6 Dec 2019 06:09:03 -0800 (PST)
Date: Fri, 6 Dec 2019 14:09:01 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Enric Balletbo Serra <eballetbo@gmail.com>
Subject: Re: [PATCH v3 10/25] PCI: rockchip: Use
 pci_parse_request_of_pci_ranges()
Message-ID: <20191206140901.GB26562@e121166-lin.cambridge.arm.com>
References: <20191028163256.8004-1-robh@kernel.org>
 <20191028163256.8004-11-robh@kernel.org>
 <CAFqH_51-BMWSGGBpoKxA3UK+yPHSpPgok5i=daSC0KS5oc5ueA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFqH_51-BMWSGGBpoKxA3UK+yPHSpPgok5i=daSC0KS5oc5ueA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_060912_700457_A2A38BBA 
X-CRM114-Status: GOOD (  24.55  )
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
Cj4gbWVyZ2VkIHllc3RlcmRheSkKClRoaXMgcGF0Y2ggc3RhbmRhbG9uZSB0cmlnZ2VycyBhIGNv
bXBpbGF0aW9uIGVycm9yIC0gc28gaXQgZG9lcwp0cmlnZ2VyIGEgYmlzZWN0aW9uIGJ1dCBub3Qg
dGhlIG9uZSB5b3UgYXJlIGVucXVpcmluZyBhYm91dC4KCkNhbiB5b3UgdHJ5IHRvIGJpc2VjdCBp
dCBhZ2FpbiBhbmQgcmVwb3J0IGJhY2sgcGxlYXNlID8KClRoYW5rcywKTG9yZW56bwoKPiBJIGRp
ZG4ndCBsb29rIGluIGRldGFpbCB5ZXQsIGJ1dCBpZiB5b3UgaGF2ZSBhbnkgaWRlYSBvZiB3aGF0
IGNvdWxkIGJlCj4gdGhlIHByb2JsZW0sIHRoYXQgd291bGQgYmUgZ3JlYXQuCj4gCj4gVGhhbmtz
LAo+ICBFbnJpYwo+IAo+IFsxXSBodHRwczovL2hhc3RlYmluLmNvbS9hZGFzZWdpaGl3LnJiCj4g
Cj4gPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWhvc3QuYyB8IDM2ICsr
KystLS0tLS0tLS0tLS0tLS0tLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyks
IDI5IGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9s
bGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJv
Y2tjaGlwLWhvc3QuYwo+ID4gaW5kZXggZWY4ZTY3N2NlOWQxLi44ZDJlNmYyZTE0MWUgMTAwNjQ0
Cj4gPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5jCj4g
PiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5jCj4gPiBA
QCAtOTUwLDE0ICs5NTAsMTAgQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX3Byb2JlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiAgICAgICAgIHN0cnVjdCBkZXZpY2UgKmRldiA9
ICZwZGV2LT5kZXY7Cj4gPiAgICAgICAgIHN0cnVjdCBwY2lfYnVzICpidXMsICpjaGlsZDsKPiA+
ICAgICAgICAgc3RydWN0IHBjaV9ob3N0X2JyaWRnZSAqYnJpZGdlOwo+ID4gKyAgICAgICBzdHJ1
Y3QgcmVzb3VyY2UgKmJ1c19yZXM7Cj4gPiAgICAgICAgIHN0cnVjdCByZXNvdXJjZV9lbnRyeSAq
d2luOwo+ID4gLSAgICAgICByZXNvdXJjZV9zaXplX3QgaW9fYmFzZTsKPiA+IC0gICAgICAgc3Ry
dWN0IHJlc291cmNlICptZW07Cj4gPiAtICAgICAgIHN0cnVjdCByZXNvdXJjZSAqaW87Cj4gPiAg
ICAgICAgIGludCBlcnI7Cj4gPgo+ID4gLSAgICAgICBMSVNUX0hFQUQocmVzKTsKPiA+IC0KPiA+
ICAgICAgICAgaWYgKCFkZXYtPm9mX25vZGUpCj4gPiAgICAgICAgICAgICAgICAgcmV0dXJuIC1F
Tk9ERVY7Cj4gPgo+ID4gQEAgLTk5NSwyOSArOTkxLDIwIEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBf
cGNpZV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gICAgICAgICBpZiAo
ZXJyIDwgMCkKPiA+ICAgICAgICAgICAgICAgICBnb3RvIGVycl9kZWluaXRfcG9ydDsKPiA+Cj4g
PiAtICAgICAgIGVyciA9IGRldm1fb2ZfcGNpX2dldF9ob3N0X2JyaWRnZV9yZXNvdXJjZXMoZGV2
LCAwLCAweGZmLAo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICZyZXMsICZpb19iYXNlKTsKPiA+ICsgICAgICAgZXJyID0gcGNpX3BhcnNlX3Jl
cXVlc3Rfb2ZfcGNpX3JhbmdlcyhkZXYsICZicmlkZ2UtPndpbmRvd3MsICZidXNfcmVzKTsKPiA+
ICAgICAgICAgaWYgKGVycikKPiA+ICAgICAgICAgICAgICAgICBnb3RvIGVycl9yZW1vdmVfaXJx
X2RvbWFpbjsKPiA+Cj4gPiAtICAgICAgIGVyciA9IGRldm1fcmVxdWVzdF9wY2lfYnVzX3Jlc291
cmNlcyhkZXYsICZyZXMpOwo+ID4gLSAgICAgICBpZiAoZXJyKQo+ID4gLSAgICAgICAgICAgICAg
IGdvdG8gZXJyX2ZyZWVfcmVzOwo+ID4gKyAgICAgICByb2NrY2hpcC0+cm9vdF9idXNfbnIgPSBi
dXNfcmVzLT5zdGFydDsKPiA+Cj4gPiAgICAgICAgIC8qIEdldCB0aGUgSS9PIGFuZCBtZW1vcnkg
cmFuZ2VzIGZyb20gRFQgKi8KPiA+IC0gICAgICAgcmVzb3VyY2VfbGlzdF9mb3JfZWFjaF9lbnRy
eSh3aW4sICZyZXMpIHsKPiA+ICsgICAgICAgcmVzb3VyY2VfbGlzdF9mb3JfZWFjaF9lbnRyeSh3
aW4sICZicmlkZ2UtPndpbmRvd3MpIHsKPiA+ICAgICAgICAgICAgICAgICBzd2l0Y2ggKHJlc291
cmNlX3R5cGUod2luLT5yZXMpKSB7Cj4gPiAgICAgICAgICAgICAgICAgY2FzZSBJT1JFU09VUkNF
X0lPOgo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgaW8gPSB3aW4tPnJlczsKPiA+ICAgICAg
ICAgICAgICAgICAgICAgICAgIGlvLT5uYW1lID0gIkkvTyI7Cj4gPiAgICAgICAgICAgICAgICAg
ICAgICAgICByb2NrY2hpcC0+aW9fc2l6ZSA9IHJlc291cmNlX3NpemUoaW8pOwo+ID4gICAgICAg
ICAgICAgICAgICAgICAgICAgcm9ja2NoaXAtPmlvX2J1c19hZGRyID0gaW8tPnN0YXJ0IC0gd2lu
LT5vZmZzZXQ7Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgICBlcnIgPSBwY2lfcmVtYXBfaW9z
cGFjZShpbywgaW9fYmFzZSk7Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgICBpZiAoZXJyKSB7
Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRldl93YXJuKGRldiwgImVycm9y
ICVkOiBmYWlsZWQgdG8gbWFwIHJlc291cmNlICVwUlxuIiwKPiA+IC0gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgZXJyLCBpbyk7Cj4gPiAtICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGNvbnRpbnVlOwo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgfQo+ID4g
ICAgICAgICAgICAgICAgICAgICAgICAgcm9ja2NoaXAtPmlvID0gaW87Cj4gPiAgICAgICAgICAg
ICAgICAgICAgICAgICBicmVhazsKPiA+ICAgICAgICAgICAgICAgICBjYXNlIElPUkVTT1VSQ0Vf
TUVNOgo+ID4gQEAgLTEwMjYsOSArMTAxMyw2IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9w
cm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gICAgICAgICAgICAgICAgICAg
ICAgICAgcm9ja2NoaXAtPm1lbV9zaXplID0gcmVzb3VyY2Vfc2l6ZShtZW0pOwo+ID4gICAgICAg
ICAgICAgICAgICAgICAgICAgcm9ja2NoaXAtPm1lbV9idXNfYWRkciA9IG1lbS0+c3RhcnQgLSB3
aW4tPm9mZnNldDsKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+ID4gLSAgICAg
ICAgICAgICAgIGNhc2UgSU9SRVNPVVJDRV9CVVM6Cj4gPiAtICAgICAgICAgICAgICAgICAgICAg
ICByb2NrY2hpcC0+cm9vdF9idXNfbnIgPSB3aW4tPnJlcy0+c3RhcnQ7Cj4gPiAtICAgICAgICAg
ICAgICAgICAgICAgICBicmVhazsKPiA+ICAgICAgICAgICAgICAgICBkZWZhdWx0Ogo+ID4gICAg
ICAgICAgICAgICAgICAgICAgICAgY29udGludWU7Cj4gPiAgICAgICAgICAgICAgICAgfQo+ID4g
QEAgLTEwMzYsMTUgKzEwMjAsMTQgQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX3Byb2JlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPgo+ID4gICAgICAgICBlcnIgPSByb2NrY2hp
cF9wY2llX2NmZ19hdHUocm9ja2NoaXApOwo+ID4gICAgICAgICBpZiAoZXJyKQo+ID4gLSAgICAg
ICAgICAgICAgIGdvdG8gZXJyX3VubWFwX2lvc3BhY2U7Cj4gPiArICAgICAgICAgICAgICAgZ290
byBlcnJfcmVtb3ZlX2lycV9kb21haW47Cj4gPgo+ID4gICAgICAgICByb2NrY2hpcC0+bXNnX3Jl
Z2lvbiA9IGRldm1faW9yZW1hcChkZXYsIHJvY2tjaGlwLT5tc2dfYnVzX2FkZHIsIFNaXzFNKTsK
PiA+ICAgICAgICAgaWYgKCFyb2NrY2hpcC0+bXNnX3JlZ2lvbikgewo+ID4gICAgICAgICAgICAg
ICAgIGVyciA9IC1FTk9NRU07Cj4gPiAtICAgICAgICAgICAgICAgZ290byBlcnJfdW5tYXBfaW9z
cGFjZTsKPiA+ICsgICAgICAgICAgICAgICBnb3RvIGVycl9yZW1vdmVfaXJxX2RvbWFpbjsKPiA+
ICAgICAgICAgfQo+ID4KPiA+IC0gICAgICAgbGlzdF9zcGxpY2VfaW5pdCgmcmVzLCAmYnJpZGdl
LT53aW5kb3dzKTsKPiA+ICAgICAgICAgYnJpZGdlLT5kZXYucGFyZW50ID0gZGV2Owo+ID4gICAg
ICAgICBicmlkZ2UtPnN5c2RhdGEgPSByb2NrY2hpcDsKPiA+ICAgICAgICAgYnJpZGdlLT5idXNu
ciA9IDA7Cj4gPiBAQCAtMTA1NCw3ICsxMDM3LDcgQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2ll
X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPgo+ID4gICAgICAgICBlcnIg
PSBwY2lfc2Nhbl9yb290X2J1c19icmlkZ2UoYnJpZGdlKTsKPiA+ICAgICAgICAgaWYgKGVyciA8
IDApCj4gPiAtICAgICAgICAgICAgICAgZ290byBlcnJfdW5tYXBfaW9zcGFjZTsKPiA+ICsgICAg
ICAgICAgICAgICBnb3RvIGVycl9yZW1vdmVfaXJxX2RvbWFpbjsKPiA+Cj4gPiAgICAgICAgIGJ1
cyA9IGJyaWRnZS0+YnVzOwo+ID4KPiA+IEBAIC0xMDY4LDEwICsxMDUxLDYgQEAgc3RhdGljIGlu
dCByb2NrY2hpcF9wY2llX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiAg
ICAgICAgIHBjaV9idXNfYWRkX2RldmljZXMoYnVzKTsKPiA+ICAgICAgICAgcmV0dXJuIDA7Cj4g
Pgo+ID4gLWVycl91bm1hcF9pb3NwYWNlOgo+ID4gLSAgICAgICBwY2lfdW5tYXBfaW9zcGFjZShy
b2NrY2hpcC0+aW8pOwo+ID4gLWVycl9mcmVlX3JlczoKPiA+IC0gICAgICAgcGNpX2ZyZWVfcmVz
b3VyY2VfbGlzdCgmcmVzKTsKPiA+ICBlcnJfcmVtb3ZlX2lycV9kb21haW46Cj4gPiAgICAgICAg
IGlycV9kb21haW5fcmVtb3ZlKHJvY2tjaGlwLT5pcnFfZG9tYWluKTsKPiA+ICBlcnJfZGVpbml0
X3BvcnQ6Cj4gPiBAQCAtMTA5Nyw3ICsxMDc2LDYgQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2ll
X3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4KPiA+ICAgICAgICAgcGNp
X3N0b3Bfcm9vdF9idXMocm9ja2NoaXAtPnJvb3RfYnVzKTsKPiA+ICAgICAgICAgcGNpX3JlbW92
ZV9yb290X2J1cyhyb2NrY2hpcC0+cm9vdF9idXMpOwo+ID4gLSAgICAgICBwY2lfdW5tYXBfaW9z
cGFjZShyb2NrY2hpcC0+aW8pOwo+ID4gICAgICAgICBpcnFfZG9tYWluX3JlbW92ZShyb2NrY2hp
cC0+aXJxX2RvbWFpbik7Cj4gPgo+ID4gICAgICAgICByb2NrY2hpcF9wY2llX2RlaW5pdF9waHlz
KHJvY2tjaGlwKTsKPiA+IC0tCj4gPiAyLjIwLjEKPiA+Cj4gPgo+ID4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IExpbnV4LW1lZGlhdGVrIG1haWxp
bmcgbGlzdAo+ID4gTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
