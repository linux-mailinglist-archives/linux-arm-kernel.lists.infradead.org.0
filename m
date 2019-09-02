Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8007A57B9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 15:37:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e+AaHc6oaDtmuNprlw2YxBdcLw6XmzDBQWjrtVvbf4E=; b=cBx7DF6COB2wLI
	PTWxRdwrIVsuBVEyGG0fsccLVKiGkKN82lGXwDYzuquagF/FZQ6a6dpjo7OyBunRdv4ijYlIqBcFx
	+ad/21pP676mxIKfm/UIwtyCHLUk/hRGsPQnWcrCV/DH1N2GONqs5CPlpJbM9/4oAvhT5f1OepJGH
	VtASb0RjmXUdth+mAgNwJcVWAzpZyparJg9cdf/tlqXIGAWSlevDJEqOFDJKoCzARKp0BjM7D83av
	XD+RqIQLh155I5EsBGNolnj0Sq258Qjcf2WNQZbSrFTA0cb7kQiNaFvZU9yrcSLJrGJUQF/Z1ttgt
	FKp4vQtmVP95iwjMI/qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4mVp-0000Ux-61; Mon, 02 Sep 2019 13:36:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i4mVd-0000UJ-G1
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 13:36:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 85F83337;
 Mon,  2 Sep 2019 06:36:40 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C6EEC3F59C;
 Mon,  2 Sep 2019 06:36:39 -0700 (PDT)
Date: Mon, 2 Sep 2019 14:36:38 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [PATCH v2 06/10] PCI: layerscape: Modify the way of getting
 capability with different PEX
Message-ID: <20190902133637.GM9720@e119886-lin.cambridge.arm.com>
References: <20190822112242.16309-1-xiaowei.bao@nxp.com>
 <20190822112242.16309-6-xiaowei.bao@nxp.com>
 <0c02ac52-e4b1-8071-bf9e-d10b28fc9029@ti.com>
 <AM5PR04MB3299DE7B57F31EA405E4FCBCF5A40@AM5PR04MB3299.eurprd04.prod.outlook.com>
 <11e9b2c3-f4d0-2f82-bb14-45c38a1419e4@ti.com>
 <AM5PR04MB32995566CD6DF0AAAD1AE52EF5A40@AM5PR04MB3299.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM5PR04MB32995566CD6DF0AAAD1AE52EF5A40@AM5PR04MB3299.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_063641_619066_6648AD36 
X-CRM114-Status: GOOD (  26.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Roy Zang <roy.zang@nxp.com>,
 "lorenzo.pieralisi@arm.co" <lorenzo.pieralisi@arm.com>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "gustavo.pimentel@synopsys.com" <gustavo.pimentel@synopsys.com>,
 "jingoohan1@gmail.com" <jingoohan1@gmail.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBBdWcgMjMsIDIwMTkgYXQgMDQ6MTM6MzBBTSArMDAwMCwgWGlhb3dlaSBCYW8gd3Jv
dGU6Cj4gCj4gCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTogS2lzaG9u
IFZpamF5IEFicmFoYW0gSSA8a2lzaG9uQHRpLmNvbT4KPiA+IFNlbnQ6IDIwMTnlubQ45pyIMjPm
l6UgMTE6NDAKPiA+IFRvOiBYaWFvd2VpIEJhbyA8eGlhb3dlaS5iYW9AbnhwLmNvbT47IGJoZWxn
YWFzQGdvb2dsZS5jb207Cj4gPiByb2JoK2R0QGtlcm5lbC5vcmc7IG1hcmsucnV0bGFuZEBhcm0u
Y29tOyBzaGF3bmd1b0BrZXJuZWwub3JnOyBMZW8gTGkKPiA+IDxsZW95YW5nLmxpQG54cC5jb20+
OyBsb3JlbnpvLnBpZXJhbGlzaUBhcm0uY28KPiA+IDxsb3JlbnpvLnBpZXJhbGlzaUBhcm0uY29t
PjsgYXJuZEBhcm5kYi5kZTsgZ3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc7Cj4gPiBNLmguIExp
YW4gPG1pbmdodWFuLmxpYW5AbnhwLmNvbT47IE1pbmdrYWkgSHUgPG1pbmdrYWkuaHVAbnhwLmNv
bT47Cj4gPiBSb3kgWmFuZyA8cm95LnphbmdAbnhwLmNvbT47IGppbmdvb2hhbjFAZ21haWwuY29t
Owo+ID4gZ3VzdGF2by5waW1lbnRlbEBzeW5vcHN5cy5jb207IGxpbnV4LXBjaUB2Z2VyLmtlcm5l
bC5vcmc7Cj4gPiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIu
a2VybmVsLm9yZzsKPiA+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgbGlu
dXhwcGMtZGV2QGxpc3RzLm96bGFicy5vcmc7Cj4gPiBhbmRyZXcubXVycmF5QGFybS5jb20KPiA+
IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjIgMDYvMTBdIFBDSTogbGF5ZXJzY2FwZTogTW9kaWZ5IHRo
ZSB3YXkgb2YgZ2V0dGluZwo+ID4gY2FwYWJpbGl0eSB3aXRoIGRpZmZlcmVudCBQRVgKPiA+IAo+
ID4gSGksCj4gPiAKPiA+IChGaXhlZCBMb3JlbnpvJ3MgZW1haWwgYWRkcmVzcy4gQWxsIHRoZSBw
YXRjaGVzIGluIHRoZSBzZXJpZXMgaGF2ZSB3cm9uZyBlbWFpbAo+ID4gaWQpCj4gPiAKPiA+IE9u
IDIzLzA4LzE5IDg6MDkgQU0sIFhpYW93ZWkgQmFvIHdyb3RlOgo+ID4gPgo+ID4gPgo+ID4gPj4g
LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+ID4+IEZyb206IEtpc2hvbiBWaWpheSBBYnJh
aGFtIEkgPGtpc2hvbkB0aS5jb20+Cj4gPiA+PiBTZW50OiAyMDE55bm0OOaciDIy5pelIDE5OjQ0
Cj4gPiA+PiBUbzogWGlhb3dlaSBCYW8gPHhpYW93ZWkuYmFvQG54cC5jb20+OyBiaGVsZ2Fhc0Bn
b29nbGUuY29tOwo+ID4gPj4gcm9iaCtkdEBrZXJuZWwub3JnOyBtYXJrLnJ1dGxhbmRAYXJtLmNv
bTsgc2hhd25ndW9Aa2VybmVsLm9yZzsgTGVvCj4gPiBMaQo+ID4gPj4gPGxlb3lhbmcubGlAbnhw
LmNvbT47IGxvcmVuem8ucGllcmFsaXNpQGFybS5jbzsgYXJuZEBhcm5kYi5kZTsKPiA+ID4+IGdy
ZWdraEBsaW51eGZvdW5kYXRpb24ub3JnOyBNLmguIExpYW4gPG1pbmdodWFuLmxpYW5AbnhwLmNv
bT47Cj4gPiA+PiBNaW5na2FpIEh1IDxtaW5na2FpLmh1QG54cC5jb20+OyBSb3kgWmFuZyA8cm95
LnphbmdAbnhwLmNvbT47Cj4gPiA+PiBqaW5nb29oYW4xQGdtYWlsLmNvbTsgZ3VzdGF2by5waW1l
bnRlbEBzeW5vcHN5cy5jb207Cj4gPiA+PiBsaW51eC1wY2lAdmdlci5rZXJuZWwub3JnOyBkZXZp
Y2V0cmVlQHZnZXIua2VybmVsLm9yZzsKPiA+ID4+IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5v
cmc7IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsKPiA+ID4+IGxpbnV4cHBj
LWRldkBsaXN0cy5vemxhYnMub3JnOyBhbmRyZXcubXVycmF5QGFybS5jb20KPiA+ID4+IFN1Ympl
Y3Q6IFJlOiBbUEFUQ0ggdjIgMDYvMTBdIFBDSTogbGF5ZXJzY2FwZTogTW9kaWZ5IHRoZSB3YXkg
b2YKPiA+ID4+IGdldHRpbmcgY2FwYWJpbGl0eSB3aXRoIGRpZmZlcmVudCBQRVgKPiA+ID4+Cj4g
PiA+PiBIaSwKPiA+ID4+Cj4gPiA+PiBPbiAyMi8wOC8xOSA0OjUyIFBNLCBYaWFvd2VpIEJhbyB3
cm90ZToKPiA+ID4+PiBUaGUgZGlmZmVyZW50IFBDSWUgY29udHJvbGxlciBpbiBvbmUgYm9hcmQg
bWF5IGJlIGhhdmUgZGlmZmVyZW50Cj4gPiA+Pj4gY2FwYWJpbGl0eSBvZiBNU0kgb3IgTVNJWCwg
c28gY2hhbmdlIHRoZSB3YXkgb2YgZ2V0dGluZyB0aGUgTVNJCj4gPiA+Pj4gY2FwYWJpbGl0eSwg
bWFrZSBpdCBtb3JlIGZsZXhpYmxlLgo+ID4gPj4KPiA+ID4+IHBsZWFzZSB1c2UgZGlmZmVyZW50
IHBjaV9lcGNfZmVhdHVyZXMgdGFibGUgZm9yIGRpZmZlcmVudCBib2FyZHMuCj4gPiA+IFRoYW5r
cywgSSB0aGluayB0aGF0IGl0IHdpbGwgYmUgbW9yZSBmbGV4aWJsZSB0byBkeW5hbWljYWxseSBn
ZXQgTVNJCj4gPiA+IG9yIE1TSVggY2FwYWJpbGl0eSwgVGh1cywgd2Ugd2lsbCBub3QgbmVlZCB0
byBkZWZpbmUgdGhlIHBjaV9lcGNfZmVhdHVyZSBmb3IKPiA+IGRpZmZlcmVudCBib2FyZHMuCj4g
PiAKPiA+IElzIHRoZSByZXN0cmljdGlvbiBiZWNhdXNlIHlvdSBjYW5ub3QgaGF2ZSBkaWZmZXJl
bnQgY29tcGF0aWJsZSBmb3IgZGlmZmVyZW50Cj4gPiBib2FyZHM/Cj4gU29ycnksIEkgYW0gbm90
IHZlcnkgY2xlYXIgd2hhdCB5b3VyIG1lYW4sIEkgdGhpbmsgZXZlbiBpZiBJIHVzZSB0aGUgc2Ft
ZSBjb21wYXRpYmxlCj4gd2l0aCBkaWZmZXJlbnQgYm9hcmRzLCBlYWNoIGJvYXJkcyB3aWxsIGVu
dGVyIHRoZSBwcm9iZSBmdW5jdGlvbiwgaW4gdGhlcmUgSSB3aWxsIGdldAo+IHRoZSBNU0kgb3Ig
TVNJWCBQQ0llIGNhcGFiaWxpdHkgb2YgdGhlIGN1cnJlbnQgY29udHJvbGxlciBpbiB0aGlzIGJv
YXJkLiBXaHkgZG8gSSBuZWVkCj4gdG8gZGVmaW5lIHRoZSBwY2lfZXBjX2ZlYXR1cmUgZm9yIGRp
ZmZlcmVudCBib2FyZHM/IAoKQXQgcHJlc2VudCB5b3UgZGV0ZXJtaW5lIGhvdyB0byBzZXQgdGhl
IFttc2ksbXNpeF1fY2FwYWJsZSBmbGFncyBvZgpwY2lfZXBjX2ZlYXR1cmVzIGJhc2VkIG9uIHJl
YWRpbmcgdGhlIGZ1bmN0aW9uIGNhcGFiaWxpdGllcyBhdCBwcm9iZQp0aW1lLiBJbnN0ZWFkIG9m
IGRvaW5nIHRoaXMsIGlzIGl0IHBvc3NpYmxlIHRoYXQgeW91IGNhbiBkZXRlcm1pbmUgdGhlIGZs
YWdzCmJhc2VkIG9uIHRoZSBjb21wYXRpYmxlIHR5cGUgYWxvbmU/IEZvciBleGFtcGxlLCBpcyB0
aGUgTVNJL01TSVggY2FwYWJpbGl0eQp0aGUgc2FtZSBmb3IgYWxsIGZzbCxsczIwODhhLXBjaWUt
ZXAgZGV2aWNlcz8KCklmIGl0IGlzbid0ICpuZWNlc3NhcnkqIHRvIHByb2JlIGZvciB0aGlzIGlu
Zm9ybWF0aW9uIGF0IHByb2JlIHRpbWUsIHRoZW4KeW91IGNvdWxkIGluc3RlYWQgY3JlYXRlIGEg
c3RhdGljIHBjaV9lcGNfZmVhdHVyZXMgc3RydWN0dXJlIGFuZCBhc3NpZ24KaXQgdG8gc29tZXRo
aW5nIGluIHlvdXIgZHJ2ZGF0YS4gVGhpcyBtYXkgcHJvdmlkZSBzb21lIGJlbmVmaXRzLgoKVGhl
IGR3X3BjaWVfZXBfZ2V0X2ZlYXR1cmVzIGZ1bmN0aW9uIHdvdWxkIHRoZW4gbG9vayBsaWtlOgoK
c3RhdGljIGNvbnN0IHN0cnVjdCBwY2lfZXBjX2ZlYXR1cmVzKgpsc19wY2llX2VwX2dldF9mZWF0
dXJlcyhzdHJ1Y3QgZHdfcGNpZV9lcCAqZXApCnsKCXN0cnVjdCBkd19wY2llICpwY2kgPSB0b19k
d19wY2llX2Zyb21fcHAoZXApOwoJc3RydWN0IGxzX3BjaWVfZXAgKnBjaWUgPSBkZXZfZ2V0X2Ry
dmRhdGEocGNpLT5kZXYpOwoJcmV0dXJuIHBjaWUtPmVwY19mZWF0dXJlczsKfQoKVGhpcyBhbHNv
IG1lYW5zIHlvdSBjYW4gcmV2ZXJ0ICJbdjMsMDMvMTFdIFBDSTogZGVzaWdud2FyZS1lcDogTW92
ZSB0aGUiLgoKSXMgdGhpcyB3aGF0IHlvdSBoYWQgaW4gbWluZCBLaXNob24/CgpUaGFua3MsCgpB
bmRyZXcgTXVycmF5Cgo+ID4gCj4gPiBUaGFua3MKPiA+IEtpc2hvbgo+ID4gCj4gPiA+Pgo+ID4g
Pj4gVGhhbmtzCj4gPiA+PiBLaXNob24KPiA+ID4+Pgo+ID4gPj4+IFNpZ25lZC1vZmYtYnk6IFhp
YW93ZWkgQmFvIDx4aWFvd2VpLmJhb0BueHAuY29tPgo+ID4gPj4+IC0tLQo+ID4gPj4+IHYyOgo+
ID4gPj4+ICAtIFJlbW92ZSB0aGUgcmVwZWF0ZWQgYXNzaWdubWVudCBjb2RlLgo+ID4gPj4+Cj4g
PiA+Pj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaS1sYXllcnNjYXBlLWVwLmMgfCAy
Ngo+ID4gPj4+ICsrKysrKysrKysrKysrKysrKystLS0tLS0tCj4gPiA+Pj4gIDEgZmlsZSBjaGFu
Z2VkLCAxOSBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+ID4gPj4+Cj4gPiA+Pj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaS1sYXllcnNjYXBlLWVwLmMK
PiA+ID4+PiBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaS1sYXllcnNjYXBlLWVwLmMK
PiA+ID4+PiBpbmRleCA0ZTkyYTk1Li44NDYxZjYyIDEwMDY0NAo+ID4gPj4+IC0tLSBhL2RyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaS1sYXllcnNjYXBlLWVwLmMKPiA+ID4+PiArKysgYi9k
cml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ktbGF5ZXJzY2FwZS1lcC5jCj4gPiA+Pj4gQEAg
LTIyLDYgKzIyLDcgQEAKPiA+ID4+Pgo+ID4gPj4+ICBzdHJ1Y3QgbHNfcGNpZV9lcCB7Cj4gPiA+
Pj4gIAlzdHJ1Y3QgZHdfcGNpZQkJKnBjaTsKPiA+ID4+PiArCXN0cnVjdCBwY2lfZXBjX2ZlYXR1
cmVzCSpsc19lcGM7Cj4gPiA+Pj4gIH07Cj4gPiA+Pj4KPiA+ID4+PiAgI2RlZmluZSB0b19sc19w
Y2llX2VwKHgpCWRldl9nZXRfZHJ2ZGF0YSgoeCktPmRldikKPiA+ID4+PiBAQCAtNDAsMjUgKzQx
LDI2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkCj4gPiA+PiBsc19wY2llX2Vw
X29mX21hdGNoW10gPSB7Cj4gPiA+Pj4gIAl7IH0sCj4gPiA+Pj4gIH07Cj4gPiA+Pj4KPiA+ID4+
PiAtc3RhdGljIGNvbnN0IHN0cnVjdCBwY2lfZXBjX2ZlYXR1cmVzIGxzX3BjaWVfZXBjX2ZlYXR1
cmVzID0gewo+ID4gPj4+IC0JLmxpbmt1cF9ub3RpZmllciA9IGZhbHNlLAo+ID4gPj4+IC0JLm1z
aV9jYXBhYmxlID0gdHJ1ZSwKPiA+ID4+PiAtCS5tc2l4X2NhcGFibGUgPSBmYWxzZSwKPiA+ID4+
PiAtfTsKPiA+ID4+PiAtCj4gPiA+Pj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGNpX2VwY19mZWF0
dXJlcyoKPiA+ID4+PiBsc19wY2llX2VwX2dldF9mZWF0dXJlcyhzdHJ1Y3QgZHdfcGNpZV9lcCAq
ZXApICB7Cj4gPiA+Pj4gLQlyZXR1cm4gJmxzX3BjaWVfZXBjX2ZlYXR1cmVzOwo+ID4gPj4+ICsJ
c3RydWN0IGR3X3BjaWUgKnBjaSA9IHRvX2R3X3BjaWVfZnJvbV9lcChlcCk7Cj4gPiA+Pj4gKwlz
dHJ1Y3QgbHNfcGNpZV9lcCAqcGNpZSA9IHRvX2xzX3BjaWVfZXAocGNpKTsKPiA+ID4+PiArCj4g
PiA+Pj4gKwlyZXR1cm4gcGNpZS0+bHNfZXBjOwo+ID4gPj4+ICB9Cj4gPiA+Pj4KPiA+ID4+PiAg
c3RhdGljIHZvaWQgbHNfcGNpZV9lcF9pbml0KHN0cnVjdCBkd19wY2llX2VwICplcCkgIHsKPiA+
ID4+PiAgCXN0cnVjdCBkd19wY2llICpwY2kgPSB0b19kd19wY2llX2Zyb21fZXAoZXApOwo+ID4g
Pj4+ICsJc3RydWN0IGxzX3BjaWVfZXAgKnBjaWUgPSB0b19sc19wY2llX2VwKHBjaSk7Cj4gPiA+
Pj4gIAllbnVtIHBjaV9iYXJubyBiYXI7Cj4gPiA+Pj4KPiA+ID4+PiAgCWZvciAoYmFyID0gQkFS
XzA7IGJhciA8PSBCQVJfNTsgYmFyKyspCj4gPiA+Pj4gIAkJZHdfcGNpZV9lcF9yZXNldF9iYXIo
cGNpLCBiYXIpOwo+ID4gPj4+ICsKPiA+ID4+PiArCXBjaWUtPmxzX2VwYy0+bXNpX2NhcGFibGUg
PSBlcC0+bXNpX2NhcCA/IHRydWUgOiBmYWxzZTsKPiA+ID4+PiArCXBjaWUtPmxzX2VwYy0+bXNp
eF9jYXBhYmxlID0gZXAtPm1zaXhfY2FwID8gdHJ1ZSA6IGZhbHNlOwo+ID4gPj4+ICB9Cj4gPiA+
Pj4KPiA+ID4+PiAgc3RhdGljIGludCBsc19wY2llX2VwX3JhaXNlX2lycShzdHJ1Y3QgZHdfcGNp
ZV9lcCAqZXAsIHU4IGZ1bmNfbm8sCj4gPiA+Pj4gQEAKPiA+ID4+PiAtMTE4LDYgKzEyMCw3IEBA
IHN0YXRpYyBpbnQgX19pbml0IGxzX3BjaWVfZXBfcHJvYmUoc3RydWN0Cj4gPiA+Pj4gcGxhdGZv
cm1fZGV2aWNlCj4gPiA+PiAqcGRldikKPiA+ID4+PiAgCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZw
ZGV2LT5kZXY7Cj4gPiA+Pj4gIAlzdHJ1Y3QgZHdfcGNpZSAqcGNpOwo+ID4gPj4+ICAJc3RydWN0
IGxzX3BjaWVfZXAgKnBjaWU7Cj4gPiA+Pj4gKwlzdHJ1Y3QgcGNpX2VwY19mZWF0dXJlcyAqbHNf
ZXBjOwo+ID4gPj4+ICAJc3RydWN0IHJlc291cmNlICpkYmlfYmFzZTsKPiA+ID4+PiAgCWludCBy
ZXQ7Cj4gPiA+Pj4KPiA+ID4+PiBAQCAtMTI5LDYgKzEzMiwxMCBAQCBzdGF0aWMgaW50IF9faW5p
dCBsc19wY2llX2VwX3Byb2JlKHN0cnVjdAo+ID4gPj4gcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+
ID4gPj4+ICAJaWYgKCFwY2kpCj4gPiA+Pj4gIAkJcmV0dXJuIC1FTk9NRU07Cj4gPiA+Pj4KPiA+
ID4+PiArCWxzX2VwYyA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVvZigqbHNfZXBjKSwgR0ZQX0tF
Uk5FTCk7Cj4gPiA+Pj4gKwlpZiAoIWxzX2VwYykKPiA+ID4+PiArCQlyZXR1cm4gLUVOT01FTTsK
PiA+ID4+PiArCj4gPiA+Pj4gIAlkYmlfYmFzZSA9IHBsYXRmb3JtX2dldF9yZXNvdXJjZV9ieW5h
bWUocGRldiwKPiA+IElPUkVTT1VSQ0VfTUVNLAo+ID4gPj4gInJlZ3MiKTsKPiA+ID4+PiAgCXBj
aS0+ZGJpX2Jhc2UgPSBkZXZtX3BjaV9yZW1hcF9jZmdfcmVzb3VyY2UoZGV2LCBkYmlfYmFzZSk7
Cj4gPiA+Pj4gIAlpZiAoSVNfRVJSKHBjaS0+ZGJpX2Jhc2UpKQo+ID4gPj4+IEBAIC0xMzksNiAr
MTQ2LDExIEBAIHN0YXRpYyBpbnQgX19pbml0IGxzX3BjaWVfZXBfcHJvYmUoc3RydWN0Cj4gPiA+
PiBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiA+Pj4gIAlwY2ktPm9wcyA9ICZsc19wY2llX2Vw
X29wczsKPiA+ID4+PiAgCXBjaWUtPnBjaSA9IHBjaTsKPiA+ID4+Pgo+ID4gPj4+ICsJbHNfZXBj
LT5saW5rdXBfbm90aWZpZXIgPSBmYWxzZSwKPiA+ID4+PiArCWxzX2VwYy0+YmFyX2ZpeGVkXzY0
Yml0ID0gKDEgPDwgQkFSXzIpIHwgKDEgPDwgQkFSXzQpLAo+ID4gPj4+ICsKPiA+ID4+PiArCXBj
aWUtPmxzX2VwYyA9IGxzX2VwYzsKPiA+ID4+PiArCj4gPiA+Pj4gIAlwbGF0Zm9ybV9zZXRfZHJ2
ZGF0YShwZGV2LCBwY2llKTsKPiA+ID4+Pgo+ID4gPj4+ICAJcmV0ID0gbHNfYWRkX3BjaWVfZXAo
cGNpZSwgcGRldik7Cj4gPiA+Pj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
