Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47CD6E61E2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 10:56:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JjefK65ykKpW5rcXa1rauWhjVlU1ahYMUiVwaRBhlDA=; b=sVTbYwMgyvZas7
	o2cYnveT48JsBTPLSf324mImZ+Gv6Oqx2pLi/W0yvgVbSR5yiM09SLiaWx2c2lj3BRKEjpC6JGxtN
	ZRBGaD+imv9l625ZAtM8ydHCzdvgSYzd7Doez+H8OoCmEOWlf0PujjiYikNH36ez16WEPewGEHFs4
	85gH25U76YzMTAD4ujRwTpudNOmkG2kSLK7uJIjDX5oZbVVkSCHZTh9M4UGzuGNFXDSbUubej8XAs
	aIEDdFpYHBtxHEt+Xrdk8helXte2g8n9Npv1IlUitihver4JD6sV1EgARBTDHgfLeh3E27Wsei8U0
	rNSLHvY+3mUB8/a8QNCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOfI3-0003WN-8H; Sun, 27 Oct 2019 09:56:51 +0000
Received: from m15-22.126.com ([220.181.15.22])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOfHr-0003VV-OQ
 for linux-arm-kernel@lists.infradead.org; Sun, 27 Oct 2019 09:56:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=rWapO
 oSYIrkk7eVG9Ay/Ezlq34vWf+B5pEJfjXP0InI=; b=jPpivkb8DmYeAL89rFe5v
 YIqLpITws3dzYM/DOvypFQWeKmRDTDXSf4weqr/KCpgR/l1iRiKtlIrf5rpcLIlF
 arhq0KAcJn8QW2Q4gvNgydhbElTxb5cOWveH95QrHT2y230RIVbKXhgerow21gg/
 kW35roesEa9gn0PS2DNU2A=
Received: from figure1802$126.com ( [183.195.3.209] ) by
 ajax-webmail-wmsvr22 (Coremail) ; Sun, 27 Oct 2019 17:56:24 +0800 (CST)
X-Originating-IP: [183.195.3.209]
Date: Sun, 27 Oct 2019 17:56:24 +0800 (CST)
From: FF <figure1802@126.com>
To: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 catalin.marinas@arm.com, julien.grall@arm.com, will.deacon@arm.com, 
 mark.rutland@arm.com, steve.capper@arm.com
Subject: about the ptep_set_access_flags() for hardware AF/DBM
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.10 build 20190724(ac680a23)
 Copyright (c) 2002-2019 www.mailtech.cn 126com
MIME-Version: 1.0
Message-ID: <22add3c1.16c1.16e0ca535d4.Coremail.figure1802@126.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: FsqowAD3_7PJabVd2hSaAA--.53960W
X-CM-SenderInfo: pilj32bhryija6rslhhfrp/
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_025640_155944_50330F24 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (figure1802[at]126.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (figure1802[at]126.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CmhpIGFsbO+8mgoKaSBzZWUgYSBwYXRjaCwgY29tbWl0IGlkOsKgNjZkYmQ2ZTYxYTUyICJhcm02
NDogSW1wbGVtZW50IHB0ZXBfc2V0X2FjY2Vzc19mbGFncygpIGZvciBoYXJkd2FyZSBBRi9EQk0i
CmluIHRoaXMgcGF0Y2gsIHRoZSBhdXRob3Igc2hvdyBhIGluc3RlcmVzdGluZyBjYXNlIG9mIHRo
ZSByYWN5IG9mIGhhcmR3YXJlIEFGL0RCTS4KCkhlcmUgaXMgdGhlIHNjZW5hcmlvOgpBIG1vcmUg
Y29tcGxleCBzaXR1YXRpb24gaXMgcG9zc2libGUgd2hlbiBhbGwgQ1BVcyBzdXBwb3J0IGhhcmR3
YXJlCiAgIEFGL0RCTToKCiAgIGEpIEluaXRpYWwgc3RhdGU6IHNoYXJlYWJsZSArIHdyaXRhYmxl
IHZtYSBhbmQgcHRlX25vbmUocHRlKQogICBiKSBSZWFkIGZhdWx0IHRha2VuIGJ5IHR3byB0aHJl
YWRzIG9mIHRoZSBzYW1lIHByb2Nlc3Mgb24gZGlmZmVyZW50CiAgICAgIENQVXMKICAgYykgQ1BV
MCB0YWtlcyB0aGUgbW1hcF9zZW0gYW5kIHByb2NlZWRzIHRvIGhhbmRsaW5nIHRoZSBmYXVsdC4g
SXQKICAgICAgZXZlbnR1YWxseSByZWFjaGVzIGRvX3NldF9wdGUoKSB3aGljaCBzZXRzIGEgd3Jp
dGFibGUgKyBjbGVhbiBwdGUuCiAgICAgIENQVTAgcmVsZWFzZXMgdGhlIG1tYXBfc2VtCiAgIGQp
IENQVTEgYWNxdWlyZXMgdGhlIG1tYXBfc2VtIGFuZCBwcm9jZWVkcyB0byBoYW5kbGVfcHRlX2Zh
dWx0KCkuIFRoZQogICAgICBwdGUgZW50cnkgaXQgcmVhZHMgaXMgcHJlc2VudCwgd3JpdGFibGUg
YW5kIGNsZWFuIGFuZCBpdCBjb250aW51ZXMKICAgICAgdG8gcHRlX21reW91bmcoKQogICBlKSBD
UFUxIGNhbGxzIHB0ZXBfc2V0X2FjY2Vzc19mbGFncygpCgogICBJZiBiZXR3ZWVuIChkKSBhbmQg
KGUpIHRoZSBoYXJkd2FyZSAoYW5vdGhlciBDUFUpIHVwZGF0ZXMgdGhlIGRpcnR5CiAgIHN0YXRl
IChjbGVhcnMgUFRFX1JET05MWSksIENQVTEgd2lsbCBvdmVycmlkZSB0aGUgUFRSX1JET05MWSBi
aXQKICAgbWFya2luZyB0aGUgZW50cnkgY2xlYW4gYWdhaW4uCgpteSBxdWVzdGlvbiBpczoKMS4g
aW4gc3RlcCBhLCBpdCBzYXksIHRoZSBpbml0aWFsIHN0YXRlIHZtYSBpcyA6IHNoYXJhYmxlICsg
d3JpdGFibGUgKyBwdGVfbm9uZS4KbGV0IHN1cHBvc2UgdGhpcyBpcyBhIGFub24gbWFwcGluZyBi
eSBtbWFwKCkgQVBJLgoKc28gdGhlIHZtYS0+dm1fcGFnZV9wcm90IHNob3VsZCBiZSA6IFZNX1JF
QUQgfCAgVk1fV1JJVEUgfCBWTV9TSEFSRUQKaW4gdm1fZ2V0X3BhZ2VfcHJvdCgpLCBpdCB3aWxs
IGNoYW5nZSB0byBwdGUgYXR0cmlidXRl77yMaW4gbGludXgga2VybmVsIGl0IGhhcyBhIHByb3Rl
Y3Rpb25fbWFwW10gYXJyYXkuCmluIHRoYXQgY2FzZSwgaXQgc2hvdWxkIGJlIF9fUzAxMSAoUEFH
RV9TSEFSRUQpLiBmb3IgUEFHRV9TSEFSRUQsIHRoZSBwdGUgYXR0cmlidXRlIHdpbGwgc2V0IFBU
RV9XUklURe+8jHNvIFBURV9EQk0gaXMgc2V0LCAKYnV0IHRoZSBQVEVfUkRPTkxZIHNob3VsZCBi
ZSB6ZXJvLCByaWdodD8KCmluIHN0ZXAgYywgQ1BVMCB0cmlnZ2VyIHJlYWQgZmF1bHQgYW5kIGhh
bmRsZSB0aGUgcGFnZSBmYXVsdCwgaXQgd2lsbCBjYWxsIGRvX2Fub255bW91c19wYWdlKCksIGFu
ZCB1c2luZyAgc3lzdGVtX3plcm9fcGFnZS4KaSBkb24ndCB3aGF0IGlzIGEgY2xlYW4gcHRlPyAg
YnV0IGN1cnJlbnRseSwgdGhlICBQVEVfUkRPTkxZIGlzIHplcm8sIGl0IG1lYW5zIHRoaXMgcHRl
IGlzIHdyaXRhYmxlLgoKd2hlbiB0aGUgQ1BVMiB3cml0ZSB0aGlzIG1lbW9yeSwgaXQgd2lsbCB1
cGRhdGUgdGhlIGRpcnR5IHN0YXRlIGxpa2UgY2xlYXIgUFRFX1JET05MWSwgYnV0IG15IHF1ZXN0
aW9ucywgdGhlIFBURV9SRE9OTFkgaXMgc3RpbGwgemVybywgaW4gc3RlcCBhfmQsCnNvIHdoeSBD
UFUxIHdpbGwgb3ZlcnJpZGUgUlRfUkRPTkxZIGJpdCBhbmQgbWFya2luZyB0aGUgZW50cnkgY2xl
YW4gYWdhaW4uCgppbiB0aGF0IGNhc2UsIHdoeSBpdCB3aWxsIHRyaWdnZXIgInJhY3kgZGlydHkg
c3RhdGUgY2xlYXJpbmciIGluIHNldF9wdGVfYXQ/Cmkgc2VlIHRoZSBwdGVfZGlydHkoKSB3aWxs
IGNoZWNrIHRoZSBzd19kaXJ0eSBhbmQgaHdfZGlydHksIHNvIGluIHRoaXMgY2FzZSwgaXMgaXQg
b3VyIHN3IGhhcyBub3Qgc2V0IFBURV9ESVJUWSBiaXQ/IGhvdyBodyBkaXJ0eSBjaGVja2luZywg
dGhlIFBURV9SRE9OTFkgaXMgYWx3YXlzIHplcm8uCgojZGVmaW5lIHB0ZV9kaXJ0eShwdGUpCQko
cHRlX3N3X2RpcnR5KHB0ZSkgfHwgcHRlX2h3X2RpcnR5KHB0ZSkpCgp3b3VsZCB5b3UgbGlrZSBw
b2ludCBvdXQgd2hhdCBpIG1pc3Npbmc/CgpCZXN0CkJlbgoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
