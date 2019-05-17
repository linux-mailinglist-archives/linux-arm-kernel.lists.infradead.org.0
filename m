Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E0A21DAE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 20:48:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GYACS21zDj279KPXQCrX+CLFVIBHTvwB3peHwydemtI=; b=NVKaYNn86Gm02W
	goF2x+t66S6a2X7AftJOL6lKMSvSalZ1Lt2KO92rXtxtXNwTTvZFeDugiZe9+u91Ee+3h3K68zMI6
	YBLrSKwvWBuM3a+tVcvyGo5qbg74HMcyNBNd3zmaQPrVxLcpB4havzzhZAarMqg7TZhw8QB3+L59r
	JKtH3fI5Pq/sBShnLaE0cRhlSErVa6lPOxHMZRA1l7U0LFz0KbfViZmnK2ZzCIa9DA6mKpg/P5DyN
	FZpED2WiYL/dgBuL/s25Ig64QLBOlC9ffruZRRyVXV5No+7jQ9wu+IYDZ8rmnXkQLekLk47p8rkF0
	hzB4NGYFWg3Himw1gXDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRhtf-0005qD-TA; Fri, 17 May 2019 18:47:59 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRhsu-0004x7-CY
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 18:47:14 +0000
Received: by mail-wr1-x444.google.com with SMTP id l2so8141414wrb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 11:47:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uWjp5N7/2gycMhkjj4F7Je3PI1NUTqU00O1ySy3vSNY=;
 b=ZZRwoRSb1PL/97jGRmzSD44FfFvnZd2iIqEeVhOF3VrLEp9vzAWHatj2PBKWjdz7r1
 yg52bRI0/h8oCYPFhaTaKKThP9PlSn9gRGQt2rUvGnvG9eLmfL73zySDWEsuKGAVa2nK
 9pkwIYCCYzqBP6tfJ9kbGX0jZep2rcV5YEVqufDdd2NbwkkhEW7b8XDabGkEyuaudPT3
 Bf6ynCNlrdw878zv8/FHYA9Mcbvq9E6roUjTWsYVlYLrbwFXXPuEFJYV8f+uG6Ljrlhf
 YYRGkUj5ohV2j0C1nSbkpjJke7iX6ZDj6uEO0eZZuyMu/SZEIGvjAfkl5WObHWgLGYCv
 LIzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uWjp5N7/2gycMhkjj4F7Je3PI1NUTqU00O1ySy3vSNY=;
 b=ii7STqCkmRneUqs2fP7Oh62nWgu7JcPMVBXw/KO7AY4wo/ZXisGQ7bViGj4P5dW9NI
 st7YAdenMFJajpul3yizJDLnzxhdm0XGCWxuSa+L3BbgZnMt91xiXbTtRkfVFhiotYb+
 RhkI0nG1m7tyqTSfBTpGJah3sCFZT2B7or14i9E0GPkxTuIO/PoriWF+mHoU3Y4MiDjD
 6nU+678M6NRoPFV4cNr/EIIQ7kKfVm+7Hd9IEQ1vaLcDIMgMJY69t24bYzR2bbcTy2xF
 xvoxUtFb92RwwIxM60u+Dm3Aw9QeITgSOJtE+wslzsCuJRjgM+aW7Nxe3TqlpWeLbjgT
 +VYQ==
X-Gm-Message-State: APjAAAVpwJwdffG6Ao6UgY3oQzdu2ipFWttwVfjRQF2uF9N2VU0VWhvY
 9327iJS4A4s5ENgBZhWuuRpCA0uFVgVpMA==
X-Google-Smtp-Source: APXvYqwBJ1PZ+mVOlD7wgBOxP5lzlCYxaqUa2bsvWXXFw9/yU+63xVcCkN1xYNthpr6aPrD+TDolfg==
X-Received: by 2002:adf:de82:: with SMTP id w2mr24718302wrl.53.1558118830993; 
 Fri, 17 May 2019 11:47:10 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id v20sm5801112wmj.10.2019.05.17.11.47.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 11:47:10 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Will Deacon <will.deacon@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Steven Price <steven.price@arm.com>
Subject: [PATCH v5 4/6] dt-bindings: gpu: mali-midgard: Add H6 mali gpu
 compatible
Date: Fri, 17 May 2019 20:46:57 +0200
Message-Id: <20190517184659.18828-5-peron.clem@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190517184659.18828-1-peron.clem@gmail.com>
References: <20190517184659.18828-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_114712_630677_16AC4397 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBhZGQgdGhlIEg2IG1hbGkgY29tcGF0aWJsZSBpbiB0aGUgZHQtYmluZGluZ3MgdG8gbGF0
ZXIgc3VwcG9ydApzcGVjaWZpYyBpbXBsZW1lbnRhdGlvbi4KClNpZ25lZC1vZmYtYnk6IENsw6lt
ZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+ClJldmlld2VkLWJ5OiBSb2IgSGVycmlu
ZyA8cm9iaEBrZXJuZWwub3JnPgotLS0KIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwdS9hcm0s
bWFsaS1taWRnYXJkLnR4dCAgICAgICAgIHwgOSArKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA4
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvZ3B1L2FybSxtYWxpLW1pZGdhcmQudHh0IGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwdS9hcm0sbWFsaS1taWRnYXJkLnR4dAppbmRleCAy
ZThiYmNlMzU2OTUuLjRiZjE3ZTFjZjU1NSAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2dwdS9hcm0sbWFsaS1taWRnYXJkLnR4dAorKysgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZ3B1L2FybSxtYWxpLW1pZGdhcmQudHh0CkBAIC0xNSw2
ICsxNSw3IEBAIFJlcXVpcmVkIHByb3BlcnRpZXM6CiAgICAgKyAiYXJtLG1hbGktdDg2MCIKICAg
ICArICJhcm0sbWFsaS10ODgwIgogICAqIHdoaWNoIG11c3QgYmUgcHJlY2VkZWQgYnkgb25lIG9m
IHRoZSBmb2xsb3dpbmcgdmVuZG9yIHNwZWNpZmljczoKKyAgICArICJhbGx3aW5uZXIsc3VuNTBp
LWg2LW1hbGkiCiAgICAgKyAiYW1sb2dpYyxtZXNvbi1neG0tbWFsaSIKICAgICArICJyb2NrY2hp
cCxyazMyODgtbWFsaSIKICAgICArICJyb2NrY2hpcCxyazMzOTktbWFsaSIKQEAgLTQ5LDkgKzUw
LDE1IEBAIFZlbmRvci1zcGVjaWZpYyBiaW5kaW5ncwogLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
CiAKIFRoZSBNYWxpIEdQVSBpcyBpbnRlZ3JhdGVkIHZlcnkgZGlmZmVyZW50bHkgZnJvbSBvbmUg
U29DIHRvCi1hbm90aGVyLiBJbiBvcmRlciB0byBhY2NvbW9kYXRlIHRob3NlIGRpZmZlcmVuY2Vz
LCB5b3UgaGF2ZSB0aGUgb3B0aW9uCithbm90aGVyLiBJbiBvcmRlciB0byBhY2NvbW1vZGF0ZSB0
aG9zZSBkaWZmZXJlbmNlcywgeW91IGhhdmUgdGhlIG9wdGlvbgogdG8gc3BlY2lmeSBvbmUgbW9y
ZSB2ZW5kb3Itc3BlY2lmaWMgY29tcGF0aWJsZSwgYW1vbmc6CiAKKy0gImFsbHdpbm5lcixzdW41
MGktaDYtbWFsaSIKKyAgUmVxdWlyZWQgcHJvcGVydGllczoKKyAgLSBjbG9ja3MgOiBwaGFuZGxl
cyB0byBjb3JlIGFuZCBidXMgY2xvY2tzCisgIC0gY2xvY2stbmFtZXMgOiBtdXN0IGNvbnRhaW4g
ImNvcmUiIGFuZCAiYnVzIgorICAtIHJlc2V0czogcGhhbmRsZSB0byBHUFUgcmVzZXQgbGluZQor
CiAtICJhbWxvZ2ljLG1lc29uLWd4bS1tYWxpIgogICBSZXF1aXJlZCBwcm9wZXJ0aWVzOgogICAt
IHJlc2V0cyA6IFNob3VsZCBjb250YWluIHBoYW5kbGVzIG9mIDoKLS0gCjIuMTcuMQoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
