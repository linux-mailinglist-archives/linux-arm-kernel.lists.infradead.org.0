Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0805CE8BA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 18:10:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yaZBj53YF6RZjhVyHhOojNctkMevhvwvyNKo9WBK7+s=; b=DIOyvdRxtctFOq
	rbsztiyWuC78S8NDF/UnHAKK0xBnZzTIq3skgGKKqwjolvE0hKdN8HritlErZrpBT44gPdlxxCFyW
	GOScfnzMrynkpG/TgwgWu40BDKpUfFPwN16+eqo+I0Lc01yHJstFgXJqSW8Gv4WTCtmKUHpHAMz19
	R4dfiIYCB/L7Pu+5sBk+BY2v0y4lvMRuydwW0U1qkBtn9va42GYnbXUVuiunTiCtlYHxjFRPcGQLE
	EjpBr/L94B49IC1x66+3gfG0LG+izMhq+2TbXWCeN5BdyAH33JiLhJV8vwyuJ6Rrm9qB1Eyce88cg
	pkIzsc8U/u0dXemK47qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHVaP-0005OA-Iu; Mon, 07 Oct 2019 16:10:13 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHVa7-0005NR-At; Mon, 07 Oct 2019 16:09:56 +0000
Received: by mail-wr1-x443.google.com with SMTP id o18so15966744wrv.13;
 Mon, 07 Oct 2019 09:09:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cqJ0vbvGAeolZd2vSOe/7rP/jwOR0aoF9Fh0aImNAAY=;
 b=fFDyTPz/c3ABifR0uGkkFfA3T4wZKNjifQ194u3nCRCSJY4LsrTNWUeX1jcPlWprOT
 1MbCxB6ZLCVa430OOIZ454NIJujssKIzCSNwDei2E588Ha11s/YCWG6fqB/iW/sg7IDn
 EKihD2BfJp/c+a2C1d7MMJtVJ0AtgOI+Dqmo6gh7UYAKDQPfvGhnHsJ09EYKGzM+OY0M
 /2mwRPdsmLRIdWqNOFGBQOZoTlAvdt7s/xNAeCGCodT/fTDwgYd2cJsc0kUPShUL3xo6
 OpkBqoyI2EUTaQZdGRJmaAHyw7l5AOFFufhTCbCHLQj94lPqsNlBoE3sPz6oMdFbfna0
 KNrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cqJ0vbvGAeolZd2vSOe/7rP/jwOR0aoF9Fh0aImNAAY=;
 b=i6HV/ZGLn3MDHdg66HuDWz3fvOGFRkf/y+kHPXxGUEVeh/kqh7+w9xx9/DfOseRn+W
 okTmx2Unf34aQyx3dPWIWWl2T3jFpVbywGO4hD0BBs/uTEnlE8WY+8Edg5UbSLp5kH6U
 c/fVCL6U4excySuCvf1fFCpuwcEBHEOIrpv+WGshGhA8KNM/2h+X3U2Qx+POmWPUAZhz
 uepJOd+TrBYTwdf1gW1YxNugNciH6wcyE/c2FUXW02p6ee7dhP7kUkgyFaD9oXL4/lsk
 o9sgyDYQdFNWzhJaSj15KHA2j1Ogv6rLQwsvAFFwcvp3nDcuCgl+KBCPPIHh0F9lrACh
 uobA==
X-Gm-Message-State: APjAAAW77qeQTGt9+YMrFXpkve4dcFBaQfx3pOKAy/CaBIRQpsFggq99
 9darygVDWHoQYQ4z7GEE3OGflUybqTYopUlwewE=
X-Google-Smtp-Source: APXvYqxgHqJZNgIWzKRUTN0lTc9yubZcuhBGUiP8kclFNKByTkdixaX3OZuWxl98eB2sTzFDMiLudNl4WXyL54+19BU=
X-Received: by 2002:adf:e951:: with SMTP id m17mr22737714wrn.154.1570464592558; 
 Mon, 07 Oct 2019 09:09:52 -0700 (PDT)
MIME-Version: 1.0
References: <20191004144549.3567-1-krzk@kernel.org> <87sgo4hjii.fsf@intel.com>
In-Reply-To: <87sgo4hjii.fsf@intel.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 7 Oct 2019 12:09:40 -0400
Message-ID: <CADnq5_MqGehpWwOAxYg0T2x3qXisqmae2uGG5dijQX+Aa4NsoQ@mail.gmail.com>
Subject: Re: [PATCH TRIVIAL v2] gpu: Fix Kconfig indentation
To: Jani Nikula <jani.nikula@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_090955_378125_9DBA64BF 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexdeucher[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Jiri Kosina <trivial@kernel.org>, lima@lists.freedesktop.org,
 David Airlie <airlied@linux.ie>, nouveau <nouveau@lists.freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Sean Paul <sean@poorly.run>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 7, 2019 at 7:39 AM Jani Nikula <jani.nikula@linux.intel.com> wrote:
>
> On Fri, 04 Oct 2019, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >  drivers/gpu/drm/i915/Kconfig             |  12 +-
> >  drivers/gpu/drm/i915/Kconfig.debug       | 144 +++++++++++------------
>
> Please split these out to a separate patch. Can't speak for others, but
> the patch looks like it'll be conflicts galore and a problem to manage
> if merged in one big lump.

Yes, it would be nice to have the amd patch separate as well.

Alex

>
> BR,
> Jani.
>
>
> --
> Jani Nikula, Intel Open Source Graphics Center
> _______________________________________________
> amd-gfx mailing list
> amd-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/amd-gfx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
