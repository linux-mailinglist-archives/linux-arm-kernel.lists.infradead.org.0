Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8F51C2591
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 15:09:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U7RJfi+KysxhJ9VP7j4FeV/LSFAq51R06VqgMffPSlY=; b=WHuhB7NtKAyQuI
	bBxOlolCq3C38x337hDEHak3N5OPEj8WWngQGSNK3laJtDkBmnQnbjMx2IzhR36M+9hEvv52Vc72z
	XJRxeOQSx7+Kg3PWtWIZ3Y/gbZsJa3EPK0LcZKe1keI2A2n0QtMckc+on0C1HF6foPVzZloz2ZhP4
	P9SMRFAGhsjsR2+J5KpjlpE/1AECBgEwM7lpmR4rmqG0OGLCHM56KJNmFEl0SXvPR2UWUEfJ22T55
	SfUX7NKzGoDsW1Fb+gGS8ywn/vUCv5HiJVqLCiidF31jgs3u/BdifN57SGW0e+bJvMn52HDC2Ojf3
	e49D6VfP3UQh9qVZEwhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUrt7-0002g3-0i; Sat, 02 May 2020 13:09:01 +0000
Received: from mail.secom.com.pl ([213.216.87.26])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUrt0-0002fM-IG
 for linux-arm-kernel@lists.infradead.org; Sat, 02 May 2020 13:08:56 +0000
Received: from [192.168.1.110] (host-85.14.70.3.static.3s.pl [85.14.70.3])
 by mail.secom.com.pl; Sat, 02 May 2020 15:08:20 +0200
Subject: Re: [PATCH] dma: zynqmp_dma: Initialize descriptor list after freeing
 during reset
To: Vinod Koul <vkoul@kernel.org>
References: <20200428143225.3357-1-rafal.hibner@secom.com.pl>
 <20200502123242.GB1375924@vkoul-mobl>
From: =?UTF-8?Q?Rafa=c5=82_Hibner?= <rafal.hibner@secom.com.pl>
Message-ID: <1330934e-342e-1e16-6451-d8952463119c@secom.com.pl>
Date: Sat, 2 May 2020 15:00:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200502123242.GB1375924@vkoul-mobl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_060854_942065_D03F399F 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>,
 open list <linux-kernel@vger.kernel.org>,
 Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>,
 "open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 Harini Katakam <harini.katakam@xilinx.com>,
 Dan Williams <dan.j.williams@intel.com>,
 "moderated list:ARM/ZYNQ ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gVmlub2QsCgpPbiAwMi4wNS4yMDIwIDE0OjMyLCBWaW5vZCBLb3VsIHdyb3RlOgo+IFdv
dWxkIGl0IG5vdCBiZSBiZXR0ZXIgdG8gdXNlIGxpc3RfZGVsX2luaXQoKSB3aGVyZSB3ZSBkZWxl
dGUgaXQgcmF0aGVyCj4gdGhhbiBkbyB0aGUgaW5pdCBoZXJlPwo+CgpJdCBpcyBub3QgYSBwcm9i
bGVtIG9mIGxpc3QgZWxlbWVudCBpdHNlbGYgbm90IGJlaW5nIGluaXRpYWxpemVkLgpUaGUgcHJv
YmxlbSBpcyB0aGF0IGR1cmluZyBmYXVsdCBjb25kaXRpb25zICh6eW5xbXBfZG1hX3Jlc2V0KSBh
bGwKZWxlbWVudHMgYXJlIG1vdmVkIHRvIGZyZWUgbGlzdC4gTGlzdCBoZWFkIGhvd2V2ZXIgaXMg
bm90IHJlaW5pdGlhbGl6ZWQuCgpJbiBub3JtYWwgZmxvdyBlbGVtZW50cyBhcmUgcmVtb3ZlZCBi
eSBsaXN0X2RlbCBhbmQgcmVzdWJtaXR0ZWQgdG8KZnJlZSBsaXN0IHdpdGggenlucW1wX2RtYV9m
cmVlX2Rlc2NyaXB0b3IuCgpzdGF0aWMgdm9pZCB6eW5xbXBfZG1hX2NoYW5fZGVzY19jbGVhbnVw
KHN0cnVjdCB6eW5xbXBfZG1hX2NoYW4gKmNoYW4pCnsKwqDCoMKgIC4uLgrCoMKgwqAgbGlzdF9m
b3JfZWFjaF9lbnRyeV9zYWZlKGRlc2MsIG5leHQsICZjaGFuLT5kb25lX2xpc3QsIG5vZGUpIHsK
wqDCoMKgwqDCoMKgwqAgLi4uCsKgwqDCoMKgwqDCoMKgIGxpc3RfZGVsKCZkZXNjLT5ub2RlKTsK
wqDCoMKgwqDCoMKgwqAgLi4uCsKgwqDCoMKgwqDCoMKgIHp5bnFtcF9kbWFfZnJlZV9kZXNjcmlw
dG9yKGNoYW4sIGRlc2MpOwrCoMKgwqAgfQp9CgpUaGUgenlucW1wX2RtYV9mcmVlX2Rlc2NyaXB0
b3IgZG9lcyBub3QgZGVsZXRlIGVsZW1lbnRzIGZyb20gdGhlCmxpc3QgYnkgaXRzZWxmLgpJIGFt
IG5vdCBoZSBhdXRob3Igb2YgdGhpcyBkcml2ZXIgc28gSSBmaXhlZCBpdCBieQpkb2luZyBub24g
aW50cnVzaXZlIGNoYW5nZXMuCgpBbnl3YXlzLCBJIGRvIG5vdCBzZWUgaG93IHVzaW5nIGxpc3Rf
ZGVsX2luaXQgd291bGQgZml4IHRoZSBidWcuCgpSZWdhcmRzLCBSYWZhbAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
