Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC28B179B56
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 22:55:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pFjuVVvyjHX2q78NQ2jK/vmBtFoA2TdG1EImZazUPGU=; b=VSxfjtV9xN3wKB
	sSb4unUS9LTTGl/hYaLFoEeSGM2A+4k3to8hjbpUeDFvyV5PO9XBDEQ2yoH5Q9lQa1GW7FxubIXh0
	eXpXexMND4IyCtcrEAm9B6SRcS+1o8b101aWbnde+e1UyMj1UQXGxPCsC9ZhEZGUv7jecukvT+UZ2
	52ywcBIx7zpAbIbqpBhN8uz04W11UygyCR8kMSxapXQTxyBA1F5pq7V6P7dDQi/dighBTR/qy32XP
	PwVOOeLnoQXfobwzbb1L7pLoSftv/8AG3H6ekuXK8bjWbcLwDEkfyTJwxrh4M4vy9ShmOfDG1Unqq
	Z+dQfAv+MvnUAdsyI6xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9bzb-0003z5-Bs; Wed, 04 Mar 2020 21:55:51 +0000
Received: from elvis.franken.de ([193.175.24.41])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9bzV-0003wb-2B
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 21:55:46 +0000
Received: from uucp (helo=alpha)
 by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
 id 1j9bzN-0000mm-00; Wed, 04 Mar 2020 22:55:37 +0100
Received: by alpha.franken.de (Postfix, from userid 1000)
 id 832E3C0EF9; Wed,  4 Mar 2020 21:31:44 +0100 (CET)
Date: Wed, 4 Mar 2020 21:31:44 +0100
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: afzal mohammed <afzal.mohd.ma@gmail.com>
Subject: Re: [PATCH v3] MIPS: Replace setup_irq() by request_irq()
Message-ID: <20200304203144.GA4323@alpha.franken.de>
References: <20200304005549.5832-1-afzal.mohd.ma@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200304005549.5832-1-afzal.mohd.ma@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_135545_255002_5523EF98 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [193.175.24.41 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Paul Burton <paulburton@kernel.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Jiaxun Yang <jiaxun.yang@flygoat.com>,
 "Maciej W. Rozycki" <macro@linux-mips.org>, John Crispin <john@phrozen.org>,
 Huacai Chen <chenhc@lemote.com>, Keguang Zhang <keguang.zhang@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXIgMDQsIDIwMjAgYXQgMDY6MjU6NDNBTSArMDUzMCwgYWZ6YWwgbW9oYW1tZWQg
d3JvdGU6Cj4gSGkgbWlwcyBtYWludGFpbmVycywKPiAKPiBpZiBva2F5IHcvIHRoaXMgY2hhbmdl
LCBwbGVhc2UgY29uc2lkZXIgdGFraW5nIGl0IHRocicgeW91ciB0cmVlLCBlbHNlIHBsZWFzZQo+
IGxldCBtZSBrbm93LgoKc29ycnkgdGhpcyBkb2Vzbid0IGV2ZW4gY29tcGlsZSBmb3IgdGhlIGZp
cnN0IHBsYXRmb3JtIEkndmUgdGVzdGVkOgoKSW4gZmlsZSBpbmNsdWRlZCBmcm9tIC9ob21lL3Ri
b2dlbmRvZXJmZXIvd2lwL2tvcmcvbGludXgvYXJjaC9taXBzL3NuaS9yZXNldC5jOjExOjA6Ci9o
b21lL3Rib2dlbmRvZXJmZXIvd2lwL2tvcmcvbGludXgvYXJjaC9taXBzL2luY2x1ZGUvYXNtL3Nu
aS5oOjI0Mjo4OiBlcnJvcjogdW5rbm93biB0eXBlIG5hbWUg4oCYaXJxcmV0dXJuX3TigJkKIGV4
dGVybiBpcnFyZXR1cm5fdCBzbmlfaXNhX2lycV9oYW5kbGVyKGludCBkdW1teSwgdm9pZCAqcCk7
CiAgICAgICAgfn5+fn5+fn5+fn4KClRob21hcy4KCi0tIApDcmFwIGNhbiB3b3JrLiBHaXZlbiBl
bm91Z2ggdGhydXN0IHBpZ3Mgd2lsbCBmbHksIGJ1dCBpdCdzIG5vdCBuZWNlc3NhcmlseSBhCmdv
b2QgaWRlYS4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBb
IFJGQzE5MjUsIDIuMyBdCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
