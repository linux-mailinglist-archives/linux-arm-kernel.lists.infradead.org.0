Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2B51C6C14
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 10:43:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=stWhViKlVNeQGojLYMENQa/ybyj8a9i0o+pjgOxBT0A=; b=AEnVKs1Hx9Q/xJ7lc4tBo5t/s
	p/lwlyz2nCruEE3f/DFicRgIaTQbnNFNCkjQvME7Q0gH1aSq3OEN3hfsQeWXCLbweeABr7YEkeUW1
	RGGvYXZioioBOUKZrFnC9rAw5v6VRpxtIha7h69eFMYVhHw/5+Wp0RffBNAD5sRzzabOcco7nTyK1
	LbYZqIqqmNn8Sm2Or66Aw5pnvwGogtD0esAQJt7Kk77GeNGUDLvNYIA9LbV7zK2D1zTvedvl7PlMB
	8/SjUog9vl1PTsZHYWU/verZoC9I5oREVXB2EYLzmSXFIhr2oe3gYXkcz4HbUeM1hOnDW98fefbMs
	DxgVcBWbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWFeE-0004fh-Tm; Wed, 06 May 2020 08:43:22 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWFe5-0004eg-46
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 08:43:15 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id A378A75A4B1ED3E052B9;
 Wed,  6 May 2020 16:43:06 +0800 (CST)
Received: from [127.0.0.1] (10.166.213.7) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.487.0; Wed, 6 May 2020
 16:43:01 +0800
Subject: Re: [PATCH] ARM: OMAP2+: remove unneeded variable "errata" in
 configure_dma_errata()
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <20200506061900.19832-1-yanaijie@huawei.com>
 <20200506082941.GA1559@shell.armlinux.org.uk>
From: Jason Yan <yanaijie@huawei.com>
Message-ID: <c24dfb33-bbce-732e-c242-f4f4e6a1e04f@huawei.com>
Date: Wed, 6 May 2020 16:43:00 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200506082941.GA1559@shell.armlinux.org.uk>
X-Originating-IP: [10.166.213.7]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_014313_345632_E8419334 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: tony@atomide.com, peter.ujfalusi@ti.com, linux-omap@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgrU2iAyMDIwLzUvNiAxNjoyOSwgUnVzc2VsbCBLaW5nIC0gQVJNIExpbnV4IGFkbWluINC0tcA6
Cj4gT24gV2VkLCBNYXkgMDYsIDIwMjAgYXQgMDI6MTk6MDBQTSArMDgwMCwgSmFzb24gWWFuIHdy
b3RlOgo+PiBGaXggdGhlIGZvbGxvd2luZyBjb2NjaWNoZWNrIHdhcm5pbmc6Cj4+Cj4+IGFyY2gv
YXJtL21hY2gtb21hcDIvZG1hLmM6ODI6MTAtMTY6IFVubmVlZGVkIHZhcmlhYmxlOiAiZXJyYXRh
Ii4gUmV0dXJuCj4+ICIwIiBvbiBsaW5lIDE2MQo+IAo+IE5BSy4gIExvb2sgY2xvc2VyIGF0IHdo
YXQgdGhlIGNvZGUgaXMgZG9pbmcsIHRoYW5rcy4KPiAKPiBUaGlzIHdhcm5pbmcgaXMgYmFzaWNh
bGx5IGluY29ycmVjdC4KPiAKCk9LLCB0aGUgbWFjcm8gU0VUX0RNQV9FUlJBVEEgaXMgdXNpbmcg
dGhpcyB2YXJpYWJsZS4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
