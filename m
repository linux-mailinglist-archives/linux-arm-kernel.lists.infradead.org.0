Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D466868B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 11:44:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qid7axWK1OfjVaeBCmfJPfee/03eXjPYI07e8Pe3He4=; b=W/1WKfrYjzF6Yp
	e4MHazMr+R1258RzZM6dKWBoOLIzzS2xSSSwMruw5/9IHUiQ4PSPDp6cmFLjeTRpfowTEdRNeUdoj
	7YSxfJtDOEua77gFf8HhGNei9GZkdo+D3/mB/d5jHn94WUyoaaQWtTRwyW/p4g3mQ2+XEcK4tRLv/
	E8Dg2xWhXhtvE2SPEj3L3iq2pTmv5xaesjuajGpIEjIJiLckjPiQbbBojeDVdZ9c3Uuk+bWEnbiKE
	pO70JicfviFYARVrcuaeA16hEogEJQM2QQi60VjbmzjyODVCwl7X7G9LJtyE/cYwogo+gt9221MTy
	MMpxYKbOTDtTh4qF1e/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmxWw-0003QN-MG; Mon, 15 Jul 2019 09:44:23 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmxWZ-0003Pa-Pg
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 09:44:01 +0000
Received: by mail-yb1-xb42.google.com with SMTP id 187so5800134ybw.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 02:43:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=fZZ8WVXuOszSeHc/0c/yAH4kX+d3pVHoqUHa9dvC8uU=;
 b=jPvQXZv+IvQvIOKDrE/1UTf4R3924nDi08kyG+WIj5baR4Tyt2FssXg65QToV335fR
 C3pQAHW0mt0y+pH4H5pHFNVigxkFaRpqcNAB3MLhLG5q2s+P4LyJ1aghN9dZyKbU8nLb
 +tDtSYrr0f8gdVeeIZpi09EmIyOIO0Q9X2MLV9gyJ1Q1Q1S5b8+YZVTEsmFL1iodhvC1
 vwusUno/4/rnjI4P48FdcE7GU2ufn+LjRZS9nxF32RlChRWlIdguzVsFOzZhaO2rojUJ
 xs1OnFebwIGoS6WFFiJQOVVdiD8lOq9z7qVhJUduZWLJUr9XeHSFuxdMZ1O0A5LWtLQr
 z1SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=fZZ8WVXuOszSeHc/0c/yAH4kX+d3pVHoqUHa9dvC8uU=;
 b=q2nQV7dr1oR9lBTbT19XK2ESm7uyriwk81G6WmS2mYVG3iT3KoA+emr2QjrZgahx7z
 /XgJP7gAjmkkLfjlJeANI6OBo0cO0PJcv/yLJl6A6IhKvbdNy5bVdHnsTZZ7QcYPc9kt
 NK11a94smxcGr3ShBzXwT+jPtCkjvJtAef4krHngsazBssodK4foF8CHJHha05f5/7Ev
 hExjmclT/fwy4ACDs1XiUci3C3jAiVSZaSOzfP1stoHwscJfsuZ+3Vv7g7FdFZjMCH4N
 YeFIC+MGg/qjJwZY3PuTwwT9rajVYn+j950vSrzaTPynvdYm9acguSZGBeis4cW1sSrZ
 x17Q==
X-Gm-Message-State: APjAAAUgSCaZhYQvysFdgT2pJDoD6X2TlaCGkYFzx0rMAfJqWpiahYfm
 h4JlcE0KYu5F6zyQyBgfM3GZwdua1ySllomf8Ls=
X-Google-Smtp-Source: APXvYqyshMjLjL343jXJYNns0AL0x11WqCb1cH108fR2yfBk7X87b8Pi43a3JUgN8FWpco10Ejn9jCi8Y49UB0rrw84=
X-Received: by 2002:a25:768f:: with SMTP id r137mr15582022ybc.8.1563183836782; 
 Mon, 15 Jul 2019 02:43:56 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190715090023eucas1p2ab541c5d4b4debe766295d3c6efbd1cd@eucas1p2.samsung.com>
 <20190715031851.6890-1-huangfq.daxian@gmail.com>
 <37046e7b-fdde-c10f-4850-0b3efd4a00cd@samsung.com>
In-Reply-To: <37046e7b-fdde-c10f-4850-0b3efd4a00cd@samsung.com>
From: Fuqian Huang <huangfq.daxian@gmail.com>
Date: Mon, 15 Jul 2019 17:43:45 +0800
Message-ID: <CABXRUiQ_N=N=weMnRea4d6PXjfghta=U1xhdv-tZpSvaGBnXGg@mail.gmail.com>
Subject: Re: [PATCH v3 15/24] media: exynos4-is: Remove call to memset after
 dma_alloc_coherent
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_024359_855864_64371BCD 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (huangfq.daxian[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-samsung-soc@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U3lsd2VzdGVyIE5hd3JvY2tpIDxzLm5hd3JvY2tpQHNhbXN1bmcuY29tPiDmlrwgMjAxOeW5tDfm
nIgxNeaXpemAseS4gCDkuIvljYg1OjAw5a+r6YGT77yaCj4KPiBPbiA3LzE1LzE5IDA1OjE4LCBG
dXFpYW4gSHVhbmcgd3JvdGU6Cj4gPiBJbiBjb21taXQgNTE4YTJmMTkyNWMzCj4gPiAoImRtYS1t
YXBwaW5nOiB6ZXJvIG1lbW9yeSByZXR1cm5lZCBmcm9tIGRtYV9hbGxvY18qIiksCj4gPiBkbWFf
YWxsb2NfY29oZXJlbnQgaGFzIGFscmVhZHkgemVyb2VkIHRoZSBtZW1vcnkuCj4gPiBTbyBtZW1z
ZXQgaXMgbm90IG5lZWRlZAo+Cj4gSSBjYW4ndCBzZWUgYW55IGNoYW5nZXMgaW4gdGhlIGFib3Zl
IG1lbnRpb25lZCBjb21taXQgdGhhdCB3b3VsZAo+IG1ha2UgZG1hX2FsbG9jX2NvaGVyZW50KCkg
KGFybV9jb2hlcmVudF9kbWFfYWxsb2MoKSkgemVyb2luZyBpdHMKPiByZXR1cm5lZCBtZW1vcnku
IE1heWJlIHlvdSBuZWVkIHRvIGFkZCBhIHJlZmVyZW5jZSB0byBzb21lIG90aGVyCj4gaW5zdGVh
ZD8KPgpJbiB0aGUgbGFzdCB2ZXJzaW9uIHBhdGNoIHNldCwgSSByZWZlcmVuY2VkIHRoZSBjb21t
aXQgYWY3ZGRkOGE2MjdjCigiTWVyZ2UgdGFnICdkbWEtbWFwcGluZy00LjIxJyBvZgpnaXQ6Ly9n
aXQuaW5mcmFkZWFkLm9yZy91c2Vycy9oY2gvZG1hLW1hcHBpbmciKQppbiB0aGUgY29tbWl0IGxv
Zy4KVGhlIG1lcmdlZCBjb21taXQgbWVudGlvbnMgdGhhdAoiZW5zdXJlIGRtYV9hbGxvY19jb2hl
cmVudCByZXR1cm5zIHplcm9lZCBtZW1vcnkgdG8KYXZvaWQga2VybmVsIGRhdGEgbGVha3MgdGhy
b3VnaCB1c2Vyc3BhY2UuCldlIGFscmVhZHkgZGlkIHRoaXMgZm9yIG1vc3QgY29tbW9uIGFyY2hp
dGVjdHVyZXMsCmJ1dCB0aGlzIGVuc3VyZXMgd2UgZG8gaXQgZXZlcnl3aGVyZS4iCmRtYV9hbGxv
Y19jb2hlcmVudCBoYXMgYWxyZWFkeSB6ZXJvZWQgdGhlIG1lbW9yeSBkdXJpbmcgYWxsb2NhdGlv
bgphbmQgdGhlIGNvbW1pdCBhbHNvIGRlcHJlY2F0ZXMgZG1hX3phbGxvY19jb2hlcmVudC4KR3Jl
ZyBhbmQgb3RoZXIgbWFpbnRhaW5lciB0b2xkIG1lIHRvIHVzZSB0aGUgYWN0dWFsIGNvbW1pdApy
YXRoZXIgdGhhbiB0aGUgbWVyZ2VkIGNvbW1pdC4KU28gSSByZWZlcmVuY2UgdGhlIGNvbW1pdCB0
aGF0IGVuc3VyZXMgdGhlIGRtYV9hbGxvY19jb2hlcmVudCB0bwpyZXR1cm5zIHplcm9lZCBtZW1v
cnkgZXZlcnkgd2hlcmUuCk1heWJlIHRoaXMgYmVsb25ncyB0byB0aGUgYG1vc3QgY29tbW9uIGFj
aGl0ZWN0dXJlc2AgYW5kIGlzIG5vdCBpbXBhY3RlZApieSB0aGUgbWVudGlvbmVkIGNoYW5nZS4K
U2hvdWxkIEkgcmV3cml0ZSB0aGUgY29tbWl0IGxvZz8gSnVzdCBtZW50aW9uIHRoYXQgZG1hX2Fs
bG9jX2NvaGVyZW50CmhhcyBhbHJlYWR5IHplcm9lZCB0aGUgbWVtb3J5IGFuZCBub3QgdG8gcmVm
ZXJlbmNlIHRoZSBjb21taXQ/CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
