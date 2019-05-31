Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C624F31139
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 17:24:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=64gP7wodAih1xWAXOgGCjX1aWnU2nEDpps0EgXtOkRw=; b=BCpwjLEP5akj6Y
	fX0Esrim2HhMndvSVUN80kWWGnwGHNTGnWmkyqvBeQpeM5eobpDYWMhJoGcYR1jyTG9nrt1BIryBp
	eE3RRx0hHFIFjOFtFf9WFgzkTyljQa71uW2ZcdKCQt0qZh0hy9vQs1ys9WNLqWa35ppnphfL9KtTQ
	mspSb1SF905sZUNYU8y/BIIWouMOOHdSs0Uc0oNpxlNISRrl58NpWrhMdngYLR6bcIFMHFIBzKNsD
	3cVl6vtlDnaJiYrtMZD+X0d1MESc5IgsqLiQzZ8eYlGKkYC/APnLxEe0NxfeWeZaH72O/5QrqhFNJ
	QG3avK9CYmFUZu+GmRxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWjOH-0002tK-0U; Fri, 31 May 2019 15:24:21 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWjOA-0002sp-1U
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 15:24:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H6h2kb709KFYNxbjcS6tPTOz92vFnLfdsknYL0Uogqg=; b=1qzxNvv9E63Qa0vyOdld7gTHFQ
 fGtLocj0Uyfh8lcsEmWGIi1nyagB/SvML3wT3/HVfpc4XAwtMIEYTd0LOH/DrD/QzmKKquSGNL5Ct
 iV0fEaYJYGGdpxOHgXwxikY2tS0AicsGb1xaQbB+047p2zo2PAomb9tUF+rqxiGI1orHKsyEeGGpe
 0fhTgWPWbufIOV3z/mQPc5T+VVwjWaVqibVJzzgJ2cZUNEazilDJgX9JlBk96OOkQbKcgINMFU0JW
 2/a6UCh1UW+kI1TLKrUrqxKZk+4rzRNy8cv+44TnRt1Ii/ZmaJfMOGjM5KZRhFzt+gUxp6+js9BPS
 Na1Fr7Vw==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:40352 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hWjO0-0001XN-Ua; Fri, 31 May 2019 16:24:05 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hWjO0-00087g-7y; Fri, 31 May 2019 16:24:04 +0100
In-Reply-To: <20190531151032.tfrl7yqph6wsg5pl@pengutronix.de>
References: <20190531151032.tfrl7yqph6wsg5pl@pengutronix.de>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
Subject: [PATCH] serial: sa1100: add note about modem control signals
MIME-Version: 1.0
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hWjO0-00087g-7y@rmk-PC.armlinux.org.uk>
Date: Fri, 31 May 2019 16:24:04 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_082414_085901_8378F208 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QXMgc3VnZ2VzdGVkIGJ5IFV3ZSwgYWRkIGEgbm90ZSBpbmRpY2F0aW5nIHRoYXQgdGhlIG1vZGVt
IGNvbnRyb2wKc2lnbmFscyBkbyBub3Qgc3VwcG9ydCBpbnRlcnJ1cHRzLCB3aGljaCBwcmVjbHVk
ZXMgdGhlIGRyaXZlciBmcm9tCnVzaW5nIG1jdHJsX2dwaW9faW5pdCgpLgoKU3VnZ2VzdGVkLWJ5
OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgpTaWdu
ZWQtb2ZmLWJ5OiBSdXNzZWxsIEtpbmcgPHJtaytrZXJuZWxAYXJtbGludXgub3JnLnVrPgotLS0K
ClV3ZSwgc29tZXRoaW5nIGxpa2UgdGhpcz8KCiBkcml2ZXJzL3R0eS9zZXJpYWwvc2ExMTAwLmMg
fCAzICsrKwogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvdHR5L3NlcmlhbC9zYTExMDAuYyBiL2RyaXZlcnMvdHR5L3NlcmlhbC9zYTExMDAuYwpp
bmRleCBhNmI0MzA5YjYyZmMuLmQ3ZGJmMDU3NmJlOCAxMDA2NDQKLS0tIGEvZHJpdmVycy90dHkv
c2VyaWFsL3NhMTEwMC5jCisrKyBiL2RyaXZlcnMvdHR5L3NlcmlhbC9zYTExMDAuYwpAQCAtOTQ5
LDYgKzk0OSw5IEBAIHN0YXRpYyBpbnQgc2ExMTAwX3NlcmlhbF9yZXN1bWUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqZGV2KQogc3RhdGljIGludCBzYTExMDBfc2VyaWFsX2FkZF9vbmVfcG9ydChz
dHJ1Y3Qgc2ExMTAwX3BvcnQgKnNwb3J0LCBzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpkZXYpCiB7
CiAJc3BvcnQtPnBvcnQuZGV2ID0gJmRldi0+ZGV2OworCisJLy8gR1BJTyBkcml2ZXIgZG9lcyBu
b3Qgc3VwcG9ydCBpbnRlcnJ1cHRzIGZvciB0aGVzZSBtb2RlbQorCS8vIGNvbnRyb2wgc2lnbmFs
cywgc28gdGhlIHNlcmlhbCBkcml2ZXIgcG9sbHMgdGhlbS4KIAlzcG9ydC0+Z3Bpb3MgPSBtY3Ry
bF9ncGlvX2luaXRfbm9hdXRvKHNwb3J0LT5wb3J0LmRldiwgMCk7CiAJaWYgKElTX0VSUihzcG9y
dC0+Z3Bpb3MpKSB7CiAJCWludCBlcnIgPSBQVFJfRVJSKHNwb3J0LT5ncGlvcyk7Ci0tIAoyLjcu
NAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
