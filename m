Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C76295FC33
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 19:05:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N1CtEQWpF14RdpJMKa++MKEpdEuL0Q7pFLiW7MYvn7A=; b=ih8rDxYR+E3odw
	EuNpmIiVfyGUkXneMvxt5G8BuU4ufJq6AYgwFbIs0SuFpxm0lB2/NMGeIF/wCPZvseavH4U62/LCu
	hHyvBRSjYD625STfJ1hXcHnyWkSlxTlT7Kp3BfERRTEy+yjySQDPy2+mNVrxpB32ksMWFOZpp48pU
	I4k7NQQ9EPMvyrQoamO2e7cCPG7lusaSBQ1AoviKU6THgKF/Xtq8CIE0CfHGMDsyWPoTVUqhJfRq9
	i7tSYK66GcyS1wOCoheSevlxfeo08pnYOnCB7K7U6mXU3PkZ919A9CBk1KrzQZQ/OfZ8Y4+8Tfq5F
	z81Inq98uNj4aGQTK80Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj5AU-0004wG-Jh; Thu, 04 Jul 2019 17:05:10 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj59x-0004v0-3q; Thu, 04 Jul 2019 17:04:40 +0000
Received: from [IPv6:2804:431:c7f5:f63c:d711:794d:1c68:5ed3] (unknown
 [IPv6:2804:431:c7f5:f63c:d711:794d:1c68:5ed3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: tonyk)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id DC2ED28B0E2;
 Thu,  4 Jul 2019 18:04:28 +0100 (BST)
Subject: Re: [PATCH v7 10/14] dt-bindings: Document the Rockchip ISP1 bindings
To: Helen Koike <helen.koike@collabora.com>, linux-rockchip@lists.infradead.org
References: <20190703190910.32633-1-helen.koike@collabora.com>
 <20190703190910.32633-11-helen.koike@collabora.com>
From: =?UTF-8?Q?Andr=c3=a9_Almeida?= <andrealmeid@collabora.com>
Message-ID: <b475739c-a460-612e-bc4c-57dc7ce18a67@collabora.com>
Date: Thu, 4 Jul 2019 14:03:45 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190703190910.32633-11-helen.koike@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_100439_485268_C20156BD 
X-CRM114-Status: GOOD (  20.30  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 eddie.cai.linux@gmail.com, kernel@collabora.com, heiko@sntech.de,
 Rob Herring <robh@kernel.org>, jacob2.chen@rock-chips.com,
 jeffy.chen@rock-chips.com, zyc@rock-chips.com, linux-kernel@vger.kernel.org,
 tfiga@chromium.org, Rob Herring <robh+dt@kernel.org>, hans.verkuil@cisco.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 zhengsq@rock-chips.com, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gSGVsZW4sCgpPbiA3LzMvMTkgNDowOSBQTSwgSGVsZW4gS29pa2Ugd3JvdGU6Cj4gRnJv
bTogSmFjb2IgQ2hlbiA8amFjb2IyLmNoZW5Acm9jay1jaGlwcy5jb20+Cj4KPiBBZGQgRFQgYmlu
ZGluZ3MgZG9jdW1lbnRhdGlvbiBmb3IgUm9ja2NoaXAgSVNQMQo+Cj4gU2lnbmVkLW9mZi1ieTog
SmFjb2IgQ2hlbiA8amFjb2IyLmNoZW5Acm9jay1jaGlwcy5jb20+Cj4gUmV2aWV3ZWQtYnk6IFJv
YiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cj4gW3VwZGF0ZSBmb3IgdXBzdHJlYW1dCj4gU2ln
bmVkLW9mZi1ieTogSGVsZW4gS29pa2UgPGhlbGVuLmtvaWtlQGNvbGxhYm9yYS5jb20+Cj4KPiAt
LS0KPgo+IENoYW5nZXMgaW4gdjc6Cj4gLSB1cGRhdGUgZG9jdW1lbnQgd2l0aCBuZXcgZGVzaWdu
IGFuZCB0ZXN0ZWQgZXhhbXBsZQo+Cj4gIC4uLi9iaW5kaW5ncy9tZWRpYS9yb2NrY2hpcC1pc3Ax
LnR4dCAgICAgICAgICB8IDcxICsrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQs
IDcxIGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9yb2NrY2hpcC1pc3AxLnR4dAo+Cj4gZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9yb2NrY2hpcC1pc3AxLnR4
dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9yb2NrY2hpcC1pc3Ax
LnR4dAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi5hOTdmZWYw
ZjE4OWYKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL21lZGlhL3JvY2tjaGlwLWlzcDEudHh0Cj4gQEAgLTAsMCArMSw3MSBAQAo+ICtSb2Nr
Y2hpcCBTb0MgSW1hZ2UgU2lnbmFsIFByb2Nlc3NpbmcgdW5pdCB2MQo+ICstLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gKwo+ICtSb2NrY2hpcCBJU1AxIGlz
IHRoZSBDYW1lcmEgaW50ZXJmYWNlIGZvciB0aGUgUm9ja2NoaXAgc2VyaWVzIG9mIFNvQ3MKPiAr
d2hpY2ggY29udGFpbnMgaW1hZ2UgcHJvY2Vzc2luZywgc2NhbGluZywgYW5kIGNvbXByZXNzaW9u
IGZ1bmNpdG9ucy4KPiArCj4gK1JlcXVpcmVkIHByb3BlcnRpZXM6Cj4gKy0gY29tcGF0aWJsZTog
dmFsdWUgc2hvdWxkIGJlIG9uZSBvZiB0aGUgZm9sbG93aW5nCj4gKwkicm9ja2NoaXAscmszMjg4
LWNpZi1pc3AiOwo+ICsJInJvY2tjaGlwLHJrMzM5OS1jaWYtaXNwIjsKPiArLSByZWcgOiBvZmZz
ZXQgYW5kIGxlbmd0aCBvZiB0aGUgcmVnaXN0ZXIgc2V0IGZvciB0aGUgZGV2aWNlLgo+ICstIGlu
dGVycnVwdHM6IHNob3VsZCBjb250YWluIElTUCBpbnRlcnJ1cHQuCj4gKy0gY2xvY2tzOiBwaGFu
ZGxlIHRvIHRoZSByZXF1aXJlZCBjbG9ja3MuCj4gKy0gY2xvY2stbmFtZXM6IHJlcXVpcmVkIGNs
b2NrIG5hbWUuCj4gKy0gaW9tbXVzOiByZXF1aXJlZCBhIGlvbW11IG5vZGUuCj4gKy0gcGh5czog
dGhlIHBoYW5kbGUgZm9yIHRoZSBQSFkgcG9ydAo+ICstIHBoeS1uYW1lczogbXVzdCBjb250YWlu
ICJkcGh5Igo+ICsKPiArcG9ydCBub2RlCj4gKy0tLS0tLS0tLS0tLS0tLS0tLS0KSSB3b3VsZCBy
ZW1vdmUgdGhvc2UgZXh0cmEgYC0tLWAsIGFuZCBrZWVwIGFzOgouLi5ub2RlCi4uLi0tLS0KClRo
ZSBzYW1lIGFwcGxpZXMgZm9yIHRoZSB0aXRsZS4KClRoYW5rcywKwqDCoMKgIEFuZHLDqQoKPiAr
Cj4gK1RoZSBkZXZpY2Ugbm9kZSBzaG91bGQgY29udGFpbiBvbmUgJ3BvcnRzJyBjaGlsZCBub2Rl
LCB3aXRoIGNoaWxkcmVuICdwb3J0Jwo+ICt3aXRoIGNoaWxkICdlbmRwb2ludCcuCj4gK25vZGVz
LCBhY2NvcmRpbmcgdG8gdGhlIGJpbmRpbmdzIGRlZmluZWQgaW4gRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzLwo+ICttZWRpYS92aWRlby1pbnRlcmZhY2VzLnR4dC4KPiArCj4gKy0g
ZW5kcG9pbnQobWlwaSk6Cj4gKwktIHJlbW90ZS1lbmRwb2ludDogQ29ubmVjdGluZyB0byBSb2Nr
Y2hpcCBNSVBJLURQSFksCj4gKwkJd2hpY2ggaXMgZGVmaW5lZCBpbiByb2NrY2hpcC1taXBpLWRw
aHkudHh0Lgo+ICsKPiArVGhlIHBvcnQgbm9kZSBtdXN0IGNvbnRhaW4gYXQgbGVhc3Qgb25lIGVu
ZHBvaW50LCBlaXRoZXIgcGFyYWxsZWwgb3IgbWlwaS4KPiArSXQgY291bGQgaGF2ZSBtdWx0aXBs
ZSBlbmRwb2ludHMsIGJ1dCBwbGVhc2Ugbm90ZSB0aGUgaGFyZHdhcmUgZG9uJ3Qgc3VwcG9ydAo+
ICt0d28gc2Vuc29ycyB3b3JrIGF0IGEgdGltZSwgdGhleSBhcmUgc3VwcG9zZWQgdG8gd29yayBh
c3luY2hyb25vdXNseS4KPiArCj4gK0RldmljZSBub2RlIGV4YW1wbGUKPiArLS0tLS0tLS0tLS0t
LS0tLS0tLQo+ICsKPiArCWlzcDA6IGlzcDBAZmY5MTAwMDAgewo+ICsJCWNvbXBhdGlibGUgPSAi
cm9ja2NoaXAscmszMzk5LWNpZi1pc3AiOwo+ICsJCXJlZyA9IDwweDAgMHhmZjkxMDAwMCAweDAg
MHg0MDAwPjsKPiArCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgNDMgSVJRX1RZUEVfTEVWRUxfSElH
SCAwPjsKPiArCQljbG9ja3MgPSA8JmNydSBTQ0xLX0lTUDA+LAo+ICsJCQkgPCZjcnUgQUNMS19J
U1AwPiwgPCZjcnUgQUNMS19JU1AwX1dSQVBQRVI+LAo+ICsJCQkgPCZjcnUgSENMS19JU1AwPiwg
PCZjcnUgSENMS19JU1AwX1dSQVBQRVI+Owo+ICsJCWNsb2NrLW5hbWVzID0gImNsa19pc3AiLAo+
ICsJCQkgICAgICAiYWNsa19pc3AiLCAiYWNsa19pc3Bfd3JhcCIsCj4gKwkJCSAgICAgICJoY2xr
X2lzcCIsICJoY2xrX2lzcF93cmFwIjsKPiArCQlwb3dlci1kb21haW5zID0gPCZwb3dlciBSSzMz
OTlfUERfSVNQMD47Cj4gKwkJaW9tbXVzID0gPCZpc3AwX21tdT47Cj4gKwkJcGh5cyA9IDwmZHBo
eT47Cj4gKwkJcGh5LW5hbWVzID0gImRwaHkiOwo+ICsKPiArCQlwb3J0cyB7Cj4gKwkJCSNhZGRy
ZXNzLWNlbGxzID0gPDE+Owo+ICsJCQkjc2l6ZS1jZWxscyA9IDwwPjsKPiArCj4gKwkJCXBvcnRA
MCB7Cj4gKwkJCQltaXBpX2luX3djYW06IGVuZHBvaW50QDAgewo+ICsJCQkJCXJlZyA9IDwwPjsK
PiArCQkJCQlyZW1vdGUtZW5kcG9pbnQgPSA8JndjYW1fb3V0PjsKPiArCQkJCQlkYXRhLWxhbmVz
ID0gPDEgMj47Cj4gKwkJCQl9Owo+ICsKPiArCQkJCW1pcGlfaW5fdWNhbTogZW5kcG9pbnRAMSB7
Cj4gKwkJCQkJcmVnID0gPDE+Owo+ICsJCQkJCXJlbW90ZS1lbmRwb2ludCA9IDwmdWNhbV9vdXQ+
Owo+ICsJCQkJCWRhdGEtbGFuZXMgPSA8MT47Cj4gKwkJCQl9Owo+ICsJCQl9Owo+ICsJCX07Cj4g
Kwl9OwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
