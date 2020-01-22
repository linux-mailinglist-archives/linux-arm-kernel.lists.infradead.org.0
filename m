Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1FA1453EF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 12:39:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lqebXd1fgndKc47FFNcCAEOzaCvOBRdRNn3MGAj4v1I=; b=KM7re01sBFDlo2
	K1V6UVIB9idrv9KM6uidhCztX0Xvmj0rSC5ixhCwDv5X6+1CzMsSC19KvGwt9lt2UYjjmtx+0WnQ5
	6exdnCtgS+lRZ5N0qkDzah245GidKGBJnQuoKlthM2AUwJczgfRJyq9ipOmu8MDvE4a6wnroX+OLC
	O5V+EaLJv6Xm/6ir5uBW95blK3PPrams/Aa/HwhtJzmjEQIi7b2HcEkuypJuGyWuiWeyWyCMYSzXB
	4PdfW1ur/1wtmiXLNPlM2FfdXzQWTJUlu9NBSUgo6djVBTICfulh8t+Exr6Xi7tkHBSanFxaBB4Pn
	fZ3T0+sZFBt/bYCI8ZPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuEM1-0001ML-Oi; Wed, 22 Jan 2020 11:39:25 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuELq-0001Lz-2j
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 11:39:15 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00MBd9u6025782;
 Wed, 22 Jan 2020 05:39:09 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579693149;
 bh=HvPGELjrP56iYK9ROZqp0RxXKPmPMfECw6+E+vPm6Y8=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=C1Ag+u56cn27rvzG6aLZZqBkw2qAnedvArKU7bGUsiXg6R5qJG+mIlVpFeImopdmF
 hubbYlaY+7hkLSHCg9tt8yUYOa25W12t72/I/idM6Ht4NIY7YHeOHWZIgzjjD/Gd7b
 5zbK8vntoZi+9N36xWe5F7VTKHJd0Wp5dfuTow+M=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00MBd9hv089272
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 22 Jan 2020 05:39:09 -0600
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 22
 Jan 2020 05:39:08 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 22 Jan 2020 05:39:08 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00MBd6Di039187;
 Wed, 22 Jan 2020 05:39:07 -0600
Subject: Re: [PATCH v2 1/9] arm64: dts: ti: k3-am65-main: Correct main NAVSS
 representation
To: Lokesh Vutla <lokeshvutla@ti.com>, <t-kristo@ti.com>, <nm@ti.com>
References: <20200122082621.4974-1-peter.ujfalusi@ti.com>
 <20200122082621.4974-2-peter.ujfalusi@ti.com>
 <600df214-620b-fa41-82ef-01132d9bdfae@ti.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <04a1bb97-f308-f866-ad4f-907cd7fb3515@ti.com>
Date: Wed, 22 Jan 2020 13:39:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <600df214-620b-fa41-82ef-01132d9bdfae@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_033914_209415_31A22E56 
X-CRM114-Status: GOOD (  20.41  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyMi8wMS8yMDIwIDEzLjAzLCBMb2tlc2ggVnV0bGEgd3JvdGU6Cj4gCj4gCj4gT24gMjIv
MDEvMjAgMTo1NiBQTSwgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cj4+IE5BVlNTIGlzIGEgc3Vic3lz
dGVtIGNvbnRhaW5pbmcgZGlmZmVyZW50IElQcywgaXQgaXMgbm90IHJlYWxseSBhIGJ1cy4KPj4g
Q2hhbmdlIHRoZSBjb21wYXRpYmxlIGZyb20gInNpbXBsZS1idXMiIHRvICJzaW1wbGUtbWZkIiB0
byByZWZsZWN0IHRoYXQuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFBldGVyIFVqZmFsdXNpIDxwZXRl
ci51amZhbHVzaUB0aS5jb20+Cj4+IC0tLQo+PiAgYXJjaC9hcm02NC9ib290L2R0cy90aS9rMy1h
bTY1LW1haW4uZHRzaSB8IDQgKystLQo+PiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
dGkvazMtYW02NS1tYWluLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3RpL2szLWFtNjUtbWFp
bi5kdHNpCj4+IGluZGV4IGVmYjI0NTc5OTIyYy4uZTQwZjdhY2JlYzQyIDEwMDY0NAo+PiAtLS0g
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3RpL2szLWFtNjUtbWFpbi5kdHNpCj4+ICsrKyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvdGkvazMtYW02NS1tYWluLmR0c2kKPj4gQEAgLTM4NSw4ICszODUsOCBA
QCBpbnRyX21haW5fZ3BpbzogaW50ZXJydXB0LWNvbnRyb2xsZXIwIHsKPj4gIAkJdGksc2NpLXJt
LXJhbmdlLWdpcnEgPSA8MHgxPjsKPj4gIAl9Owo+PiAgCj4+IC0JY2Jhc3NfbWFpbl9uYXZzczog
aW50ZXJjb25uZWN0MCB7Cj4+IC0JCWNvbXBhdGlibGUgPSAic2ltcGxlLWJ1cyI7Cj4+ICsJY2Jh
c3NfbWFpbl9uYXZzczogbmF2c3NAMzA4MDAwMDAgewo+IAo+IFRoaXMgaW50cm9kdWNlcyBiZWxv
dyBkdGMgd2FybmluZyB3aGVuIGJ1aWx0IHdpdGggVz0xCj4gCj4gYXJjaC9hcm02NC9ib290L2R0
cy90aS9rMy1hbTY1LW1haW4uZHRzaTozODguMzUtNTMwLjQ6IFdhcm5pbmcKPiAodW5pdF9hZGRy
ZXNzX3ZzX3JlZyk6IC9pbnRlcmNvbm5lY3RAMTAwMDAwL25hdnNzQDMwODAwMDAwOiBub2RlIGhh
cyBhIHVuaXQKPiBuYW1lLCBidXQgbm8gcmVnIHByb3BlcnR5CgpJbnRlcmVzdGluZywgdGhlIGV4
YW1wbGUgaW4KRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RtYS90aS9rMy11ZG1h
LnlhbWwKCmlzIGJhc2ljYWxseSB0aGUgc2FtZSBhbmQgZHRfYmluZGluZ19jaGVjayBpcyBoYXBw
eSBhYm91dCBpdDoKRFRDICAgICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZG1h
L3RpL2szLXVkbWEuZXhhbXBsZS5kdC55YW1sCkNIRUNLICAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2RtYS90aS9rMy11ZG1hLmV4YW1wbGUuZHQueWFtbAoKYnV0IGl0IHNjcmVh
bWVkIHdoZW4gSSBoYWQgdGhlIHNpbXBsZS1idXMgaW4gdGhlcmUgKGNvcGllZCBmcm9tIHRoZQpl
eGlzdGluZyBkdHNpIGZpbGUpLgoKVGhlIG5vZGUgbmFtZSBmb3Igc2ltcGxlLWJ1cyBfbXVzdF8g
YmUKJ14oYnVzfHNvY3xheGl8YWhifGFwYikoQFswLTlhLWZdKyk/JCcKCkkgd291bGQgbm90IHVz
ZSBhbnkgb2YgdGhlc2UgdG8gTkFWU1Mgbm9kZS4uLgoKPiB0aGlzIGlzIHJlcHJlc2VudGluZyBj
YmFzcyBpbnNpZGUgbWFpbl9uYXZzcywganVzdCBsaWtlIGNiYXNzX21haW4uIFlvdSBjYW4gZHJv
cAo+IHRoaXMgcGF0Y2ggYW5kIHRoZSBzaW1pbGFyIG1jdSB2ZXJzaW9uLgoKQWNjb3JkaW5nIHRv
IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvbWZkLnR4dDoKLSBjb21wYXRp
YmxlIDogInNpbXBsZS1tZmQiIC0gdGhpcyBzaWduaWZpZXMgdGhhdCB0aGUgb3BlcmF0aW5nIHN5
c3RlbQogIHNob3VsZCBjb25zaWRlciBhbGwgc3Vibm9kZXMgb2YgdGhlIE1GRCBkZXZpY2UgYXMg
c2VwYXJhdGUgZGV2aWNlcwogIGFraW4gdG8gaG93ICJzaW1wbGUtYnVzIiBpbmRpY2F0ZXMgd2hl
biB0byBzZWUgc3Vibm9kZXMgYXMgY2hpbGRyZW4KICBmb3IgYSBzaW1wbGUgbWVtb3J5LW1hcHBl
ZCBidXMuCgpOQVZTUyBpcyBmYWxsaW5nIGludG8gc2ltcGxlLW1mZCBhcyB0aGUgZGV2aWNlcyB1
bmRlciBpdCBhcmUgaW5kZXBlbmRlbnQKZGV2aWNlcy4KCj4gCj4gVGhhbmtzIGFuZCByZWdhcmRz
LAo+IExva2VzaAo+IAo+PiArCQljb21wYXRpYmxlID0gInNpbXBsZS1tZmQiOwo+PiAgCQkjYWRk
cmVzcy1jZWxscyA9IDwyPjsKPj4gIAkJI3NpemUtY2VsbHMgPSA8Mj47Cj4+ICAJCXJhbmdlczsK
Pj4KCi0gUMOpdGVyCgpUZXhhcyBJbnN0cnVtZW50cyBGaW5sYW5kIE95LCBQb3Jra2FsYW5rYXR1
IDIyLCAwMDE4MCBIZWxzaW5raS4KWS10dW5udXMvQnVzaW5lc3MgSUQ6IDA2MTU1MjEtNC4gS290
aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
