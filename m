Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 137021567CB
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 22:19:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SpnqoqJkkTDnL/MrFxovmk2xH8BIu2Io0f3K3QujvkQ=; b=Q4tQpWRX16hZLn
	G4gG+ky7xup4NP14vgfpP2f45UjJZ1L7bD5loQGQYnosHtFQC2ErBujZ10AFF5bIHl1+lCDSqegxo
	ZmNInQkF+ku0bN5s9LJ78MXsEYbkOprN7Nf+wgZv1BKm5GCj7ks8rgNHlg3WDhz4mmDtD7UVPuobf
	+GpIGfmRplKRgXRDueWyX1ooAQprcUarue4K920C5SUUMA3LK/BxtFnj/Xq9nK5FjuY+++LcQi68F
	mLadtkBtqNMP1k+UPGy+41PLZwhS6KTt8HI6Sy3yz/0v4AWTGJJbeKFDx/X6cMyKZZoTCOtigucTV
	Lfjy0byzL5h/Z7/EjmKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0XW1-00089q-UM; Sat, 08 Feb 2020 21:19:49 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0XVt-00088Q-3f
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Feb 2020 21:19:42 +0000
Received: by mail-qv1-xf41.google.com with SMTP id u10so1380944qvi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 08 Feb 2020 13:19:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=GPMgVu3ZcUXe3Ew1rL91tEkLbwrAWNnfmlad0QvRkhk=;
 b=YZJwbMaLc4f7eTwcXj/ySQ+a6qejzHy2jxNC84UwFVSzQx7AyGa9wCPlFBLVZoUtdS
 khmuv0gox5KiKEXGX5HrC5Dl2Hlbq5SBgSKoBceBZIwk9BrmK/1C7e+jsrn+bsGt+Y9c
 mm06ejZ3vSDqDws8wFEPtfuyUTiIKGpuoo4N8BxI98ZpKFeDUjTqRV2zVmV4HN1w4Rl+
 83+Ml6xzIZbGyntGiF+0uRxEn/DM4InTKZjgVM2mhkTj+9z6ImlUXUWNXSyzVe0lOcuP
 rmU8GteFcvFDWctRHSxNzl9QZkwlJ492zfji24gVOBL2H1FSyXE8ewgjvhM3ahs2q1DE
 Mx7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=GPMgVu3ZcUXe3Ew1rL91tEkLbwrAWNnfmlad0QvRkhk=;
 b=ncnkUhrmrcifX94Uogr0PL4XyLy8KvCB1mHC36OZ42lfPVOqoJoEV3ghu6DudvDPaS
 j/XDLGr8CgSy2D70ygkz3BPwv7U0WQEFMbCb4lkt394qVzhdFjAYgz7wvCthtxzMTbmj
 y7Lfibob1fDAuCtloOJf9CseeDmzjq3/DaOv3TgVCCPHjRdL8XQpvHjlT7i3tNgVOdKg
 ZaQI2BUDY2j+0uceeXq7p7z74RmXTrosWD1SWh8vbTXUMbKK3YVbvB/xKUHpS37XFx8P
 T2S7RMNDdoHXDpjJ3L9dJlOwT9+XdLddcXB7KM5zA4N73MTWLHV7l2ydS4Uxg5fWtIAG
 d7ug==
X-Gm-Message-State: APjAAAVu5DqAt69SPDtU8ixZKczyej2vsAKE2n+iYeCUJ5F1nqwe/veg
 kD3Gqu08rFBDBQdvGDJkl/qeFQ==
X-Google-Smtp-Source: APXvYqzfJjeQwtITFp+HE4xE2Z5HHi/IYz+2M/lpi/BDH/3qHgxSVfVkBsNL0P9b2HdT2cUzGAAlfw==
X-Received: by 2002:a0c:cd8e:: with SMTP id v14mr4180499qvm.182.1581196776574; 
 Sat, 08 Feb 2020 13:19:36 -0800 (PST)
Received: from skullcanyon ([192.222.193.21])
 by smtp.gmail.com with ESMTPSA id b12sm3389749qkl.0.2020.02.08.13.19.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 08 Feb 2020 13:19:35 -0800 (PST)
Message-ID: <9aec0e87cb600ec1d89037f9527544b3c6098921.camel@ndufresne.ca>
Subject: Re: [PATCH v3 5/5] media: meson: vdec: add VP9 decoder support
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Neil Armstrong <narmstrong@baylibre.com>, mchehab@kernel.org, 
 hans.verkuil@cisco.com
Date: Sat, 08 Feb 2020 16:19:34 -0500
In-Reply-To: <49e6168b-ffed-6011-3b1f-455224d3130b@baylibre.com>
References: <20200116133437.2443-1-narmstrong@baylibre.com>
 <20200116133437.2443-6-narmstrong@baylibre.com>
 <a4efcb4e1591ac9cf305742d34337335b6ff7f29.camel@ndufresne.ca>
 <49e6168b-ffed-6011-3b1f-455224d3130b@baylibre.com>
User-Agent: Evolution 3.34.3 (3.34.3-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_131941_159643_C9239382 
X-CRM114-Status: GOOD (  23.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Maxime Jourdan <mjourdan@baylibre.com>, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgamV1ZGkgMDYgZsOpdnJpZXIgMjAyMCDDoCAwOTowOCArMDEwMCwgTmVpbCBBcm1zdHJvbmcg
YSDDqWNyaXQgOgo+IE9uIDAzLzAyLzIwMjAgMDQ6MTEsIE5pY29sYXMgRHVmcmVzbmUgd3JvdGU6
Cj4gPiBIaSBOZWlsLAo+ID4gCj4gPiBMZSBqZXVkaSAxNiBqYW52aWVyIDIwMjAgw6AgMTQ6MzQg
KzAxMDAsIE5laWwgQXJtc3Ryb25nIGEgw6ljcml0IDoKPiA+ID4gRnJvbTogTWF4aW1lIEpvdXJk
YW4gPG1qb3VyZGFuQGJheWxpYnJlLmNvbT4KPiA+ID4gCj4gPiA+IFRoaXMgYWRkcyBWUDkgZGVj
b2RpbmcgZm9yIHRoZSBBbWxvZ2ljIEdYTCwgRzEyQSAmIFNNMSBTb0NzLCB1c2luZwo+ID4gPiB0
aGUgY29tbW9uZyAiSEVWQyIgSFcgZGVjb2Rlci4KPiA+ID4gCj4gPiA+IEZvciBHMTJBICYgU00x
LCBpdCB1c2VzIHRoZSBJT01NVSBzdXBwb3J0IGZyb20gdGhlIGZpcm13YXJlLgo+ID4gPiAKPiA+
ID4gRm9yIDEwYml0IGRlY29kaW5nLCB0aGUgZmlybXdhcmUgY2FuIG9ubHkgZGVjb2RlIGluIHRo
ZSBwcm9wcmlldGFyeQo+ID4gPiBBbWxvZ2ljIEZyYW1lYnVmZmVyIENvbXByZXNzaW9uIGZvcm1h
dCwgYnV0IGNhbiBvdXRwdXQgaW4gOGJpdCBOVjEyCj4gPiA+IGJ1ZmZlciB3aGlsZSB3cml0aW5n
IHRoZSBkZWNvZGVkIGZyYW1lLgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogTWF4aW1lIEpv
dXJkYW4gPG1qb3VyZGFuQGJheWxpYnJlLmNvbT4KPiA+ID4gU2lnbmVkLW9mZi1ieTogTmVpbCBB
cm1zdHJvbmcgPG5hcm1zdHJvbmdAYmF5bGlicmUuY29tPgo+ID4gPiAtLS0KPiA+ID4gIGRyaXZl
cnMvc3RhZ2luZy9tZWRpYS9tZXNvbi92ZGVjL01ha2VmaWxlICAgICB8ICAgIDIgKy0KPiA+ID4g
IGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9tZXNvbi92ZGVjL2NvZGVjX3ZwOS5jICB8IDIxMzkgKysr
KysrKysrKysrKysrKysKPiA+ID4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9tZXNvbi92ZGVjL2Nv
ZGVjX3ZwOS5oICB8ICAgMTMgKwo+ID4gPiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL21lc29uL3Zk
ZWMvaGV2Y19yZWdzLmggIHwgICAgNyArCj4gPiA+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvbWVz
b24vdmRlYy92ZGVjLmMgICAgICAgfCAgICA1ICsKPiA+ID4gIC4uLi9zdGFnaW5nL21lZGlhL21l
c29uL3ZkZWMvdmRlY19oZWxwZXJzLmMgICB8ICAgIDQgKwo+ID4gPiAgLi4uL3N0YWdpbmcvbWVk
aWEvbWVzb24vdmRlYy92ZGVjX3BsYXRmb3JtLmMgIHwgICAzOCArCj4gPiA+ICA3IGZpbGVzIGNo
YW5nZWQsIDIyMDcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4gPiAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9tZXNvbi92ZGVjL2NvZGVjX3ZwOS5jCj4g
PiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zdGFnaW5nL21lZGlhL21lc29uL3ZkZWMv
Y29kZWNfdnA5LmgKPiA+ID4gCj4gCj4gWy4uLl0KPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvc3RhZ2luZy9tZWRpYS9tZXNvbi92ZGVjL3ZkZWNfcGxhdGZvcm0uYyBiL2RyaXZlcnMvc3Rh
Z2luZy9tZWRpYS9tZXNvbi92ZGVjL3ZkZWNfcGxhdGZvcm0uYwo+ID4gPiBpbmRleCBlOTM1NmE0
NjgyOGYuLjcyYTgzM2IxY2ViZCAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21l
ZGlhL21lc29uL3ZkZWMvdmRlY19wbGF0Zm9ybS5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvc3RhZ2lu
Zy9tZWRpYS9tZXNvbi92ZGVjL3ZkZWNfcGxhdGZvcm0uYwo+ID4gPiBAQCAtOCw4ICs4LDEwIEBA
Cj4gPiA+ICAjaW5jbHVkZSAidmRlYy5oIgo+ID4gPiAgCj4gPiA+ICAjaW5jbHVkZSAidmRlY18x
LmgiCj4gPiA+ICsjaW5jbHVkZSAidmRlY19oZXZjLmgiCj4gPiA+ICAjaW5jbHVkZSAiY29kZWNf
bXBlZzEyLmgiCj4gPiA+ICAjaW5jbHVkZSAiY29kZWNfaDI2NC5oIgo+ID4gPiArI2luY2x1ZGUg
ImNvZGVjX3ZwOS5oIgo+ID4gPiAgCj4gPiA+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGFtdmRlY19m
b3JtYXQgdmRlY19mb3JtYXRzX2d4YmJbXSA9IHsKPiA+ID4gIAl7Cj4gPiA+IEBAIC01MSw2ICs1
MywxOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGFtdmRlY19mb3JtYXQgdmRlY19mb3JtYXRzX2d4
YmJbXSA9IHsKPiA+ID4gIAo+ID4gPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBhbXZkZWNfZm9ybWF0
IHZkZWNfZm9ybWF0c19neGxbXSA9IHsKPiA+ID4gIAl7Cj4gPiA+ICsJCS5waXhmbXQgPSBWNEwy
X1BJWF9GTVRfVlA5LAo+ID4gPiArCQkubWluX2J1ZmZlcnMgPSAxNiwKPiA+ID4gKwkJLm1heF9i
dWZmZXJzID0gMjQsCj4gPiA+ICsJCS5tYXhfd2lkdGggPSAzODQwLAo+ID4gPiArCQkubWF4X2hl
aWdodCA9IDIxNjAsCj4gPiA+ICsJCS52ZGVjX29wcyA9ICZ2ZGVjX2hldmNfb3BzLAo+ID4gPiAr
CQkuY29kZWNfb3BzID0gJmNvZGVjX3ZwOV9vcHMsCj4gPiA+ICsJCS5maXJtd2FyZV9wYXRoID0g
Im1lc29uL3ZkZWMvZ3hsX3ZwOS5iaW4iLAo+ID4gCj4gPiBJcyB0aGVyZSBhIHB1bGwgcmVxdWVz
dCBwZW5kaW5nIGZvciB0aGlzIGZpcm13YXJlID8gSSBjb3VsZCBub3QgdGVzdCBhcwo+ID4gdGhp
cyBmaXJtd2FyZSB3YXMgbWlzc2luZy4gTm90ZSB0aGF0IGl0IGNvdWxkIGJlIG5pY2UgdG8gcmVt
b3ZlIHRoZQo+ID4gZm9ybWF0IGZyb20gdGhlIGVudW1lcmF0aW9uIGluIHRoYXQgY2FzZSwgYXMg
aXQncyB2ZXJ5IGNvbmZ1c2luZwo+ID4gaW5pdGlhbGx5Lgo+IAo+IEl0IGhhcyBiZWVuIG1lcmdl
ZCB5ZXN0ZXJkYXksIHNvcnJ5IGZvciB0aGUgZGVsYXkuCj4gCj4gV2l0aCBtYXhpbWUncyBwYXRj
aCwgd2UgdGVzdGVkIGl0IHVzaW5nIGZmbXBlZyBtYXN0ZXIsIG1wdiBtYXN0ZXIgd2l0aCBkcm0t
cHJpbWUKPiByZW5kZXJpbmcuIFdlIGhhdmUgYSBidWlsZHJvb3QgcmVwbyB3aXRoIHRoZSBjaGFu
Z2VkIG5lZWRlZCA6Cj4gCj4gaHR0cHM6Ly9naXRsYWIuY29tL2JheWxpYnJlL2FtbG9naWMvYXR2
L2J1aWxkcm9vdC15dWthd2EKPiAKPiBJIHdpbGwgcmVzcGluIGEgdjQgd2l0aCB0aGUgc21hbGwg
Zml4IGZyb20gbWF4aW1lLgoKT2ssIEkgc2VlIGl0IG5vdy4gSSd2ZSBnaXZlbiBhIHRyeSwgdGhl
IG91dHB1dCB3YXMgY29ycnVwdGVkIHdpdGggdGhpcwpmaWxlIGZyb20gQW5kcm9pZCBDVFMgKyBH
U3RyZWFtZXIgMS4xNi4xIChGZWRvcmEgMzEgYnVpbGQpLgoKICBQcm9maWxlXzBfOGJpdC9idWYv
Y3Jvd2RfcnVuXzEwODBYNTEyX2ZyMzBfYmQ4XzhidWZfbDMud2VibQoKTG9va2luZyBmb3J3YXJk
IE1heGltZSdzIHBhdGNoZXMuIEp1c3QgbGlrZSB0aGUgSDI2NCBjYXNlLCBzZWVraW5nIHdpdGgK
a21zc2luayBsZWFkIHRvIHN0YWxscywgYnV0IHRoaXMgdGltZSwgdGhlIGtlcm5lbCBnaXZlIG9u
bHkgb25lCm1lc3NhZ2U6CgogIFs0OTgyMzAuOTUxNzM3XSBtZXNvbi12ZGVjIGM4ODIwMDAwLnZp
ZGVvLWNvZGVjOiBObyBkc3QgYnVmZmVyIGF2YWlsYWJsZQoKQW5kIG5vdyBJIHJlbWVtYmVyIGEg
Y29tbWVudCwgSSBndWVzcyBpdCB3YXMgTWF4aW1lIGFib3V0IGluY3JlYXNpbmcKdGhlIHNvbWUg
bnVtYmVyIG9mIGJ1ZmZlcnMgZnJvbSAyIHRvIDMuIFNvIEknbGwgdHJ5IGFuZCBmaW5kIHRpbWUg
dG8KZ2V0IFY0IGFuZCB0ZXN0IGFnYWluLiBRdWl0ZSBzb21lIGltcHJvdmVtZW50IG92ZXIgbXkg
bGFzdCBzZXJpZXMgb2YKdGVzdCB3aXRoIEdTdHJlYW1lci4gSXQgaGFzIHRoaXMgcGFydGljdWxh
cml0eSBvZiBydW5uaW5nIGlucHV0L291dHB1dAphbmQgY2FwdHVyZSBRQlVGIG9uIHBvdGVudGlh
bGx5IDMgZGlmZmVyZW50IHRocmVhZHMuCgo+IAo+IE5laWwKPiAKPiAKPiA+ID4gKwkJLnBpeGZt
dHNfY2FwID0geyBWNEwyX1BJWF9GTVRfTlYxMk0sIDAgfSwKPiA+ID4gKwkJLmZsYWdzID0gVjRM
Ml9GTVRfRkxBR19DT01QUkVTU0VEIHwKPiA+ID4gKwkJCSBWNEwyX0ZNVF9GTEFHX0RZTl9SRVNP
TFVUSU9OLAo+ID4gPiArCX0sIHsKPiA+ID4gIAkJLnBpeGZtdCA9IFY0TDJfUElYX0ZNVF9IMjY0
LAo+ID4gPiAgCQkubWluX2J1ZmZlcnMgPSAyLAo+ID4gPiAgCQkubWF4X2J1ZmZlcnMgPSAyNCwK
PiA+ID4gQEAgLTEyNyw2ICsxNDEsMTggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBhbXZkZWNfZm9y
bWF0IHZkZWNfZm9ybWF0c19neG1bXSA9IHsKPiA+ID4gIAo+ID4gPiAgc3RhdGljIGNvbnN0IHN0
cnVjdCBhbXZkZWNfZm9ybWF0IHZkZWNfZm9ybWF0c19nMTJhW10gPSB7Cj4gPiA+ICAJewo+ID4g
PiArCQkucGl4Zm10ID0gVjRMMl9QSVhfRk1UX1ZQOSwKPiA+ID4gKwkJLm1pbl9idWZmZXJzID0g
MTYsCj4gPiA+ICsJCS5tYXhfYnVmZmVycyA9IDI0LAo+ID4gPiArCQkubWF4X3dpZHRoID0gMzg0
MCwKPiA+ID4gKwkJLm1heF9oZWlnaHQgPSAyMTYwLAo+ID4gPiArCQkudmRlY19vcHMgPSAmdmRl
Y19oZXZjX29wcywKPiA+ID4gKwkJLmNvZGVjX29wcyA9ICZjb2RlY192cDlfb3BzLAo+ID4gPiAr
CQkuZmlybXdhcmVfcGF0aCA9ICJtZXNvbi92ZGVjL2cxMmFfdnA5LmJpbiIsCj4gPiA+ICsJCS5w
aXhmbXRzX2NhcCA9IHsgVjRMMl9QSVhfRk1UX05WMTJNLCAwIH0sCj4gPiA+ICsJCS5mbGFncyA9
IFY0TDJfRk1UX0ZMQUdfQ09NUFJFU1NFRCB8Cj4gPiA+ICsJCQkgVjRMMl9GTVRfRkxBR19EWU5f
UkVTT0xVVElPTiwKPiA+ID4gKwl9LCB7Cj4gPiA+ICAJCS5waXhmbXQgPSBWNEwyX1BJWF9GTVRf
SDI2NCwKPiA+ID4gIAkJLm1pbl9idWZmZXJzID0gMiwKPiA+ID4gIAkJLm1heF9idWZmZXJzID0g
MjQsCj4gPiA+IEBAIC0xNjUsNiArMTkxLDE4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgYW12ZGVj
X2Zvcm1hdCB2ZGVjX2Zvcm1hdHNfZzEyYVtdID0gewo+ID4gPiAgCj4gPiA+ICBzdGF0aWMgY29u
c3Qgc3RydWN0IGFtdmRlY19mb3JtYXQgdmRlY19mb3JtYXRzX3NtMVtdID0gewo+ID4gPiAgCXsK
PiA+ID4gKwkJLnBpeGZtdCA9IFY0TDJfUElYX0ZNVF9WUDksCj4gPiA+ICsJCS5taW5fYnVmZmVy
cyA9IDE2LAo+ID4gPiArCQkubWF4X2J1ZmZlcnMgPSAyNCwKPiA+ID4gKwkJLm1heF93aWR0aCA9
IDM4NDAsCj4gPiA+ICsJCS5tYXhfaGVpZ2h0ID0gMjE2MCwKPiA+ID4gKwkJLnZkZWNfb3BzID0g
JnZkZWNfaGV2Y19vcHMsCj4gPiA+ICsJCS5jb2RlY19vcHMgPSAmY29kZWNfdnA5X29wcywKPiA+
ID4gKwkJLmZpcm13YXJlX3BhdGggPSAibWVzb24vdmRlYy9nMTJhX3ZwOS5iaW4iLAo+ID4gPiAr
CQkucGl4Zm10c19jYXAgPSB7IFY0TDJfUElYX0ZNVF9OVjEyTSwgMCB9LAo+ID4gPiArCQkuZmxh
Z3MgPSBWNEwyX0ZNVF9GTEFHX0NPTVBSRVNTRUQgfAo+ID4gPiArCQkJIFY0TDJfRk1UX0ZMQUdf
RFlOX1JFU09MVVRJT04sCj4gPiA+ICsJfSwgewo+ID4gPiAgCQkucGl4Zm10ID0gVjRMMl9QSVhf
Rk1UX0gyNjQsCj4gPiA+ICAJCS5taW5fYnVmZmVycyA9IDIsCj4gPiA+ICAJCS5tYXhfYnVmZmVy
cyA9IDI0LAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
