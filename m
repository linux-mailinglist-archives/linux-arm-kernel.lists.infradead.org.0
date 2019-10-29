Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F9EBE7FB0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 06:27:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UBW+xHqY2QSE9D+XNoNrLjO8cQVDtdwuOZL3O/hsOaw=; b=fUMBJUMzPKmOa6
	FcFc60yuU9IvwSxSXp4B0ihqRQollQU/PgYd7lT8Jx0xsnn2jMNJ0xNdeL+NjQgZoRFVLk8B0gnOn
	wGxBpPEojPpQZnb6+qATsuOrurz6wAEmDumu5Lm3NCHL5eYlr2uz78zZ0vGf+daH9XGOQFYHLSsse
	m+Vyv6fGvmN4zKShFb+TpBCbL1cBmC+KVBqKRSHOiCNsHwXpaVJ7lgt2ZhboTVIcL/3YTsq0rFd60
	xRjYfGlx5IXJVf81cg4FR3nTC00rQv8WkrqvM3xH5Okt55aPuEKIpcXI4eewI5q96yOAQKO/uISO7
	0r/eNiGVbDpery7UhR1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPK2L-0007Vd-AJ; Tue, 29 Oct 2019 05:27:21 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPK27-0007V0-62; Tue, 29 Oct 2019 05:27:08 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id EA52BAEAC;
 Tue, 29 Oct 2019 05:27:05 +0000 (UTC)
Subject: Re: [PATCH v2 06/11] arm64: dts: realtek: Add RTD129x reset
 controller nodes
To: linux-realtek-soc@lists.infradead.org
References: <20191023101317.26656-1-afaerber@suse.de>
 <20191023101317.26656-7-afaerber@suse.de>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <d33c26ac-5015-0b3c-3361-531992a943e8@suse.de>
Date: Tue, 29 Oct 2019 06:27:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191023101317.26656-7-afaerber@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_222707_372671_0FE53B02 
X-CRM114-Status: GOOD (  10.93  )
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
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMjMuMTAuMTkgdW0gMTI6MTMgc2NocmllYiBBbmRyZWFzIEbDpHJiZXI6Cj4gQWRkIG5vZGVz
IGZvciB0aGUgUmVhbHRlayBSVEQxMjk1IHJlc2V0IGNvbnRyb2xsZXJzLgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KPiAtLS0KPiAgdjEgLT4g
djI6Cj4gICogUmViYXNlZCwgbW92ZWQgZnJvbSBydGQxMjk1LmR0c2kgdG8gcnRkMTI5eC5kdHNp
Cj4gIAo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5eC5kdHNpIHwgMzAgKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAzMCBpbnNlcnRp
b25zKCspCgpBcHBsaWVkIHRvIGxpbnV4LXJlYWx0ZWsuZ2l0IHY1LjUvZHQ2NDoKCmh0dHBzOi8v
Z2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2FmYWVyYmVyL2xpbnV4LXJl
YWx0ZWsuZ2l0L2xvZy8/aD12NS41L2R0NjQKClJlZ2FyZHMsCkFuZHJlYXMKCi0tIApTVVNFIFNv
ZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgKTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5i
ZXJnLCBHZXJtYW55CkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIKSFJCIDM2ODA5IChBRyBOw7xybmJl
cmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
