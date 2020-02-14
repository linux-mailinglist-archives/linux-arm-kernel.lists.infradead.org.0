Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0819915D339
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 08:54:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Og527U7OgE2hzXrrfBfzIVUcy8RGY0XzrBMGdETfTYs=; b=VKNHQcdnCUCnYN
	F/ACjBakkSwdmK4igIpXirsVX+i67TQItPUYIs1hIvFu2uoOAWlEVr8LlnmzpzhB+p35HcTQ7NAtB
	rfZTYM8PmgD2xdZnqXeL+dsB2sQ0eY2dQefyNsJAxSt6+CF8KwEp2vQDmgecM7D7cYwusaX1fO8XX
	g8BoUVa95ZfAvZv+vR1ZzqTtst2TyWUJKCzCjCP3WIXUaZzd5I2KUDEibVtxT5mWqUzr80busBzM/
	cSwEoRIT0epZslCJGiRd49JONgYOnN8HlsUvjBAsegXGMl6WFPBghtxUw5OU/8UkYyLPCCPymjXgk
	SaEJ5Ru36qUYUd130hLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2VoE-0005Nq-Kv; Fri, 14 Feb 2020 07:54:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Vo4-0005NT-Gk
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 07:54:37 +0000
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com
 [209.85.208.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BE4072465D
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 07:54:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581666876;
 bh=uUqCY41ymz6hiHKzFlEzisjq83c9h686/Ry4dcKtL8o=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=nO8VWAnq6enkWoVO1KQOYen9dfbnv11SjtbXp+5e9AWrErsEw2EGJzm9oxQUQQj5b
 GTGWK9hnefBoQm7ycijq0ujxWXUHB2dkpOXCXZq69cSbfBPP9lVazagzVCiSWZnZRh
 JiDRfIdqXWtwoYtPWpK9YWF4OeGkaWHDqt9+6+t0=
Received: by mail-lj1-f173.google.com with SMTP id d10so9648682ljl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 23:54:35 -0800 (PST)
X-Gm-Message-State: APjAAAVJCjGYUmUD89MJWLEniBiiJMo0+lv2zr/PfZzVVUbZ1TdWc5xg
 z6LrHBL4+3bYYi+zQRSUGvZ6IeH/AV4z8p6a7J8=
X-Google-Smtp-Source: APXvYqxYBogvyVwCKY0O00NON1CcUeROLB0hSLARDR8eSX50Ch0burvTbanjgmW65jT/Dd4xwcQQTYXH4O/btXWthPQ=
X-Received: by 2002:a2e:9a11:: with SMTP id o17mr1196010lji.256.1581666873795; 
 Thu, 13 Feb 2020 23:54:33 -0800 (PST)
MIME-Version: 1.0
References: <20200210061544.7600-1-yuehaibing@huawei.com>
 <9351a746-8823-ee26-70da-fd3127a02c91@linux.intel.com>
 <be093793-3514-840a-ff2f-4dc21d8ee7f1@huawei.com>
 <CAEnQRZDWFgXocRJxtc2e7McRCAtod6-GwPJaVMdb4ymBZgSD1w@mail.gmail.com>
 <CAJKOXPcxL2vpWGwO1OL9Vv0g6hzbW-AyGJNn=7Yq2iy10_cbhg@mail.gmail.com>
 <CAEnQRZBgpcLz29PG6pY_6xaULO6siGumqrsO0gRReMRwUOqW2w@mail.gmail.com>
In-Reply-To: <CAEnQRZBgpcLz29PG6pY_6xaULO6siGumqrsO0gRReMRwUOqW2w@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Fri, 14 Feb 2020 08:54:21 +0100
X-Gmail-Original-Message-ID: <CAJKOXPfv6-wALd6NcyQaWTXCv0SYpfM2W7hpZk8u9cZjcZC=VQ@mail.gmail.com>
Message-ID: <CAJKOXPfv6-wALd6NcyQaWTXCv0SYpfM2W7hpZk8u9cZjcZC=VQ@mail.gmail.com>
Subject: Re: [alsa-devel] [PATCH -next] ASoC: SOF: imx8: Fix randbuild error
To: Daniel Baluta <daniel.baluta@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_235436_581240_510190B8 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Daniel Baluta <daniel.baluta@nxp.com>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Linux-ALSA <alsa-devel@alsa-project.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Yuehaibing <yuehaibing@huawei.com>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, Mark Brown <broonie@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 13 Feb 2020 at 22:12, Daniel Baluta <daniel.baluta@gmail.com> wrote:
> >
> > Visible symbols usually should not be selected. The same with symbols
> > with dependencies. The docs have this rule mentioned.
>
> You mean if module X depends on module Y, we shouldn't use select?
> But this exactly what this patch does :).

There are two different cases (hints against using select):
1. select A, if A is a user-visible (possible to select) option,
2. select only A if A depends on B (and B is kind of independent).

These cases are discouraged.

> The problem here is that when X depends on Y, and X=y and Y=m
> when we try to compile X if get an error because we cannot find a symbol from Y.
>
> I think if X depends on Y, and X is forced to "y" then also Y should
> be forced on "y".

If X is bool, then depends should be =y.
If X is tristate, then probably you need something like:
    depends (Y!=m || m)

There is also solution like:
config CEPH_FSCACHE
    depends on CEPH_FS=m && FSCACHE || CEPH_FS=y && FSCACHE=y
but it works if the upper-level option (CEPH_FS) is a tristate.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
