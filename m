Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B0711809E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 07:41:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oggQdQ4Hn2QsgmXVd/R9ZNI6nliLZB4u29yDA4fxdTo=; b=YG2ZiNMprE+ITWq7SpsyBM4rp
	tPQDavoLlqo9qBr3DpddUqn0Vy5tu0C9A+eJ0Hc5oN5hOM8txmwbPeFvGA1P5cjOpDumYaUBlGp1y
	dNciJZlR2MdCQDUk4JSJ7lv6HWImVW6tKUzCb+LYaeOM44sU+PYbjCFEbALPMxRUm5Zu4ubfQS0mb
	L+rxjbgKXpMg/yTw+luJ1HwH0xnOAD4DQHK5s0sB4Uaam5cGKMnBKgeA8pcFAazVu5R/4hthwcHUu
	w+nvz00kBXeghE8BTYyfitZdk33LhucvASgz1Bt2wp0zJn+juXwKaZLS/VNDgVdPKYWxjwwy2I7+y
	LHSn1/YdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieZCl-0006pi-PP; Tue, 10 Dec 2019 06:41:07 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieZCc-0006pG-ET
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 06:40:59 +0000
Received: from localhost (mailhub1-ext [192.168.12.233])
 by localhost (Postfix) with ESMTP id 47X9S80z1Rz9vBn0;
 Tue, 10 Dec 2019 07:40:56 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=tAL2i83x; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id 826r04EkLdd7; Tue, 10 Dec 2019 07:40:56 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47X9S771q6z9vBmy;
 Tue, 10 Dec 2019 07:40:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1575960056; bh=oSR9uIzDt/rEY6/KSJx3AbUqofk/Ep6fxitZcrpxY2s=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=tAL2i83xVGrkHPxQu17b9l9jARYFFM2cq04hcSKAVTH3BSSiU1Z7PrjLzTs8hUBOc
 RpT7+wCCC3N0HK4BNd1aykiia0uBaTv2P7kjZDv/gcLstU3kGqRllimvJxO0Wxcbvu
 xCYOsB9YJ+74sPHbusWNIyVYnas1eKOAco2psw/o=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id CEE348B802;
 Tue, 10 Dec 2019 07:40:56 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id k5RN-hFh1dZD; Tue, 10 Dec 2019 07:40:56 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id EE1AC8B754;
 Tue, 10 Dec 2019 07:40:55 +0100 (CET)
Subject: Re: [PATCH v2 3/4] kasan: Document support on 32-bit powerpc
To: Daniel Axtens <dja@axtens.net>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linuxppc-dev@lists.ozlabs.org,
 linux-s390@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kasan-dev@googlegroups.com, aneesh.kumar@linux.ibm.com, bsingharora@gmail.com
References: <20191210044714.27265-1-dja@axtens.net>
 <20191210044714.27265-4-dja@axtens.net>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <8b64ce35-01df-3c0f-2695-40633c324331@c-s.fr>
Date: Tue, 10 Dec 2019 07:40:55 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20191210044714.27265-4-dja@axtens.net>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_224058_633089_12DF4FD8 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAxMC8xMi8yMDE5IMOgIDA1OjQ3LCBEYW5pZWwgQXh0ZW5zIGEgw6ljcml0wqA6Cj4gS0FT
QU4gaXMgc3VwcG9ydGVkIG9uIDMyLWJpdCBwb3dlcnBjIGFuZCB0aGUgZG9jcyBzaG91bGQgcmVm
bGVjdCB0aGlzLgo+IAo+IFN1Z2dlc3RlZC1ieTogQ2hyaXN0b3BoZSBMZXJveSA8Y2hyaXN0b3Bo
ZS5sZXJveUBjLXMuZnI+Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIEF4dGVucyA8ZGphQGF4dGVu
cy5uZXQ+CgpSZXZpZXdlZC1ieTogQ2hyaXN0b3BoZSBMZXJveSA8Y2hyaXN0b3BoZS5sZXJveUBj
LXMuZnI+Cgo+IC0tLQo+ICAgRG9jdW1lbnRhdGlvbi9kZXYtdG9vbHMva2FzYW4ucnN0IHwgIDMg
KystCj4gICBEb2N1bWVudGF0aW9uL3Bvd2VycGMva2FzYW4udHh0ICAgfCAxMiArKysrKysrKysr
KysKPiAgIDIgZmlsZXMgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+
ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vcG93ZXJwYy9rYXNhbi50eHQKPiAK
CkNocmlzdG9waGUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
