Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2BAE121B98
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 22:14:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1cPEWL/fCihePFh0ykKaxqDkYKZHzEau1N/kVntEyO8=; b=l+14F1hVA3dGFP
	+VNpuEsN/DJWaqaXRjAgyz7Vi11WIJ2rNG6gHLVYiEUfDUFQail6jXyNcp8HziCMxpCUiwrLB2IGx
	ahdFl0g5Z/2Uv1F/Pzh2JOgsNNu3fRsNv4kgSbDi0FInXseaH2rWvjJ0rSFw8G/aEi77tjDNjVS11
	XgGQX3etHh5sk7aKHtmdaYYY5bbVhqmlVuLetHr+85WjdVbBho2JnTImYj4VMIB4h8sFtc2K8heo3
	MvHNPZLGqyW85BwpS/vLVniZL2dSNTfpJ8KQSHK56c0s5amzNDuabwofqTac4wrIoXkHxa8w7CDF5
	OADMR8amSrRMsfaF/Nug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igxhK-0006qW-5U; Mon, 16 Dec 2019 21:14:34 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igxhA-0006pd-Qr
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 21:14:26 +0000
Received: by mail-lj1-x244.google.com with SMTP id a13so8366159ljm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 13:14:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CVU2QVc8cullB3PW1a2bN+Nno6c4lqAlkAVvljHtjfU=;
 b=LPKOU/QMk5SxHjfr2dHQL6fMsZksjmG/nS+UQ8yyfcciov84en0pO+PczBe5HiSV2a
 pAx5IwlnuQ/uc2nYtfDWdhzvsmqli4YyekYR+EN2f9VPJYLCU/XeatX5RRTWShWDlOXY
 NsamuMfgn4sLGMeU4ct9v8UpzIbDBVFCEBBIa4+q5Gk0prJsBhMzutCAZEXMuT5BcbDY
 +nq+7KMHAcWH586E41ZY5IHJTmwaIJebOF4npfIejcvphkhMdW9p7QO5O+mtEzEg9T6G
 jhHE+jdPiofOecKrBVvctxWNT08r6qXqrPYMbvbpYt124CgYPtYKU7KvGqSQSPoV3StI
 1vCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CVU2QVc8cullB3PW1a2bN+Nno6c4lqAlkAVvljHtjfU=;
 b=HunluW4twGHOZLtLhmalpTByVKADjCXXpBV1tkkKX7iTZ5nH+4EqgeK7vCozlvv2mb
 yKgXv7DW+/spKmotuFteBflhE+ZvXYV7Mw1XNPdKFnu8mO2XSWa5Pz+oDWCLzXhDozsr
 mltPJY/9xC2BnEoiJh0/M3uCkbwPMzIvOS5ujTNWkt4TveV5oWFrBsfk1fwLTyF3GNKt
 hZxL9u6tiNuYE6nKEf24d9TK3e3lsLrdslDlqp5KRsEeGRS/arBiLIros7zGt24q+ICn
 Ky7pTr4QHFXk/p0q+N+9SdkbTwOUljlQiSS4J7TBbNgTuPm7+875Qztdxa/+u+cQ1uag
 n5DA==
X-Gm-Message-State: APjAAAWivBfA2Puk4JPTzJKWfBZRLdPERWcEc67Qezaxe9JfyB5jKoWC
 iU142SwGhP6CPHWgS/fuIHbbrsks1Uw4YX/hTXZW+g==
X-Google-Smtp-Source: APXvYqxq2pt3rp1m5FiZ9cPdnCmaTiiQGBTNnIVat0Mbyut/kVo8lxMGBBfseRhqdc4BP2977wafF8CCqTehXy5Gio0=
X-Received: by 2002:a2e:b4f6:: with SMTP id s22mr797657ljm.218.1576530862685; 
 Mon, 16 Dec 2019 13:14:22 -0800 (PST)
MIME-Version: 1.0
References: <20191210224857.28661-1-linus.walleij@linaro.org>
 <20191216175535.GA173588@gerhold.net>
In-Reply-To: <20191216175535.GA173588@gerhold.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 16 Dec 2019 22:14:10 +0100
Message-ID: <CACRpkdZ+u=S=8_oLEg4+gHkOR05QrhorABJfoQ_bQjaFLw_4Mw@mail.gmail.com>
Subject: Re: [PATCH v3] drm/mcde: Some fixes to handling video mode
To: Stephan Gerhold <stephan@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_131424_870364_56519AE6 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <sean@poorly.run>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephan,

I fixed up the patch according to your comments, this remains:

On Mon, Dec 16, 2019 at 6:55 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> In general I was wondering if we could benefit from using something like
> the regmap_update_bits() helper to avoid having to write this manually
> all the time. However, this does not have anything to do with this patch
> - just an idea that could be discussed separately.

Yeah I can take a stab at simply converting the whole thing to
regmap-mmio, I thinkt it'd be pretty quick and we can see how
it looks. Maybe easier to debug as well.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
