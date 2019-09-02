Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C314A5773
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 15:12:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9XZabRs9ImP0u0EJLSUXIhMP2yUckNk8Kz55q6s40aY=; b=ooEX/Ts3kBThcH
	oK9NEgK5rzqKKOZyL7ZdQGjuhMk/avj+Nv6IAf85XWJbcWwyX0BAmRt7sS7sDHBRbXCTbQZc9lmCl
	gWF98RbpPBHtSYEQxOOMdWtUbZ0q1CBd9ddxd3202yP/RtXnHuiOw9n7c9WpNazFldZvWMIaNhgUn
	BecBxx7TVMeqpMKje9jyKNfccB1/2Xni04ToPIXw6q28PjBQWa2xDhOMXq7t0MRFR5IIC/a2TXSq6
	sxnHyffhL7O/AqCBYSXyzXpLO/xx86kvRNqCfC/azV70V4W/Zxf4RZ5ekGZfXpNqbCi4ep2WCJW+e
	nT1aKcBXXClFC2X7fddg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4m8C-0000GN-Vp; Mon, 02 Sep 2019 13:12:29 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4m82-0000G2-9h
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 13:12:19 +0000
Received: by mail-qt1-x844.google.com with SMTP id o12so3966874qtf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 06:12:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=vng3Tg83WDYX4tcTvi7PVwbn8OfQHJcD8QCDyHXste4=;
 b=pw/W4F21dGSGUnOjLaMhDyZYrWqn+Ze1RTdbO/hIp7xP1cpGHcP8daJSpqDrDrH9RN
 SMFMWetzv2NFdqWzY8A+TF8foI0cBGcBGCtvlLVij9Hcxw4DACjR5NCE++XzVbsz2HCN
 1MALTl+SnxeXTszcU0cJ8vkn58znXowRxT2tIPAjKo/HVOTIh2LtaI5fHyLjmR5zdljM
 qEShCMn3LO1eCQVnX9/uKIM2Xwiv/jSRXZaxCmOVNrnytmqba9hqGKEKW8TJdwY9VAT3
 Q6XZVZLLdSqvrWJau2cQZs5HBhYb7AgppVPwbeQWSGCs6JyIFftOyBoc3PFEH31kg5dG
 mJ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=vng3Tg83WDYX4tcTvi7PVwbn8OfQHJcD8QCDyHXste4=;
 b=icj9AYkvKRvVYfN+K+ko45nG9hH/yRBB9dd2g1SecPyKvWpEszIDvoSwso3FDez2Zt
 ykjVWR4PZtn+tmj4l1A9g+ubL+KakRk15tUxmYd5zajcrfnrCX1J3RU8R7/3kcidyvRK
 LfUVLVMT4IOzw+51jAeC3rFvwjkTHampSEOHSFhYyOoY797cXYE6iHSX6EYQSyuD2Waz
 GODhy2NgnMx1n8PtoQWJN9E9m0Lo+LUJi0iThXedUO/bDm79JF111ps+cMGsx5natp4Q
 ve0HUM+X8NLO3s0NyCwiQInjsF9daGL1c40b1AAvdnj/pyH0nRuVsAI/ycSeyCBVjcYR
 d8kg==
X-Gm-Message-State: APjAAAWy6/PeG7qQbPom9HWrdl2vn0dtYqdmQelQuFxzDMShE1HS9mcb
 X3EPzi1W5j4zwI4oMdBJAOJauO7HCC24xqhEH+ESHQ==
X-Google-Smtp-Source: APXvYqxNhdLCivs8eaOs0QrrWUNeEKFbFZne9cWsy6FgQcZ0/Edh/ZIQ1hY9usGlSSLN6c81KQJBgSpCd7KB28Vx1L0=
X-Received: by 2002:ac8:2e94:: with SMTP id h20mr2499804qta.234.1567429937121; 
 Mon, 02 Sep 2019 06:12:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190823071428.6155-1-linus.walleij@linaro.org>
In-Reply-To: <20190823071428.6155-1-linus.walleij@linaro.org>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Mon, 2 Sep 2019 15:12:06 +0200
Message-ID: <CA+M3ks7TbSmr4LQkEbOD0WnzO2aSg-8cyg5UAfo5YdfOBMwFfg@mail.gmail.com>
Subject: Re: [PATCH] drm/sti: Include the right header
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_061218_336172_E418A969 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Vincent Abriou <vincent.abriou@st.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>, Sean Paul <sean@poorly.run>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgdmVuLiAyMyBhb8O7dCAyMDE5IMOgIDA5OjE0LCBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxs
ZWlqQGxpbmFyby5vcmc+IGEgw6ljcml0IDoKPgo+IFRoZSBzdGlfaGRtaS5jIGZpbGUgaW5jbHVk
ZSA8bGludXgvb2ZfZ3Bpby5oPiBkZXNwaXRlIG5vdCBldmVuCj4gdXNpbmcgYW55IEdQSU9zLgo+
Cj4gV2hhdCBpdCBkb2VzIHVzZSBpcyBkZXZtX2lvcmVtYXBfbm9jYWNoZSgpIHdoaWNoIGNvbWVz
IGZyb20KPiA8bGludXgvaW8uaD4gaW1wbGljaXRseSBieSBpbmNsdWRpbmcgdGhhdCBoZWFkZXIu
Cj4KPiBGaXggdGhpcyB1cCBieSBpbmNsdWRpbmcgdGhlIHJpZ2h0IGhlYWRlciBpbnN0ZWFkLgoK
QXBwbGllZCBvbiBkcm0tbWlzYy1uZXh0LApUaGFua3MKCkJlbmphbWluCgo+Cj4gQ2M6IEJlbmph
bWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBsaW5hcm8ub3JnPgo+IENjOiBWaW5jZW50
IEFicmlvdSA8dmluY2VudC5hYnJpb3VAc3QuY29tPgo+IFNpZ25lZC1vZmYtYnk6IExpbnVzIFdh
bGxlaWogPGxpbnVzLndhbGxlaWpAbGluYXJvLm9yZz4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJt
L3N0aS9zdGlfaGRtaS5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc3RpL3N0aV9o
ZG1pLmMgYi9kcml2ZXJzL2dwdS9kcm0vc3RpL3N0aV9oZG1pLmMKPiBpbmRleCBmMDNkNjE3ZWRj
NGMuLjRmMWFhZjIyMmNiMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vc3RpL3N0aV9o
ZG1pLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc3RpL3N0aV9oZG1pLmMKPiBAQCAtOSw3ICs5
LDcgQEAKPiAgI2luY2x1ZGUgPGxpbnV4L2RlYnVnZnMuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2hk
bWkuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgo+IC0jaW5jbHVkZSA8bGludXgvb2Zf
Z3Bpby5oPgo+ICsjaW5jbHVkZSA8bGludXgvaW8uaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3BsYXRm
b3JtX2RldmljZS5oPgo+ICAjaW5jbHVkZSA8bGludXgvcmVzZXQuaD4KPgo+IC0tCj4gMi4yMS4w
Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
