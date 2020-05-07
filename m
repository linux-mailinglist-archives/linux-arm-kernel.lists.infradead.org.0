Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D73E1C8B8C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 14:58:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aUMD5xOlFfmKq31ZESPP+lJ2oPJ3sp6gidWTf2BJFWU=; b=HlU1AXS/np2Rzf
	TU/Rf1fL++36zjOpSBHx4PUFKtSzNfTUDFlO8445Tv5/9I7eofjUxz7q0AJFw69+Hk/6t5NHQG1X4
	9w/nkGZSnsxdGqtpecVnYCMjo1gA3yhFeuOWQvvEpJV5Z4qQbUPKEfgWtCRXee/G3MNqUtLmqiYr7
	Mh8CT0fEyGRJZ18qYGfsVIqKwg4ywlbKDBpBL1RWZqNPN8QDKfWrLRdlj+iUyC5Te0IlAXiL4SoyU
	jgnCmwCvSs7zL7Re+qiDbUcW5vBz5EncbvAUvgKGb3fvsDqkz6iUunmSAdYrtmcVLtIZvWOcyL6t1
	F0E68vE27YGmtS/vNvmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWg6R-0004iJ-01; Thu, 07 May 2020 12:58:15 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWg6H-0004hT-Q4
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 12:58:07 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 49HtmT12g8z1rxbg;
 Thu,  7 May 2020 14:58:01 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 49HtmT0JHtz1qtwC;
 Thu,  7 May 2020 14:58:01 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id O59GV7mkA03e; Thu,  7 May 2020 14:57:59 +0200 (CEST)
X-Auth-Info: 2eFNAvj3gqcF/NuZ7TI8cUcb7hVGFTld8y1L23hxGHM=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Thu,  7 May 2020 14:57:59 +0200 (CEST)
Subject: Re: [PATCH 10/12] ARM: dts: stm32: Add bindings for SPI2 on AV96
To: Alexandre Torgue <alexandre.torgue@st.com>,
 linux-arm-kernel@lists.infradead.org
References: <20200429163743.67854-1-marex@denx.de>
 <20200429163743.67854-10-marex@denx.de>
 <2c4b1332-7bde-8c7e-91d2-fee62b7299e6@st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <b1e84edd-ec40-af64-b73e-6deb7ce7291b@denx.de>
Date: Thu, 7 May 2020 14:57:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <2c4b1332-7bde-8c7e-91d2-fee62b7299e6@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_055805_992709_6B1E66D3 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Patrick Delaunay <patrick.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Patrice Chotard <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNS83LzIwIDI6NTMgUE0sIEFsZXhhbmRyZSBUb3JndWUgd3JvdGU6Cj4gSGkgTWFyZWsKPiAK
PiBPbiA0LzI5LzIwIDY6MzcgUE0sIE1hcmVrIFZhc3V0IHdyb3RlOgo+PiBBZGQgU1BJMiBiaW5k
aW5ncyB0byBBVjk2IERULCB0aGUgU1BJMiBJT3MgYXJlIHByZXNlbnQgb24KPj4gbG93LXNwZWVk
IGV4cGFuc2lvbiBjb25uZWN0b3IgWDYuIFRoaXMgaXMgZGlzYWJsZWQgYnkgZGVmYXVsdAo+PiBh
bmQgY2FuIGJlIGVuYWJsZWQgaWYgc29tZXRoaW5nIGlzIGNvbm5lY3RlZCB0aGVyZS4KPj4KPj4g
U2lnbmVkLW9mZi1ieTogTWFyZWsgVmFzdXQgPG1hcmV4QGRlbnguZGU+Cj4+IENjOiBBbGV4YW5k
cmUgVG9yZ3VlIDxhbGV4YW5kcmUudG9yZ3VlQHN0LmNvbT4KPj4gQ2M6IE1hbml2YW5uYW4gU2Fk
aGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+Cj4+IENjOiBNYXhpbWUg
Q29xdWVsaW4gPG1jb3F1ZWxpbi5zdG0zMkBnbWFpbC5jb20+Cj4+IENjOiBQYXRyaWNlIENob3Rh
cmQgPHBhdHJpY2UuY2hvdGFyZEBzdC5jb20+Cj4+IENjOiBQYXRyaWNrIERlbGF1bmF5IDxwYXRy
aWNrLmRlbGF1bmF5QHN0LmNvbT4KPj4gQ2M6IGxpbnV4LXN0bTMyQHN0LW1kLW1haWxtYW4uc3Rv
cm1yZXBseS5jb20KPj4gVG86IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+
PiAtLS0KPj4gwqAgYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2EtYXZlbmdlcjk2LmR0cyB8
IDkgKysrKysrKysrCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKPj4KPj4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdhLWF2ZW5nZXI5Ni5kdHMK
Pj4gYi9hcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3YS1hdmVuZ2VyOTYuZHRzCj4+IGluZGV4
IDcyY2EyODI4OThlYi4uYTlmM2JhOWRhMTcwIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybS9ib290
L2R0cy9zdG0zMm1wMTU3YS1hdmVuZ2VyOTYuZHRzCj4+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRz
L3N0bTMybXAxNTdhLWF2ZW5nZXI5Ni5kdHMKPj4gQEAgLTU1MSw2ICs1NTEsMTUgQEAgYnJjbWY6
IGJjcm1mQDEgewo+PiDCoMKgwqDCoMKgIH07Cj4+IMKgIH07Cj4+IMKgICsmc3BpMiB7Cj4+ICvC
oMKgwqAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4gK8KgwqDCoCBwaW5jdHJsLTAgPSA8
JnNwaTJfcGluc19hPjsKPj4gK8KgwqDCoCBjcy1ncGlvcyA9IDwmZ3Bpb2kgMCAwPjsKPj4gK8Kg
wqDCoCBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+PiArwqDCoMKgIC9kZWxldGUtcHJvcGVydHkvZG1h
czsKPj4gK8KgwqDCoCAvZGVsZXRlLXByb3BlcnR5L2RtYS1uYW1lczsKPj4gK307Cj4+ICsKPj4g
wqAgJnVhcnQ0IHsKPj4gwqDCoMKgwqDCoCAvKiBPbiBMb3cgc3BlZWQgZXhwYW5zaW9uIGhlYWRl
ciAqLwo+PiDCoMKgwqDCoMKgIGxhYmVsID0gIkxTLVVBUlQxIjsKPj4KPiAKPiBTb3JyeSBJIChh
Z2FpbikgbG9zdCB0aGUgY292ZXItbGV0dGVyIChJIG5lZWQgdG8gYmV0dGVyIGNvbmZpZ3VyZSBt
eQo+IG1haWxlcikgc28gSSByZXBvbmQgb24gdGhpcyBwYXRjaCBvbmx5Lgo+IAo+IEFzIGRpc2N1
c3NlZCwgcGF0Y2ggMSB0byAxMCBoYXZlIGJlZW4gYXBwbGllZCBvbiBzdG0zMi1uZXh0Lgo+IFBh
dGNoZXMgMTEvMTIgaGF2ZSBiZWVuIGRyb3BwZWQgd2FpdGluZyBmb3Igb24gdXBkYXRlLgoKVGhh
bmsgeW91IQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
