Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BFF1199B8A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:30:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X5qNLlMZ/aMqcU+Ubr8zMEhwmmqlYrkt7quUG4oK/vk=; b=IgeOI3UNPmdLej
	cUviVM2xnUWJTA/NkMaY2UgB/h+VGiK8LkM+Bid6NhqiBPgwSW+RAAKnh6O6ns9tzcbxfqNqAK/+c
	f1MqQSWCcWyNKY3OIxo3OoaSxuyd5A1QQ7rkNBUzETWi1N0LC64Wtjt5bhYBtiUR7M1DlwgNQQJGD
	Aax26F7dXqRPGSbCUkEmywNdCRtOPro3nGuSYMS0p5IPYbGdmnZzJfDIGfFhgMOuVrWrM9ef77roE
	987BpepnKpOd8pVSxvqK9yxicIA/eB581CMsxSPnJRFynV4T6QF27tKikVDgtZARzY03Jy5N8xJKs
	Reoxd+zyo6iKa3xHqyvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJlv-0001A2-CI; Tue, 31 Mar 2020 16:29:51 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJlJ-0000qe-Ln
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 16:29:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=SqD07tMHKMvMc+LEBdp1QMuCGODqvY57a83wAafLekw=; b=Em8qM7BWeeRP8uNtXmFKnuIQHl
 2568kbBFsx+BFET0CS0FvkSaKtZYVXQ+1l4KixN52IyV0xmwsiapWw5tLrBDJAZRs6vBuIFJj3Nf4
 0WmA4P6eeAHgDutKmNMzmi6HUYISzjaYJJBQap75LGvD0NDneDUYUaCSF9jCVyxAfZ8uH3chtHW5D
 fgjpKShsvj0zQWr0s7jw1JzKywwMDK3sIlpIrBisG1X9xfAjzqXJ1LHdiUqqSf7sPI/vNG5xv6/UD
 dp3ies1y+1fhZkDuD0ZBJA430ssFFRUELDP45tkT9FsHsp4v2XQdS3/zocg6nEVZP9x3j2YCgywbv
 JJLpPKLA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJHD3-0002Y9-AZ
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 13:45:42 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jJHCm-0004G3-Vy; Tue, 31 Mar 2020 15:45:24 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jJHCi-00012N-Fv; Tue, 31 Mar 2020 15:45:20 +0200
Date: Tue, 31 Mar 2020 15:45:20 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH v2] ARM: imx: allow to disable board specific PHY fixups
Message-ID: <20200331134520.GA5756@pengutronix.de>
References: <20200329110457.4113-1-o.rempel@pengutronix.de>
 <20200329150854.GA31812@lunn.ch>
 <20200330052611.2bgu7x4nmimf7pru@pengutronix.de>
 <40209d08-4acb-75c5-1766-6d39bb826ff9@gmail.com>
 <20200330174114.GG25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330174114.GG25745@shell.armlinux.org.uk>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:16:10 up 201 days, 19:04, 452 users,  load average: 1.89, 2.71,
 2.76
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 netdev@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org,
 Philippe Schenker <philippe.schenker@toradex.com>, mkl@pengutronix.de,
 linux-imx@nxp.com, kernel@pengutronix.de, David Jander <david@protonic.nl>,
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUnVzc2VsbCwKCk9uIE1vbiwgTWFyIDMwLCAyMDIwIGF0IDA2OjQxOjE0UE0gKzAxMDAsIFJ1
c3NlbGwgS2luZyAtIEFSTSBMaW51eCBhZG1pbiB3cm90ZToKPiBPbiBNb24sIE1hciAzMCwgMjAy
MCBhdCAxMDozMzowM0FNIC0wNzAwLCBGbG9yaWFuIEZhaW5lbGxpIHdyb3RlOgo+ID4gCj4gPiAK
PiA+IE9uIDMvMjkvMjAyMCAxMDoyNiBQTSwgT2xla3NpaiBSZW1wZWwgd3JvdGU6Cj4gPiA+IEhp
IEFuZHJldywKPiA+ID4gCj4gPiA+IE9uIFN1biwgTWFyIDI5LCAyMDIwIGF0IDA1OjA4OjU0UE0g
KzAyMDAsIEFuZHJldyBMdW5uIHdyb3RlOgo+ID4gPj4gT24gU3VuLCBNYXIgMjksIDIwMjAgYXQg
MDE6MDQ6NTdQTSArMDIwMCwgT2xla3NpaiBSZW1wZWwgd3JvdGU6Cj4gPiA+Pgo+ID4gPj4gSGkg
T2xla3Npago+ID4gPj4KPiA+ID4+PiArY29uZmlnIERFUFJFQ0FURURfUEhZX0ZJWFVQUwo+ID4g
Pj4+ICsJYm9vbCAiRW5hYmxlIGRlcHJlY2F0ZWQgUEhZIGZpeHVwcyIKPiA+ID4+PiArCWRlZmF1
bHQgeQo+ID4gPj4+ICsJLS0taGVscC0tLQo+ID4gPj4+ICsJICBJbiB0aGUgZWFybHkgZGF5cyBp
dCB3YXMgY29tbW9uIHByYWN0aWNlIHRvIGNvbmZpZ3VyZSBQSFlzIGJ5IGFkZGluZyBhCj4gPiA+
Pj4gKwkgIHBoeV9yZWdpc3Rlcl9maXh1cCooKSBpbiB0aGUgbWFjaGluZSBjb2RlLiBUaGlzIHBy
YWN0aWNlIHR1cm5lZCBvdXQgdG8KPiA+ID4+PiArCSAgYmUgcG90ZW50aWFsbHkgZGFuZ2Vyb3Vz
LCBiZWNhdXNlOgo+ID4gPj4+ICsJICAtIGl0IGFmZmVjdHMgYWxsIFBIWXMgaW4gdGhlIHN5c3Rl
bQo+ID4gPj4+ICsJICAtIHRoZXNlIHJlZ2lzdGVyIGNoYW5nZXMgYXJlIHVzdWFsbHkgbm90IHBy
ZXNlcnZlZCBkdXJpbmcgUEhZIHJlc2V0Cj4gPiA+Pj4gKwkgICAgb3Igc3VzcGVuZC9yZXN1bWUg
Y3ljbGUuCj4gPiA+Pj4gKwkgIC0gaXQgY29tcGxpY2F0ZXMgZGVidWdnaW5nLCBzaW5jZSB0aGVz
ZSBjb25maWd1cmF0aW9uIGNoYW5nZXMgd2VyZSBub3QKPiA+ID4+PiArCSAgICBkb25lIGJ5IHRo
ZSBhY3R1YWwgUEhZIGRyaXZlci4KPiA+ID4+PiArCSAgVGhpcyBvcHRpb24gYWxsb3dzIHRvIGRp
c2FibGUgYWxsIGZpeHVwcyB3aGljaCBhcmUgaWRlbnRpZmllZCBhcwo+ID4gPj4+ICsJICBwb3Rl
bnRpYWxseSBoYXJtZnVsIGFuZCBnaXZlIHRoZSBkZXZlbG9wZXJzIGEgY2hhbmNlIHRvIGltcGxl
bWVudCB0aGUKPiA+ID4+PiArCSAgcHJvcGVyIGNvbmZpZ3VyYXRpb24gdmlhIHRoZSBkZXZpY2Ug
dHJlZSAoZS5nLjogcGh5LW1vZGUpIGFuZC9vciB0aGUKPiA+ID4+PiArCSAgcmVsYXRlZCBQSFkg
ZHJpdmVycy4KPiA+ID4+Cj4gPiA+PiBUaGlzIGFwcGVhcnMgdG8gYmUgYW4gSU1YIG9ubHkgcHJv
YmxlbS4gRXZlcnlib2R5IGVsc2Ugc2VlbXMgdG8gb2YgZ290Cj4gPiA+PiB0aGlzIHJpZ2h0LiBU
aGVyZSBpcyBubyBuZWVkIHRvIGJvdGhlciBldmVyeWJvZHkgd2l0aCB0aGlzIG5ldwo+ID4gPj4g
b3B0aW9uLiBQbGVhc2UgcHV0IHRoaXMgaW4gYXJjaC9hcm0vbWFjaC1teHMvS2NvbmZpZyBhbmQg
aGF2ZSBJTVggaW4KPiA+ID4+IHRoZSBuYW1lLgo+ID4gPiAKPiA+ID4gQWN0dWFsbHksIGFsbCBm
aXh1cHMgc2VlbXMgdG8gZG8gd3JpbmcgdGhpbmc6Cj4gPiA+IGFyY2gvYXJtL21hY2gtZGF2aW5j
aS9ib2FyZC1kbTY0NHgtZXZtLmM6OTE1OgkJcGh5X3JlZ2lzdGVyX2ZpeHVwX2Zvcl91aWQoTFhU
OTcxX1BIWV9JRCwgTFhUOTcxX1BIWV9NQVNLLAo+ID4gPiAKPiA+ID4gSW5jcmVhc2VkIE1JSSBk
cml2ZSBzdHJlbmd0aC4gU2hvdWxkIGJlIHByb2JhYmx5IGVuYWJsZWQgYnkgdGhlIFBIWQo+ID4g
PiBkcml2ZXIuCj4gPiA+IAo+ID4gPiBhcmNoL2FybS9tYWNoLWlteC9tYWNoLWlteDZxLmM6MTY3
OgkJcGh5X3JlZ2lzdGVyX2ZpeHVwX2Zvcl91aWQoUEhZX0lEX0tTWjkwMjEsIE1JQ1JFTF9QSFlf
SURfTUFTSywKPiA+ID4gYXJjaC9hcm0vbWFjaC1pbXgvbWFjaC1pbXg2cS5jOjE2OToJCXBoeV9y
ZWdpc3Rlcl9maXh1cF9mb3JfdWlkKFBIWV9JRF9LU1o5MDMxLCBNSUNSRUxfUEhZX0lEX01BU0ss
Cj4gPiA+IGFyY2gvYXJtL21hY2gtaW14L21hY2gtaW14NnEuYzoxNzE6CQlwaHlfcmVnaXN0ZXJf
Zml4dXBfZm9yX3VpZChQSFlfSURfQVI4MDMxLCAweGZmZmZmZmVmLAo+ID4gPiBhcmNoL2FybS9t
YWNoLWlteC9tYWNoLWlteDZxLmM6MTczOgkJcGh5X3JlZ2lzdGVyX2ZpeHVwX2Zvcl91aWQoUEhZ
X0lEX0FSODAzNSwgMHhmZmZmZmZlZiwKPiAKPiBBcyBmYXIgYXMgSSdtIGNvbmNlcm5lZCwgdGhl
IEFSODAzNSBmaXh1cCBpcyB0aGVyZSB3aXRoIGdvb2QgcmVhc29uLgo+IEl0J3Mgbm90IGp1c3Qg
InJhbmRvbSIgYnV0IGlzIHJlcXVpcmVkIHRvIG1ha2UgdGhlIEFSODAzNSB1c2FibGUgd2l0aAo+
IHRoZSBpTVg2IFNvQ3MuICBOb3QgYmVjYXVzZSBvZiBhIGJvYXJkIGxldmVsIHRoaW5nLCBidXQg
YmVjYXVzZSBpdCdzCj4gcmVxdWlyZWQgZm9yIHRoZSBBUjgwMzUgdG8gYmUgdXNhYmxlIHdpdGgg
YW4gaU1YNiBTb0MuCj4gCj4gU28sIGhhdmluZyBpdCByZWdpc3RlcmVkIGJ5IHRoZSBpTVg2IFNv
QyBjb2RlIGlzIGVudGlyZWx5IGxvZ2ljYWwgYW5kCj4gY29ycmVjdC4KPiAKPiBUaGF0J3MgbGlr
ZWx5IHRydWUgb2YgdGhlIEFSODAzMSBzaXR1YXRpb24gYXMgd2VsbC4KPiAKPiBJIGNhbid0IHNw
ZWFrIGZvciBhbnkgb2YgdGhlIG90aGVycy4KCk9LLCBsZXQncyBhbmFseXplIGl0IHN0ZXAgYnkg
c3RlcDoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KYXJjaC9hcm0vbWFjaC1pbXgvbWFjaC1pbXg2
cS5jCgpUaGUgQVI4MDM1IGZpeHVwIGlzIGRvaW5nIGZvbGxvd2luZyBjb25maWd1cmF0aW9uczoK
LSBkaXNhYmxlIFNtYXJ0RUVFIHdpdGggZm9sbG93aW5nIGRlc2NyaXB0aW9uOgogIC8qIEFyODAz
eCBwaHkgU21hcnRFRUUgZmVhdHVyZSBjYXVzZSBsaW5rIHN0YXR1cyBnZW5lcmF0ZXMgZ2xpdGNo
LAogICAqIHdoaWNoIGNhdXNlIGV0aGVybmV0IGxpbmsgZG93bi91cCBpc3N1ZSwgc28gZGlzYWJs
ZSBTbWFydEVFRQoKLSBlbmFibGUgY2xvY2sgb3V0cHV0IGZyb20gUEhZLCBjb25maWd1cmVzIGl0
IHRvIDEyNU1oeiBhbmQgY29uZmlndXJlcwogIGNsb2NrIHNrZXcuIFNlZSB0aGUgY29tbWVudCBw
cm92aWRlZCBpbiB0aGUgc291cmNlIGNvZGU6CiAgKiBFbmFibGUgMTI1TUh6IGNsb2NrIGZyb20g
Q0xLXzI1TSBvbiB0aGUgQVI4MDMxLiAgVGhpcwogICogaXMgZmVkIGluIHRvIHRoZSBJTVg2IG9u
IHRoZSBFTkVUX1JFRl9DTEsgKFYyMikgcGFkLgogICogQWxzbywgaW50cm9kdWNlIGEgdHggY2xv
Y2sgZGVsYXkuCiAgKgogICogVGhpcyBpcyB0aGUgc2FtZSBhcyBpcyB0aGUgQVI4MDMxIGZpeHVw
LgoKLSBwb3dlcnMgb24gdGhlIFBIWS4gUHJvYmFibHkgdG8gbWFrZSBzdXJlIHRoZSBjbG9jayBv
dXRwdXQgd2lsbCBydW4KICBiZWZvcmUgRkVDIGlzIHByb2JlZCB0byBhdm9pZCBjbG9jayBnbGl0
Y2hlcy4KClRoZSBBUjgwMzEgZml4dXAgb25seSBlbmFibGVzIGNsb2NrIG91dHB1dCBvZiBQSFks
IGNvbmZpZ3VyZXMgaXQgdG8KMTI1TWh6LCBhbmQgY29uZmlndXJlcyBjbG9jayBza2V3LiBUaGUg
UEhZIG5vdCBwb3dlcmVkIGFuZCBhbHRob3VnaCBpdApzdXBwb3J0cyBTbWFydEVFRSwgaXQncyBu
b3QgZGlzYWJsZWQuIExldCdzIGFzc3VtZSB0aGUgZml4dXAgYXV0aG9yIGRpZAp0aGUgY29ycmVj
dCBjb25maWd1cmF0aW9uIGFuZCBTbWFydEVFRSBpcyB3b3JraW5nIHdpdGhvdXQgcHJvYmxlbXMu
CgpUaGUgS1NaOTAzMXJuIGZpeHVwIGlzIGNvbmZpZ3VyaW5nIG9ubHkgdGhlIGNsb2NrIHNrZXcu
IE5ldmVyIHRoZSBsZXNzLAp0aGlzIFBIWSBpcyBub3QgYWJsZSB0byBwcm92aWRlIGEgc3RhYmxl
IDEyNU1oeiBjbG9jayBmb3IgdGhlIEZFQywgaXQncyBub3QKcmVjb21tZW5kZWQgdG8gdXNlLiBT
ZWU6CnwgaHR0cDovL3d3MS5taWNyb2NoaXAuY29tL2Rvd25sb2Fkcy9lbi9EZXZpY2VEb2MvODAw
MDA2OTJELnBkZgp8IE1vZHVsZSAyOiBEdXR5IGN5Y2xlIHZhcmlhdGlvbiBmb3Igb3B0aW9uYWwg
MTI1TUh6IHJlZmVyZW5jZSBvdXRwdXQgY2xvY2sKClRoZSBLU1o5MDIxcm4gZml4dXAgaXMgY29u
ZmlndXJpbmcgY2xvY2sgc2tld3MuCgpTdW1tYXJ5OgotIFNtYXJ0RUVFIGlzIGEgUEhZIGVycmF0
YSBvciBiYWQgY29uZmlndXJhdGlvbi4gSXQgaXMgcHJlc2VudCBpbiBib3RoCiAgUEhZcyBBUjgw
MzUgYW5kIEFSODAzMSwgYW5kIHNob3VsZCBiZSBkaXNhYmxlZCB2aWEgRFQgaW4gdGhlIFBIWSBk
cml2ZXIuCgotIENsb2NrIHNrZXcgY29uZmlndXJhdGlvbiBpcyBib2FyZCBzcGVjaWZpYyBhbmQg
dGhpcyBmaXh1cCB3aWxsIGFwcGx5CiAgaXQgZXZlbiBpZiB0aGUgUEhZIGlzIG5vdCBjb25uZWN0
ZWQgdG8gdGhlIEZFQy4gRm9yIGV4YW1wbGUgYm9hcmRzCiAgd2l0aCBhZGRpdGlvbmFsIE5JQyBj
b25uZWN0ZWQgdG8gdGhlIFBDSWUgb3IgYSBzd2l0Y2ggY29ubmVjdGVkIHRvIHRoZQogIEZFQy4K
ICBGb3IgdGhlIGNsb2NrIHNrZXcgY29uZmlndXJhdGlvbiB3ZSBhbHJlYWR5IGhhdmUgUkdNSUlf
SUQqLCB3aGljaAogIGNhbiBiZSBjb25maWd1cmVkIGJ5IGRldmljZXRyZWUgYW5kL29yIGJ5IGV0
aGVybmV0IGRyaXZlciBkaXJlY3RseSwKICBpZiBubyBkZXZpY2V0cmVlIGNhbiBiZSB1c2VkLiBG
b3IgZXhhbXBsZSBieSBVU0IgRXRoZXJuZXQgYWRhcHRlci4KICBBbGwgYWZmZWN0ZWQgUEhZcyBp
biB0aGlzIGZpeHVwIHNlcmllcyBhbHJlYWR5IHN1cHBvcnQgY2xvY2sgc2tldwogIGNvbmZpZ3Vy
YXRpb24gYnkgUEhZIGRyaXZlcnMuIFNlZSBsYXRlc3QgdmVyc2lvbnMgb2YgYXQ4MDN4LmMgYW5k
CiAgbWljcmVsLmMuIEl0IG1lYW5zLCBjb25maWd1cmF0aW9ucyByZWx5aW5nIG9uIHRoZXNlIGZp
eHVwcyAoYW5kIG5vdAogIHByb3ZpZGluZyBjb3JyZWN0IGRldmljZXRyZWUgd2l0aCBwcm9wZXIg
cGh5LW1vZGUpIHdpbGwgYnJlYWsgc29vbmVyIG9yCiAgbGF0ZXIsIG9yIGFscmVhZHkgZGlkIGFu
ZCBhcmUgYWxyZWFkeSBmaXhlZC4KCi0gMTI1TWh6IGlzIGEgYmlnZ2VyIGlzc3VlOgogIC0gSXQg
aXMgYm9hcmQgc3BlY2lmaWMuIE5vdCBhbGwgYm9hcmRzIHVzZSBQSFlzIGFzIGEgY2xvY2sgc291
cmNlIGZvciB0aGUKICAgIEZFQy4gVGhlIGZvbGxvd2luZyBmdW5jdGlvbiBpcyBwcm9vZiBvZiBt
eSBjbGFpbS4gSXQgaXMgcmVzcG9uc2libGUgdG8KICAgIGNvbmZpZ3VyZSBpTVg2USB0byB1c2Ug
b3duIGNsb2NrIHByb3ZpZGVyOgogICAgYXJjaC9hcm0vbWFjaC1pbXgvbWFjaC1pbXg2cS5jCnwg
ICAgc3RhdGljIHZvaWQgX19pbml0IGlteDZxXzE1ODhfaW5pdCh2b2lkKQp8CW5wID0gb2ZfZmlu
ZF9jb21wYXRpYmxlX25vZGUoTlVMTCwgTlVMTCwgImZzbCxpbXg2cS1mZWMiKTsKfAlpZiAoIW5w
KSB7CnwJCXByX3dhcm4oIiVzOiBmYWlsZWQgdG8gZmluZCBmZWMgbm9kZVxuIiwgX19mdW5jX18p
Owp8CQlyZXR1cm47CnwJfQp8CnwJcHRwX2NsayA9IG9mX2Nsa19nZXQobnAsIDIpOwp8CWlmIChJ
U19FUlIocHRwX2NsaykpIHsKfAkJcHJfd2FybigiJXM6IGZhaWxlZCB0byBnZXQgcHRwIGNsb2Nr
XG4iLCBfX2Z1bmNfXyk7CnwJCWdvdG8gcHV0X25vZGU7CnwJfQp8CnwJZW5ldF9yZWYgPSBjbGtf
Z2V0X3N5cyhOVUxMLCAiZW5ldF9yZWYiKTsKfAlpZiAoSVNfRVJSKGVuZXRfcmVmKSkgewp8CQlw
cl93YXJuKCIlczogZmFpbGVkIHRvIGdldCBlbmV0IGNsb2NrXG4iLCBfX2Z1bmNfXyk7CnwJCWdv
dG8gcHV0X3B0cF9jbGs7CnwJfQp8CnwJLyoKfAkgKiBJZiBlbmV0X3JlZiBmcm9tIEFOQVRPUC9D
Q00gaXMgdGhlIFBUUCBjbG9jayBzb3VyY2UsIHdlIG5lZWQgdG8KfAkgKiBzZXQgYml0IElPTVVY
Q19HUFIxWzIxXS4gIE9yIHRoZSBQVFAgY2xvY2sgbXVzdCBiZSBmcm9tIHBhZAp8CSAqIChleHRl
cm5hbCBPU0MpLCBhbmQgd2UgbmVlZCB0byBjbGVhciB0aGUgYml0Lgp8CSAqLwp8CWNsa3NlbCA9
IGNsa19pc19tYXRjaChwdHBfY2xrLCBlbmV0X3JlZikgPwp8CQkJCUlNWDZRX0dQUjFfRU5FVF9D
TEtfU0VMX0FOQVRPUCA6CnwJCQkJSU1YNlFfR1BSMV9FTkVUX0NMS19TRUxfUEFEOwp8CWdwciA9
IHN5c2Nvbl9yZWdtYXBfbG9va3VwX2J5X2NvbXBhdGlibGUoImZzbCxpbXg2cS1pb211eGMtZ3By
Iik7CnwJaWYgKCFJU19FUlIoZ3ByKSkKfAkJcmVnbWFwX3VwZGF0ZV9iaXRzKGdwciwgSU9NVVhD
X0dQUjEsCnwJCQkJSU1YNlFfR1BSMV9FTkVUX0NMS19TRUxfTUFTSywKfAkJCQljbGtzZWwpOwoK
ICAtIFRoZSBhdDgwM3ggUEhZIGRyaXZlciBhbHJlYWR5IHByb3ZpZGVzIGZvbGxvd2luZyBkZXZp
Y2V0cmVlIGJpbmRpbmdzIHRvCiAgICB0byBjb25maWd1cmUgaXQgYXMgY2xvY2sgcHJvdmlkZXI6
CiAgICBxY2EsY2xrLW91dC1mcmVxdWVuY3kKICAgIHFjYSxrZWVwLXBsbC1lbmFibGVkCiAgICBJ
dCBpcyBraW5kIG9mIHJlcGxhY2VtZW50IG9mIHRoZSBjbG9jayBmcmFtZXdvcmsuCiAgLSB0aGUg
bWljcmVsIFBIWSBpcyBjb25maWd1cmVkLCBpbiBtb3N0IGNhc2VzLCBieSBib290c3RyYXAgcGlu
cywgYnV0IGRvZXMKICAgIG5vdCBndWFyYW50ZWUgYSBnbGl0Y2ggZnJlZSBjbG9jaywgc2luY2Ug
dGhlIFBIWSBjYW4gYmUgc3VzcGVuZGVkIG5vCiAgICBtYXR0ZXIgaWYgb3RoZXIgZGV2aWNlcyBh
cmUgdXNpbmcgdGhlIGNsb2NrIHByb3ZpZGVkIGJ5IHRoaXMgUEhZIG9yCiAgICBub3QuCiAgLSBJ
biBjdXJyZW50IGNhc2Ugd2UgaGF2ZSB0aGUgRkVDIGRyaXZlciB3aGljaCBpcyB1c2luZyBjbG9j
ayBmcmFtZXdvcmssCiAgICBwcm9wZXJseSwgcmVxdWVzdGluZyBjbG9jayBzb3VyY2UgYW5kIGV2
ZW4gdHJ5aW5nIHRvIGRpc2FibGUgaXQgZm9yCiAgICBwb3dlciBtYW5hZ2VtZW50LiBCdXQgdGhl
IGNsb2NrIHByb3ZpZGVycyBhcmUgX05PVF8gaW1wbGVtZW50aW5nIGNsb2NrCiAgICBmcmFtZXdv
cmsgYW5kIGRvIG5vdCBjYXJlIGFib3V0IHByb3BlciBnbGl0Y2ggZnJlZSBjbG9jayBpbml0aWFs
aXphdGlvbgogICAgYW5kIHBvd2VyIG1hbmFnZW1lbnQuIEltcGxlbWVudGluZyBwcm9wZXIgY2xv
Y2sgc3VwcG9ydCBpbiB0aGUgUEhZIGRyaXZlcnMKICAgIHdpbGwgbW9zdCBwcm9iYWJseSBicmVh
ayBhbGwgYm9hcmRzIHJlbHlpbmcgb24gdGhlc2UgZml4dXBzLgoKLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KYXJjaC9hcm0vbWFjaC1pbXgvbWFjaC1pbXg2c3guYwotIHRoaXMgZml4dXAgaXMgY29u
ZmlndXJpbmcgUkdNSUkgc2lnbmFsIHZvbHRhZ2UgdG8gMVY4IGFuZCBjbG9jayBza2V3cy4KICBC
b3RoIGNvbmZpZ3VyYXRpb25zIGFyZSBzdXBwb3J0ZWQgYnkgdGhlIGF0ODAzeCBkcml2ZXI6CiAg
dmRkaW8tcmVndWxhdG9yCiAgUkdNSUktSUQqCgotIFRoaXMgZml4dXAgaXMgbWlzc2luZyBTbWFy
dEVFRSB3b3JrYXJvdW5kLgoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KYXJjaC9hcm0vbWFjaC1p
bXgvbWFjaC1pbXg2dWwuYwpzdGF0aWMgaW50IGtzejgwODFfcGh5X2ZpeHVwKHN0cnVjdCBwaHlf
ZGV2aWNlICpkZXYpCnsKCWlmIChkZXYgJiYgZGV2LT5pbnRlcmZhY2UgPT0gUEhZX0lOVEVSRkFD
RV9NT0RFX01JSSkgewoJCXBoeV93cml0ZShkZXYsIDB4MWYsIDB4ODExMCk7CgkJcGh5X3dyaXRl
KGRldiwgMHgxNiwgMHgyMDEpOwoJfSBlbHNlIGlmIChkZXYgJiYgZGV2LT5pbnRlcmZhY2UgPT0g
UEhZX0lOVEVSRkFDRV9NT0RFX1JNSUkpIHsKCQlwaHlfd3JpdGUoZGV2LCAweDFmLCAweDgxOTAp
OwoJCXBoeV93cml0ZShkZXYsIDB4MTYsIDB4MjAyKTsKCX0KClRoaXMgZml4dXAgZ2l2ZXMgbWUg
aGVhZGFjaGVzOgpodHRwOi8vd3cxLm1pY3JvY2hpcC5jb20vZG93bmxvYWRzL2VuL0RldmljZURv
Yy9LU1o4MDgxUk5BX1JORC5wZGYKCi0gMHgxZiBpcyBQSFkgQ29udHJvbCAyIHJlZ2lzdGVyIGFu
ZCBpdCBpcyBjaGFuZ2luZyBtYWlubHkgb25seSBvbmUKICBCSVQoNykgYWdhaW5zdCBkZWZhdWx0
L3Jlc2V0IHZhbHVlcy4gVGhpcyBiaXQgaXMgY29uZmlndXJpbmcgdGhlCiAgY2xvY2sgZnJlcXVl
bmN5IG9mIFhUQUwgYXR0YWNoZWQgdG8gdGhlIFBIWS4KICBMb29raW5nIGludG8gdGhlIGRvY3Vt
ZW50YXRpb24gc2hvd3MgdGhhdCB0aGUgbWVhbmluZyBvZiB0aGlzIGJpdAogIGRlcGVuZHMgb24g
dGhlIGV4YWN0IFBIWSB2YXJpYW50ICgxIG1lYW5zIDUwTUh6IG9uIHRoZSBSTkEgYW5kIDI1TUh6
CiAgb24gdGhlIFJORCB2YXJpYW50KS4gVGhpcyBmaXh1cCBkb2Vzbid0IHRha2UgdGhpcyBpbnRv
IGFjY291bnQuIDooCgotIDB4MTYgaXMgT3BlcmF0aW9uIE1vZGUgU3RyYXAgT3ZlcnJpZGUKICB0
aGlzIGZpeHVwIGlzIGNoYW5naW5nIHR3byAzIGJpdHM6CiAgLSBCSVQoOSkgSWYgYml0IGlzIOKA
mDHigJksIFBIWSBBZGRyZXNzIDAgaXMgbm9uLWJyb2FkY2FzdC4KICAgIFRoaXMgYml0IGlzIG92
ZXJ3cml0dGVuIGJ5IHRoZSBtaWNyZWwgZHJpdmVyLCBzZWUKICAgIGtzenBoeV9jb25maWdfaW5p
dCgpCiAtIEJJVCgxKSBhcmUgb3ZlcndyaXRpbmcgYm9vdCBzdHJhcCBjb25maWd1cmF0aW9uIGZv
ciBSTUlJIG1vZGUuCiAtIEJJVCgwKSBpcyByZXNlcnZlZC4gU2luY2UgdGhpcyBQSFkgc3VwcG9y
dCBvbmx5IFJNSUkgbW9kZSBhbmQgaGFzIG5vdAogICBlbm91Z2ggcGlucyBmb3IgTUlJIG1vZGUs
IHRoZSBiZW5lZml0IG9mIHRoaXMgY29uZmlndXJhdGlvbiBpcwogICBxdWVzdGlvbmFibGUuCgpU
aGUgcGF0Y2ggaW50cm9kdWNlZCB0aGlzIGZpeHVwIGlzIHRyeWluZyB0byBmaXggdGhlIGlteDZ1
bCBldmsgYm9hcmQuCkFjY29yZGluZyB0byB0aGlzIGRldmljZXRyZWU6Cgp8YXJjaC9hcm0vYm9v
dC9kdHMvaW14NnVsLTE0eDE0LWV2ay5kdHNpCnwmZmVjMSB7CnwJcGluY3RybC1uYW1lcyA9ICJk
ZWZhdWx0IjsKfAlwaW5jdHJsLTAgPSA8JnBpbmN0cmxfZW5ldDE+Owp8CXBoeS1tb2RlID0gInJt
aWkiOwp8CXBoeS1oYW5kbGUgPSA8JmV0aHBoeTA+Owp8CXBoeS1zdXBwbHkgPSA8JnJlZ19wZXJp
XzN2Mz47CnwJc3RhdHVzID0gIm9rYXkiOwp8fTsKfAp8JmZlYzIgewp8CXBpbmN0cmwtbmFtZXMg
PSAiZGVmYXVsdCI7CnwJcGluY3RybC0wID0gPCZwaW5jdHJsX2VuZXQyPjsKfAlwaHktbW9kZSA9
ICJybWlpIjsKfAlwaHktaGFuZGxlID0gPCZldGhwaHkxPjsKfAlwaHktc3VwcGx5ID0gPCZyZWdf
cGVyaV8zdjM+Owp8CXN0YXR1cyA9ICJva2F5IjsKfAp8CW1kaW8gewp8CQkjYWRkcmVzcy1jZWxs
cyA9IDwxPjsKfAkJI3NpemUtY2VsbHMgPSA8MD47CnwKfAkJZXRocGh5MDogZXRoZXJuZXQtcGh5
QDIgewp8CQkJcmVnID0gPDI+Owp8CQkJbWljcmVsLGxlZC1tb2RlID0gPDE+Owp8CQkJY2xvY2tz
ID0gPCZjbGtzIElNWDZVTF9DTEtfRU5FVF9SRUY+Owp8CQkJY2xvY2stbmFtZXMgPSAicm1paS1y
ZWYiOwp8CQl9Owp8CnwJCWV0aHBoeTE6IGV0aGVybmV0LXBoeUAxIHsKfAkJCXJlZyA9IDwxPjsK
fAkJCW1pY3JlbCxsZWQtbW9kZSA9IDwxPjsKfAkJCWNsb2NrcyA9IDwmY2xrcyBJTVg2VUxfQ0xL
X0VORVQyX1JFRj47CnwJCQljbG9jay1uYW1lcyA9ICJybWlpLXJlZiI7CnwJCX07CnwJfTsKfH07
CgpUaGlzIFBIWXMgaGF2ZSBwcm9wZXIgY2xvY2sgY29uZmlndXJhdGlvbiBhbmQgY2FuIGJlIHVz
ZWQgb25seSBpbiBSR01JSQptb2RlLiBTbywgdGhpcyBmaXh1cCBzaG91bGQgYmUgcmVtb3ZlZCBh
bnkgd2F5LgoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KYXJjaC9hcm0vbWFjaC1pbXgvbWFjaC1p
bXg3ZC5jCkJvdGggZml4dXBzIGFkZGVkIGJ5IGZvbGxvd2luZyBjb21taXQ6Cnxjb21taXQgNjlm
OWM1MDQ3ZDA0OTQ1NjkzZWNjMWJkZmRiOGEzZGMyYTFmNDhjZgp8QXV0aG9yOiBGdWdhbmcgRHVh
biA8YjM4NjExQGZyZWVzY2FsZS5jb20+CnxEYXRlOiAgIE1vbiBTZXAgNyAxMDo1NTowMCAyMDE1
ICswODAwCnwKfCAgICBBUk06IGlteDogYWRkIGVuZXQgaW5pdCBmb3IgaS5NWDdEIHBsYXRmb3Jt
CnwKfCAgICBBZGQgZW5ldCBwaHkgZml4dXAsIGNsb2NrIHNvdXJjZSBpbml0IGZvciBpLk1YN0Qg
cGxhdGZvcm0uCnwKfCAgICBTaWduZWQtb2ZmLWJ5OiBGdWdhbmcgRHVhbiA8QjM4NjExQGZyZWVz
Y2FsZS5jb20+CnwgICAgU2lnbmVkLW9mZi1ieTogU2hhd24gR3VvIDxzaGF3bmd1b0BrZXJuZWwu
b3JnPgoKLSB0aGUgYXI4MDMxIGZpeHVwIGlzIGNvbmZpZ3VyaW5nIFJHTUlJIHNpZ25hbCB2b2x0
YWdlIHRvIDFWOCBhbmQgY2xvY2sgc2tld3MuCiAgQm90aCBjb25maWd1cmF0aW9ucyBhcmUgc3Vw
cG9ydGVkIGJ5IHRoZSBhdDgwM3ggZHJpdmVyOgogIHZkZGlvLXJlZ3VsYXRvcgogIFJHTUlJLUlE
KgotIHRoaXMgdGltZSBTbWFydEVFRSB3b3JrYXJvdW5kIGlzIGluY2x1ZGVkCi0gdGhlIGJjbTU0
MjIwIGZpeHVwIGlzIGNvbmZpZ3VyaW5nIGNsb2NrIHNrZXdzLiBObyBkcml2ZXIgaXMgYXZhaWxh
YmxlCiAgZm9yIHRoZSBiY201NDIyMCBQSFkuIFRoaXMgdmFsdWVzIGFyZSBwcm9iYWJseSBub3Qg
b3ZlcndyaXR0ZW4gYnkgYW55CiAgb3RoZXIgZHJpdmVyLgoKLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0KYXJjaC9hcm0vbWFjaC1teHMvbWFjaC1teHMuYwpUaGlzIGZpeHVwIHdhcyBhZGRlZCBieSBm
b2xsb3dpbmcgY29tbWl0Ogp8Y29tbWl0IDMxNDNiYmI0MmIzZDI3YTVmNzk5Yzk3Yzg0ZmI3YTRh
MWRlODhmOTEKfEF1dGhvcjogU2hhd24gR3VvIDxzaGF3bi5ndW9AbGluYXJvLm9yZz4KfERhdGU6
ICAgU2F0IEp1bCA3IDIzOjEyOjAzIDIwMTIgKzA4MDAKfAp8ICAgIEFSTTogbXhzOiBjb252ZXJ0
IGFweDRkZXZraXQgYm9hcmQgdG8gZGV2aWNlIHRyZWUKfAp8ICAgIFRlc3RlZC1ieTogTGF1cmkg
SGludHNhbGEgPGxhdXJpLmhpbnRzYWxhQGJsdWVnaWdhLmNvbT4KfCAgICBTaWduZWQtb2ZmLWJ5
OiBTaGF3biBHdW8gPHNoYXduLmd1b0BsaW5hcm8ub3JnPgoKVGhpcyBpcyB0aGUgZmlyc3QgZml4
dXAgYW5kIHRoaXMgc2VyaWVzIHdoaWNoIGlzIG5vdCBtb2RpZnlpbmcgdGhlIFBIWQpyZWdpc3Rl
cnMgZGlyZWN0bHksIGJ1dCBzZXQgdGhlIGxlZ2FjeSBib2FyZCBmaWxlIHNwZWNpZmljIGZsYWdz
IGZvciB0aGUKcGh5LiBUaGUgYm9hcmQgc3BlY2lmaWMgWFRBTCBmcmVxdWVuY3kgaXMgcmVwb3J0
ZWQgdG8gdGhlIFBIWSBieQpzZXR0aW5nIE1JQ1JFTF9QSFlfNTBNSFpfQ0xLIGZsYWcgYW5kIHVz
ZWQgYnkgbWljcmVsIGRyaXZlci4KCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCmFyY2gvYXJtL21h
Y2gtb3Jpb241eC9kbnMzMjMtc2V0dXAuYwpUaGlzIGZpeHVwIHdhcyBhZGRlZCBieSBmb2xsb3dp
bmcgY29tbWl0Ogp8Y29tbWl0IDZlMmRhYTQ5NDIwNzc3MTkwYzEzM2Q3MDk3ZGQ4ZDVjMDViNDc1
YWMKfEF1dGhvcjogQmVuamFtaW4gSGVycmVuc2NobWlkdCA8YmVuaEBrZXJuZWwuY3Jhc2hpbmcu
b3JnPgp8RGF0ZTogICBNb24gSnVuIDIxIDEzOjIxOjUzIDIwMTAgKzEwMDAKfAp8ICAgIFtBUk1d
IG9yaW9uNXg6IEJhc2Ugc3VwcG9ydCBmb3IgRE5TLTMyMyByZXYgQzEKfAp8ICAgIFRoaXMgcGF0
Y2ggYWRkcyB0aGUgYmFzZSBzdXBwb3J0IGZvciB0aGlzIG5ldyBIVyByZXZpc2lvbiB0byB0aGUg
ZXhpc3RpbmcKfCAgICBkbnMzMjMtc2V0dXAuYyBmaWxlLiBUaGUgU29DIHNlZW1zIHRvIGJlIHRo
ZSBzYW1lIGFzIHJldiBCMSwgdGhlIEdQSU9zCnwgICAgYXJlIGFsbCB3aXJlZCBkaWZmZXJlbnRs
eSB0aG91Z2ggYW5kIHRoZSBmYW4gY29udHJvbCBpc24ndCBpMmMgYmFzZWQKfCAgICBhbnltb3Jl
Lgp8CnwgICAgU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gSGVycmVuc2NobWlkdCA8YmVuaEBrZXJu
ZWwuY3Jhc2hpbmcub3JnPgp8ICAgIFNpZ25lZC1vZmYtYnk6IE5pY29sYXMgUGl0cmUgPG5pY29A
Zmx1eG5pYy5uZXQ+CgoKVGhpcyBpcyByZWxhdGVkIHRvIGEgc2luZ2xlIGJvYXJkIGFuZCBkbyBu
b3QgbW9kaWZpZXMgUEhZIHJlZ2lzdGVycy4gVGhlCkxFRCBjb25maWd1cmF0aW9uIGlzIHJlcXVl
c3RlZCBwZXIgTUFSVkVMTF9QSFlfTTExMThfRE5TMzIzX0xFRFMgZmxhZyBieQp0aGUgbWFydmVs
bCBQSFkgZHJpdmVyLgoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KYXJjaC9wb3dlcnBjL3BsYXRm
b3Jtcy84NXh4L21wYzg1eHhfbWRzLmMKVGhpcyBmaXh1cCB3YXMgYWRkZWQgYnkgZm9sbG93aW5n
IGNvbW1pdDoKfGNvbW1pdCA5NDgzM2E0Mjc2NTUwOWE3YWE5NWVkMWJhN2IyMjdlYWQzYzI5YzA4
CnxBdXRob3I6IEFuZHkgRmxlbWluZyA8YWZsZW1pbmdAZnJlZXNjYWxlLmNvbT4KfERhdGU6ICAg
RnJpIE1heSAyIDE4OjU2OjQxIDIwMDggLTA1MDAKfAp8ICAgIFtQT1dFUlBDXSA4NXh4OiBBZGQg
ODU2OCBQSFkgd29ya2Fyb3VuZHMgdG8gYm9hcmQgY29kZQp8CnwgICAgVGhlIDg1NjggTURTIG5l
ZWRzIHNvbWUgY29uZmlndXJhdGlvbiBjaGFuZ2VzIHRvIHRoZSBQSFkgaW4gb3JkZXIgdG8KfCAg
ICB3b3JrIHByb3Blcmx5LiAgVGhlc2UgYXJlIGRvbmUgaW4gdGhlIGZpcm13YXJlLCBub3JtYWxs
eSwgYnV0IExpbnV4CnwgICAgc2hvdWxkbid0IG5lZWQgdG8gcmVseSBvbiB0aGUgZmlybXdhcmUg
cnVubmluZyBzdWNoIHRoaW5ncyAoc29tZW9uZQp8ICAgIGNvdWxkIGRpc2FibGUgdGhlIFBIWSBz
dXBwb3J0IGluIHRoZSBmaXJtd2FyZSB0byBzYXZlIHNwYWNlLCBmb3IgaW5zdGFuY2UpLgp8Cnwg
ICAgU2lnbmVkLW9mZi1ieTogQW5keSBGbGVtaW5nIDxhZmxlbWluZ0BmcmVlc2NhbGUuY29tPgp8
ICAgIFNpZ25lZC1vZmYtYnk6IEt1bWFyIEdhbGEgPGdhbGFrQGtlcm5lbC5jcmFzaGluZy5vcmc+
CgpUaGlzIGZpeHVwIGlzIGhhcmQgdG8gYW5hbHl6ZS4gSSB3YXMgbm90IGFibGUgdG8gZmluZCBh
IGRvY3VtZW50YXRpb24gb3IKcmVsYXRlZCBkcml2ZXIgZm9yIHRoZSBNYXJ2ZWxsIDg4RTExMTEg
UEhZLiBJdCBzZWVtcyB0byBlbmFibGUgMTI1TWh6IGNsb2NrIGFzCnByZXZpb3VzIGZpeHVwcyBk
aWQuCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpkcml2ZXJzL25ldC9ldGhlcm5ldC9kbmV0LmMK
VGhpcyBmaXh1cCB3YXMgYWRkZWQgYnkgZm9sbG93aW5nIGNvbW1pdDoKfGNvbW1pdCA0Nzk2NDE3
NDE3YTYyZTJhZTgzZDkyY2I5MmUxZWNmOWVjNjdiNWY1CnxBdXRob3I6IElseWEgWWFub2sgPHlh
bm9rQGVtY3JhZnQuY29tPgp8RGF0ZTogICBXZWQgTWFyIDExIDIzOjI2OjAyIDIwMDkgLTA3MDAK
fAp8ICAgIGRuZXQ6IERhdmUgRE5FVCBldGhlcm5ldCBjb250cm9sbGVyIGRyaXZlciAodXBkYXRl
ZCkKfAp8ICAgIERyaXZlciBmb3IgRGF2ZSBETkVUIGV0aGVybmV0IGNvbnRyb2xsZXIgZm91bmQg
b24gRGF2ZS9ERU5YIFFvbmdFVkItTElURQp8ICAgIEZQR0EuIEhlYXZpbHkgYmFzZWQgb24gRGF2
ZSBzb3VyY2VzLCBJJ3ZlIGp1c3QgYWRvcHRlZCBpdCB0byBjdXJyZW50CnwgICAga2VybmVsIHZl
cnNpb24gYW5kIGRvbmUgc29tZSBjb2RlIGNsZWFudXAuCnwKfCAgICBTaWduZWQtb2ZmLWJ5OiBJ
bHlhIFlhbm9rIDx5YW5va0BlbWNyYWZ0LmNvbT4KfCAgICBTaWduZWQtb2ZmLWJ5OiBEYXZpZCBT
LiBNaWxsZXIgPGRhdmVtQGRhdmVtbG9mdC5uZXQ+CgpTYW1lIFBIWSBhcyBpbiBwcmV2aW91cyBj
YXNlIChNYXJ2ZWxsIDg4RTExMTEpLiBUaGUgY29tbWVudCBzdGF0ZW1lbnQgaXM6Ci8qIEZvciBO
ZXB0dW5lIGJvYXJkOiBMSU5LMTAwMCBhcyBMaW5rIExFRCBhbmQgVFggYXMgYWN0aXZpdHkgTEVE
ICovCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpkcml2ZXJzL25ldC91c2IvbGFuNzh4eC5jClRo
aXMgZHJpdmVyIHByb3ZpZGVzIHR3byBmaXh1cHMsIGFkZGVkIGJ5IGZvbGxvd2luZyBjb21taXQ6
Cnxjb21taXQgMDJkYzFmM2Q2MTNkNWE4NTk1MTNkNzQxNmM5YWNhMzcwNDI1YTdlMAp8QXV0aG9y
OiBXb29qdW5nIEh1aCA8d29vanVuZy5odWhAbWljcm9jaGlwLmNvbT4KfERhdGU6ICAgV2VkIERl
YyA3IDIwOjI2OjI1IDIwMTYgKzAwMDAKfAp8ICAgIGxhbjc4eHg6IGFkZCBMQU43ODAxIE1BQyBv
bmx5IHN1cHBvcnQKfAp8ICAgIEFkZCBMQU43ODAxIE1BQyBvbmx5IHN1cHBvcnQgd2l0aCBwaHkg
Zml4dXAgZnVuY3Rpb25zLgp8CnwgICAgU2lnbmVkLW9mZi1ieTogV29vanVuZyBIdWggPHdvb2p1
bmcuaHVoQG1pY3JvY2hpcC5jb20+CnwgICAgU2lnbmVkLW9mZi1ieTogRGF2aWQgUy4gTWlsbGVy
IDxkYXZlbUBkYXZlbWxvZnQubmV0PgoKClRoZXNlIGZpeHVwcyBhcmUgcmVsYXRlZCB0byBLU1o5
MDMxcm54IGFuZCBMQU44ODM1IFBIWXMsIGFyZSBjb25maWd1cmluZyBjbG9jawpza2V3cy4KClBs
ZWFzZSBub3RlOiBUaGUgS1NaOTAzMSBmaXh1cCBpcyB1c2VkIG9uIGlteDZxIGJvYXJkcy4gV2hh
dCB3aWxsIGhhcHBlbgppZiB3ZSBhdHRhY2ggdGhpcyBhZGFwdGVyIHRvIGEgaW14NnEgYmFzZWQg
c3lzdGVtPyBPciB3aGF0IHdpbGwgaGFwcGVuCndpdGggYWxsIHRoaXMgdXNiIGV0aGVybmV0IGFk
YXB0ZXJzIHdpdGggYXRoZXJvcyBvciBtaWNyZWwgUEhZcyBhdHRhY2hlZAp0byBpbXg2IGJhc2Vk
IHN5c3RlbT8KClJlZ2FyZHMsCk9sZWtzaWogJiBNYXJjCi0tIApQZW5ndXRyb25peCBlLksuClN0
ZXVlcndhbGRlciBTdHIuIDIxICAgICAgICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVu
Z3V0cm9uaXguZGUvICB8CjMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICAgICAgICAg
ICB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0s
IEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
