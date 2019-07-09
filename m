Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95DBD636EE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 15:27:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VXuxWQrlKkwK1laEDQLBJhXXqZhO5bHptPsT9znLA58=; b=BpxxUp4YTWs/EK
	1qLO/lAIlCdxa7HtFfmZx+ezQprItzQzobfte5O5gYdJhbW0YcRNO4GbL6eRSd44as4vqwEfKwlZQ
	8k/pZUcQCGUY+YkZLF5lrMXAApuJyEajWg2KIJWD66C92OQeelrgiYD8wnPPL1WrHyyD+FafldMjN
	l+4y7InW9rj1cQhGTLPQqoqkf4ucXSGYX0v47to12QH1OHj9T3Kc/mmtZG96KPObdddQCXCQm3GAX
	E898DqizNVqqsGSBpMjTRoHkbG0SslSAXndvE9eOQOYojIbyQozJp4Us03V/bHI4kpoFsefLDVnRf
	qushdaTQZQloHB6+K1nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkq9M-0006Zb-2R; Tue, 09 Jul 2019 13:27:16 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkq99-0006Yp-PM
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 13:27:05 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d2496200000>; Tue, 09 Jul 2019 06:26:56 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Tue, 09 Jul 2019 06:27:00 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Tue, 09 Jul 2019 06:27:00 -0700
Received: from [10.21.132.148] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 9 Jul
 2019 13:26:58 +0000
Subject: Re: [PATCH v5 05/12] drm/modes: Rewrite the command line parser
To: Dmitry Osipenko <digetx@gmail.com>, Maxime Ripard
 <maxime.ripard@bootlin.com>
References: <cover.5190d070d1439d762d7ab273f4ae2573087fee20.1560783090.git-series.maxime.ripard@bootlin.com>
 <e32cd4009153b184103554009135c7bf7c9975d7.1560783090.git-series.maxime.ripard@bootlin.com>
 <e1fcea71-b551-274e-4ea0-178bb0d5f71c@gmail.com>
 <20190709124526.36szuriteq3jumhr@flea>
 <41d24675-10df-5531-f4ee-4d801e2e4faf@gmail.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <918c4477-6d59-06a6-ead0-9b2fc3e1eb10@nvidia.com>
Date: Tue, 9 Jul 2019 14:26:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <41d24675-10df-5531-f4ee-4d801e2e4faf@gmail.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1562678816; bh=s73oTYTM08Oeq+0/P4ttfVD0Pm01N/wNJBwR+DDHCF0=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=eqJ1cz77lJnc/EazFhT2KqXRs5NBPXpmlT7h/kpi+rcIPdoma9kIZ+Kt4RjEkEYl4
 ZzIzY3vKBESG5lYtF5X3Na/P4hLmcERoAQ2thPz+CkwDgSiZkK4RmdqvIrPt2d54Mx
 V6RgdLy+/PYxj3gN28QJal7irFrmF6nE2d9QRI61RvRC5nFk1A2VRvamP1DZ6GLJgk
 VOofPxPywXm6CSqhUrEQvHLrp285s9jh3+bJBYts9EQVq7EeKgSg9Xq4vWjKYfPdup
 TJTxSAySn/HaSlF6aQFifNCP1fz5t3OFkc0xUQXkJA31kCYuj4A8+hegcN1Fhrr0nT
 3YvGqkq8Mi3Sw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_062703_838481_731DD798 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: eben@raspberrypi.org, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Thierry Reding <thierry.reding@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDA5LzA3LzIwMTkgMTM6NTIsIERtaXRyeSBPc2lwZW5rbyB3cm90ZToKPiAwOS4wNy4yMDE5
IDE1OjQ1LCBNYXhpbWUgUmlwYXJkINC/0LjRiNC10YI6Cj4+IEhpLAo+Pgo+PiBPbiBGcmksIEp1
bCAwNSwgMjAxOSBhdCAwNzo1NDo0N1BNICswMzAwLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+
PiAxNy4wNi4yMDE5IDE3OjUxLCBNYXhpbWUgUmlwYXJkINC/0LjRiNC10YI6Cj4+Pj4gRnJvbTog
TWF4aW1lIFJpcGFyZCA8bWF4aW1lLnJpcGFyZEBmcmVlLWVsZWN0cm9ucy5jb20+Cj4+Pj4KPj4+
PiBSZXdyaXRlIHRoZSBjb21tYW5kIGxpbmUgcGFyc2VyIGluIG9yZGVyIHRvIGdldCBhd2F5IGZy
b20gdGhlIHN0YXRlIG1hY2hpbmUKPj4+PiBwYXJzaW5nIHRoZSB2aWRlbyBtb2RlIGxpbmVzLgo+
Pj4+Cj4+Pj4gSG9wZWZ1bGx5LCB0aGlzIHdpbGwgYWxsb3cgdG8gZXh0ZW5kIGl0IG1vcmUgZWFz
aWx5IHRvIHN1cHBvcnQgbmFtZWQgbW9kZXMKPj4+PiBhbmQgLyBvciBwcm9wZXJ0aWVzIHNldCBk
aXJlY3RseSBvbiB0aGUgY29tbWFuZCBsaW5lLgo+Pj4+Cj4+Pj4gUmV2aWV3ZWQtYnk6IE5vcmFs
ZiBUcsO4bm5lcyA8bm9yYWxmQHRyb25uZXMub3JnPgo+Pj4+IFNpZ25lZC1vZmYtYnk6IE1heGlt
ZSBSaXBhcmQgPG1heGltZS5yaXBhcmRAZnJlZS1lbGVjdHJvbnMuY29tPgo+Pj4+IC0tLQo+Pj4+
ICBkcml2ZXJzL2dwdS9kcm0vZHJtX21vZGVzLmMgfCAzMjUgKysrKysrKysrKysrKysrKysrKysr
KystLS0tLS0tLS0tLS0tLQo+Pj4+ICAxIGZpbGUgY2hhbmdlZCwgMjEwIGluc2VydGlvbnMoKyks
IDExNSBkZWxldGlvbnMoLSkKPj4+Cj4+PiBJIGhhdmUgYSBUZWdyYSBkZXZpY2UgdGhhdCB1c2Vz
IGEgc3RvY2sgYW5kcm9pZCBib290bG9hZGVyIHdoaWNoCj4+PiBwYXNzZXMgInZpZGVvPXRlZ3Jh
ZmIiIGluIHRoZSBrZXJuZWxzIGNtZGxpbmUuIFRoYXQgd2Fzbid0IGEgcHJvYmxlbQo+Pj4gYmVm
b3JlIHRoaXMgcGF0Y2gsIGJ1dCBub3cgVGVncmEgRFJNIGRyaXZlciBmYWlscyB0byBwcm9iZSBi
ZWNhdXNlCj4+PiB0aGUgbW9kZSBpcyAweDA6MCBhbmQgaGVuY2UgZnJhbWVidWZmZXIgYWxsb2Nh
dGlvbiBmYWlscy4gSXMgaXQgYQo+Pj4gbGVnaXQgcmVncmVzc2lvbiB0aGF0IHNob3VsZCBiZSBm
aXhlZCBpbiB1cHN0cmVhbT8KPj4KPj4gVGhpZXJyeSBpbmRlZWQgcmVwb3J0ZWQgdGhhdCBpc3N1
ZSwgYnV0IHRoZSBkaXNjdXNzaW9uIHByZXR0eSBtdWNoCj4+IHN0YWxsZWQgc2luY2UgdGhlbi4K
ClllcyBUaGllcnJ5IGlzIGN1cnJlbnRseSBvdXQgYW5kIGhlbmNlIGhhcyBub3QgcmVzcG9uZGVk
LiBJIGhhZCBiZWVuCnBsYW5uaW5nIHRvIGxvb2sgYXQgdGhpcyB0aGlzIHdlZWsgYW5kIHJlc3Bv
bmRlZC4KCj4gU29ycnksIHRoaXMgZG9lc24ndCBhbnN3ZXIgbXkgcXVlc3Rpb24uIFdoZXJlIGl0
IHdhcyByZXBvcnRlZD8KClNhbWUgdGhyZWFkIFswXS4gRG1pdHJ5LCBhcmUgeW91IGFibGUgdG8g
cmVzcG9uZCB0byBNYXhpbWUncyByZXNwb25zZSB0bwpUaGllcnJ5PwoKQ2hlZXJzCkpvbgoKWzBd
IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTA5OTkzOTMvCgotLSAKbnZwdWJs
aWMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
