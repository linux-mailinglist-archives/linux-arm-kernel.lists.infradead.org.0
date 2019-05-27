Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B27D2BB25
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 22:11:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2UIVy3KONoRPaQF7lU8v8rQ93MJGSahu+3G5UQELau8=; b=W275flCB9GUP0A
	TvvYSe91phWoAn6EmR3M7PCkAhmKX1SSxlKmwxsJD3HU58bbdSS10TwZT8klkOC3TtpgctVLYFiEM
	oNhtXZblJ8ANBhrGBhIhP6yFdv2BiBuqaTt18yL20oANfaVvWlVCszSvCw1MJ40iSfjyc13sYz1Q5
	dC95xHjH6lsqCjOA/6FjMRTIhliIz4a7VB0k0otyu7rfUUjQJ+eY7+0hg3UdIgBLqLnb/hqLphICo
	/pmiHfRo5K7Njy8Xa/GRH51YyUcMgpjDHHX0SsGyeeuXq14TA7bwc//2so8zYGCtaijw4roxp3WCj
	TzMCvGInRerpwAHGiZww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVLy8-0004Nh-UG; Mon, 27 May 2019 20:11:40 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVLwt-0002ub-Br
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 20:10:25 +0000
Received: by mail-wr1-x442.google.com with SMTP id l17so9471027wrm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 13:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mz71BHS9e6D0Hy+3p0/CgKuWt1VgJzq7zAM5T7mHY2o=;
 b=M6NSmREERHUhm81Eo7IuTxUpuFP+O2QKTs1rHcMBsH+vW/UC9wceluBnsJrjaPOY5h
 MNA6H8BtJHteTlZLpN/sy+oSx9ap1bEV2+F0GDTrPV3fWYabAAwLYtlwnKnRo5PXQcfa
 51O8A/J7YbRZO9sFbqfVf/aLJy5ATWHkbwL7Upj3u450/xMT8SUKVHTj3gOqVKNScrzS
 qaQ4CL2or5UnftkiEbZme3wLRF1+WjEU9V7SbaGVokDpT1KlzJ4CBVSPanilaF4LV3Mp
 yulGDKjxL/2EvbKQcuKqYIwg4o4qgUU0GEhF9lIIA9XX7fYxEqGHgqUE+NkNpLqcUKIZ
 cbTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mz71BHS9e6D0Hy+3p0/CgKuWt1VgJzq7zAM5T7mHY2o=;
 b=dPIXtZwNZ1iLrWSl+52UMjtNNVwVo9/8+FXhHh0arnVxitVCW8/TjBS5hP0g2qhSKz
 u5uBtBMpL785pKt3LL4yU7djF1DnrLFmksZ6qZUXj7QwtYJEmceXHE/015qVJ8pcpARm
 OsMGq3lNsqBR6edFaRTRgwbkjBLldwMo1uBz1JWbj6nPnZwBLmuS8D3+50kUAdzEtHQG
 QRlF1+fEidpyJdaF+qUGpcHmmt5I71/0/CncV3fgOotXvRW0PwfKmQLnEfQIoqbMri/q
 g/sEWgBxz0A/Q9nI6SmPftqMZ7/XconYB8d+kj9wEUFxllBaU1BeRk209wsRG9XV3e5G
 wRhg==
X-Gm-Message-State: APjAAAVEHX+Rt/cxcB3ALxKXdeZVof5QtaLmuoglcsDSGCyopuy0delA
 sy9CxDVvEBEgVCyBLcbcUhOaDShMyDN3LQ==
X-Google-Smtp-Source: APXvYqwreWc3qdqZlEF37v9TKTLjOM/6tvYOmcXgC1h341LClrB3k+x5Mddc07/qjcrkAIgEu5+tvg==
X-Received: by 2002:a5d:484f:: with SMTP id n15mr58006682wrs.314.1558987821585; 
 Mon, 27 May 2019 13:10:21 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id s127sm308523wmf.48.2019.05.27.13.10.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 13:10:20 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v4 7/7] arm64: defconfig: Enable Sun4i SPDIF module
Date: Mon, 27 May 2019 22:06:27 +0200
Message-Id: <20190527200627.8635-8-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190527200627.8635-1-peron.clem@gmail.com>
References: <20190527200627.8635-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_131023_732000_CA884BD0 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2lubmVyIEE2NCBhbmQgSDYgdXNlIHRoZSBTdW40aSBTUERJRiBkcml2ZXIuCgpFbmFibGUg
dGhpcyB0byBhbGxvdyBhIHByb3BlciBzdXBwb3J0LgoKU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQg
UMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBhcmNoL2FybTY0L2NvbmZpZ3MvZGVm
Y29uZmlnIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQg
YS9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnIGIvYXJjaC9hcm02NC9jb25maWdzL2RlZmNv
bmZpZwppbmRleCBiNTM1ZjBmNDEyY2MuLmRlNWI2NWQ0NTMxMSAxMDA2NDQKLS0tIGEvYXJjaC9h
cm02NC9jb25maWdzL2RlZmNvbmZpZworKysgYi9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmln
CkBAIC01MjYsNiArNTI2LDcgQEAgQ09ORklHX1NORF9TT0NfUk9DS0NISVBfUlQ1NjQ1PW0KIENP
TkZJR19TTkRfU09DX1JLMzM5OV9HUlVfU09VTkQ9bQogQ09ORklHX1NORF9TT0NfU0FNU1VORz15
CiBDT05GSUdfU05EX1NPQ19SQ0FSPW0KK0NPTkZJR19TTkRfU1VONElfU1BESUY9bQogQ09ORklH
X1NORF9TT0NfQUs0NjEzPW0KIENPTkZJR19TTkRfU09DX0VTNzEzND1tCiBDT05GSUdfU05EX1NP
Q19FUzcyNDE9bQotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
