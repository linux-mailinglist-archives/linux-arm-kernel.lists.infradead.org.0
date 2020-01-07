Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C2B13295C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 15:51:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:Subject:From:References:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QLpxdItL2VnvXZ5iS5hY8tiKIz/HzPgWfgDBGBM2jaE=; b=Tnk3t6NfpVKoet
	QJdmCMxVABLKq84tte8da8tVveqRx7IEb50k98C/I+J+OlUjlgf4lfTc5YewuCmu94qOgAjFyTavC
	ivNN/zTiy/f4Bu0A3X9Ge6l4OtmqzgFZH4dwan56BtU0RlHpma3iSbmAQtPjJ/4ZjyRhVZ2jMx+I7
	zh5r/+HazVpQbTreMbBbzZsMr2JQ7lHdZ2Lr8GOeQWlMnHIH5uTxQiqVyiF0moj3o69Bz2yvcmez/
	dlpBMhWKdsk6YdLngqR9bIk3VTa+woHXepU0mjUEFqpx0TCDWG361PxN5dUsY/0aR0JeTQ+OaHHBY
	WB7pBYrnUryO1sYyrXjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioqCE-0008Gt-Jh; Tue, 07 Jan 2020 14:51:02 +0000
Received: from 4.mo177.mail-out.ovh.net ([46.105.37.72])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioqC5-0008Fs-JC
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 14:50:55 +0000
Received: from player791.ha.ovh.net (unknown [10.109.143.220])
 by mo177.mail-out.ovh.net (Postfix) with ESMTP id DCF2511D3E0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  7 Jan 2020 15:50:47 +0100 (CET)
Received: from armadeus.com (lfbn-str-1-12-36.w92-140.abo.wanadoo.fr
 [92.140.139.36])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player791.ha.ovh.net (Postfix) with ESMTPSA id 53895DE73092;
 Tue,  7 Jan 2020 14:50:38 +0000 (UTC)
To: Sasha Levin <sashal@kernel.org>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
References: <20191210213221.11921-1-sashal@kernel.org>
 <20191210213221.11921-102-sashal@kernel.org>
From: =?UTF-8?Q?S=c3=a9bastien_Szymanski?= <sebastien.szymanski@armadeus.com>
Autocrypt: addr=sebastien.szymanski@armadeus.com; prefer-encrypt=mutual;
 keydata=
 mQENBFNfZLEBCACv1lqSePHJNpRgcnER+3emy+Arjz84zFax3XkogjY/e3ZneihIgWrVKe5M
 ql16pX4KTkzNgMUKz4bG/XwT3kjcrXshxFLlg7KrHMl287C+W+QOUjnjVeRi/su+SPmjz8VD
 yr11h+ZkVLAWhS+uQJ93jy1NwG8M4t1kBLAVHHD5Vw4FJ+3ouaVYIp1X1Cr8bVKQw33Q1aTd
 ro0kMBb96B9vNu7ciJZ3gvlaBzUEKOgNnq9KaywuLnqrqr4HUIn5JuxZjCjJzt9kTAKcTfp2
 cJM8qpp+2FF5qtbkse9fZ6M64qozgOPr9Tk4Amf9fZEUQ6UNw14mmBZuXSzoHe75gI7TABEB
 AAG0N1PDqWJhc3RpZW4gU1pZTUFOU0tJIDxzZWJhc3RpZW4uc3p5bWFuc2tpQGFybWFkZXVz
 LmNvbT6JAVAEEwEIADoCGyMHCwkIBwMCAQYVCAIJCgsEFgIDAQIeAQIXgBYhBJwGygpYm/1C
 /GCmwbCaKeiBMmTiBQJdhIHLAAoJELCaKeiBMmTixXIH/2W3kbzRG0UF81jtRRnp0H83rjDT
 v0H+8fgFMRL/7HCJ1QPArkfRJlM2wlJkN+ChP09CCarYfUEHfRCHlTb7At6Yyrz1jziD7ZwX
 8IWHYRXnZkY5eZc5DsiUgq6JH49kt+GPzK8UVP9MTa6zkBpPCUf7LzZ4pD3FihdkT52BU3gI
 d9P49fSI0TYySlb/VKn815aOhvwEr7+Dh3mZUjSh7saofbRmVUOr7p+R3MvvGI19/IJZjeOE
 ZWliODDOt6HnBOtoGSXMcNIFF6snH52D5N5gY88njZjTwhgGGUBix1bsgf/EY0v4R5itZBXB
 B/Ze4Tm++YHaB75hZK6PQu/YRv65AQ0EU19ksQEIALo7jhXddrXBTRu5SAjelV53jyHBJTX/
 vN4nL/VbbW/saca+NJjDSxx5DBmotZbQdWIyZiSIjU/xnTREvtDrl6ZeSsKWd7ZqiuiY4fSR
 zwuQp9rd0yqRuxesrWeyJB1zCSdEvLyKASERt+nxkOA+IzJ4y1qLtvnWr+SL1AXgTMw+Tkyw
 KIDCRWHTIYas11ldGj82gOIpYeXnapeNLHfT4EQwg0NeWYHynJxAQWiX5aPlw0uSpAQSsBXQ
 FIe3fpoveMSnXK+PG2BBOzexYv7r4S70a6sF9sgTTPpfKqUaqqC+u1+bUX6alTAKhGKJywaF
 6ViqLlgY8PfwohSyAlqlTRMAEQEAAYkBNgQYAQgAIAIbDBYhBJwGygpYm/1C/GCmwbCaKeiB
 MmTiBQJdhIHSAAoJELCaKeiBMmTitU8IAK7NQM3fEwaF5XaKtepYWsVka44CD8A9e4r7NVK9
 ugirKvXirIxBSDmN/Db862NmVpITsZ6ERNSNZLm/7k55N+TexKYiFZeU7G92TEfAM6qPElvx
 DLEcrkNMq9r08YZeUloacsq31AL5fK4LW+xdvXudkdiKRMJsdTpmff3x5kIziGOHjwFP9wve
 ZgEH52gpbRsP8Whx/Z2lNX/BBRmFM8OnEXFsjjqDzYThdxTq85wGPpkgvvUGyPNRD7TpbB1C
 pajOUUkPxgj5LKt77HD1afeZNudWhgcdkbtT5PMQTT0WY6wvMEj9S1+bGPeXRGWLYB7gHQ+L
 JNoSD7Kz6Y9qnKo=
Subject: Re: [PATCH AUTOSEL 4.19 102/177] nvmem: imx-ocotp: reset error status
 on probe
Message-ID: <dd048e02-81f7-8aed-34a7-f95a70859391@armadeus.com>
Date: Tue, 7 Jan 2020 15:50:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20191210213221.11921-102-sashal@kernel.org>
Content-Language: en-US
X-Ovh-Tracer-Id: 11152601528748758226
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrvdehgedgvdefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepvfhfhffukffffgggjggtgfesthekredttdefjeenucfhrhhomhepuforsggrshhtihgvnhgpufiihihmrghnshhkihcuoehsvggsrghsthhivghnrdhsiiihmhgrnhhskhhisegrrhhmrgguvghushdrtghomheqnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghdpphgrshhtvggsihhnrdgtohhmnecukfhppedtrddtrddtrddtpdelvddrudegtddrudefledrfeeinecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejledurdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepshgvsggrshhtihgvnhdrshiihihmrghnshhkihesrghrmhgruggvuhhsrdgtohhmpdhrtghpthhtoheplhhinhhugidqrghrmhdqkhgvrhhnvghlsehlihhsthhsrdhinhhfrhgruggvrggurdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_065053_776819_C357568D 
X-CRM114-Status: GOOD (  17.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.37.72 listed in list.dnswl.org]
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Fabio Estevam <festevam@gmail.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTIvMTAvMTkgMTA6MzEgUE0sIFNhc2hhIExldmluIHdyb3RlOgo+IEZyb206IEx1Y2FzIFN0
YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPgo+IAo+IFsgVXBzdHJlYW0gY29tbWl0IGMzM2M1
ODVmMWIzYTk5ZDUzOTIwYmRhYzYxNGFjYTQ2MWQ4ZGIwNmYgXQo+IAo+IElmIHNvZnR3YXJlIHJ1
bm5pbmcgYmVmb3JlIHRoZSBPQ09UUCBkcml2ZXIgaXMgbG9hZGVkIGxlZnQgdGhlCj4gY29udHJv
bGxlciB3aXRoIHRoZSBlcnJvciBzdGF0dXMgcGVuZGluZywgdGhlIGRyaXZlciB3aWxsIG5ldmVy
Cj4gYmUgYWJsZSB0byBjb21wbGV0ZSB0aGUgcmVhZCB0aW1pbmcgc2V0dXAuIFJlc2V0IHRoZSBl
cnJvciBzdGF0dXMKPiBvbiBwcm9iZSB0byBtYWtlIHN1cmUgdGhlIGNvbnRyb2xsZXIgaXMgaW4g
dXNhYmxlIHN0YXRlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBl
bmd1dHJvbml4LmRlPgo+IFNpZ25lZC1vZmYtYnk6IFNyaW5pdmFzIEthbmRhZ2F0bGEgPHNyaW5p
dmFzLmthbmRhZ2F0bGFAbGluYXJvLm9yZz4KPiBMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9yLzIwMTkxMDI5MTE0MjQwLjE0OTA1LTYtc3Jpbml2YXMua2FuZGFnYXRsYUBsaW5hcm8ub3Jn
Cj4gU2lnbmVkLW9mZi1ieTogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0
aW9uLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBTYXNoYSBMZXZpbiA8c2FzaGFsQGtlcm5lbC5vcmc+
Cj4gLS0tCj4gIGRyaXZlcnMvbnZtZW0vaW14LW9jb3RwLmMgfCA0ICsrKysKPiAgMSBmaWxlIGNo
YW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWVtL2lt
eC1vY290cC5jIGIvZHJpdmVycy9udm1lbS9pbXgtb2NvdHAuYwo+IGluZGV4IGFmYjQyOWE0MTdm
ZTAuLjkyNmQ5Y2MwODBjZjQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9udm1lbS9pbXgtb2NvdHAu
Ywo+ICsrKyBiL2RyaXZlcnMvbnZtZW0vaW14LW9jb3RwLmMKPiBAQCAtNDY2LDYgKzQ2NiwxMCBA
QCBzdGF0aWMgaW50IGlteF9vY290cF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQo+ICAJaWYgKElTX0VSUihwcml2LT5jbGspKQo+ICAJCXJldHVybiBQVFJfRVJSKHByaXYtPmNs
ayk7Cj4gIAo+ICsJY2xrX3ByZXBhcmVfZW5hYmxlKHByaXYtPmNsayk7Cj4gKwlpbXhfb2NvdHBf
Y2xyX2Vycl9pZl9zZXQocHJpdi0+YmFzZSk7Cj4gKwljbGtfZGlzYWJsZV91bnByZXBhcmUocHJp
di0+Y2xrKTsKPiArCj4gIAlwcml2LT5wYXJhbXMgPSBvZl9kZXZpY2VfZ2V0X21hdGNoX2RhdGEo
JnBkZXYtPmRldik7Cj4gIAlpbXhfb2NvdHBfbnZtZW1fY29uZmlnLnNpemUgPSA0ICogcHJpdi0+
cGFyYW1zLT5ucmVnczsKPiAgCWlteF9vY290cF9udm1lbV9jb25maWcuZGV2ID0gZGV2Owo+IAoK
SGksCgpUaGlzIHBhdGNoIG1ha2VzIGtlcm5lbCA0LjE5Lns5Miw5M30gaGFuZyBhdCBib290IG9u
IG15IGkuTVg2VUxMIGJhc2VkCmJvYXJkLiBJdCBoYW5rcyBhdAoKWyAgICAzLjczMDA3OF0gY3B1
IGNwdTA6IExpbmtlZCBhcyBhIGNvbnN1bWVyIHRvIHJlZ3VsYXRvci4yClsgICAgMy43Mzc3NjBd
IGNwdSBjcHUwOiBMaW5rZWQgYXMgYSBjb25zdW1lciB0byByZWd1bGF0b3IuMwoKRnVsbCBib290
IGxvZyBpcyBoZXJlOiBodHRwczovL3Bhc3RlYmluLmNvbS9UUzhFRnhrcgoKVGhlIGNvbmZpZyBp
cyBpbXhfdjZfdjdfZGVmY29uZmlnLgoKUmV2ZXJ0aW5nIGl0IG1ha2VzIHRoZSBrZXJuZWxzIGJv
b3QgYWdhaW4uCgpSZWdhcmRzLAoKLS0gClPDqWJhc3RpZW4gU3p5bWFuc2tpLCBBcm1hZGV1cyBT
eXN0ZW1zClNvZnR3YXJlIGVuZ2luZWVyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
