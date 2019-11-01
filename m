Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 587BCEC68B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 17:19:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UjG0P/touFhsc5J7f8FNatmy/P1LnWKPLRoGB18jx8A=; b=a5n2g2VW/z5WbnJSnTwqr6MtX
	o5IVYJSXo/ktC57+8uo0U6oJbQU6uxiWxay6sjFiVI666uXh7xcn1WpUKSBcXxvnWi04VZTTAjpwh
	EVRo0ho3fp1PjxSBKLmDFANIR5oefEjxlTwGTDfQqgNebaCpTAeuVgLF5eNww1eyTmdXULtr/0Y08
	Z+WlKP7IfWc+2vvBYGqhP/tKGkPGqb1vfhfeRSg6hbG3ycAtCxpk0bC3E65OzIF8gTKRL9+I2zKrF
	fNcL8c1SePJFvDLTg3kLc7l00qzjNG3ll8F0MsPwc4BMIAt2sgCHfeviOmhz2aLtTYBPrLDyO5YRS
	LG34Xo0jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZeQ-0006Ec-9c; Fri, 01 Nov 2019 16:19:50 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZeH-0006BL-Gz
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 16:19:44 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 474S7r1fhQz9v2yk;
 Fri,  1 Nov 2019 17:19:36 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=Qh2apHPi; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id LL34SHhx5NAd; Fri,  1 Nov 2019 17:19:36 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 474S7r0Vhdz9v2yj;
 Fri,  1 Nov 2019 17:19:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1572625176; bh=zDfTuyr5rEX4zI99jRtwwUmmmD2R9ZF+lJ3geVUTGqg=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=Qh2apHPiLmfs6EJags73uaZqx7IGD2FVk7wvpRg1Xm9W8sHg4b8c0XYoz89a/MRlq
 ifUiSWAlsgpiZgs2eFg46/a/REe+tZT7GJvh/RMS1qeGrUk0/VtRCaLsvr61qV3h9f
 2IebLlE11RurHHXZJeawbhGKSNai0y6xorR+vquA=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 9F8768B8F6;
 Fri,  1 Nov 2019 17:19:37 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id ornw-bnFdm4u; Fri,  1 Nov 2019 17:19:37 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 3884C8B7C2;
 Fri,  1 Nov 2019 17:19:37 +0100 (CET)
Subject: Re: [PATCH v3 28/36] serial: ucc_uart: explicitly include
 soc/fsl/cpm.h
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-29-linux@rasmusvillemoes.dk>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <a921b57b-04d5-4874-89e2-df29dfe99bfc@c-s.fr>
Date: Fri, 1 Nov 2019 17:19:37 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191101124210.14510-29-linux@rasmusvillemoes.dk>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_091941_716243_01BE830E 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgMDEvMTEvMjAxOSDDoCAxMzo0MiwgUmFzbXVzIFZpbGxlbW9lcyBhIMOpY3JpdMKgOgo+IFRo
aXMgZHJpdmVyIHVzZXMgI2RlZmluZXMgZnJvbSBzb2MvZnNsL2NwbS5oLCBzbyBpbnN0ZWFkIG9m
IHJlbHlpbmcgb24KPiBzb21lIG90aGVyIGhlYWRlciBwdWxsaW5nIHRoYXQgaW4sIGRvIHRoYXQg
ZXhwbGljaXRseS4gVGhpcyBpcwo+IHByZXBhcmF0aW9uIGZvciBhbGxvd2luZyB0aGlzIGRyaXZl
ciB0byBidWlsZCBvbiBBUk0uCj4gCgpVQ0MgYXJlIG9ubHkgb24gUUUuCkNQTSBoYXMgU0NDcy4g
aW5zdGVhZC4KU28gdGhpcyBkcml2ZXIgc2hvdWxkbid0IG5lZWQgY3BtLmgKCkNocmlzdG9waGUK
Cj4gU2lnbmVkLW9mZi1ieTogUmFzbXVzIFZpbGxlbW9lcyA8bGludXhAcmFzbXVzdmlsbGVtb2Vz
LmRrPgo+IC0tLQo+ICAgZHJpdmVycy90dHkvc2VyaWFsL3VjY191YXJ0LmMgfCAxICsKPiAgIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3R0
eS9zZXJpYWwvdWNjX3VhcnQuYyBiL2RyaXZlcnMvdHR5L3NlcmlhbC91Y2NfdWFydC5jCj4gaW5k
ZXggYTA1NTVhZTJiMWVmLi43ZTgwMjYxNmNiYTggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy90dHkv
c2VyaWFsL3VjY191YXJ0LmMKPiArKysgYi9kcml2ZXJzL3R0eS9zZXJpYWwvdWNjX3VhcnQuYwo+
IEBAIC0zMiw2ICszMiw3IEBACj4gICAjaW5jbHVkZSA8c29jL2ZzbC9xZS91Y2Nfc2xvdy5oPgo+
ICAgCj4gICAjaW5jbHVkZSA8bGludXgvZmlybXdhcmUuaD4KPiArI2luY2x1ZGUgPHNvYy9mc2wv
Y3BtLmg+Cj4gICAjaW5jbHVkZSA8YXNtL3JlZy5oPgo+ICAgCj4gICAvKgo+IAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
