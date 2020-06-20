Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7EBF201EDF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 02:00:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ilgv84WezU9fJ1I51tHX5C8dQgGPZCavzXqii2Ux+3M=; b=Uv21APO4GgOazU
	wyqC2hXA/T+MsBjdPwT6irIxFbJuH1vqv02mEFLoCi3LXQDwqXv9clXINFjYKuNgI7f/uFu4+gsc7
	wnNKIH/YqGKRIa837VGIb07ZSGq2I0DLrNBpGOXMBpL4bGLEnrxCOU8Mx9S/mAuU0ol5fAfF459VQ
	2birkMR04lGYqup/v6fzNwJrro49gSRNKauKa8mmJRgsc+bAAs4fdTZbY/yIl1qLoR377348JwsFh
	Ua0+rwxO1VMaB4kVnrVJgVuuQY3FmiuwhJWeA+jd3M15Yq3wGd378mPUWPUtKjiUcDH1UAueFI6yI
	vLLGw2jv/e0hzMCAm8Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmQvs-0005i1-HA; Sat, 20 Jun 2020 00:00:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmQvk-0005hi-Ix
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jun 2020 00:00:21 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 17F93206D7;
 Sat, 20 Jun 2020 00:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592611220;
 bh=619+Wt+vDRk64Ku14T9Siv1alCzBunMBcYsA7lo5HXw=;
 h=In-Reply-To:References:Subject:From:To:Cc:Date:From;
 b=Fco8Iq1m3csA/NlUxjibipKJo/3I2id/mpiACADkRzt5vBSL9HsnYpJk/7/aqE5Q6
 /i4HgLF26WQn/5K0rPygvQ3JBAXT/MZFNL5z0YsA1c44BbAQo7B3P8Cx/RnGkyOB5i
 7IQEGOd6mjCIDlPWHE0UJ7eP2031Hv6NbUvDypIQ=
MIME-Version: 1.0
In-Reply-To: <20200610140858.207329-1-noltari@gmail.com>
References: <20200609113049.4035426-1-noltari@gmail.com>
 <20200610140858.207329-1-noltari@gmail.com>
Subject: Re: [PATCH v2 0/2] clk: bcm63xx-gate: add BCM6318 support
From: Stephen Boyd <sboyd@kernel.org>
To: noltari@gmail.com
Date: Fri, 19 Jun 2020 17:00:19 -0700
Message-ID: <159261121936.62212.219486512557338832@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_170020_644134_800BB6C3 
X-CRM114-Status: UNSURE (   7.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, f.fainelli@gmail.com, lkp@intel.com,
 mturquette@baylibre.com, f4bug@amsat.org, linux-kernel@vger.kernel.org,
 julia.lawall@lip6.fr, robh+dt@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, jonas.gorski@gmail.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiBBZGQgc3VwcG9ydCBmb3IgdGhlIGdhdGVkIGNsb2NrIGNvbnRyb2xsZXJzIGZvdW5kIG9uIHRo
ZSBCQ002MzE4Lgo+IAo+IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyAoMik6Cj4gICBkdC1iaW5k
aW5nczogY2xvY2s6IGJjbTYzeHg6IGFkZCA2MzE4IGdhdGVkIGNsb2NrIGJpbmRpbmdzCj4gICBj
bGs6IGJjbTYzeHgtZ2F0ZTogYWRkIEJDTTYzMTggc3VwcG9ydAo+IAo+ICAuLi4vYmluZGluZ3Mv
Y2xvY2svYnJjbSxiY202M3h4LWNsb2Nrcy50eHQgICAgfCAgMiArCj4gIGRyaXZlcnMvY2xrL2Jj
bS9jbGstYmNtNjN4eC1nYXRlLmMgICAgICAgICAgICB8IDQ0ICsrKysrKysrKysrKysrKysrKysK
PiAgMiBmaWxlcyBjaGFuZ2VkLCA0NiBpbnNlcnRpb25zKCspCj4gCgpTb3JyeSBwbGVhc2UgZG9u
J3Qgc2VuZCB0aGVzZSBpbiByZXBseSB0byB0aGUgb3JpZ2luYWwgcGF0Y2ggc2VyaWVzLiBJCmhh
dmUgYSBoYXJkIHRpbWUgZmluZGluZyBuZXcgcGF0Y2ggc2VyaWVzIGluIG15ICd0aHJlYWQgc3Vt
bWFyeScgdmlldy4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
