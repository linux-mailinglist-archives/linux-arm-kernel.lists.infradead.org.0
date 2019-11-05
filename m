Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D13F0A2A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 00:25:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:Subject:From:References:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XNPkdukQLB5Bte2o0/HWSVmWLoJMLftksHhDluUCgtg=; b=cVC3O2Yn7fIRAt
	sqZ3CuTE4mgmCTUKRJzKUH3Fh6LGxJwYOzGv6+iojCulRDm5bjrgdLYYSzXE05nK5VmNa/3xgBa3h
	u4WQw646d6bIVAt9/yrvpZYIMEuZgQAt9p1+1Kn1BcIDV96G1sF8WKZ6MtRTDMVJivKXi/pU2wf+d
	jdFEdN7ABE+VI/ugJimh25UHkpBaAgGilNLwfcluIOzp1gkjOhefQpUvHITays+x75t4e+BplyqvO
	RAIUergN/uja8jUNICct3WRRF3J+XJpYsp6E2Y8xvKPgQdFjznqbEZAHFLwBw82XfdOuoEdwd+7pM
	1g42TjH2PyfAhRPT2dWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS8CI-00046Z-2H; Tue, 05 Nov 2019 23:25:14 +0000
Received: from vault.bonstra.fr.eu.org ([51.158.68.104])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS8C7-0003Wv-80
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 23:25:04 +0000
Received: from val.bonstra.fr.eu.org (unknown [192.168.128.2])
 by vault.bonstra.fr.eu.org (Postfix) with ESMTP id A04E4BFAC5;
 Tue,  5 Nov 2019 23:18:16 +0000 (UTC)
Received: from [IPv6:fd7b:45cc:aa3d::3] (vlad.gr1 [IPv6:fd7b:45cc:aa3d::3])
 by val.bonstra.fr.eu.org (Postfix) with ESMTPSA id E8E5061384;
 Wed,  6 Nov 2019 00:18:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=bonstra.fr.eu.org;
 s=dkim1; t=1572995896; x=1574205496;
 bh=c+12pXtSQjrl82OMI8b6OQudVV8kwcNsMllQXf/cjLI=;
 h=To:Cc:References:From:Subject:Date:In-Reply-To;
 b=Kx/WZG/AzriX+F11bjD7JGCsa1frx+nNcpdx/XPCN7DWfmvWO+6lyF/HeRL0tMxAE
 5oR/yHd6IeN4ZjVPPorkmbQMp+24Fl14mcG1bD+IxpsneW6x9VqxfM9dmSVLADTqei
 33gaTms+xKliIHDYxMr4AYPxzuJVwyZyxkhq8g48nznGPaMY1vSaDQIgTnsFDt7rBN
 BhIZRosidFNMrt2HJZ8mPiBSxQyvERmwXuzRP3Axjae7pG1oMPQq/aGh19x4CefN82
 OrYdA/YWVigCx3gAjXaRmgEA7h+rCqYvl13LvmSIwDkSfkSURFy6KvWm85CiNrGKdZ
 XI7VubotryDTg==
To: Rob Herring <robh@kernel.org>
References: <20191030224333.70241-1-bonstra@bonstra.fr.eu.org>
 <20191030224333.70241-2-bonstra@bonstra.fr.eu.org>
 <20191105221756.GA15425@bogus>
From: "Hugo \"Bonstra\" Grostabussiat" <bonstra@bonstra.fr.eu.org>
Autocrypt: addr=bonstra@bonstra.fr.eu.org; prefer-encrypt=mutual; keydata=
 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
 WCPfayXqHuvY/CkKPw==
Subject: Re: [PATCH v2 1/3] dt-bindings: net: bluetooth: add DT binding for
 Realtek controllers
Message-ID: <45ed51fc-baa1-122c-b9e1-188bf83397c0@bonstra.fr.eu.org>
Date: Wed, 6 Nov 2019 00:17:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20191105221756.GA15425@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_152503_578310_D8D39C1D 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Johan Hedberg <johan.hedberg@gmail.com>, Marcel Holtmann <marcel@holtmann.org>,
 Maxime Ripard <mripard@kernel.org>, linux-bluetooth@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgMDUvMTEvMjAxOSDDoCAyMzoxNywgUm9iIEhlcnJpbmcgYSDDqWNyaXTCoDoKPiBPbiBXZWQs
IE9jdCAzMCwgMjAxOSBhdCAxMTo0MzozMVBNICswMTAwLCBIdWdvIEdyb3N0YWJ1c3NpYXQgd3Jv
dGU6Cj4+IFRoZSBydGxfYnQgZHJpdmVyIGFscmVhZHkgc3VwcG9ydHMgc29tZSBSZWFsdGVrIGNv
bnRyb2xsZXJzIG9uIEFDUEkKPj4gcGxhdGZvcm1zLgo+PiBUaGlzIGNvbW1pdCBhZGRzIGJpbmRp
bmdzIGZvciBEVC1vbmx5IHBsYXRmb3Jtcy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogSHVnbyBHcm9z
dGFidXNzaWF0IDxib25zdHJhQGJvbnN0cmEuZnIuZXUub3JnPgo+PiAtLS0KPj4gIC4uLi9iaW5k
aW5ncy9uZXQvcmVhbHRlay1ibHVldG9vdGgudHh0ICAgICAgICB8IDI1ICsrKysrKysrKysrKysr
KysrKysKPj4gIDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspCj4+ICBjcmVhdGUgbW9k
ZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9yZWFsdGVrLWJs
dWV0b290aC50eHQKCj4+ICstIGNvbmZpZy1uYW1lOiBwb3N0Zml4IGFkZGVkIHRvIHRoZSBuYW1l
IG9mIHRoZSBmaXJtd2FyZSBmaWxlCj4+ICsgIGNvbnRhaW5pbmcgdGhlIGNoaXAgY29uZmlndXJh
dGlvbgo+IAo+ICdmaXJtd2FyZS1uYW1lJyBpcyB0aGUgY29tbW9uIHByb3BlcnR5IGZvciB0aGlz
LiBJdCdzIHRoZSBmdWxsIGZpbGVuYW1lIAo+IHdoaWNoIGlzIG1vcmUgZmxleGlibGUuIAo+IAo+
IFdoYXQncyB0aGUgZGVmYXVsdCBuYW1lPwpEZXBlbmRpbmcgb24gdGhlIGNoaXAsIGJvdGggYSBm
aXJtd2FyZSBmaWxlIGFuZCBhIGNvbmZpZ3VyYXRpb24gZmlsZSBtYXkKYmUgcmVxdWlyZWQ7IHRo
ZSBSVEw4NzIzQlMgaXMgb25lIG9mIHRob3NlIGNoaXBzLgoKRm9yIHRoZSBmaXJtd2FyZSBmaWxl
LCB0aGUgZGVmYXVsdCBuYW1lIGlzIG9mIHRoZSBmb3JtOgpydGxfYnQvJHtDSElQX05BTUV9X2Z3
LmJpbgoKRm9yIHRoZSBjb25maWcgZmlsZToKcnRsX2J0LyR7Q0hJUF9OQU1FfV9jb25maWcKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
