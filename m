Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12191EFE34
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 14:17:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wGJYGl7AIUlRs4NnUfAe8uiMpb2d6cJVgaDSjJ7jSPM=; b=f2GoN9cZR6zWet
	seT1ihL8lglM3W6SNrBYQRhnl8147zFVdo7iPeuUvnTTA0CtXTBeh7KLmwi85BjkujwpcdZEB3J2K
	YZbSKrWzQmvJEak2ikcdcoZNoCJh9qwc8AHsq/+vCg1fK7sxgVKJU6S71p3HCkk0xg4Eqdlf4qKYb
	DnuzHVdHVcelz/o1uX+kVjmJA3WXDuST2uoONKUI5dNXaS/9zTju3PlX+W7Flm6dmD4G42zuP6K4n
	qstvTju5mS/68RAgW3Wvlq2yi7ubUb/DJKVOgFkJrPIflQ2wCtrtcVFH7v59N6a5TNzRfuO3jlQhI
	jviQbHaue5IAEIPbTvxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRyhd-00046V-Tw; Tue, 05 Nov 2019 13:16:57 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRyfr-0001j5-PY
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 13:15:10 +0000
Received: by mail-wm1-x342.google.com with SMTP id x4so9709398wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 05:15:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9aSxRdpuFtWHR4fiaYF0NucipXPgTqmHceHSDmByEc8=;
 b=WkHd/djk0ORgHMR2yAYNS+7CN1X0l1n8DgXtwwIvVzlhEHMkHD/NTxTZpWptYTlZoB
 RhCVfRsBADwmaNlswVb33scnynJbmb3xJwdaa2RmMSYOTJL/KvYY+fi6hEB+ZMpsriaJ
 fNircKP4McRAi3tzSUZPeKuw2GeN+pkjXNeR1+7THv8EFuyl5Fv4hvOoODBd36JgTVxl
 8F4f6KkDHX+4xxxWx/BPKC753KJbfk/ObcxfGrjTf4OeQx4yMkSFMeRTLxHjuTXbBrnF
 gG8RzslXj+BvVVPL0ERWMv9W8lszVwUwJ1GZW7zgiJdhRdF6XLw8RIGlkZnBUs2G4UFn
 KSBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9aSxRdpuFtWHR4fiaYF0NucipXPgTqmHceHSDmByEc8=;
 b=bnBeW17hw+rqhGnBroYwla3xFS/dYDWBdA4Oc5tSaTrUQrUaNv2NAXWj3IU+HaYYjY
 rKq6sMQG1ByXSPnU56oA/Om1zyBuvheJOj0/ZXLI5FVAMmNDMw926CRrQUv/5WmTNmFv
 DJ/lla3ez4pjxJwlqNVbesYojIi7ExDuFhELNasFeNWrNa1jk9Y1LPoX6dS6j0ybZksw
 Y2EIYaSjIYVjZfSvKDP2hz1kjjsq2W8bSpP00AOjFgdExSE3Vth54CzMNE9el4Y2fYgG
 zoVQMF1nZN8dj1eree/kM95MUuAJ+Q/fCJL/vlC7bkMyQEuPOtKkh4s0sAfCj4FAAyBW
 yupg==
X-Gm-Message-State: APjAAAUIcquLC2W4Q/D79M31gYpxFzBMwvXziuWgGme6jbWciVJJd7g9
 hUDqou9F+CRwxlkP46ffcrU=
X-Google-Smtp-Source: APXvYqw6UFPNrurMZG2uJGWFoKHNaQqgij6b0hb605Rot6sbahLBVS34Xu72r3LgwNTT0W2EYgOUNg==
X-Received: by 2002:a7b:c747:: with SMTP id w7mr4417876wmk.62.1572959706136;
 Tue, 05 Nov 2019 05:15:06 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id a6sm13549920wmj.1.2019.11.05.05.15.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 05:15:05 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?=27Uwe=20Kleine-K=C3=B6nig=27?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v3 7/7] [DO NOT MERGE] arm64: allwinner: h6: enable Beelink
 GS1 PWM
Date: Tue,  5 Nov 2019 14:14:56 +0100
Message-Id: <20191105131456.32400-8-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191105131456.32400-1-peron.clem@gmail.com>
References: <20191105131456.32400-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_051508_047473_5A30B00A 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pwm@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0t
CiBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtYmVlbGluay1nczEuZHRz
IHwgNCArKysrCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0cyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdzMS5kdHMK
aW5kZXggMWQwNWQ1NzAxNDJmLi4zOGFiYTdlNWJiZDkgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdzMS5kdHMKKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0cwpAQCAtMTMx
LDYgKzEzMSwxMCBAQAogCXZjYy1wZy1zdXBwbHkgPSA8JnJlZ19hbGRvMT47CiB9OwogCismcHdt
IHsKKwlzdGF0dXMgPSAib2theSI7Cit9OworCiAmcl9pMmMgewogCXN0YXR1cyA9ICJva2F5IjsK
IAotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
