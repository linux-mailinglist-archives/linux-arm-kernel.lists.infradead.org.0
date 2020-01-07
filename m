Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2471329A5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 16:08:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bFfXEo5MhFFoBfMEfXZGvAgomu3NaHkDzmjr1Z70PSo=; b=schaAYepfGYNdr2xk2TpZdm6St
	pDGAUpdcJi5QZUDR3Ixt1XmrEZThLDhRRGak3AFXbv0lnNh11XE51Po2JwZ6/8PDXaLtMMHGGzbYm
	CbsVFRAc1RSoapFu3VApClxDj4W5qJa1HXicGO9LjLNHNDFBj0W8ljxLExAMOV4+ZkLoNf7FLeYA/
	QWb5GvG5lDSp7qKhYH/G7+dZDSOLnzqJW3ym6E12oJXPzAr/R0ms6RHJ4DlzQ7+AxA5ox4LsIqTk7
	oEQcguxw5rV7OTLdkAgGspX57LxzfxUN/zfyXcPbajn+vNgaz2Qxm1qgLC4NoRzxp6zgqsUDMXHcF
	Dc73UL9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioqTN-0005N6-Av; Tue, 07 Jan 2020 15:08:45 +0000
Received: from hostingweb31-40.netsons.net ([89.40.174.40])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioqTD-0005ME-Nw
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 15:08:37 +0000
Received: from [109.168.11.45] (port=53390 helo=[192.168.101.73])
 by hostingweb31.netsons.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <luca@lucaceresoli.net>)
 id 1ioqSv-00EzCX-CP; Tue, 07 Jan 2020 16:08:17 +0100
Subject: Re: [PATCH 3/5] i2c: highlander: Use proper printk format for iomem
 pointer
To: Krzysztof Kozlowski <krzk@kernel.org>, Vladimir Zapolskiy <vz@mleia.com>, 
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Wolfram Sang <wsa@the-dreams.de>,
 Jean Delvare <jdelvare@suse.de>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>, Max Staudt <max@enpas.org>,
 Juergen Fitschen <jfi@ssv-embedded.de>, Elie Morisse <syniurge@gmail.com>,
 linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20191230172751.17985-1-krzk@kernel.org>
 <20191230172751.17985-3-krzk@kernel.org>
From: Luca Ceresoli <luca@lucaceresoli.net>
Message-ID: <dcfa47af-9c7f-4c57-b178-62611c8c21bc@lucaceresoli.net>
Date: Tue, 7 Jan 2020 16:08:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191230172751.17985-3-krzk@kernel.org>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - hostingweb31.netsons.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lucaceresoli.net
X-Get-Message-Sender-Via: hostingweb31.netsons.net: authenticated_id:
 luca+lucaceresoli.net/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: hostingweb31.netsons.net: luca@lucaceresoli.net
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_070835_942538_7C9AC15D 
X-CRM114-Status: GOOD (  11.27  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAzMC8xMi8xOSAxODoyNywgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBpb21l
bSBwb2ludGVycyBzaG91bGQgYmUgcHJpbnRlZCB3aXRoIHBvaW50ZXIgZm9ybWF0IHRvIGhpZGUg
dGhlCgpzL2lvbWVtL3NpemVfdC8gKGluIHRoZSBzdWJqZWN0IHRvbykKClRoZSB3aG9sZSBjb21t
aXQgbWVzc2FnZSBuZWVkcyByZXdvcmRpbmcgYWNjb3JkaW5nbHkuCgo+IGFjdHVhbCB2YWx1ZSBh
bmQgZml4IHdhcm5pbmdzIHdoZW4gY29tcGlsaW5nIG9uIDY0LWJpdCBwbGF0Zm9ybSAoZS5nLiB3
aXRoCj4gQ09NUElMRV9URVNUKToKPiAKPiAgICAgZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1oaWdo
bGFuZGVyLmM6IEluIGZ1bmN0aW9uIOKAmGhpZ2hsYW5kZXJfaTJjX3NtYnVzX3hmZXLigJk6Cj4g
ICAgIGRyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtaGlnaGxhbmRlci5jOjMyNToyMjogd2FybmluZzoK
PiAgICAgICAgIGZvcm1hdCDigJglZOKAmSBleHBlY3RzIGFyZ3VtZW50IG9mIHR5cGUg4oCYaW50
4oCZLAo+ICAgICAgICAgYnV0IGFyZ3VtZW50IDMgaGFzIHR5cGUg4oCYc2l6ZV90IHtha2EgbG9u
ZyB1bnNpZ25lZCBpbnR94oCZIFstV2Zvcm1hdD1dCj4gCj4gU2lnbmVkLW9mZi1ieTogS3J6eXN6
dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgo+IC0tLQo+ICBkcml2ZXJzL2kyYy9idXNz
ZXMvaTJjLWhpZ2hsYW5kZXIuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaTJjL2J1c3Nlcy9p
MmMtaGlnaGxhbmRlci5jIGIvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1oaWdobGFuZGVyLmMKPiBp
bmRleCBhYmZlMzA5NGMwNDcuLjgwM2RhZDcwZTJhNyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2ky
Yy9idXNzZXMvaTJjLWhpZ2hsYW5kZXIuYwo+ICsrKyBiL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMt
aGlnaGxhbmRlci5jCj4gQEAgLTMyMiw3ICszMjIsNyBAQCBzdGF0aWMgaW50IGhpZ2hsYW5kZXJf
aTJjX3NtYnVzX3hmZXIoc3RydWN0IGkyY19hZGFwdGVyICphZGFwLCB1MTYgYWRkciwKPiAgCQl0
bXAgfD0gKFNNTVJfTU9ERTAgfCBTTU1SX01PREUxKTsKPiAgCQlicmVhazsKPiAgCWRlZmF1bHQ6
Cj4gLQkJZGV2X2VycihkZXYtPmRldiwgInVuc3VwcG9ydGVkIHhmZXIgc2l6ZSAlZFxuIiwgZGV2
LT5idWZfbGVuKTsKPiArCQlkZXZfZXJyKGRldi0+ZGV2LCAidW5zdXBwb3J0ZWQgeGZlciBzaXpl
ICV6dVxuIiwgZGV2LT5idWZfbGVuKTsKPiAgCQlyZXR1cm4gLUVJTlZBTDsKPiAgCX0KPiAgCj4g
CgotLSAKTHVjYQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
