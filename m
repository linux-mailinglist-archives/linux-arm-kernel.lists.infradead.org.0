Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 009CC10E8F6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 11:32:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5yI+yl4ScT3g4M+zNma5pBkM+24WrCDlxjivNQoCUOM=; b=aDclUqKLoyTHGLdKzTatufgbC
	zvH3e/tU+Wd/92lXF415Rm30auYcCWe3qXLb9bRuqukRZUgHOXwzoaLmfKmPWWjkXNq17ClN2utvX
	I67DCPmfWmrejRXdr4tt9gsWeequhd9uapJ7gd7YCqO5VmL27F2QiCvX7H4G6nMkvHnoam7U17mSO
	xSHoBP3JbOw5Wb/kGkaTOpH978r1pOX0JevY3Z/hr6oUPoZWtGueDawXDDixRfcUNERe7qEucGPWU
	FPz+y3CXW+DTlln0jb/xPNsDb8ig54Xz2D74jcM8grBgO/l4Sm3ju0WphAZqOVY2hzku7hRhhIp+u
	hbkDDpWNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibj06-0000XS-AJ; Mon, 02 Dec 2019 10:32:18 +0000
Received: from mail2.sp2max.com.br ([138.185.4.9])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibiyQ-0007UA-E4; Mon, 02 Dec 2019 10:30:36 +0000
Received: from [172.17.0.170] (unknown [190.246.35.95])
 (Authenticated sender: pablo@fliagreco.com.ar)
 by mail2.sp2max.com.br (Postfix) with ESMTPSA id E837F7B0877;
 Mon,  2 Dec 2019 07:30:17 -0300 (-03)
Subject: Re: [PATCH v1] mt76: mt7615: Fix build with older compilers
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
References: <20191201181716.61892-1-pgreco@centosproject.org>
 <e18d798d-cdf3-da05-c139-403dfc80e8a3@cogentembedded.com>
From: =?UTF-8?Q?Pablo_Sebasti=c3=a1n_Greco?= <pgreco@centosproject.org>
Message-ID: <5e12af27-be82-894a-1abd-25d1f33a5144@centosproject.org>
Date: Mon, 2 Dec 2019 07:30:15 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <e18d798d-cdf3-da05-c139-403dfc80e8a3@cogentembedded.com>
Content-Language: en-US
X-SP2Max-MailScanner-Information: Please contact the ISP for more information
X-SP2Max-MailScanner-ID: E837F7B0877.A307D
X-SP2Max-MailScanner: Sem Virus encontrado
X-SP2Max-MailScanner-SpamCheck: nao spam, SpamAssassin (not cached,
 escore=-2.9, requerido 6, autolearn=not spam, ALL_TRUSTED -1.00,
 BAYES_00 -1.90)
X-SP2Max-MailScanner-From: pgreco@centosproject.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_023034_727705_DB6E2077 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Roy Luo <royluo@google.com>,
 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDIvMTIvMTkgMDY6MTgsIFNlcmdlaSBTaHR5bHlvdiB3cm90ZToKPiBIZWxsbyEKPgo+IE9u
IDAxLjEyLjIwMTkgMjE6MTcsIFBhYmxvIEdyZWNvIHdyb3RlOgo+Cj4+IFNvbWUgY29tcGlsZXJz
ICh0ZXN0ZWQgd2l0aCA0LjguNSBmcm9tIENlbnRPUyA3KSBmYWlsIHByb3Blcmx5IHByb2Nlc3MK
Pgo+IMKgwqAgRmFpbCB0bz8KUmlnaHQKPgo+PiBGSUVMRF9HRVQgaW5zaWRlIGFuIGlubGluZSBm
dW5jdGlvbiwgd2hpY2ggZW5kcyB1cCBpbiBhIEJVSUxEX0JVR19PTi4KPj4gQ29udmVydCBpbmxp
bmUgZnVuY3Rpb24gdG8gYSBtYWNyby4KPj4KPj4gRml4ZXMgY29tbWl0IGJmOTJlNzY4NTEwMCAo
Im10NzY6IG10NzYxNTogYWRkIHN1cHBvcnQgZm9yIHBlci1jaGFpbgo+PiBzaWduYWwgc3RyZW5n
dGggcmVwb3J0aW5nIikKPgo+IMKgwqAgU2hvdWxkIGJlOgo+Cj4gRml4ZXM6IGJmOTJlNzY4NTEw
MCAoIm10NzY6IG10NzYxNTogYWRkIHN1cHBvcnQgZm9yIHBlci1jaGFpbiBzaWduYWwgCj4gc3Ry
ZW5ndGggcmVwb3J0aW5nIikKPgo+IMKgwqAgRG8gbm90IGV2ZXIgYnJlYWsgdXAgdGhlIEZpeGVz
OiBsaW5lIGFuZCBkb24ndCBpbnNlcnQgZW1wdHkgbGluZXMgCj4gYmV0d2VlbiBpdCBhbmQgb3Ro
ZXIgdGFncy4KQWNrLCBJJ2xsIGZpeCB0aG9zZSBmb3IgdjIKPgo+PiBSZXBvcnRlZCBpbiBodHRw
czovL2xrbWwub3JnL2xrbWwvMjAxOS85LzIxLzE0Ngo+Pgo+PiBSZXBvcnRlZC1ieToga2J1aWxk
IHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IFBhYmxvIEdyZWNv
IDxwZ3JlY29AY2VudG9zcHJvamVjdC5vcmc+Cj4gWy4uLl0KPgo+IE1CUiwgU2VyZ2VpCgoKVGhh
bmtzLCBQYWJsbwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
