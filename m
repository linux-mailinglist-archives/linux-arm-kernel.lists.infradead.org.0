Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9D312A3F9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 19:45:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yJd1hHKljjcn+RGkhbszTH10M3XAF9ZOBMQwxQF3284=; b=rZJkC+q6MC6kig
	xLwnabGDi3/MNZYczekkJXclWXyc26SqT8wS2QhDqyYrnR2oAcGD/ZTZjU0I8RvoRKHMsDI8x1wkW
	Bfd5TBKv5yAeelJ75p1kmtvpsKYPTuegsIyf5+Ko5AsI53HiTbXnnAUHwL5H6GBiq03CTYtfyqc7d
	qeccEsS2VPCvJ0PFeiYWQ6QmpEuEcSgmOujtn/2EssxyVuGtede0eArTWzDgflCOHU3VrodQJx+nH
	4KBDGUqfohujw7HlRPGSG7Sblg9cbrVQ4mMK36ajYQ1vTbzB5GFg6XAN6+FEyM+Djdb3BzpobkAuZ
	eEHA0JEN3piOZ0X5Gx6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijpBJ-0000Om-Rz; Tue, 24 Dec 2019 18:45:21 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijpBA-00006H-HV
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 18:45:15 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 751A88107;
 Tue, 24 Dec 2019 18:45:46 +0000 (UTC)
Date: Tue, 24 Dec 2019 10:45:03 -0800
From: Tony Lindgren <tony@atomide.com>
To: =?utf-8?B?QW5kcsOp?= Hentschel <nerv@dawncrow.de>
Subject: Re: [PATCH] ARM: dts: Add omap3-echo
Message-ID: <20191224184503.GK35479@atomide.com>
References: <20191224161005.28083-1-nerv@dawncrow.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191224161005.28083-1-nerv@dawncrow.de>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_104512_620211_15640075 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux@arm.linux.org.uk,
 webmaster@dawncrow.de, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 bcousson@baylibre.com, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KiBBbmRyw6kgSGVudHNjaGVsIDxuZXJ2QGRhd25jcm93LmRlPiBbMTkxMjI0IDE2OjExXToKPiBU
aGlzIGlzIHRoZSBmaXJzdCBnZW5lcmF0aW9uIEFtYXpvbiBFY2hvIGZyb20gMjAxNi4KPiBBdWRp
byBzdXBwb3J0IGlzIG5vdCB5ZXQgaW1wbGVtZW50ZWQuCgpPSyBsb29rcyBnb29kIHRvIG1lLCBq
dXN0IHdvcnJpZWQgYWJvdXQgb25lIHBhcnQ6Cgo+ICsmc2d4X21vZHVsZSB7Cj4gKwlzdGF0dXMg
PSAiZGlzYWJsZWQiOwo+ICt9OwoKV2Ugc2hvdWxkIGhhdmUgYSBzZXBhcmF0ZSBhbTM3MDMuZHRz
aSBvciB3aGF0ZXZlciB0aGUgU29DIG1vZGVsCmRpc2FibGluZyBzZ3ggaWYgbm90IHRoZXJlIG9u
IHRoZSBTb0MuIFRoYXQgd2F5IGJvYXJkIHNwZWNpZmljCmR0cyBmaWxlcyBjYW4ganVzdCBpbmNs
dWRlIGl0IHdpdGhvdXQgaGF2aW5nIHRvIGRlYnVnIHRoaXMgaXNzdWUKb3ZlciBhbmQgb3Zlci4K
ClJlZ2FyZHMsCgpUb255CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
