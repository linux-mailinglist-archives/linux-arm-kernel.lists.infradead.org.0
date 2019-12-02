Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A4110F2A2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 23:05:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KrUitLbmCpQ3no41+d35LloJxYxqIbp4gBt0LniUGcg=; b=NgBkTR0KNA4vIn
	XDBPzZ0r7FhTy8tNT2h1QNJGBoFKADZ8R64QDDLUzHmaIMCsk/a6abapQgNokmNHmDT2YPYRFDrb+
	TimIYanZrXG0X9iOgj4tNMs9QJS3EeCdnuQyapzWMHhXH6eJaqAJEhkpZJj28nZGkDoJXI42o+8T+
	+I4RZsLk+VmOHL3U6kFGiPJTbE6fx3n0iN15IfS2a88KNTzWMHMPIKA9eP7Zc/57q5mAo9+JvGgpg
	EcELMKtyXZa4MlCLbb0heIupAyVtC02W9S9iwMsCYNFdkW/Df72ugOVlVcCvgWQG6WjG+YaulnFlh
	ujwX1jmXT7le5VNZCnIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibtpM-0007vn-4h; Mon, 02 Dec 2019 22:05:56 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibtpC-0007tV-NA; Mon, 02 Dec 2019 22:05:48 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 3C093B2EC;
 Mon,  2 Dec 2019 22:05:45 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [RFC 1/5] dt-bindings: hwlock: Add Realtek RTD1195 SB2
Date: Mon,  2 Dec 2019 23:05:31 +0100
Message-Id: <20191202220535.6208-2-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191202220535.6208-1-afaerber@suse.de>
References: <20191202220535.6208-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_140546_912626_2BE5D3AD 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Mark Rutland <mark.rutland@arm.com>,
 Cheng-Yu Lee <cylee12@realtek.com>, devicetree@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RGVmaW5lIGEgYmluZGluZyBmb3IgUmVhbHRlayBSVEQxMTk1IFNvQydzIFNCMiBoYXJkd2FyZSBz
ZW1hcGhvcmUuCgpTaWduZWQtb2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2Uu
ZGU+Ci0tLQogLi4uL2JpbmRpbmdzL2h3bG9jay9yZWFsdGVrLHJ0ZDExOTUtc2IyLXNlbS55YW1s
ICAgfCA0MiArKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNDIgaW5zZXJ0
aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9od2xvY2svcmVhbHRlayxydGQxMTk1LXNiMi1zZW0ueWFtbAoKZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9od2xvY2svcmVhbHRlayxydGQxMTk1LXNi
Mi1zZW0ueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9od2xvY2svcmVh
bHRlayxydGQxMTk1LXNiMi1zZW0ueWFtbApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAw
MDAwMDAwMDAuLjgwMzVhZjAyYzY2NwotLS0gL2Rldi9udWxsCisrKyBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9od2xvY2svcmVhbHRlayxydGQxMTk1LXNiMi1zZW0ueWFtbApA
QCAtMCwwICsxLDQyIEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9yLWxh
dGVyIE9SIEJTRC0yLUNsYXVzZQorJVlBTUwgMS4yCistLS0KKyRpZDogaHR0cDovL2RldmljZXRy
ZWUub3JnL3NjaGVtYXMvaHdsb2NrL3JlYWx0ZWsscnRkMTE5NS1zYjItc2VtLnlhbWwjCiskc2No
ZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKKwordGl0
bGU6IFJlYWx0ZWsgUlREMTE5NSBTQjIgaGFyZHdhcmUgc2VtYXBob3JlIGRldmljZSB0cmVlIGJp
bmRpbmcKKworbWFpbnRhaW5lcnM6CisgIC0gQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNl
LmRlPgorCitwcm9wZXJ0aWVzOgorICBjb21wYXRpYmxlOgorICAgIGNvbnN0OiByZWFsdGVrLHJ0
ZDExOTUtc2IyLXNlbQorCisgIHJlZzoKKyAgICBtYXhJdGVtczogMQorCisgICIjaHdsb2NrLWNl
bGxzIjoKKyAgICBlbnVtOiBbIDAsIDEgXQorCityZXF1aXJlZDoKKyAgLSBjb21wYXRpYmxlCisg
IC0gcmVnCisgIC0gIiNod2xvY2stY2VsbHMiCisKK2FkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxz
ZQorCitleGFtcGxlczoKKyAgLSB8CisgICAgaHdzcGlubG9ja0A5ODAxYTAwMCB7CisgICAgICBj
b21wYXRpYmxlID0gInJlYWx0ZWsscnRkMTE5NS1zYjItc2VtIjsKKyAgICAgIHJlZyA9IDwweDk4
MDFhMDAwIDB4ND47CisgICAgICAjaHdsb2NrLWNlbGxzID0gPDA+OworICAgIH07CisgIC0gfAor
ICAgIGh3c3BpbmxvY2tAOTgwMWE2MjAgeworICAgICAgY29tcGF0aWJsZSA9ICJyZWFsdGVrLHJ0
ZDExOTUtc2IyLXNlbSI7CisgICAgICByZWcgPSA8MHg5ODAxYTYyMCAweDIwPjsKKyAgICAgICNo
d2xvY2stY2VsbHMgPSA8MT47CisgICAgfTsKKy4uLgotLSAKMi4xNi40CgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
