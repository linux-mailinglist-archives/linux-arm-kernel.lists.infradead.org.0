Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC75ED172
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 02:38:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aPauoYhsEHS+Dt6rsZDVySfe9NgB9dk44CMLXCky8kU=; b=Mi4ESPrMztfYRC
	SaVV6neboHi8fj66VHVTM2ebPEDVD+kEZFu3BIsVJTUYgzppnzNmNx7RaV6q/WBWUUHtOsHIw1OMz
	rV6/mOCp8L+x30dJWe8MeWOYVS7znsaA2cyb+z/JHkgO+akZglfDAnfLDhUso2oWm0d5GhRzFTtsT
	S7NVn/aSOhHpjTL+ojakBOStbAdhjL1tvTfS8z8jwWwsp93hUAw+ezcpkj8F5h3TFaoK2S9/I5Jfq
	IVQ5r3KDffIm3TM1ryt+PRzVVYnC85JmEQdD/TeRCWHhepMC+9tmG7EDSyH0V+Zp6B8eA+eBz6IjC
	Dq1k+RNHG0yeMxzFQiDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iR4ql-0006OJ-F4; Sun, 03 Nov 2019 01:38:39 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iR4pA-0004w3-Oi; Sun, 03 Nov 2019 01:37:02 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id BE909AFA8;
 Sun,  3 Nov 2019 01:36:54 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [RFC 05/11] dt-bindings: soc: realtek: rtd1195-chip: Extend reg
 property
Date: Sun,  3 Nov 2019 02:36:39 +0100
Message-Id: <20191103013645.9856-6-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191103013645.9856-1-afaerber@suse.de>
References: <20191103013645.9856-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_183700_955207_F7EA763C 
X-CRM114-Status: GOOD (  10.26  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsb3cgdG8gb3B0aW9uYWxseSBzcGVjaWZ5IGEgc2Vjb25kIHJlZ2lzdGVyIHRvIGlkZW50aWZ5
IHRoZSBjaGlwLgpXaGV0aGVyIG5lZWRlZCBhbmQgd2hpY2ggcmVnaXN0ZXIgdG8gc3BlY2lmeSBk
ZXBlbmRzIG9uIHRoZSBmYW1pbHk7ClJURDEyOTUgZmFtaWx5IHdpbGwgd2FudCB0aGUgQ0hJUF9J
TkZPMSByZWdpc3Rlci4KClNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJA
c3VzZS5kZT4KLS0tCiBBIFNvQyBzcGVjaWZpYyBiaW5kaW5nIHdvdWxkIGRlZmVhdCB0aGUgcHVy
cG9zZSBvZiB0aGUgZ2VuZXJpYyBMaW51eCBkcml2ZXI7CiBpcyBpdCBwb3NzaWJsZSB0byBjaGVj
ayB0aGUgcm9vdCBub2RlJ3MgY29tcGF0aWJsZSBpbiBhbiBpZjogZXhwcmVzc2lvbgogdG8gcHJv
aGliaXQgdXNpbmcgbW9yZSB0aGFuIG9uZSByZWcgb24gInJlYWx0ZWsscnRkMTE5NSI/CiAKIC4u
Li9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9yZWFsdGVrL3JlYWx0ZWsscnRkMTE5NS1jaGlwLnlh
bWwgIHwgMTAgKysrKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9zb2MvcmVhbHRlay9yZWFsdGVrLHJ0ZDExOTUtY2hpcC55YW1sIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9yZWFsdGVrL3JlYWx0ZWsscnRkMTE5NS1jaGlwLnlhbWwK
aW5kZXggNTY1YWQyNDE5NTUzLi5lNDMxY2Y1NTliNjYgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2MvcmVhbHRlay9yZWFsdGVrLHJ0ZDExOTUtY2hpcC55
YW1sCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2MvcmVhbHRlay9y
ZWFsdGVrLHJ0ZDExOTUtY2hpcC55YW1sCkBAIC0xMSwxMyArMTEsMTUgQEAgbWFpbnRhaW5lcnM6
CiAKIGRlc2NyaXB0aW9uOiB8CiAgIFRoZSBSZWFsdGVrIFNvQ3MgaGF2ZSBzb21lIHJlZ2lzdGVy
cyB0byBpZGVudGlmeSB0aGUgY2hpcCBhbmQgcmV2aXNpb24uCisgIFRvIGlkZW50aWZ5IHRoZSBl
eGFjdCBtb2RlbCB3aXRoaW4gYSBmYW1pbHksIGZ1cnRoZXIgcmVnaXN0ZXJzIGFyZSBuZWVkZWQu
CiAKIHByb3BlcnRpZXM6CiAgIGNvbXBhdGlibGU6CiAgICAgY29uc3Q6ICJyZWFsdGVrLHJ0ZDEx
OTUtY2hpcCIKIAogICByZWc6Ci0gICAgbWF4SXRlbXM6IDEKKyAgICBtaW5JdGVtczogMQorICAg
IG1heEl0ZW1zOiAyCiAKIHJlcXVpcmVkOgogICAtIGNvbXBhdGlibGUKQEAgLTI5LDQgKzMxLDEw
IEBAIGV4YW1wbGVzOgogICAgICAgICBjb21wYXRpYmxlID0gInJlYWx0ZWsscnRkMTE5NS1jaGlw
IjsKICAgICAgICAgcmVnID0gPDB4MTgwMWEyMDAgMHg4PjsKICAgICB9OworICAtIHwKKyAgICBj
aGlwLWluZm9AOTgwMWEyMDAgeworICAgICAgICBjb21wYXRpYmxlID0gInJlYWx0ZWsscnRkMTE5
NS1jaGlwIjsKKyAgICAgICAgcmVnID0gPDB4OTgwMWEyMDAgMHg4PiwKKyAgICAgICAgICAgICAg
PDB4OTgwMDcwMjggMHg0PjsKKyAgICB9OwogLi4uCi0tIAoyLjE2LjQKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
