Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B93DB73B3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 09:06:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=evrCPWOdXYEo8avPcxN+XwUx2z1OzXZFoibQ2EdGwas=; b=oMM/egU0H5XUDJ
	maUwx2uZ2oWp14nEP+5lzjk4G1htA+eOYsZRqRiueuILoAi6UDD3XsPD6vm75AZuiBHVooT5tnrm9
	GlbhKkPNxDlDTmdUg95eY9Dpw26DOkajwv4i8UWjAxNdQalauyUkk7IWzKOcRstH7FP6kaUHb+vZr
	JyFcMtTWciYCDkfbcpZvRGHQmKAO5Z1ImFCxuFaK/J2Be2EXC0mGX4d/iaSrGZaQghEiRqThWwP+y
	i4OTR3MYJraP5udpoVt/M1dI1u9NpyY0ZmxaDbzjcfaW3Fw4FwwdKaCqOTVG9JHLz3PTKKg1lFRoP
	KwkzJ6YZ3TYwHLHAM6gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAqWU-000886-IA; Thu, 19 Sep 2019 07:06:39 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAqUw-0006jc-7u
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 07:05:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CzzM8AvrkmEVXVXrnko+0JmV21yIkEG1rABUx/hxf8I=; b=kwOclrrxr/ZF75yoEZy3V+oCq
 hvN6n4dsS1IwsY0OHDE3Mp1U9fY91B1zSm8kBS5DfsoaCot4bn9anw9TP2G4Hcxc7D+VPpqZmXURq
 QPv76J4HmXjHp/SAbkaPsQ8JbBSZW6wu8oZRZvIRL+6d8dMfBYe2zI0NO797gqMHy1M8NZyf8Pp1K
 NNzPSYw7f+u5d+/hNitIHjC3M9lCrzl6nqIztM+hBQm+A5Ovos53p7Q8NIi6HBPLgOfnR6iD/xIHb
 tNFjn9+FTdanPvzaSDjbJALnh/aREyljiuOaY3nbXda5kFRe7EzMs5Iyr6/9sBUxS3b6kHPXbXu53
 mWA9apaqQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:41352)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iAqUa-0004b0-Be; Thu, 19 Sep 2019 08:04:40 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iAqUV-00033L-68; Thu, 19 Sep 2019 08:04:35 +0100
Date: Thu, 19 Sep 2019 08:04:35 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: "Y.b. Lu" <yangbo.lu@nxp.com>
Subject: Re: [REGRESSION] sdhci no longer detects SD cards on LX2160A
Message-ID: <20190919070435.GF25745@shell.armlinux.org.uk>
References: <20190917114210.GM25745@shell.armlinux.org.uk>
 <20190917123326.GN25745@shell.armlinux.org.uk>
 <20190917130759.GO25745@shell.armlinux.org.uk>
 <CAOMZO5DXv8g5qTGdvobDdLWim+tW=vK4+K=P-VqJK23KERMhJw@mail.gmail.com>
 <20190917133317.GQ25745@shell.armlinux.org.uk>
 <CAOMZO5DS_1Uc9TMc29e+8tCg-srvMjf3uth_9P3cnro6det+7A@mail.gmail.com>
 <20190917135157.GT25745@shell.armlinux.org.uk>
 <CAOMZO5BDirX0Fwo716v1ddYaaO+OL8Woht63mw8OEhDuMBTb8Q@mail.gmail.com>
 <CADRPPNQ-WTY0QC7_bX=N0QeueKve=k0SaMvbjOrByyvzFojz2g@mail.gmail.com>
 <VI1PR0401MB22376A0EA85123B2AEB72EDEF8890@VI1PR0401MB2237.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR0401MB22376A0EA85123B2AEB72EDEF8890@VI1PR0401MB2237.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_000504_048042_B73A731A 
X-CRM114-Status: GOOD (  19.74  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dann frazier <dann.frazier@canonical.com>,
 Will Deacon <will.deacon@arm.com>, Adrian Hunter <adrian.hunter@intel.com>,
 Leo Li <leoyang.li@nxp.com>, Nicolin Chen <nicoleotsuka@gmail.com>,
 linux-mmc <linux-mmc@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpUaGlzIGlzIG5vdCB0aGUgaXNzdWUsIHNpbmNlIHRoZSBwcm9ibGVtIGhhcyBiZWVuIG9i
c2VydmVkIHdpdGggZU1NQwp0b28sIGFuZCBpcyBzcG9yYWRpYyBpbiBuYXR1cmUuCgpQbGVhc2Ug
Y291bGQgeW91IGFuc3dlciB0aGUgcXVlc3Rpb24gcG9zZWQ6IGFyZSB0aGUgZVNESEMgY29udHJv
bGxlcnMKRE1BIGNvaGVyZW50IG9yIGFyZSB0aGV5IG5vdCBjb2hlcmVudD8KClRoYW5rcy4KCk9u
IFRodSwgU2VwIDE5LCAyMDE5IGF0IDA0OjEzOjIwQU0gKzAwMDAsIFkuYi4gTHUgd3JvdGU6Cj4g
U29ycnkuIE15IGVtYWlsIHdhcyByZWplY3RlZCBieSBtYWlsaW5nIGxpc3RzLiBMZXQgbWUgcmUt
c2VuZC4KPiAKPiBIaSBSdXNzZWxsLAo+IAo+IEnigJltIG5vdCBzdXJlIHdoYXQgYm9hcmQgeW91
IHdlcmUgdXNpbmcgZm9yIExYMjE2MEEuCj4gV2UgaGFkIGFuIGtub3duIGlzc3VlIGZvciBlU0RI
QyBjb250cm9sbGVyIGFuZCBhbGwgTlhQIExheWVyc2NhcGUgUkRCIGJvYXJkcy4KPiBlU0RIQyBj
b3VsZG7igJl0IHByb3ZpZGUgcG93ZXItY3ljbGUgdG8gU0QgY2FyZCwgYW5kIGV2ZW4gd29yc2Us
IGJvYXJkIHJlc2V0IGNvdWxkbuKAmXQgcHJvdmlkZSBwb3dlci1jeWNsZSB0byBTRCBjYXJkIGVp
dGhlci4KPiBCdXQgZm9yIFVIUy1JIFNEIGNhcmQsIGl04oCZcyByZXF1aXJlZCB0byBoYXZlIGEg
cG93ZXItY3ljbGUgdG8gcmVzZXQgY2FyZCBpZiBpdCBnb2VzIGludG8gVUhTLUkgbW9kZS4gT3Ro
ZXJ3aXNlLCB3ZSBkb27igJl0IGtub3cgd2hhdCB3aWxsIGhhcHBlbiB3aGVuIGtlcm5lbCBpbml0
aWFsaXplcyBTRCBjYXJkIGFmdGVyIGEgcmVib290L3Jlc2V0Lgo+IAo+IEkgY291bGQgcmVwcm9k
dWNlIHRoYXQgaXNzdWUgd2l0aCBiZWxvdyBzdGVwcyBvbiBsYXRlc3QgbWFpbmxpbmUga2VybmVs
Lgo+IDEuIFBvd2VyIG9mZiBib2FyZCwgYW5kIHBvd2VyIG9uIGJvYXJkLgo+IDIuIFN0YXJ0IHVw
IGtlcm5lbCwgdGhlIFNEIGNhcmQgd29ya3MgZmluZSBpbiBVSFMtSSBtb2RlLgo+IDMuIFJlYm9v
dC9yZXNldCBib2FyZC4gKFRoaXMgY291bGRu4oCZdCBwcm92aWRlIHBvd2VyLWN5Y2xlIHRvIFNE
IGNhcmQpCj4gNC4gU3RhcnQgdXAga2VybmVsLCB0aGUgU0QgY2FyZCBnZXRzIHRoYXQgQURNQSBl
cnJvciBpc3N1ZS4KPiAKPiBTbyBjb3VsZCB5b3UgaGF2ZSBhIHRyeSB0byBwb3dlciBvZmYvcG93
ZXIgb24gdGhlIGJvYXJkLCBhbmQgdGhlbiBzdGFydCB1cCBrZXJuZWwuIERvbuKAmXQgdXNlIHJl
Ym9vdCwgb3IgYm9hcmQgcmVzZXQgYnV0dG9uLgo+IE9yIHlvdSBjYW4gcmVtb3ZlIFNEIGNhcmQg
YW5kIHN0YXJ0IHVwIGtlcm5lbCwgYW5kIGluc2VydCBTRCBjYXJkIHdoZW4ga2VybmVsIGhhcyBi
ZWVuIHN0YXJ0ZWQgdXAuCj4gVGhhbmtzIGEgbG90Lgo+IAo+IEJlc3QgcmVnYXJkcywKPiBZYW5n
Ym8gTHUKPiAKPiAKPiBGcm9tOiBMaSBZYW5nIDxsZW95YW5nLmxpQG54cC5jb20+IAo+IFNlbnQ6
IFdlZG5lc2RheSwgU2VwdGVtYmVyIDE4LCAyMDE5IDE6NDggQU0KPiBUbzogRmFiaW8gRXN0ZXZh
bSA8ZmVzdGV2YW1AZ21haWwuY29tPjsgWS5iLiBMdSA8eWFuZ2JvLmx1QG54cC5jb20+Cj4gQ2M6
IEFkcmlhbiBIdW50ZXIgPGFkcmlhbi5odW50ZXJAaW50ZWwuY29tPjsgQ2hyaXN0b3BoIEhlbGx3
aWcgPGhjaEBsc3QuZGU+OyBMaW51eCBBUk0gPGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZz47IE5pY29saW4gQ2hlbiA8bmljb2xlb3RzdWthQGdtYWlsLmNvbT47IFJ1c3NlbGwg
S2luZyAtIEFSTSBMaW51eCBhZG1pbiA8bGludXhAYXJtbGludXgub3JnLnVrPjsgV2lsbCBEZWFj
b24gPHdpbGwuZGVhY29uQGFybS5jb20+OyBkYW5uIGZyYXppZXIgPGRhbm4uZnJhemllckBjYW5v
bmljYWwuY29tPjsgbGludXgtbW1jIDxsaW51eC1tbWNAdmdlci5rZXJuZWwub3JnPgo+IFN1Ympl
Y3Q6IFJlOiBbUkVHUkVTU0lPTl0gc2RoY2kgbm8gbG9uZ2VyIGRldGVjdHMgU0QgY2FyZHMgb24g
TFgyMTYwQQo+IAo+IAo+IAo+IE9uIFR1ZSwgU2VwIDE3LCAyMDE5IGF0IDY6MzEgUE0gRmFiaW8g
RXN0ZXZhbSA8bWFpbHRvOmZlc3RldmFtQGdtYWlsLmNvbT4gd3JvdGU6Cj4gW0FkZGluZyBMaSBZ
YW5nXQo+IAo+IE9uIFR1ZSwgU2VwIDE3LCAyMDE5IGF0IDEwOjUyIEFNIFJ1c3NlbGwgS2luZyAt
IEFSTSBMaW51eCBhZG1pbgo+IDxtYWlsdG86bGludXhAYXJtbGludXgub3JnLnVrPiB3cm90ZToK
PiAKPiA+IFRoZSBwcmVzc2luZyBxdWVzdGlvbiBzZWVtcyB0byBiZSB0aGlzOgo+ID4KPiA+IEFy
ZSB0aGUgZVNESEMgb24gdGhlIExYMjE2MEEgRE1BIGNvaGVyZW50IG9yIGFyZSB0aGV5IG5vdD8K
PiA+Cj4gPiBBbnkgY2hhbmNlcyBvZiBmaW5kaW5nIG91dCBpbnRlcm5hbGx5IHdoYXQgdGhlIHRy
dWUgYW5zd2VyIHRvIHRoYXQsCj4gPiByYXRoZXIgdGhhbiBtZSBwb2tpbmcgYWJvdXQgdHJ5aW5n
IHN0dWZmIGV4cGVyaW1lbnRhbGx5P8KgIEhhdmluZyBhCj4gPiBkZWZpbml0aXZlIGFuc3dlciBm
b3IgYSBwb3RlbnRpYWxseSBkYXRhLWNvcnJ1cHRpbmcgY2hhbmdlIHdvdWxkCj4gPiBiZSByZWFs
bHkgZ29vZC4uLgo+IAo+IExpIFlhbmcsCj4gCj4gQ291bGQgeW91IHBsZWFzZSBoZWxwIHRvIGNv
bmZpcm0gUnVzc2VsbCdzIHF1ZXN0aW9uPwo+IEFkZGluZyBZYW5nYm8gd2hvIGlzIHdvcmtpbmcg
b24gU0RIQy4KPiAKPiBSZWdhcmRzLAo+IExlbwoKLS0gClJNSydzIFBhdGNoIHN5c3RlbTogaHR0
cHM6Ly93d3cuYXJtbGludXgub3JnLnVrL2RldmVsb3Blci9wYXRjaGVzLwpGVFRDIGJyb2FkYmFu
ZCBmb3IgMC44bWlsZSBsaW5lIGluIHN1YnVyYmlhOiBzeW5jIGF0IDEyLjFNYnBzIGRvd24gNjIy
a2JwcyB1cApBY2NvcmRpbmcgdG8gc3BlZWR0ZXN0Lm5ldDogMTEuOU1icHMgZG93biA1MDBrYnBz
IHVwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
