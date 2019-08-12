Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC8089B1D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 12:15:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zkIIb6NGLQaiK3HeozN15MzsaahmPAj2wdVKxyj85PI=; b=QsO5vshTzFBv2y
	dKf623sTMUGBnWvjWiNZFXqg8gTnx2cG5gy1eogDIQQT1b9mIevr2qLv9GcHFLSmTH8tzbs02cfmy
	3EWCAZZL90Dzj9TjgfVOFtyncoDbUDlujLGNuW8m2lIpPjG0rPjqu3cV3LvaCPDymXzcGCeakWW5B
	RdG42yola5t5r+93wpJA9IGxmGYD2elGIp84kPhzeAUeiQ2+DXOf/nVKo/Qe4ooPVp0dhRUJXNC1V
	4YDH3OX6tyUXR2CnxtMvd5Syo3DzyhJj3zfPcwCPP+fzES8BqmohqU/q6eESo3rOHXcJSzHhYTqfV
	3cQWjLvbRyvTVdHvg9eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx7ML-0001eZ-BA; Mon, 12 Aug 2019 10:15:25 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx7M4-0001OQ-LI
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 10:15:09 +0000
Received: by mail-wr1-x442.google.com with SMTP id z1so104062597wru.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 03:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=MIUyKFqvrV6Iriy5J++Bt5lmEJciQ4Nm0oLpNRJua4s=;
 b=JR4azrcfAINC79q/jxAC5q7wpl2GKtG+oqSduyMfzGNi7MCwG1x0vzQwWE5XWnUsqn
 4rvq0ZyF2vO73A1od36hoy/HlgAwsQvByuaSCf7qgoFk0pOoRmactaeJq+N5rrNr4nL0
 sMHmT+JJqQs1y47xUz0okyakzzuIzsZIQGoTNgr4MGMcXjg3SNLTpn0uQpJpePxfemI4
 eB9TFJRJdK0BAqRd3cOv4t3yykDlaiC8dePribs8TWaAdBtswdtwqoRGP8NGraDpCip6
 8mqPQZISI27VYMKq3Sw4FiBoVw8kpXQ/RGpijePMRLwvuqDyia8ETir7eum49Jot7nAU
 gSnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=MIUyKFqvrV6Iriy5J++Bt5lmEJciQ4Nm0oLpNRJua4s=;
 b=pFBow1GSDbwL8Zes5oc0psx2K1/Q68i0wApOsuAAu3u1nCYJATFoyO8VfB7ZJsF2Qd
 7RlMvREzYetPsiNbiOUWDJczHc0KDeh270kOB5Mt2FtZoGhAFW2rOgoZpFERc9Gl95+O
 W8wtV6oOIn9H+e7S2Bpza4a+3qSEWh3ZRBWtLFDXs9+yihnPLku4KihBbVQrDUAs/bHR
 XXWGYoPoE3Mb6r/yzGqOV7n9G/uDAtllBAj7djhi+SPa6oKMo+O/s3m5lW2wI6mapT85
 bWJiZNqxAmopGKK6p5GVc+1X/yd5aT9JsSJhxDDlo61pSGWL5jv1uFogPZpk7DMqPOuC
 iurw==
X-Gm-Message-State: APjAAAW3sX/6nzAym3iPFjbs1tvLTieT+sxgtjemfcwR+Xu27aRg0KlJ
 hLBVaageGIEGftQj2bIoBVWiHg==
X-Google-Smtp-Source: APXvYqz48A5YFBe5piSydrG0TZ+rpOGZ4/18TlUR5pdHjlvP/9aDOmhZiCfxMVH17iE2WGkbx8bxMw==
X-Received: by 2002:adf:f042:: with SMTP id t2mr39835533wro.139.1565604906881; 
 Mon, 12 Aug 2019 03:15:06 -0700 (PDT)
Received: from dell ([2.27.35.255])
 by smtp.gmail.com with ESMTPSA id d17sm14629320wrm.52.2019.08.12.03.15.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 03:15:06 -0700 (PDT)
Date: Mon, 12 Aug 2019 11:15:04 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 3/3] dt-bindings: aspeed: Remove mention of deprecated
 compatibles
Message-ID: <20190812101504.GF26727@dell>
References: <20190724081313.12934-1-andrew@aj.id.au>
 <20190724081313.12934-4-andrew@aj.id.au>
 <CACRpkdZCJWeZO6CFvkq4uhnX+o_q_AfkDZ=a2kmUgbS3JtDqfA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdZCJWeZO6CFvkq4uhnX+o_q_AfkDZ=a2kmUgbS3JtDqfA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_031508_717031_91ABB9CF 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Andrew Jeffery <andrew@aj.id.au>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAwNSBBdWcgMjAxOSwgTGludXMgV2FsbGVpaiB3cm90ZToKCj4gT24gV2VkLCBKdWwg
MjQsIDIwMTkgYXQgMTA6MTMgQU0gQW5kcmV3IEplZmZlcnkgPGFuZHJld0Bhai5pZC5hdT4gd3Jv
dGU6Cj4gCj4gPiBHdWlkZSByZWFkZXJzIGF3YXkgZnJvbSB1c2luZyB0aGUgYXNwZWVkLGdbNDVd
LiogY29tcGF0aWJsZSBwYXR0ZXJucy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBBbmRyZXcgSmVm
ZmVyeSA8YW5kcmV3QGFqLmlkLmF1Pgo+IAo+IFBhdGNoIGFwcGxpZWQgdG8gdGhlIHBpbmN0cmwg
dHJlZS4KCldpdGggbXkgQWNrPwoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2Vy
dmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUg
Zm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
