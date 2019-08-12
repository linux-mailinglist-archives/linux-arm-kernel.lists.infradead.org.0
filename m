Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3088A947
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 23:26:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R1DWGJjkEoXnvpPiRmmwFH8krpNqM0j/0nkhKxSfr+E=; b=lhRyFw/jv5NgU3
	GCfq/bTyOAWyH95hEwKz+ogPLI/7e+4jOBxgmq17pn1ont8VBwW8ohcP1cX/0wzyeUn64nHhqQ1TV
	bqp4lNZ+Cd4CZLw43HSWcTremt6QGr7pYiNw7vI2iRL1FORiHO1JYigeO6XImSpKN8ZG4oVXH1oEn
	DOcwOIdqhygKPDoJS64daYGSsHLImPpijmPv5ZhPebmQ6PEm3UnV+tfj6c21m1vDIj0EAMvVB5FE1
	aMhTyY1ELMN2+XIZaAYzcfArXg90Pdlmpsczz48Cx+nYJUfw4NrCbsL/myPIvYOtF0hgLiKMTAa2V
	Fw/TxyxPsNN31QRtW8rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxHpj-0000ux-3g; Mon, 12 Aug 2019 21:26:27 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxHpU-0000u1-9c
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 21:26:13 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id EEAA6737;
 Mon, 12 Aug 2019 21:26:11 +0000 (UTC)
Date: Mon, 12 Aug 2019 15:26:11 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Jonathan =?UTF-8?B?TmV1c2Now6RmZXI=?= <j.neuschaefer@gmx.net>
Subject: Re: [PATCH] Documentation/arm/samsung-s3c24xx: Remove stray U+FEFF
 character to fix title
Message-ID: <20190812152611.3e8f5e9d@lwn.net>
In-Reply-To: <20190808164811.15645-1-j.neuschaefer@gmx.net>
References: <20190808164811.15645-1-j.neuschaefer@gmx.net>
Organization: LWN.net
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_142612_334928_A46912D9 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [45.79.88.28 listed in list.dnswl.org]
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
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAgOCBBdWcgMjAxOSAxODo0ODowOSArMDIwMApKb25hdGhhbiBOZXVzY2jDpGZlciA8
ai5uZXVzY2hhZWZlckBnbXgubmV0PiB3cm90ZToKCj4gSXQgc2VlbXMgYSBVVEYtOCBieXRlIG9y
ZGVyIG1hcmsgKHRoZSBsZWFzdCB1c2VmdWwga2luZCBvZiBCT00uLi4pIHNudWNrCj4gaW50byB0
aGUgZmlsZSBhbmQgYnJva2UgU3BoaW54J3MgZGV0ZWN0aW9uIG9mIHRoZSB0aXRsZSBsaW5lLgo+
IAo+IEJlc2lkZXMgbWFraW5nIGFybS9zYW1zdW5nLXMzYzI0eHgvaW5kZXguaHRtbCBsb29rIGEg
bGl0dGxlIGJldHRlciwgdGhpcwo+IHBhdGNoIGFsc28gY29uZmluZXMgdGhlIG5vbi1pbmRleCBw
YWdlcyBpbiBhcm0vc2Ftc3VuZy1zM2MyNHh4IHRvIHRoZWlyCj4gb3duIHRhYmxlIG9mIGNvbnRl
bnRzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEpvbmF0aGFuIE5ldXNjaMOkZmVyIDxqLm5ldXNjaGFl
ZmVyQGdteC5uZXQ+CgpBcHBsaWVkLCB0aGFua3MuCgpqb24KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
