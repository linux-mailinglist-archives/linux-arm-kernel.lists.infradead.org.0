Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9722BC25D3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 19:46:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QD+sptUiM8vKPu6MXfJ/DILeDUZwNZri+Tepb+PfgoQ=; b=cgYdyxP1Hcims0
	sbVUVARyg9eHBQ5ZeRiGZvRGX6/7JFuFao5vLt8Np/137WCtxvzVD7pHdqgmR1SVK+UOLFERRawkI
	mHdUGaoWyWFzzqrNbdoI+ySh0uwT1MMXikg/7Mx82BLqN6lkM4FfUMHDeHccaMBqp34tM4ZuevqVR
	LZ5xzXMMk0BkvXxY44GEv7uQeBHgdqu2OTihDNFq9IZFo1arkwdvx3za/WsCpPqcHNZ2/XIhDa1ow
	tkjv4YIx69Nub97A174XlIwUKfydRpa+/G8zQnCV9uPpr5IN6rYRpLKJ+eIOip86p+FoHzwiod9KL
	KZ/U1D3YQaZ4cTwM6PVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEzl8-0007Wv-0S; Mon, 30 Sep 2019 17:46:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEzkz-0007WI-Hv
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 17:46:46 +0000
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0C763224D2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 17:46:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569865605;
 bh=OctSNomG2OJ1c5HBaNhDE3kyW877OO9pLy12klDrXiA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=q/0ji3EJU3lYpiVowGHsk4yUieDMJFIUKb5X++v9x7jMo38/M6Pa+6XYZueaEDrnX
 qJ+xZf2rC7B8J8hIaYIRlMwR4mCDYZPIaM5ltKiBWCVddq9UD/PWq5XSdnR75VR0C+
 /u5QBQNxvDZVIYsMJm94PIvjHs1BRzy4q/mNspMo=
Received: by mail-qt1-f181.google.com with SMTP id m15so18160048qtq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 10:46:45 -0700 (PDT)
X-Gm-Message-State: APjAAAU0U8r2cLlk/b2OjMyN+W2H+qZxUsDvv/7mxqdvHSSBGoFf6Czx
 P/ABaPXDgqJvlcB4IohHQHSigqmgyI/o+rvIgw==
X-Google-Smtp-Source: APXvYqx0ggq9eeAU9wWza/JPeFO8jdb8kehul8w7xQz3yw7kXfvNNCLrdp04iqHcwujnu+1ANt/coLFpFImGnTT+0QU=
X-Received: by 2002:ac8:6982:: with SMTP id o2mr26027474qtq.143.1569865604167; 
 Mon, 30 Sep 2019 10:46:44 -0700 (PDT)
MIME-Version: 1.0
References: <88dc6386929b3dcd7a65ba8063628c62b66b330c.1569856049.git.robin.murphy@arm.com>
In-Reply-To: <88dc6386929b3dcd7a65ba8063628c62b66b330c.1569856049.git.robin.murphy@arm.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 30 Sep 2019 12:46:33 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKUP6qG6PVL47RQ5A5OcBhpdOA_0VL1YeYDuyVSVcRqCQ@mail.gmail.com>
Message-ID: <CAL_JsqKUP6qG6PVL47RQ5A5OcBhpdOA_0VL1YeYDuyVSVcRqCQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: juno: add GPU subsystem
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_104645_610707_2F2B9CF5 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, Liviu Dudau <liviu.dudau@arm.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 10:25 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> Since we now have bindings for Mali Midgard GPUs, let's use them to
> describe Juno's GPU subsystem, if only because we can. Juno sports a
> Mali-T624 integrated behind an MMU-400 (as a gesture towards
> virtualisation), in their own dedicated power domain with DVFS
> controlled by the SCP.
>
> CC: Liviu Dudau <liviu.dudau@arm.com>
> CC: Sudeep Holla <sudeep.holla@arm.com>
> CC: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  .../bindings/gpu/arm,mali-midgard.yaml        |  5 +++-
>  arch/arm64/boot/dts/arm/juno-base.dtsi        | 27 +++++++++++++++++++
>  2 files changed, 31 insertions(+), 1 deletion(-)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
