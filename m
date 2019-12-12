Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E02711C407
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 04:42:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UTs6IZ1BF+Vy9Vy2vCflshsSCLiPsKGGhsm8wS7MuAE=; b=fDJxqFLRb8Obfq
	LiegUE8N5iRB5hU/iw1/Kr0rI4QI8F5DrKuZUik5ckarXBj343Fq26hH0/4uXb8ituCq4t7gr1Ixr
	4Q27nZgayKQTr5wVlPhuk0dDLLRgbdxnASYipAFiOWs3nYq9c/LzIhkJUQGPiFy6Dv3S3yKpW/21O
	MvXTPcd7JwxB1PwSlvlQ38h8oob7XmunnnjTvugC3XlaHI1m20JS7WYVgl6+r+oYBUj9B5Dwb5yz8
	kJ1iOL/eDZcSMAK2IOHe1xlqK9u75mDPIURwgD9hovPDi69EYu98ohhguug5UbP28wySylQ+fVxXZ
	BLzxRIv1O7iH+NDiwOpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifFMa-00037a-4t; Thu, 12 Dec 2019 03:42:04 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifFKb-0000Oa-0Y; Thu, 12 Dec 2019 03:40:03 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 0861BAE57;
 Thu, 12 Dec 2019 03:39:59 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org,
	linux-leds@vger.kernel.org
Subject: [RFC 06/25] dt-bindings: leds: Add Titan Micro Electronics TM1628
Date: Thu, 12 Dec 2019 04:39:33 +0100
Message-Id: <20191212033952.5967-7-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191212033952.5967-1-afaerber@suse.de>
References: <20191212033952.5967-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_194001_204227_954A1D3E 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 zypeng@titanmec.com, =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org, Dan Murphy <dmurphy@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGEgWUFNTCBzY2hlbWEgYmluZGluZyBmb3IgVE0xNjI4IExFRCBjb250cm9sbGVyLgoKQ2M6
IHp5cGVuZ0B0aXRhbm1lYy5jb20KU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFl
cmJlckBzdXNlLmRlPgotLS0KIEBSb2I6IEhvdyBjb3VsZCB3ZSBleHByZXNzIGNvbnN0cmFpbnRz
IG9uIHR3by1jZWxsIHJlZyB2YWx1ZSByYW5nZXMgaGVyZT8KICAgICAgIFNob3VsZCB3ZSBhbHNv
IG1vZGVsIGNvbnN0cmFpbnRzIG9uIHJlZyByYW5nZSBieSAjZ3JpZHMgcHJvcGVydHk/CiAKIC4u
Li9kZXZpY2V0cmVlL2JpbmRpbmdzL2xlZHMvdGl0YW5tZWMsdG0xNjI4LnlhbWwgIHwgODAgKysr
KysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDgwIGluc2VydGlvbnMoKykKIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbGVkcy90
aXRhbm1lYyx0bTE2MjgueWFtbAoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9sZWRzL3RpdGFubWVjLHRtMTYyOC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2xlZHMvdGl0YW5tZWMsdG0xNjI4LnlhbWwKbmV3IGZpbGUgbW9kZSAx
MDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi4wMjQ4NzU2NTZlNzkKLS0tIC9kZXYvbnVsbAorKysg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbGVkcy90aXRhbm1lYyx0bTE2Mjgu
eWFtbApAQCAtMCwwICsxLDgwIEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIu
MC1vci1sYXRlciBPUiBCU0QtMi1DbGF1c2UpCislWUFNTCAxLjIKKy0tLQorJGlkOiBodHRwOi8v
ZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9sZWRzL3RpdGFubWVjLHRtMTYyOC55YW1sIworJHNjaGVt
YTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCisKK3RpdGxl
OiBUaXRhbiBNaWNybyBFbGVjdHJvbmljcyBUTTE2MjggTEVEIGNvbnRyb2xsZXIKKworbWFpbnRh
aW5lcnM6CisgIC0gQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgorCitwcm9wZXJ0
aWVzOgorICBjb21wYXRpYmxlOgorICAgIGVudW06CisgICAgLSB0aXRhbm1lYyx0bTE2MjgKKwor
ICByZWc6CisgICAgbWF4SXRlbXM6IDEKKworICAiI2dyaWRzIjoKKyAgICBkZXNjcmlwdGlvbjog
fAorICAgICAgTnVtYmVyIG9mIEdSSUQgb3V0cHV0IGxpbmVzIHRvIHVzZS4KKyAgICAgIFRoaXMg
bGltaXRzIHRoZSBudW1iZXIgb2YgYXZhaWxhYmxlIFNFRyBvdXRwdXQgbGluZXMuCisgICAgbWlu
aW11bTogNAorICAgIG1heGltdW06IDcKKworICAiI2FkZHJlc3MtY2VsbHMiOgorICAgIGNvbnN0
OiAyCisKKyAgIiNzaXplLWNlbGxzIjoKKyAgICBjb25zdDogMAorCityZXF1aXJlZDoKKyAgLSBj
b21wYXRpYmxlCisgIC0gcmVnCisKK3BhdHRlcm5Qcm9wZXJ0aWVzOgorICAiXi4qQFsxLTddLChb
MS05XXwxWzAyLTRdKSQiOgorICAgIHR5cGU6IG9iamVjdAorICAgIGRlc2NyaXB0aW9uOiB8Cisg
ICAgICBQcm9wZXJ0aWVzIGZvciBhIHNpbmdsZSBMRUQuCisKKyAgICBwcm9wZXJ0aWVzOgorICAg
ICAgcmVnOgorICAgICAgICBkZXNjcmlwdGlvbjogfAorICAgICAgICAgIDEtYmFzZWQgZ3JpZCBu
dW1iZXIsIGZvbGxvd2VkIGJ5IDEtYmFzZWQgc2VnbWVudCBudW1iZXIuCisgICAgICAgIG1heEl0
ZW1zOiAxCisKKyAgICAgIGxpbnV4LGRlZmF1bHQtdHJpZ2dlcjogdHJ1ZQorCisgICAgcmVxdWly
ZWQ6CisgICAgICAtIHJlZworCitleGFtcGxlczoKKyAgLSB8CisgICAgI2luY2x1ZGUgPGR0LWJp
bmRpbmdzL2xlZHMvY29tbW9uLmg+CisKKyAgICBzcGkgeworICAgICAgICAjYWRkcmVzcy1jZWxs
cyA9IDwxPjsKKyAgICAgICAgI3NpemUtY2VsbHMgPSA8MD47CisKKyAgICAgICAgbGVkLWNvbnRy
b2xsZXJAMCB7CisgICAgICAgICAgICBjb21wYXRpYmxlID0gInRpdGFubWVjLHRtMTYyOCI7Cisg
ICAgICAgICAgICByZWcgPSA8MD47CisgICAgICAgICAgICBzcGktMy13aXJlOworICAgICAgICAg
ICAgc3BpLWxzYi1maXJzdDsKKyAgICAgICAgICAgIHNwaS1tYXgtZnJlcXVlbmN5ID0gPDUwMDAw
MD47CisgICAgICAgICAgICAjZ3JpZHMgPSA8Nz47CisgICAgICAgICAgICAjYWRkcmVzcy1jZWxs
cyA9IDwyPjsKKyAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDA+OworCisgICAgICAgICAgICBj
b2xvbkA1LDQgeworICAgICAgICAgICAgICAgIHJlZyA9IDw1IDQ+OworICAgICAgICAgICAgICAg
IGNvbG9yID0gPExFRF9DT0xPUl9JRF9XSElURT47CisgICAgICAgICAgICAgICAgZnVuY3Rpb24g
PSBMRURfRlVOQ1RJT05fSU5ESUNBVE9SOworICAgICAgICAgICAgICAgIGxpbnV4LGRlZmF1bHQt
dHJpZ2dlciA9ICJoZWFydGJlYXQiOworICAgICAgICAgICAgfTsKKyAgICAgICAgfTsKKyAgICB9
OworLi4uCi0tIAoyLjE2LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
