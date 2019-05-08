Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A46178A9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 13:46:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SitsXE7VUcq/Nn317iJez9z51DJ8e22BbUs1F1HjYNg=; b=lPyMhYd/BvvEh0
	fl4ptZLRABeJLB6bO6lVAGE9jJXbcGAr7H7wK4W0AiqOlNe8Yn/o1pxc4KNvjY97Cx0eQINgzJ2+e
	VKqqT7TcE8vzRk/swkW15c9qf64JqDDv2cjsPXRV2mFWtp2JwsdsXpKVLwuwVv5jRRjLusD9AUDfQ
	zIOEqIkZgZn6aVAkFXtinTAwpruu1ZcI8iC1CBs5OjnD7JiC6kW0I3QcsrA3RMAdWZ+Svb69WL6Ec
	6yN/1bKB/FuuzcGT3CjUwf8kag/p+lX2Kcdi1ShmDcWnzk+Z7WkEYhhVBW8Irh1EYhwFa0Mddtco+
	9o+XnVi5pchislUMkvMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOL1o-0005FS-Up; Wed, 08 May 2019 11:46:28 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOL0z-0004IS-IA
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 11:45:43 +0000
Received: by mail-wr1-x442.google.com with SMTP id d12so6319063wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 04:45:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=tlwX1TwlUBY6Z37kB2EJ5w9WiIHcYvXReYxAo3ZK/QU=;
 b=aLFaoXIJBRIIYYQi6a34dUkmQ3Qxn+QdslldTwFr/3TeRmdWtnkEXUKnt5cwI64iyS
 E3Z/VyxNSChE4jryrWHmG9WxOPHJyFgX8PCVGm9FkCw0FK/48uk+vFoodfeyXH6xh3dC
 ECnGN20wkM9Aw+TLnn07DGMMyPxOQ07qHmHHS741REuApklwsX5NSnVskZXnzaDWBajC
 yA2DQxXY3Fcn7VQXf3vYtY7BQDtZ+oH3JuF0tz9n3GThksESTNyRgsnqyWVcHm8/VeAf
 H4mEWWWZKDUkGf+FVTX5HnAI2ggA2oYgwa3+zT+xydKTnsftnA6Sc7gQDrtTuhxV/L+C
 YeDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=tlwX1TwlUBY6Z37kB2EJ5w9WiIHcYvXReYxAo3ZK/QU=;
 b=oR/V7hMPguDInYlOKC92zttsL8pR/LYH4JXO4eT/dYpXbl09CDU8Gy267SUO277TH6
 9bwoEl0TS/EVxv0VtPO5D4NejV/9tXvEqQRfe3oP7ndhV8p49Hp4e0Wnx0hwDzYkluOA
 h+n/KX0mbFD5gcjFX4mAqr4f76kFhmNwF9fiwaUIrJM8szoHSH5ylhylEeDO+Eeapc2I
 MNxreotAs4Gf2cN4VaVUCGfihpvE63GRIGzpNAYiJxxhPqzcBsSqUutJEMk9Zeje6Eqy
 aFEZXFtZIr2GgBiDYrXgbDV+NlX1ccQJPkudBiP1AmK56eX8y6Iv6RNhh7IScj+P1+9W
 UleA==
X-Gm-Message-State: APjAAAXVmeKNkjDLV0raQQuoXpvLOZMNPBckUnxPNdkbzjjWs43ceDka
 5wMg/0dBCpzXCRqLnKdWn49KSg==
X-Google-Smtp-Source: APXvYqykdlP88xzgMGKDUs4qkEmodZQT12LFcXefUZay/XBaDwzQZGh3E3/CFHN5zN+W7WJ3Pyni6A==
X-Received: by 2002:a5d:6249:: with SMTP id m9mr9799370wrv.255.1557315935670; 
 Wed, 08 May 2019 04:45:35 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id k67sm2055362wmb.34.2019.05.08.04.45.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 08 May 2019 04:45:35 -0700 (PDT)
Date: Wed, 8 May 2019 12:45:33 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH 6/7] iio: adc: sun4i-gpadc-iio: add support for H6
 thermal sensor
Message-ID: <20190508114533.GG31645@dell>
References: <20190503072813.2719-1-tiny.windzz@gmail.com>
 <20190503072813.2719-7-tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503072813.2719-7-tiny.windzz@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_044538_512449_B821B979 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 maxime.ripard@bootlin.com, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 jic23@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAwMyBNYXkgMjAxOSwgWWFuZ3RhbyBMaSB3cm90ZToKCj4gVGhpcyBwYXRjaCBhZGRz
IHN1cHBvcnQgZm9yIHRoZSBINiB0aHMgc2Vuc29yLgo+IAo+IFRPRE86IGNhbGlicmF0ZSB0aGVy
bWFsIHNlbnNvciBieSB1c2luZyBpbmZvcm1hdGlvbiBmcm9tIHNpZC4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBZYW5ndGFvIExpIDx0aW55LndpbmR6ekBnbWFpbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMv
aWlvL2FkYy9zdW40aS1ncGFkYy1paW8uYyB8IDY1ICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysKPiAgaW5jbHVkZS9saW51eC9tZmQvc3VuNGktZ3BhZGMuaCAgIHwgIDkgKysrKysKCkZv
ciBteSBvd24gcmVmZXJlbmNlOgogIEFja2VkLWZvci1NRkQtYnk6IExlZSBKb25lcyA8bGVlLmpv
bmVzQGxpbmFyby5vcmc+CgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNl
cyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3Ig
QVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
