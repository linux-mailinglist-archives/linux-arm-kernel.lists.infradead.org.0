Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3078A942
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 23:25:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hFugPP11XTijv/m02ROVn6Z2MtocTEe/hzV7Lr0fnW0=; b=OhbXuvanYuSVWs
	VpWCYU5XaR7kH2wSdao64IvXiiFUTulim3ClseL39FDRvv2LfqUm0yApM1VJZe/NtwJrWpif9n6z/
	nGKulj7g+JOREpyNZ0worNyaaCSnsl2itICeIaMs2bdEQ12RVADbTv86gn6rJD5BfvNw/Y8Ha7WJw
	QB3B7kG7iwDceTCVr4EH41csiWIUFE73YmgjIM7oUyYcz2Ig76sQK6VMvyiwSjJSsOl+y+GlYEWIx
	WNF4MPvic42AnGFD6wQ6yGNYP3fBxjlOaDom/inQfXDusBAPpEHamq4tmoIG/R1+8NsqZYOV6ksEG
	xQvfB7CcnHoD1dsYR1hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxHos-0000as-D2; Mon, 12 Aug 2019 21:25:34 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxHoe-0000aM-Ft
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 21:25:21 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 1AF092D8;
 Mon, 12 Aug 2019 21:25:20 +0000 (UTC)
Date: Mon, 12 Aug 2019 15:25:19 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Jonathan =?UTF-8?B?TmV1c2Now6RmZXI=?= <j.neuschaefer@gmx.net>
Subject: Re: [PATCH 2/2] Documentation/arm/sa1100/assabet: Fix 'make
 assabet_defconfig' command
Message-ID: <20190812152519.61503a5b@lwn.net>
In-Reply-To: <20190808165929.16946-2-j.neuschaefer@gmx.net>
References: <20190808165929.16946-1-j.neuschaefer@gmx.net>
 <20190808165929.16946-2-j.neuschaefer@gmx.net>
Organization: LWN.net
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_142520_536569_05DC68A2 
X-CRM114-Status: GOOD (  11.95  )
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

T24gVGh1LCAgOCBBdWcgMjAxOSAxODo1ODo1NiArMDIwMApKb25hdGhhbiBOZXVzY2jDpGZlciA8
ai5uZXVzY2hhZWZlckBnbXgubmV0PiB3cm90ZToKCj4gIm1ha2UgYXNzYWJldF9jb25maWciIGRv
ZXNuJ3Qgd29yay4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKb25hdGhhbiBOZXVzY2jDpGZlciA8ai5u
ZXVzY2hhZWZlckBnbXgubmV0Pgo+IC0tLQo+ICBEb2N1bWVudGF0aW9uL2FybS9zYTExMDAvYXNz
YWJldC5yc3QgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxl
dGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2FybS9zYTExMDAvYXNzYWJl
dC5yc3QgYi9Eb2N1bWVudGF0aW9uL2FybS9zYTExMDAvYXNzYWJldC5yc3QKPiBpbmRleCAzZTcw
NDgzMWMzMTEuLmE3NjFlMTI4ZmIwOCAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2FybS9z
YTExMDAvYXNzYWJldC5yc3QKPiArKysgYi9Eb2N1bWVudGF0aW9uL2FybS9zYTExMDAvYXNzYWJl
dC5yc3QKPiBAQCAtMTQsNyArMTQsNyBAQCBCdWlsZGluZyB0aGUga2VybmVsCj4gCj4gIFRvIGJ1
aWxkIHRoZSBrZXJuZWwgd2l0aCBjdXJyZW50IGRlZmF1bHRzOjoKPiAKPiAtCW1ha2UgYXNzYWJl
dF9jb25maWcKPiArCW1ha2UgYXNzYWJldF9kZWZjb25maWcKPiAgCW1ha2Ugb2xkY29uZmlnCj4g
IAltYWtlIHpJbWFnZQoKQXBwbGllZCwgdGhhbmtzLgoKam9uCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
