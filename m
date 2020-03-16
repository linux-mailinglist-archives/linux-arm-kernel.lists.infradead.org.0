Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C151186B48
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 13:41:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/QcCc3oemZ1nQVsXM8KaZKe94x/iiJzH8XMW4kvSqs0=; b=EeuhmWnoDNItWf
	MAxg0Z5WKnMWVutnG5seIIRS+6IWDFg54Wpqw/nsGiEdqr5qkZ2VtM9IW7YziiYDQeSKYozT8gFuv
	Fh+qwhy3xhy/xZcRm994NikqvaoHOffhrOmuOFPQe75BpUy3fdQtO+MSi3Q37ZNC+ztmVhf27DJKE
	6xInByl6QCGThwEQWg+fsmrACXJjOjedO3AaSAkMlUHzu/p9MlJ/gCuxnXX+jVWMp4vVChnwiOJJa
	sLU7dxvcZNbCE1n7pvAj54FXHub+42KBDcNrTZ0c2RNq4jU06vFE98rcWlZVk0shF2pkzDYQrEFIi
	FKunh0XRreCd3hO551hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDp42-0002UQ-Aa; Mon, 16 Mar 2020 12:41:50 +0000
Received: from poy.remlab.net ([2001:41d0:2:5a1a::]
 helo=ns207790.ip-94-23-215.eu)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDp3D-0001ro-LQ
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 12:41:02 +0000
Received: from basile.remlab.net (87-92-31-51.bb.dnainternet.fi [87.92.31.51])
 (Authenticated sender: remi)
 by ns207790.ip-94-23-215.eu (Postfix) with ESMTPSA id 72F825FD9C;
 Mon, 16 Mar 2020 13:40:50 +0100 (CET)
From: =?ISO-8859-1?Q?R=E9mi?= Denis-Courmont <remi@remlab.net>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCHv2 0/3] arm64: clean up trampoline alignment
Date: Mon, 16 Mar 2020 14:40:49 +0200
Message-ID: <4064091.qgymGCTE6G@basile.remlab.net>
Organization: Remlab
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_054059_858622_666B0498 
X-CRM114-Status: UNSURE (   4.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpUaGUgS1BUSSBhbmQgU0RFIHRyYW1wb2xpbmVzIGVhY2ggbG9hZCBhIHBvaW50ZXIgZnJv
bSB0aGUgc2FtZSBmaXhtYXAgZGF0YSAKcGFnZS4gVGhpcyByZWR1Y2VzIHRoZSBkYXRhIGFsaWdu
bWVudCB0byB0aGUgdXNlZnVsIHZhbHVlLCBhbmQgdHJpZXMgdG8gCmNsYXJpZnkgdGhlIGFzc2Vt
YmxlciBjb2RlLgoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQpSw6ltaSBEZW5pcy1Db3VybW9udCAoMyk6CiAgICAgIGFybTY0
OiBjbGVhbiB1cCB0cmFtcG9saW5lIHZlY3RvciBsb2FkcwogICAgICBhcm02NC9zZGVpOiBnYXRo
ZXIgdHJhbXBvbGluZXMnIC5yb2RhdGEKICAgICAgYXJtNjQ6IHJlZHVjZSB0cmFtcG9saW5lIGRh
dGEgYWxpZ25tZW50CgogYXJjaC9hcm02NC9rZXJuZWwvZW50cnkuUyB8IDIzICsrKysrKysrKyst
LS0tLS0tLS0tLS0tCiBhcmNoL2FybTY0L21tL21tdS5jICAgICAgIHwgIDUgKystLS0KIDIgZmls
ZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCgotLSAK6Zu357Gz
4oCn5b635bC8LeW6k+WwlOiSmQpodHRwOi8vd3d3LnJlbWxhYi5uZXQvCgoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
