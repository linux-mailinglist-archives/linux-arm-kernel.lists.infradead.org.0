Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48646D8F67
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 13:27:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KM77JLnxAmOwY40GftzKgkan/zavmxBtpZ0OY+qrYM4=; b=EFZTPXdNWk8LvU
	40SmQ57eRQxfZEtSwg0epYVd2IpidFNJ1IpDsXyNsd8McBd7/ftzd38cTzLyY7sNyZTLsxHx287UO
	wUoQeW++pEtXd5QFeck9etOEr17fdKrwCDl5ASTh+ImZgDcCGKmmCXnQ9QH6dfgrlqTX7IOCG0fQB
	aEEiCQTuUYpPNnhPHM5ehYtZWwbsZ7G9k1CO2GZ6yRr3igI5yFEBAcTIagfKY8wHH99mC8k/IjkeJ
	7mPbFaa79TvaszsJ0dnaJlXLAf75v4drUG8fy1wX4l127vTkFVznQCAYe5AiuSx+Nwd4iupS/R+DP
	rlUf6GL8WpKeDy5x03Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKhSH-0005ev-Kg; Wed, 16 Oct 2019 11:27:01 +0000
Received: from mail-sh.amlogic.com ([58.32.228.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKhS9-0005eL-VP; Wed, 16 Oct 2019 11:26:55 +0000
Received: from [10.18.29.227] (10.18.29.227) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Wed, 16 Oct
 2019 19:26:50 +0800
Subject: Re: [PATCH RESEND v2 1/4] dt-bindings: power: add Amlogic secure
 power domains bindings
To: Rob Herring <robh@kernel.org>
References: <1570695678-42623-1-git-send-email-jianxin.pan@amlogic.com>
 <1570695678-42623-2-git-send-email-jianxin.pan@amlogic.com>
 <20191014173900.GA6886@bogus>
From: Jianxin Pan <jianxin.pan@amlogic.com>
Message-ID: <622c7785-8254-5473-6b35-7287830f3c60@amlogic.com>
Date: Wed, 16 Oct 2019 19:26:49 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191014173900.GA6886@bogus>
Content-Language: en-US
X-Originating-IP: [10.18.29.227]
X-ClientProxiedBy: mail-sh.amlogic.com (10.18.11.5) To mail-sh.amlogic.com
 (10.18.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_042654_011132_B5E71651 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, linux-pm@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, Jian Hu <jian.hu@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iLAoKT24gMjAxOS8xMC8xNSAxOjM5LCBSb2IgSGVycmluZyB3cm90ZToKPiBPbiBUaHUs
IE9jdCAxMCwgMjAxOSBhdCAwNDoyMToxNUFNIC0wNDAwLCBKaWFueGluIFBhbiB3cm90ZToKPj4g
QWRkIHRoZSBiaW5kaW5ncyBmb3IgdGhlIEFtbG9naWMgU2VjdXJlIHBvd2VyIGRvbWFpbnMsIGNv
bnRyb2xsaW5nIHRoZQo+PiBzZWN1cmUgcG93ZXIgZG9tYWlucy4KPj4KPj4gVGhlIGJpbmRpbmdz
IHRhcmdldHMgdGhlIEFtbG9naWMgQTEgYW5kIEMxIGNvbXBhdGlibGUgU29DcywgaW4gd2hpY2gg
dGhlCj4+IHBvd2VyIGRvbWFpbiByZWdpc3RlcnMgYXJlIGluIHNlY3VyZSB3b3JsZC4KPj4KPj4g
U2lnbmVkLW9mZi1ieTogSmlhbnhpbiBQYW4gPGppYW54aW4ucGFuQGFtbG9naWMuY29tPgo+PiAt
LS0KPj4gIC4uLi9iaW5kaW5ncy9wb3dlci9hbWxvZ2ljLG1lc29uLXNlYy1wd3JjLnlhbWwgICAg
IHwgNDIgKysrKysrKysrKysrKysrKysrKysrKwo+PiAgaW5jbHVkZS9kdC1iaW5kaW5ncy9wb3dl
ci9tZXNvbi1hMS1wb3dlci5oICAgICAgICAgfCAzMiArKysrKysrKysrKysrKysrKwo+PiAgMiBm
aWxlcyBjaGFuZ2VkLCA3NCBpbnNlcnRpb25zKCspCj4+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bvd2VyL2FtbG9naWMsbWVzb24tc2VjLXB3
cmMueWFtbAo+PiArCj4+ICsgIHNlY3VyZS1tb25pdG9yOgo+PiArICAgIGRlc2NyaXB0aW9uOiBw
aGFuZGxlIHRvIHRoZSBzZWN1cmUtbW9uaXRvciBub2RlCj4+ICsgICAgJHJlZjogL3NjaGVtYXMv
dHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvcGhhbmRsZQo+IAo+IFdoeSBub3QganVzdCBhIGNoaWxk
IG5vZGUgb2YgdGhpcyBub2RlPwo+IApUaGFua3MgZm9yIHRoZSByZXZpZXcuCgpJIGZvbGxvd2Vk
IHRoZSBzdHlsZSBvZiB0aGUgcHJldmlvdXMgc2VyaWVzIG9mIG1lc29u77yaCgogIDQ2ICAgICAg
ICAgZWZ1c2U6IGVmdXNlIHsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIAogIDQ3ICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gImFt
bG9naWMsbWVzb24tZ3hiYi1lZnVzZSI7ICAgICAgICAgICAgICAgICAgICAgICAgIAogIDQ4ICAg
ICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNsa2MgQ0xLSURfRUZVU0U+OyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIAogIDQ5ICAgICAgICAgICAgICAgICAjYWRkcmVzcy1jZWxs
cyA9IDwxPjsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogIDUw
ICAgICAgICAgICAgICAgICAjc2l6ZS1jZWxscyA9IDwxPjsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIAogIDUxICAgICAgICAgICAgICAgICByZWFkLW9ubHk7
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAog
IDUyICAgICAgICAgICAgICAgICBzZWN1cmUtbW9uaXRvciA9IDwmc20+OyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogIDUzICAgICAgICAgfTsKCj4gUm9iCj4gCj4g
Lgo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
