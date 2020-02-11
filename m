Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A492C158F70
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 14:04:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QV/1Hsv5xmJ99s4RoFo0v/asNxO99PSLCe6+hogqKKc=; b=KsBsOIGFuGQuQ6TrCvL/o50Ur
	MNPmq4Szt7XTdFOciY5xxTDDz4Cu4zTKlk0dqQYZq0loBQMGZHCNOoY+sYfNar1jV8o5ZG6LcuFrn
	q1JwmL/AjfVWn8rlTwwLbQEVyn9IIBAN9dflcsLtxRLt+vXz4pJprHqOxxVF8JQ0xqo7c7mTLdZWL
	J74kEl7rtn1IiZOxz0aFTacnVJu5oCiUgOkOvPgNhTmFTsH+eQdQ/TDg8WSkgSZDKidL67bM1WDfx
	pilmH7G7BcD5Iz7r4JzNYyf3GKPptYXazs0nbCjsYFushWxAcsp71y6gvONGIKkfZ0SckZXMqB3Jt
	Csof57N7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1VDK-0001sP-DC; Tue, 11 Feb 2020 13:04:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1VDB-0001rh-M9
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 13:04:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D941130E;
 Tue, 11 Feb 2020 05:04:18 -0800 (PST)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 583D83F6CF;
 Tue, 11 Feb 2020 05:04:13 -0800 (PST)
Subject: Re: [PATCHv9 00/12] PCI: Recode Mobiveil driver and add PCIe Gen4
 driver for NXP Layerscape SoCs
To: Laurentiu Tudor <laurentiu.tudor@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Olof Johansson <olof@lixom.net>
References: <20191120034451.30102-1-Zhiqiang.Hou@nxp.com>
 <CAOesGMjAQSfx1WZr6b1kNX=Exipj_f4X_f39Db7AxXr4xG4Tkg@mail.gmail.com>
 <DB8PR04MB6747DA8E1480DCF3EFF67C9284500@DB8PR04MB6747.eurprd04.prod.outlook.com>
 <20200110153347.GA29372@e121166-lin.cambridge.arm.com>
 <CAOesGMj9X1c7eJ4gX2QWXSNszPkRn68E4pkrSCxKMYJG7JHwsg@mail.gmail.com>
 <DB8PR04MB67473114B315FBCC97D0C6F9841D0@DB8PR04MB6747.eurprd04.prod.outlook.com>
 <CAOesGMieMXHWBO_p9YJXWWneC47g+TGDt9SVfvnp5tShj5gbPw@mail.gmail.com>
 <20200210152257.GD25745@shell.armlinux.org.uk>
 <CAOesGMj6B-X1s8-mYqS0N6GJXdKka1MxaNV=33D1H++h7bmXrA@mail.gmail.com>
 <CADRPPNSXPCVQEWXfYOpmGBCXMg2MvSPqDEMeeH_8VhkPHDuR5w@mail.gmail.com>
 <da4dcdc7-c022-db67-cda2-f90f086b729e@nxp.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <aec47903-50e4-c61b-6aec-63e3e9bc9332@arm.com>
Date: Tue, 11 Feb 2020 13:04:14 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <da4dcdc7-c022-db67-cda2-f90f086b729e@nxp.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_050421_813803_5F3084A1 
X-CRM114-Status: GOOD (  17.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "m.karthikeyan@mobiveil.co.in" <m.karthikeyan@mobiveil.co.in>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "M.h. Lian" <minghuan.lian@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Xiaowei Bao <xiaowei.bao@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "andrew.murray@arm.com" <andrew.murray@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wMi0xMSAxMjoxMyBwbSwgTGF1cmVudGl1IFR1ZG9yIHdyb3RlOgpbLi4uXQo+PiBU
aGlzIGlzIGEga25vd24gaXNzdWUgYWJvdXQgRFBBQTIgTUMgYnVzIG5vdCB3b3JraW5nIHdlbGwg
d2l0aCBTTU1VCj4+IGJhc2VkIElPIG1hcHBpbmcuwqAgQWRkaW5nIExhdXJlbnRpdSB0byB0aGUg
Y2hhaW4gd2hvIGhhcyBiZWVuIGxvb2tpbmcKPj4gaW50byB0aGlzIGlzc3VlLgo+IAo+IFllcywg
SSdtIGNsb3NlbHkgZm9sbG93aW5nIHRoZSBpc3N1ZS4gSSBhY3R1YWxseSBoYXZlIGEgd29ya2Fy
b3VuZCAKPiAoYXR0YWNoZWQpIGJ1dCBoYXZlbid0IHN1Ym1pdHRlZCBhcyBpdCB3aWxsIHByb2Jh
Ymx5IHJhaXNlIGEgbG90IG9mIAo+IGV5ZWJyb3dzLiBJbiB0aGUgbWVhbiB0aW1lIEknbSBmb2xs
b3dpbmcgc29tZSBkaXNjdXNzaW9ucyBbMV1bMl1bM10gb24gCj4gdGhlIGlvbW11IGxpc3Qgd2hp
Y2ggc2VlbSB0byB0cnkgdG8gdGFja2xlIHdoYXQgYXBwZWFycyB0byBiZSBhIHNpbWlsYXIgCj4g
aXNzdWUgYnV0IHdpdGggZnJhbWVidWZmZXJzLiBNeSBob3BlIGlzIHRoYXQgd2Ugd2lsbCBiZSBh
YmxlIHRvIGxldmVyYWdlIAo+IHdoYXRldmVyIHR1cm5zIG91dC4KCkluZGVlZCBpdCdzIG1vcmUg
Z2VuZXJhbCB0aGFuIGZyYW1lYnVmZmVycyAtIGluIGZhY3QgdGhlcmUgd2FzIGEgCnNwZWNpZmlj
IHJlcXVpcmVtZW50IGZyb20gdGhlIElPUlQgc2lkZSB0byBhY2NvbW1vZGF0ZSBuZXR3b3JrL3N0
b3JhZ2UgCmNvbnRyb2xsZXJzIHdpdGggaW4tbWVtb3J5IGZpcm13YXJlL2NvbmZpZ3VyYXRpb24g
ZGF0YS93aGF0ZXZlciBzZXQgdXAgCmJ5IHRoZSBib290bG9hZGVyIHRoYXQgd2FudCB0byBiZSBo
YW5kZWQgb2ZmICdsaXZlJyB0byBMaW51eCBiZWNhdXNlIHRoZSAKb3ZlcmhlYWQgb2Ygc3RvcHBp
bmcgYW5kIHJlc3RhcnRpbmcgdGhlbSBpcyBpbXByYWN0aWNhbC4gVGh1cyB0aGlzIERQQUEyIApz
ZXR1cCBpcyB2ZXJ5IG11Y2ggd2l0aGluIHNjb3BlIG9mIHRoZSBkZXNpcmVkIHNvbHV0aW9uLCBz
byBwbGVhc2UgZmVlbCAKZnJlZSB0byBqb2luIGluIChwYXJ0aWN1bGFybHkgb24gdGhlIERUIHBh
cnRzKSA6KQoKQXMgZm9yIHJpZ2h0IG5vdywgbm90ZSB0aGF0IHlvdXIgcGF0Y2ggd291bGQgb25s
eSBiZSBhIHBhcnRpYWwgCm1pdGlnYXRpb24gdG8gc2xpZ2h0bHkgcmVkdWNlIHRoZSBmYXVsdCB3
aW5kb3cgYnV0IG5vdCByZW1vdmUgaXQgCmVudGlyZWx5LiBUbyBiZSByb2J1c3QgdGhlIFNNTVUg
ZHJpdmVyICpoYXMqIHRvIGtub3cgYWJvdXQgbGl2ZSBzdHJlYW1zIApiZWZvcmUgdGhlIGZpcnN0
IGFybV9zbW11X3Jlc2V0KCkgLSBoZW5jZSB0aGUgbmVlZCBmb3IgZ2VuZXJpYyBmaXJtd2FyZSAK
YmluZGluZ3MgLSBzbyBkb2luZyBhbnl0aGluZyBmcm9tIHRoZSBNQyBkcml2ZXIgaXMgYWxyZWFk
eSB0b28gbGF0ZSAoYW5kIAppbmRlZWQgdGhlIGN1cnJlbnQgaW9tbXVfcmVxdWVzdF9kbV9mb3Jf
ZGV2KCkgbWVjaGFuaXNtIGlzIGl0c2VsZiBhIAptaWNyb2Nvc20gb2YgdGhlIHNhbWUgcHJvYmxl
bSkuCgo+IEluIHRoZSBtZWFuIHRpbWUsIGNhbiB5b3UgdHJ5IHRoZSB3b3JrYXJvdW5kIExlbyBz
dWdnZXN0ZWQ/CgpBZ3JlZWQsIEknZCBpbWFnaW5lIHRoZSBjb21tYW5kLWxpbmUgb3B0aW9uIGlz
IHByb2JhYmx5IHRoZSBiZXN0IGNob2ljZSAKZm9yIHRoZXNlIHBsYXRmb3Jtcywgc2luY2UgaXQn
cyBsaWtlbHkgdG8gYmUgZWFzaWVyIHRvIHNldCB0aGF0IGJ5IApkZWZhdWx0IGluIHRoZSBib290
bG9hZGVyIHRoYW4gZmFmZiB3aXRoIHJlYnVpbGRpbmcgZ2VuZXJpYyBrZXJuZWwgY29uZmlncy4K
ClJvYmluLgoKPiBbMV0gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMTMyNzY2
Ny8KPiBbMl0gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMDk2NzcyOS8KPiBb
M10gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9jb3Zlci8xMTI3OTU3Ny8KPiAKPiAtLS0K
PiBCZXN0IFJlZ2FyZHMsIExhdXJlbnRpdQo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiBs
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKPiAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
