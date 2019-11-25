Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CDAD1090CB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 16:13:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8FxTpN+gHNqBA+tTuSFwhQcYdm/sv1nGv5MUJkfS9Xc=; b=roecTuSFAqfiOT
	8j24JBBfJPR7Z0jI5SlzRg/Z+XiZY7gXa+dFL6YRAR6bwjR5utJNk2uziZMhs7a2DHGN+66F7H7gt
	w4JWJ2bVq8bkmS/HiN2Q/vJOj/ZPclbesvNig8a3CCdZPRS5YeBb+FcoUD3xvRIz0qMqxz3ndG2az
	IGxsx+B9BUyOZAeLhkGx8DU/MVMpAKvuZR0mHHUDGy3amw/5udI89YYcAyMEecERuhQdxl/d422hm
	GvC7oizUdH4xD82c71FmJlBAz0tmtzKFwjcz16gHMxo9i1/wZe/EsGnMwzr8pGJDmOfSCg4KWomM9
	jBHnvkLEOPUp2158P5PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZG2v-0000VB-DG; Mon, 25 Nov 2019 15:13:01 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZG2o-0000Us-F9
 for linux-arm-kernel@bombadil.infradead.org; Mon, 25 Nov 2019 15:12:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sWuXlLFJ0GZPZPXmhfrLUOFgB0G7jyrO3Jdvh8WQd9w=; b=pQ8jHTGvAhnKIVJ1UIZddzf/z0
 PRIpznU4XT1F/ElC1dFZj+Y7PcMf5CppOychCSB2nbbDg1Q5FH9ouSR5MJTJrNT0obARjkbvQQk5l
 oTKFE2q1ztzhH7lgpIkNhaExIZ8B22Lwl+qXLjRUMPFJKKFBdOvPyRacszqXQv8VJjAfoYCtOWL5D
 yIb5whwXugm0hLzioRQ/1CqBZVtKIp7bgi0fZeCeEn/FH08YTztRFfJhQ/P077LjajSFygJ/xl6PY
 I1RT0ng08aXoaK0gUD/61z4td2zgSt6SgEGnfx1DVrOUfVb9niLWZEQBwUalxJ3scAIjvh8ZsUCNn
 jM0iyhhw==;
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZG3G-0001PL-Oy
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 15:13:24 +0000
X-Originating-IP: 90.76.211.102
Received: from xps13 (lfbn-1-2154-102.w90-76.abo.wanadoo.fr [90.76.211.102])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 5394D1C0002;
 Mon, 25 Nov 2019 15:12:09 +0000 (UTC)
Date: Mon, 25 Nov 2019 16:12:08 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Sven Auhagen <sven.auhagen@voleatech.de>
Subject: Re: CP110 Comphy Issue
Message-ID: <20191125161208.750d583a@xps13>
In-Reply-To: <E5A2C8CE-447D-4FAB-A6A9-39F86146EBAF@voleatech.de>
References: <7BB0B44E-A78D-4DDF-962E-5C8130B6F31A@voleatech.de>
 <874kythgsl.fsf@tarshish> <20191124151835.7e2b549a@xps13>
 <9980B353-AC56-421A-A80F-F8371B84818A@voleatech.de>
 <E5A2C8CE-447D-4FAB-A6A9-39F86146EBAF@voleatech.de>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_151322_836514_5E49FA05 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
Cc: Baruch Siach <baruch@tkos.co.il>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3ZlbiwKCgo+IFdoZW4gSSByZW1vdmUgdGhlIFBDSWUgY2FyZCBmcm9tIENQMSB0aGUgYm9v
dCBjb250aW51ZXMganVzdCBmaW5lLgoKTWF5YmUgeW91IGNhbiBoYXZlIGEgbG9vayBhdCB0aGUg
cmVzZXQgY29kZS4KCk1heWJlIGFsc28gY2hlY2sgdGhlIGNsb2NrIGRpcmVjdGlvbiBzZXQgaW4g
QVRGIC13aGljaCBtaWdodCBkaWZmZXIgZm9yCkNQMSBkZXBlbmRpbmcgb24gdGhlIFNhUiByZWdp
c3RlcnMuCgo+IEFsc28gSSBsb29rZWQgdGhyb3VnaCB0aGUgY29kZSB5b3UgcHJvYmFibHkgd2Fu
dCB0byBjaGFuZ2UgdGhpcywgb3IgeW91IHdpbGwgdHJ5IHRvIGFjY2VzcyBwaHlzIHRoYXQgYXJl
IG5vbmUgZm9yIFBDSWVzIHRoYXQgaGF2ZSBsZXNzIHRoYW4gNCBsYW5lcy4KCkFGQUlLIHRoaXMg
aXMgbm90IGEgcHJvYmxlbSBidXQgbWlnaHQgYmUgbW9yZSBlbGVnYW50LCBwbGVhc2Ugc2VuZCBh
CnBhdGNoIHRvIHRoZSBNTC4KCgpUaGFua3MsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
