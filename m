Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF01CB2D4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 02:54:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5zvAZ9QrM5g0l4tsgkrr4L56YewIz0As3uDNmRU2XUA=; b=Dtcrom3Phk2ptG
	bvEa+td401GnGkkH9xT+O/QZ7rr9aBo3rawxvo2BSWgqQweKz9BkJT56mxhcSfW5sUCOMC922RCEI
	hFzBEkpITBByNGGUEL0sLCcu4ZuLKBQXSvtp6zp1Mf/MTao2/XbRgE8wg8S4bQbqTRIjEbmm3we79
	jzxi3/aChrbRgmB9PedOwdUXOK4u/RVgsHtKFn4sTl+WbSCeZTi0sHUXvBxo2SuTtEN7ptL8TUQ8p
	8q4JE2+Q1Vbvt0O0FqQY7H4R3A4HdtVmUvIzUN6BN/tky1SHHBLyf3UIQzajQ4CotMmxDvDc6Jpxd
	uVROw7TGaJCzr2jVI2Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGBr6-0000PV-OD; Fri, 04 Oct 2019 00:54:00 +0000
Received: from mout.web.de ([212.227.15.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGBqw-0000Or-Uq
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 00:53:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1570150413;
 bh=yc29mlj6Em+yocRGuuJTY3P29uB2ac6Ftt8OzEBDHfI=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=pXs5tXA/AL1IGeXF/v7k40H3pS5ma3YdKVtH/LquuKi6JQPyWmbQSBOQaMrOkv/Q1
 UTpv5FiwXpMBuMODV7qRvlVodYQyPGrLcE0rIdOvr9EtOhPYbVFsqcwC2XoxqjUL9Y
 2H0T86maA6+7yBqpRzd9u2EC21khZ6G85UDv17pU=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.27] ([77.183.117.42]) by smtp.web.de (mrweb002
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0LlFSg-1hfDCd1p7G-00b3rZ; Fri, 04
 Oct 2019 02:53:33 +0200
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: fix RockPro64 sdmmc settings
To: Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>
References: <20191003215036.15023-1-smoch@web.de>
 <20191003215036.15023-3-smoch@web.de>
 <31181f3c-20ec-e717-1f7e-8b35cd54d96d@arm.com>
From: Soeren Moch <smoch@web.de>
Openpgp: preference=signencrypt
Autocrypt: addr=smoch@web.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <a8b20c45-0426-ee42-4efc-52e56ea6bb20@web.de>
Date: Fri, 4 Oct 2019 02:53:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <31181f3c-20ec-e717-1f7e-8b35cd54d96d@arm.com>
Content-Language: en-GB
X-Provags-ID: V03:K1:mdWNFJtEXHCA4+lOMXPcUGx8G0sN+KNy6ju1udwT281Z6pjVbrX
 KdtK++/gN9C9BvRHOc/YGVm3JTKptsfL9ePROvVQY6IjpGay+6IhSNZDmoZ9CPNPUpilwCu
 bsojqDT4zqw0GyE6YIvEOCbT0IoSu6RHnWAbpeScRZcTXMCzQKBKUQ7KwJSp4IMUFd+Nmcr
 Vw8mglQ0rCh5ricny8dHA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JaEQpjjonJU=:AJhN+IvTDrL144tWgo5IsV
 8XbhzAXSvfdaXTUlw8W2Ggd4E1tLejNR/HS6XhSauJZtxz2zNEqvcpxW3NfQdFIBbcAdFuV8G
 cepEtcOLczlN48aJFeYE6NDY5YiVMg8CQjYtxCEO4TNmTAlAJaBgEnz+bJx3naOWun/9f7oyn
 wMWr0Eq5ZjJsGNVZAcGzjQpY/MZ4X5s0eVrrZ6cVIvaXxYwVOVALnlPqdHC9F+ZeZQxoHPz+0
 qB7ZIz3Btgbkf8nJlbU72WXlbIxLPkdcJQ2oOl0bqlV3alLyP0ZYfVZ86Xn9GeDcFyM0PPZgB
 KUwUI9xzxIfAG5cSrS9XtUTNNKyzc06D+6i6y2ay6oD6l9lUlQcmVXDvnCge86lvmlXPbIZ+L
 gL9CH7cai81/fA9fncy+CFSU5c/yitdpgaJzAH8N02bBX4Dxg3GsQnhWrXze7eyg1XryHNLle
 8TnDz2OiAFObhcuVLnItZbZJSAwCWIPvHuAs31OYr33eISJVMgp5xAl5Ed/PVS5YWjLrywamw
 PBG35QJUll9stbK2RWXTp18mxIMJ0f7Pe+tYewJDKqFhxo5syr46yQrt0uprGh6hmdM8ct8HP
 zlHxNoMFbmpLgb0CAIpjzV6RHgKnXhllJxulZzq93z62WBOvbRuK2zI4bodLC1tD1BJqlTdPB
 +AQ/x2nV6/ARW9aRe7TJTSk3jr/GSfpKrO1ZwcSnDm+pFt3v0nenvxsuh+LPm3KVgW3vdswbu
 dIMEU6q9ftIOtTIz3BnaPHf8/N2e+yWGtUmLN1EJ87dYWETD/xzeJP0sGBpduSWMaaKiMBs+Y
 qerMfbnKRfsgViIoz68+ChkmF7idmp/+jD+EPZDJgh22jzSSocPCxxmgZksgsJskKFG5Ho86b
 r3wnAU4NjUYyz9O60Nc5x4pVjnYjKVbTJFc7gQyzAvqwXqJLOTPVMqnNM4PtbX5DRZfXYpu/G
 OgLngEOF1XbSG6t9poN/CfWdnjOfPRUlhDBjmhDDav1FkqgNbs6P8Xjm7KFJGVozBAu4Pfpe6
 Iswmu6JNtcDN7fjlhRoXnOSh+Rdn5TixjnoPJk/u+bVBEUDF7g7e1qFTA2HghMYAGLBxWl5hr
 9YRcl78sjuG8PJnxwb31oczJPv2OlMy9949C0yCvcjeWTNSx754p9SsGVzhZ5+GETThPy23l/
 wqmKd3EztPCsdcX3M7IjPuB0H0RkGZBuHfEjZT95ixyy9QiGxkXqbP8lKR3rPvSFwdJXtDEYB
 krrG08Fr/l8yHBsXQ63xzXbjS2DcsioGeMCi2Xw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_175351_327084_A02C0186 
X-CRM114-Status: GOOD (  16.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.14 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwNC4xMC4xOSAwMjowMSwgUm9iaW4gTXVycGh5IHdyb3RlOgo+IE9uIDIwMTktMTAtMDMg
MTA6NTAgcG0sIFNvZXJlbiBNb2NoIHdyb3RlOgo+PiBBY2NvcmRpbmcgdG8gdGhlIFJvY2tQcm82
NCBzY2hlbWF0aWMgWzFdIHRoZSByazMzOTkgc2RtbWMgY29udHJvbGxlciBpcwo+PiBjb25uZWN0
ZWQgdG8gYSBtaWNyb1NEIChURiBjYXJkKSBzbG90LCB3aGljaCBjYW5ub3QgYmUgc3dpdGNoZWQg
dG8gMS44Vi4KPgo+IFJlYWxseT8gQUZBSUNTIHRoZSBTRE1NQzAgd2lyaW5nIGxvb2tzIHByZXR0
eSBtdWNoIGlkZW50aWNhbCB0byB0aGUKPiBOYW5vUEMtVDQgc2NoZW1hdGljIChpdCdzIHRoZSBz
YW1lIHJlZmVyZW5jZSBkZXNpZ24sIGFmdGVyIGFsbCksIGFuZCBJCj4ga25vdyB0aGF0IGJvYXJk
IGNhbiBoYXBwaWx5IGRyaXZlIGEgVUhTLUkgbWljcm9TRCBjYXJkIHdpdGggMS44diBJL09zLAo+
IGJlY2F1c2UgbWluZSdzIGRvaW5nIHNvIHJpZ2h0IG5vdy4KPgo+IFJvYmluLgpPSywgdGhlIFJv
Y2tQcm82NCBkb2VzIG5vdCBhbGxvdyBhIGNhcmQgcmVzZXQgKHBvd2VyIGN5Y2xlKSBzaW5jZQpW
Q0MzVjBfU0QgaXMgZGlyZWN0bHkgY29ubmVjdGVkIHRvIFZDQzNWM19TWVMgKHZpYSBSODk1NTUp
LCB0aGUKU0RNTUMwX1BXSF9IIHNpZ25hbCBpcyBub3QgY29ubmVjdGVkLiBTbyB0aGUgY2FyZCBm
YWlscyB0byBpZGVudGlmeQppdHNlbGYgYWZ0ZXIgc3VzcGVuZCBvciByZWJvb3Qgd2hlbiBzd2l0
Y2hlZCB0byAxLjhWIG9wZXJhdGlvbi4KClJlZ2FyZHMsClNvZXJlbgo+Cj4+IFNvIGFsc28gY29u
ZmlndXJlIHRoZSB2Y2Nfc2RpbyByZWd1bGF0b3IsIHdoaWNoIGRyaXZlcyB0aGUgaS9vIHZvbHRh
Z2UKPj4gb2YgdGhlIHNkbW1jIGNvbnRyb2xsZXIsIGFjY29yZGluZ2x5Lgo+Pgo+PiBXaGlsZSBh
dCBpdCwgYWxzbyByZW1vdmUgdGhlIGNhcC1tbWMtaGlnaHNwZWVkIHByb3BlcnR5IG9mIHRoZSBz
ZG1tYwo+PiBjb250cm9sbGVyLCBzaW5jZSBubyBtbWMgY2FyZCBjYW4gYmUgY29ubmVjdGVkIGhl
cmUuCj4+Cj4+IFsxXSBodHRwOi8vZmlsZXMucGluZTY0Lm9yZy9kb2Mvcm9ja3BybzY0L3JvY2tw
cm82NF92MjEtU0NILnBkZgo+Pgo+PiBGaXhlczogZTRmM2ZiNDkwOTY3ICgiYXJtNjQ6IGR0czog
cm9ja2NoaXA6IGFkZCBpbml0aWFsIGR0cyBzdXBwb3J0Cj4+IGZvciBSb2NrcHJvNjQiKQo+PiBT
aWduZWQtb2ZmLWJ5OiBTb2VyZW4gTW9jaCA8c21vY2hAd2ViLmRlPgo+PiAtLS0KPj4gQ2M6IEhl
aWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4+IENjOiBsaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCj4+IENjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKPj4gQ2M6IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcKPj4gLS0tCj4+IMKgIGFyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHMgfCAzICstLQo+PiDC
oCAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCj4+Cj4+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQu
ZHRzCj4+IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0
cwo+PiBpbmRleCAyZTQ0ZGFlNDg2NWEuLjA4NGYxZDk5NGE1MCAxMDA2NDQKPj4gLS0tIGEvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0cwo+PiArKysgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzCj4+IEBAIC0z
NTMsNyArMzUzLDcgQEAKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWd1
bGF0b3ItbmFtZSA9ICJ2Y2Nfc2RpbyI7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgcmVndWxhdG9yLWFsd2F5cy1vbjsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCByZWd1bGF0b3ItYm9vdC1vbjsKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwxODAwMDAwPjsKPj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwzMDAwMDAwPjsK
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWd1bGF0b3ItbWF4LW1pY3Jv
dm9sdCA9IDwzMDAwMDAwPjsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBy
ZWd1bGF0b3Itc3RhdGUtbWVtIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHJlZ3VsYXRvci1vbi1pbi1zdXNwZW5kOwo+PiBAQCAtNjI0LDcgKzYyNCw2IEBA
Cj4+Cj4+IMKgICZzZG1tYyB7Cj4+IMKgwqDCoMKgwqAgYnVzLXdpZHRoID0gPDQ+Owo+PiAtwqDC
oMKgIGNhcC1tbWMtaGlnaHNwZWVkOwo+PiDCoMKgwqDCoMKgIGNhcC1zZC1oaWdoc3BlZWQ7Cj4+
IMKgwqDCoMKgwqAgY2QtZ3Bpb3MgPSA8JmdwaW8wIDcgR1BJT19BQ1RJVkVfTE9XPjsKPj4gwqDC
oMKgwqDCoCBkaXNhYmxlLXdwOwo+PiAtLSAKPj4gMi4xNy4xCj4+Cj4+Cj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IExpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdAo+PiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4+IGh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKPj4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
