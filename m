Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9DB37F5AF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 13:03:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ove31wcU872wKIKP227IP8OH5lpA1Vr2NqrQ/lY78sk=; b=CrVVCUqEvqMfWN
	stbTYjcS8dPf467hBMtuXSedxdltDKOjUitC2oWCAU25A/QONUsHhm9Dh8inCo939j2VYZLSGBXCF
	MJXGrIhZsGzZBlBubylo+MTyJcl37kLo5sLdRxBZHCuOtWS+Nr2zJyRCY61IDMCNISW1k2DYmJL9x
	D49eGU2bBOV/Izy0KzPw+kHQRS5xFYPL9TaN57KwKOJqaYOvWSsbhjp8yKtS3FFe+Uq72SwvaCwwI
	qt3yKvzS8A6M/MmxH4/w+DPErE1RbbeVqF0bZOco1ga2z4R+/Yxuw8pTnMJxgxvDJ64Us7FVzkj2m
	N3DDaCQqfecWfx0U5y4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htVLC-0005k9-UN; Fri, 02 Aug 2019 11:03:18 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htVL6-0005jk-Ab
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 11:03:13 +0000
Received: by mail-lj1-x244.google.com with SMTP id d24so72415839ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 02 Aug 2019 04:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=HL5ANZc7OmpdOHZ2ionlww4aSxrQXJYtiezr9bkrTNM=;
 b=UWyYMwM6+6cdywPrYnOa4onNfoqc3kPU6dOJncvLK+hh3FuKjPGAoJLstXqe5LzSJK
 Opz0J1kGQsQFI0tleEdxhxiDeaQwXxejbiY3WIORSdzjX33te82D6yBYoFxQ0WTmWnde
 5ZvWrsvaMo0svhBwb+1LojGe+1iVDsRVsD9AuA7E+AR73NzRh6l+e5kSdwTlYj6AmODf
 LXzVBOFLH7Nksij+P0GBxuM87d6OrE6M6lRpAhpGOR9jbQMrm2BpavcwtjTbzLyO6nQC
 pb4YuUet/oEg5JbebXQ7XieDP05fgXRYXHjyyCvH5+e/mBcEPAAnuJnBEUxmRsumCbK3
 C/ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=HL5ANZc7OmpdOHZ2ionlww4aSxrQXJYtiezr9bkrTNM=;
 b=OYtLarZMM/ZEC1lMtv8zrE079RcvrN6OTL08mi+9+G4C3wtvdyhLsUbv2bwGbG5hRU
 wHLB5QwdbNJt+UL+/nV0uHF+rQrXr0LVh4NzQSNnlvPETCR2LmQty9ApnveHhH1LVi3g
 ZT+XkgIJoylkOS4U4M/+q4VZahmAu2Y+NPyux2MudPOqBR4BnmXr3IJa/t4MR81N/9dG
 cQxkapNcjanBVkmVH28DsIjI68UrTkvfrEbhh8KCO5zrhNO8hlIRepHat3izMyJVsiSO
 w56FAaQNo+dFm3akLqdS0xNtaIjRQc4UbR5Pzyw3vHXAdh6TZndPUmDXH1HvRDjPg1Cy
 uccQ==
X-Gm-Message-State: APjAAAVwKfSUAVslZeQfwXia2BaQ4XDtf8nBeqKVZt40AHwbmEeNyRqE
 5asoAencSEsXFhbkFs/PGbvFE471nEvsbt9+U0A=
X-Google-Smtp-Source: APXvYqx5oq7vowqqKfwUYf1UttJH3upuyx969PtPyuX0ERX2LffNrQWKhyKNYV1lXA+tl4HP/Csy3WbhjxRbgRDo4oM=
X-Received: by 2002:a2e:a311:: with SMTP id l17mr7778322lje.214.1564743790013; 
 Fri, 02 Aug 2019 04:03:10 -0700 (PDT)
MIME-Version: 1.0
References: <e5484fa33bffec220fd0590b502a962da17c9c72.1564743270.git.agx@sigxcpu.org>
In-Reply-To: <e5484fa33bffec220fd0590b502a962da17c9c72.1564743270.git.agx@sigxcpu.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 2 Aug 2019 08:03:22 -0300
Message-ID: <CAOMZO5BipmSPR1jz3ov8ESSJPsHMViMw42di-WKOdqhyONLK6Q@mail.gmail.com>
Subject: Re: [PATCH] drm/imx: Drop unused imx-ipuv3-crtc.o build
To: =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_040312_369860_605E69A7 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 NXP Linux Team <linux-imx@nxp.com>, Daniel Vetter <daniel@ffwll.ch>,
 Shawn Guo <shawnguo@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR3VpZG8sCgpHb29kIGNhdGNoIQoKT24gRnJpLCBBdWcgMiwgMjAxOSBhdCA3OjU1IEFNIEd1
aWRvIEfDvG50aGVyIDxhZ3hAc2lneGNwdS5vcmc+IHdyb3RlOgo+Cj4gU2luY2UKPgo+IGNvbW1p
dCAzZDFkZjk2YWQ0NjggKCJkcm0vaW14OiBtZXJnZSBpbXgtZHJtLWNvcmUgYW5kIGlwdXYzLWNy
dGMgaW4gb25lIG1vZHVsZSIpCj4KPiBpbXgtaXB1djMtY3J0Yy5vIGlzIGJ1aWx0IHZpYSBpbXhk
cm0tb2Jqcy4gU28gdGhlcmUncyBubyBuZWVkIHRvIGtlZXAgYW4KCkFjdHVhbGx5LCBpdCBpcyBp
cHV2My1jcnRjLm8gdGhhdCBpcyBidWlsdCB2aWEgaW14ZHJtLW9ianMsIG5vdAppbXgtaXB1djMt
Y3J0Yy5vLgoKQXBhcnQgZnJvbSB0aGF0OgoKUmV2aWV3ZWQtYnk6IEZhYmlvIEVzdGV2YW0gPGZl
c3RldmFtQGdtYWlsLmNvbT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
