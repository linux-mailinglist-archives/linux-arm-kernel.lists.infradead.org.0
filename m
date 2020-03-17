Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3E5189105
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 23:06:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TCvJHaP0SQ+XG5v3BK6Gsg9bWwyn+YddUz0+H4d+3Mw=; b=chZF+IDCpR8BKx
	e3IuDWR8mSoPmF9PpHdC6S1qqtkDxdEMvXtq84/0xePyL6lwZ5WbcL/OS68bviRzlnn38YQhaDMdR
	H2C/y9VsDEbQPIAn2juYOZVM8KVuySAxoUAz9qCX8Ir/KuLGZoeanHf6EiLBWbdij9jyXbdmJKsMO
	gfYuEXAwjDETUk0B4JMQ+hfUjjoGvbyTRnkH3Ao4hC0lnMYQJWGBza9mNSoosMRgqis/0bRcPF5wL
	TmiXHfCjj28Eg+6DPDTM7Ig4Zy0w8P9tn/l+x51YGWJYjnOPgCnW96I/+L7wb+RfrBdigfmtASbs8
	5qX7U+CSO3M/3/aGEaxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEKLr-0006SN-DC; Tue, 17 Mar 2020 22:06:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEKLi-0006S1-Ki
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 22:06:11 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5672B20714;
 Tue, 17 Mar 2020 22:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584482770;
 bh=jg1FxJQAmhdeplR39xeuAeUIFFGrx1NIE4MK8j7xaGU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VERFBito2jxzIAn/ZE8ds7YhF97HaUU1BEXN6qy5jL0hkelyWgvRcmHGwmFmuE/kQ
 oRemJf6/sC3fcz2FEBjEbj3VZciyNAENHgXXClQ4YERLD8FZtnlwg7PhPvQWUnSdrm
 adBYiU9nqV7l2Jpyf1ZRbuIds2wC2o/f2CNzbFtA=
Date: Tue, 17 Mar 2020 22:06:04 +0000
From: Will Deacon <will@kernel.org>
To: =?utf-8?B?6Z+p56eR5omN?= <hankecai@vivo.com>
Subject: Re: [PATCH] arm64: remove redundant blank for '=' operator
Message-ID: <20200317220602.GC20788@willie-the-truck>
References: <ALsA-QB3CCyH77MiU4gx3arM.1.1583909569099.Hmail.hankecai@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ALsA-QB3CCyH77MiU4gx3arM.1.1583909569099.Hmail.hankecai@vivo.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_150610_698779_9B5A668A 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: trivial@kernel.org, =?utf-8?B?546L5paH6JmO?= <wenhu.wang@vivo.com>,
 suzuki.poulose@arm.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 jeremy.linton@arm.com, broonie@kernel.org, tglx@linutronix.de,
 Dave.Martin@arm.com, linux-arm-kernel@lists.infradead.org,
 amurray@thegoodpenguin.co.uk
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXIgMTEsIDIwMjAgYXQgMDI6NTI6NDlQTSArMDgwMCwg6Z+p56eR5omNIHdyb3Rl
Ogo+IHJlbW92ZSByZWR1bmRhbnQgYmxhbmsgZm9yICc9JyBvcGVyYXRvciwgaXQgbWF5IGJlIG1v
cmUgZWxlZ2FudC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBoYW5rZWNhaSA8aGFua2VjYWlAdml2by5j
b20+Cj4gLS0tCj4gIGFyY2gvYXJtNjQva2VybmVsL2NwdWZlYXR1cmUuYyB8IDIgKy0KPiAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2FyY2gvYXJtNjQva2VybmVsL2NwdWZlYXR1cmUuYyBiL2FyY2gvYXJtNjQva2VybmVsL2Nw
dWZlYXR1cmUuYwo+IGluZGV4IDBiNjcxNTYyNWNmNi4uY2U2MGQxMDEyYmZhIDEwMDY0NAo+IC0t
LSBhL2FyY2gvYXJtNjQva2VybmVsL2NwdWZlYXR1cmUuYwo+ICsrKyBiL2FyY2gvYXJtNjQva2Vy
bmVsL2NwdWZlYXR1cmUuYwo+IEBAIC01NTEsNyArNTUxLDcgQEAgc3RhdGljIHZvaWQgX19pbml0
IGluaXRfY3B1X2Z0cl9yZWcodTMyIHN5c19yZWcsIHU2NCBuZXcpCj4gIAo+ICAJQlVHX09OKCFy
ZWcpOwo+ICAKPiAtCWZvciAoZnRycCAgPSByZWctPmZ0cl9iaXRzOyBmdHJwLT53aWR0aDsgZnRy
cCsrKSB7Cj4gKwlmb3IgKGZ0cnAgPSByZWctPmZ0cl9iaXRzOyBmdHJwLT53aWR0aDsgZnRycCsr
KSB7Cj4gIAkJdTY0IGZ0cl9tYXNrID0gYXJtNjRfZnRyX21hc2soZnRycCk7Cj4gIAkJczY0IGZ0
cl9uZXcgPSBhcm02NF9mdHJfdmFsdWUoZnRycCwgbmV3KTsKCkFja2VkLWJ5OiBXaWxsIERlYWNv
biA8d2lsbEBrZXJuZWwub3JnPgoKV2lsbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
