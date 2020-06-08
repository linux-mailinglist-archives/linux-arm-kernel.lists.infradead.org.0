Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 931EE1F1565
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 11:28:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V778DkBO+UwwH81dH5AfG9O/J0A7kfi06qUnzaE1zqk=; b=cs96G5J+jj5DJmnI3KGNQlES1
	jMeteQ4tRKC3gcOA6uOS8SPutdyWTQbaFIJu6IT+bGeN6b7qptAkAxVsghqzDPdyEPrPl7gfj5p+7
	i7s+Cv7JOwy+8gYgs2FS20USYsqoc8U9I9gCPJRtI7/hQ3Sngj4vBtvGnvxo/gLODzTFgTiHzTk+5
	/sgcBSl6fC832uWwn3sdSTTXBOMGZrZFxNPb2DlrFVbpn14usHA1LgmgcTvyKJP8qDryYLc5D8c9t
	QkUedfzqtXXljRjK++SII4k+BR2jSUCVsc0d8PxZUIPYzz0GPW79f1D9VEhmoIqN/B7tAoA3Ni3uG
	lLpfs3O7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiE4p-0001lz-Dg; Mon, 08 Jun 2020 09:28:19 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiE4g-0001lJ-N7
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 09:28:12 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id CEE412A10C1
Subject: Re: [PATCH v3 0/7] Support inhibiting input devices
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, Pavel Machek <pavel@ucw.cz>
References: <20200604072853.GP89269@dtor-ws>
 <20200605173335.13753-1-andrzej.p@collabora.com> <20200607202414.GB13138@amd>
 <20200608053737.GS89269@dtor-ws>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <b1b282ed-ddea-fdd8-bf1a-3e918653f1e3@collabora.com>
Date: Mon, 8 Jun 2020 11:28:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200608053737.GS89269@dtor-ws>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_022810_882986_7A1702F1 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: kernel@collabora.com, Nick Dyer <nick@shmanahar.org>,
 linux-iio@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Peter Hutterer <peter.hutterer@redhat.com>, Fabio Estevam <festevam@gmail.com>,
 linux-samsung-soc@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-acpi@vger.kernel.org,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 linux-input@vger.kernel.org, Len Brown <lenb@kernel.org>,
 Michael Hennerich <michael.hennerich@analog.com>, linux-pm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Hans de Goede <hdegoede@redhat.com>,
 Lars-Peter Clausen <lars@metafoo.de>, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Barry Song <baohua@kernel.org>,
 Ferruh Yigit <fery@cypress.com>, patches@opensource.cirrus.com,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUGF2ZWwsCgpXIGRuaXUgMDguMDYuMjAyMCBvwqAwNzozNywgRG1pdHJ5IFRvcm9raG92IHBp
c3plOgo+IE9uIFN1biwgSnVuIDA3LCAyMDIwIGF0IDEwOjI0OjE0UE0gKzAyMDAsIFBhdmVsIE1h
Y2hlayB3cm90ZToKPj4gT24gRnJpIDIwMjAtMDYtMDUgMTk6MzM6MjgsIEFuZHJ6ZWogUGlldHJh
c2lld2ljeiB3cm90ZToKPj4+IFVzZXJzcGFjZSBtaWdodCB3YW50IHRvIGltcGxlbWVudCBhIHBv
bGljeSB0byB0ZW1wb3JhcmlseSBkaXNyZWdhcmQgaW5wdXQKPj4+IGZyb20gY2VydGFpbiBkZXZp
Y2VzLgo+Pgo+PiBXb3csIHlvdSBjZXJ0YWlubHkgY2MgYSBsb3Qgb2YgbGlzdHMuCj4+Cj4+PiBB
biBleGFtcGxlIHVzZSBjYXNlIGlzIGEgY29udmVydGlibGUgbGFwdG9wLCB3aG9zZSBrZXlib2Fy
ZCBjYW4gYmUgZm9sZGVkCj4+PiB1bmRlciB0aGUgc2NyZWVuIHRvIGNyZWF0ZSB0YWJsZXQtbGlr
ZSBleHBlcmllbmNlLiBUaGUgdXNlciB0aGVuIG11c3QgaG9sZAo+Pj4gdGhlIGxhcHRvcCBpbiBz
dWNoIGEgd2F5IHRoYXQgaXQgaXMgZGlmZmljdWx0IHRvIGF2b2lkIHByZXNzaW5nIHRoZSBrZXli
b2FyZAo+Pj4ga2V5cy4gSXQgaXMgdGhlcmVmb3JlIGRlc2lyYWJsZSB0byB0ZW1wb3JhcmlseSBk
aXNyZWdhcmQgaW5wdXQgZnJvbSB0aGUKPj4+IGtleWJvYXJkLCB1bnRpbCBpdCBpcyBmb2xkZWQg
YmFjay4gVGhpcyBvYnZpb3VzbHkgaXMgYSBwb2xpY3kgd2hpY2ggc2hvdWxkCj4+PiBiZSBrZXB0
IG91dCBvZiB0aGUga2VybmVsLCBidXQgdGhlIGtlcm5lbCBtdXN0IHByb3ZpZGUgc3VpdGFibGUg
bWVhbnMgdG8KPj4+IGltcGxlbWVudCBzdWNoIGEgcG9saWN5Lgo+Pj4KPj4+IER1ZSB0byBpbnRl
cmFjdGlvbnMgd2l0aCBzdXNwZW5kL3Jlc3VtZSwgYSBoZWxwZXIgaGFzIGJlZW4gYWRkZWQgZm9y
IGRyaXZlcnMKPj4+IHRvIGRlY2lkZSBpZiB0aGUgZGV2aWNlIGlzIGJlaW5nIHVzZWQgb3Igbm90
IChQQVRDSCAxLzcpIGFuZCBpdCBoYXMgYmVlbgo+Pj4gYXBwbGllZCB0byByZWxldmFudCBkcml2
ZXJzIChQQVRDSCAyLDQsNSw2LzcpLgo+Pgo+PiBCdXQgaXMgdGhhdCBhIHJpZ2h0IHdheSB0byBp
bXBsZW1lbnQgaXQ/Cj4+Cj4+IFdlIHdhbnQgdGhpcyBmb3IgY2VsbHBob25lcywgdG9vIC0tIHRv
dWNoc2NyZWVuIHNob3VsZCBiZSBkaXNhYmxlZAo+PiB3aGlsZSB0aGUgZGV2aWNlIGlzIGxvY2tl
ZCBpbiB0aGUgcG9ja2V0IC0tIGJ1dCB3ZSByZWFsbHkgd2FudCB0aGUKPj4gdG91Y2hzY3JlZW4g
aGFyZHdhcmUgdG8gYmUgcG93ZXJlZCBkb3duIGluIHRoYXQgY2FzZSAoYmVjYXVzZSBpdCBrZWVw
cwo+PiBTb0MgYnVzeSBhbmQgZWF0cyBhIF9sb3RfIG9mIGVsZWN0cmljaXR5KS4KPj4KPj4gQnV0
IHNpbXBsaXN0aWMgInJlY2VpdmUgYW4gZXZlbnQgYW5kIHRoZW4gZHJvcCBpdCBpZiBkZXZpY2Ug
aXMKPj4gaW5oaWJpdGVkIiBkb2VzIG5vdCBhbGxvdyB0aGF0Li4uCj4gCj4gSSBkbyBub3QgdGhp
bmsgeW91IHJlYWQgdGhlIGVudGlyZXR5IG9mIHRoaXMgcGF0Y2ggc2VyaWVzLi4uCj4gCgpZZWFo
LCBraW5kbHkgcmVhZCB0aGUgd2hvbGUgdGhyZWFkLiBMb25nIHN0b3J5IHNob3J0OiBJbmhpYml0
aW5nIF9pc18gYWJvdXQKaWdub3JpbmcgZXZlbnRzIGZyb20gaW5oaWJpdGVkIGRldmljZXMuIE9i
dmlvdXNseSB3ZSBjYW4gZG8gYmV0dGVyIHRoYW4KanVzdCB0aGF0LiBJbmRlZWQsIHRoZSBvcGVu
KCkgYW5kIGNsb3NlKCkgY2FsbGJhY2tzICh3aGljaCBhcmUgY2FsbGVkIGF0CnVuaW5oaWJpdGlu
Zy9pbmhpYml0aW5nKSBtZWFuICJzdGFydCBwcm92aWRpbmcgZXZlbnRzIiBhbmQgInN0b3AgcHJv
dmlkaW5nCmV2ZW50cyIsIHJlc3BlY3RpdmVseS4gSG93IHRoYXQgdHJhbnNsYXRlcyBpbnRvIGRy
aXZlciBvcGVyYXRpb24gaXMgaGlnaGx5CmRyaXZlci1zcGVjaWZpYyBhbmQgY2Fubm90IGJlIGhh
bmRsZWQgYXQgdGhlIGlucHV0IHN1YnN5c3RlbSBsZXZlbCwgYnV0IGl0CmlzIHRoZSBwbGFjZSB3
aGVyZSBwb3dlciBzYXZpbmdzIGNhbiBiZSByZWFsaXplZDogd2hlbmV2ZXIgdGhlIGRyaXZlciBr
bm93cwp0aGF0IG5vYm9keSB3YW50cyBldmVudHMgZnJvbSBpdCBpdCBjYW4gZG8gd2hhdGV2ZXIg
aXQgY29uc2lkZXJzIGFwcHJvcHJpYXRlLAppbmNsdWRpbmcgdHJhbnNpdGlvbmluZyB0aGUgZGV2
aWNlIGludG8gbG93IHBvd2VyIG1vZGUsIGZvciBleGFtcGxlIHVzaW5nClBNIHJ1bnRpbWUuCgpS
ZWdhcmRzLAoKQW5kcnplagoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
