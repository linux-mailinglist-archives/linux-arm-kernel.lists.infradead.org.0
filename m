Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 212B778835
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 11:20:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zg9nFqRsNVsDdSM1EC9pnSvrOg+cU2Fo9eWUcig89B8=; b=ujIY1mkKGiIrJZ
	57luSzNh7YobzB18GygGLOOG8b6LjKCtUFr6fLERdP2lP4Rwo3JqvkkE/b6Hq/bvefRya4K8BYJKX
	U9h3Md4FMdp+C8aaXYViTonVPvokyzDrF7YagLVyGjB0TyyW7aFdOoB0Xztct4cvLo3QW1+/S6Ggm
	/vYIjiU12hpalSL9seuk1+IR0qiqWuTKaENRVm1hDHF6hxHQ/dUs6QIrTCGfAYnusN5Hcj8u0TDSi
	gtJEw4Q389KN6NkP4vHg5niHAh+KI2RmLX2+CKZaMoh3HVHX2dd01GXnacHcsERCFAnLYfbxmlU3K
	Xu2/OzqnKpxH/JUTbQMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs1pX-0002pq-2I; Mon, 29 Jul 2019 09:20:31 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs1pJ-0002nl-3a
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 09:20:18 +0000
Received: by mail-pl1-x641.google.com with SMTP id a93so27222796pla.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 02:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3alocEzQkvOwDh436VckIPvqKCkr1/ONfYhyc3HCC6U=;
 b=lP5GqG55Dyw5q7dJRePrFeD4Vo+xWMP9VbWvK9qbiZWztz9sX0u3JEEg9bwi3Qelv/
 K4Bbd4gXh8SI2XTM6SudJHqwrUpriyQVaKkV7Q3w2QBfJs8/ksKNgnNvs8Kq17eqjGwO
 IZkacmtTUtHNlN+nSxwxrtuInYWAaQidOdLLAxd0ULiL+dCihfleLcIWD8iL4SXRSWme
 +Z5O2ciwWgeBg1W61hhEY6T5YtIPR7YzHvKtiZ0AipJOglTfkqdaipfmVVjMudZz4i2O
 6O3PlX4Te4WeGuVUDovJAGSfp0T/xmiChZDDLIjKbsExzEe656X+11lNfimOHjyxlKgy
 eW/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3alocEzQkvOwDh436VckIPvqKCkr1/ONfYhyc3HCC6U=;
 b=WoSnoG4k2KCQ+JRSpHRjt5mvMbasyw38EicMFjVJk+l9qW/VP2rIxhZIh3oKpvkxzn
 ssYGOSpMGqvGxVowm6jM3wCuJO80Av4tB3ZFh6PlWrihZ5ChOup+9qsM4YgLQQc82XAx
 SeCcKZrJ3bk65tNQ7alrmyWvjx+awwdG8pFcntvag5i7eBCec+NWX38m4SKyBiuDbpIe
 9bTSrUUKsAKCXoZht+SYcTDCXGTzVBbXbHtMeCnlXBaMJDnCQw+rtwNU7WyGrJdru3FD
 myHNMAAq8fhtsHi1aV00SAcbKaLNtX4zpUi5oMBUquxjCOeueT8BMJ6UHke9hWjDjQrx
 Z8qg==
X-Gm-Message-State: APjAAAUydklGYVyHbuwHu61ELXCWhVQNkXUHTUSx9rPqI8r1idsIOXZ7
 HS8VOw4/BsWUgHLFopg0o6mk/w==
X-Google-Smtp-Source: APXvYqzKLa/htnlBgwYP5UIMstM9Hmp8PWyPwF3BGDnYJXIAoSflXEa4GnCszC/9bxndDaHastGyKw==
X-Received: by 2002:a17:902:3103:: with SMTP id
 w3mr111071711plb.84.1564392016316; 
 Mon, 29 Jul 2019 02:20:16 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id m4sm73215197pgs.71.2019.07.29.02.20.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Jul 2019 02:20:15 -0700 (PDT)
Date: Mon, 29 Jul 2019 14:50:13 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Roger Lu <roger.lu@mediatek.com>
Subject: Re: [PATCH 6/8] PM / OPP: Support adjusting OPP voltages at runtime
Message-ID: <20190729092013.5sz2mdqicrit5nta@vireshk-i7>
References: <1557997725-12178-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <1557997725-12178-7-git-send-email-andrew-sh.cheng@mediatek.com>
 <20190520044704.unftq6q5vy73z5bo@vireshk-i7>
 <1564371555.18434.11.camel@mtksdaap41>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564371555.18434.11.camel@mtksdaap41>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_022017_155395_A0762295 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 Andrew-sh Cheng =?utf-8?B?KOmEreW8j+WLsyk=?=
 <andrew-sh.cheng@mediatek.com>, srv_heupstream <srv_heupstream@mediatek.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Stephen Boyd <sboyd@codeaurora.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, yt.lee@mediatek.com,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Fan Chen =?utf-8?B?KOmZs+WHoSk=?= <fan.chen@mediatek.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29-07-19, 11:39, Roger Lu wrote:
> Dear Stephen Boyd,
> 
> This patch is derived from [1]. Please kindly shares the suggestion to
> us. Thanks very much.
> 
> [1]: https://lore.kernel.org/patchwork/patch/599279/
> 
> Dear Viresh,
> 
> I followed _opp_set_availability() coding style to refine
> dev_pm_opp_adjust_voltage() from this patch. Is this refinement suitable
> for OPP core? Thanks a lot.

Looks okay from a quick look.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
