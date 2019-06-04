Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5656A34126
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 10:07:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kaJxi72G9tdqDHTfa5z0D6PjsEQI3FELPiTyC2F98Ps=; b=FSOYEsmkK6/6LJ
	7kqQ/5S6h9x4gchY9YjP9tRw084pIySYw64gBSBvBxDLtgW17q3+LoYw0O5bWXPWYDTyXX/KD9o3R
	ql+CBGuh9A3Yfv78HdC9JKc1tVcidB5JNAjXJeiuxXmPpxZWQo6O3sK9YyPNn6eGlGGQ+2NW/QG70
	g6H/2j1SyRdapoqbbmBFawnva8aI5cB917iU/pWgAndmtuOgwQZy+3TdYTx2+3j1HSdZqP3ZhPIjS
	XilaDnOVP5e1ClUHQpGOQ7I8+IRUM8PR53CbolKXxARiXFjgX+e/UL3P5+vxkDiQc87YZdkEyU/nd
	3X8kybNxEshK8nYNwdbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY4TJ-0005rQ-8S; Tue, 04 Jun 2019 08:07:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4TC-0005r4-AQ
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 08:06:59 +0000
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com
 [209.85.208.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 95FCD24D43
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  4 Jun 2019 08:06:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559635617;
 bh=+8VTb/m2A2CCDruyuVZ7/nHOpXrJiBdMujVM78c/qNk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=WtiyezHwfjvVAW4PyqQTGNpJeO1+l2DDMBdpZbHU7GIkGPdWANLrSriEXAfvzPsDI
 orTCLfsXT2BeipO9PiRRmx8FmWWjmYUFBFX8mGsw+CEWJ06lNZtM44Eo4Upe5h2izO
 j0WSi60kHjfNRfJ+r6h8mFyF+8hfvqbic2ocuHVM=
Received: by mail-lj1-f182.google.com with SMTP id i21so4204107ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 01:06:57 -0700 (PDT)
X-Gm-Message-State: APjAAAUXQxPb0KC8SKy52iZp2Z7M9v9AiYzOf/qQrSiP1jrdGQkyD1N1
 2zaN3LRDQRmeE7rSNEKk/hKh7o9eXXwMVtzuwB0=
X-Google-Smtp-Source: APXvYqzAeIR9wWL/pNtypzfCB3ZurCMf1HHp2oEKPQN2LwTcqcq16KwBmsGE5nHPmenM4wYLrGO8nUU2gRa7kCX1ekw=
X-Received: by 2002:a2e:568d:: with SMTP id k13mr15854428lje.194.1559635615901; 
 Tue, 04 Jun 2019 01:06:55 -0700 (PDT)
MIME-Version: 1.0
References: <1559634833-19980-1-git-send-email-krzk@kernel.org>
 <b5f2ad6a-cccc-9ca9-557f-0ce13e2ccc87@free.fr>
In-Reply-To: <b5f2ad6a-cccc-9ca9-557f-0ce13e2ccc87@free.fr>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 4 Jun 2019 10:06:44 +0200
X-Gmail-Original-Message-ID: <CAJKOXPfjKmqciquODRXJpEuzOBi2eFMFkMJbx_B3O-n_PSNDJA@mail.gmail.com>
Message-ID: <CAJKOXPfjKmqciquODRXJpEuzOBi2eFMFkMJbx_B3O-n_PSNDJA@mail.gmail.com>
Subject: Re: [PATCH] ARM: configs: Remove useless UEVENT_HELPER_PATH
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_010658_390191_6B62493A 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 4 Jun 2019 at 09:57, Marc Gonzalez <marc.w.gonzalez@free.fr> wrote:
>
> On 04/06/2019 09:53, Krzysztof Kozlowski wrote:
>
> > Remove the CONFIG_UEVENT_HELPER_PATH because:
> > 1. It is disabled since commit 1be01d4a5714 ("driver: base: Disable
> >    CONFIG_UEVENT_HELPER by default") as its dependency (UEVENT_HELPER) was
> >    made default to 'n',
> > 2. It is not recommended (help message: "This should not be used today
> >    [...] creates a high system load") and was kept only for ancient
> >    userland,
> > 3. Certain userland specifically requests it to be disabled (systemd
> >    README: "Legacy hotplug slows down the system and confuses udev").
> >
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > ---
> >  arch/arm/configs/acs5k_defconfig          |   1 -
> >  arch/arm/configs/acs5k_tiny_defconfig     |   1 -
> >  arch/arm/configs/am200epdkit_defconfig    |   1 -
> >  arch/arm/configs/aspeed_g4_defconfig      |   1 -
> >  arch/arm/configs/aspeed_g5_defconfig      |   1 -
> >  arch/arm/configs/at91_dt_defconfig        |   1 -
> >  arch/arm/configs/axm55xx_defconfig        |   1 -
> >  arch/arm/configs/cm_x2xx_defconfig        |   1 -
> >  arch/arm/configs/cm_x300_defconfig        |   1 -
> >  arch/arm/configs/cns3420vb_defconfig      |   1 -
> >  arch/arm/configs/colibri_pxa270_defconfig |   1 -
> >  arch/arm/configs/colibri_pxa300_defconfig |   1 -
> >  arch/arm/configs/corgi_defconfig          |   1 -
> >  arch/arm/configs/dove_defconfig           |   1 -
> >  arch/arm/configs/em_x270_defconfig        |   1 -
> >  arch/arm/configs/ep93xx_defconfig         |   1 -
> >  arch/arm/configs/eseries_pxa_defconfig    |   1 -
> >  arch/arm/configs/ezx_defconfig            |   1 -
> >  arch/arm/configs/gemini_defconfig         |   1 -
> >  arch/arm/configs/h3600_defconfig          |   1 -
> >  arch/arm/configs/h5000_defconfig          |   1 -
> >  arch/arm/configs/imote2_defconfig         |   1 -
> >  arch/arm/configs/imx_v4_v5_defconfig      |   1 -
> >  arch/arm/configs/iop13xx_defconfig        |   1 -
> >  arch/arm/configs/iop32x_defconfig         |   1 -
> >  arch/arm/configs/iop33x_defconfig         |   1 -
> >  arch/arm/configs/ixp4xx_defconfig         |   1 -
> >  arch/arm/configs/jornada720_defconfig     |   1 -
> >  arch/arm/configs/keystone_defconfig       |   1 -
> >  arch/arm/configs/ks8695_defconfig         |   1 -
> >  arch/arm/configs/lpc32xx_defconfig        |   1 -
> >  arch/arm/configs/magician_defconfig       |   1 -
> >  arch/arm/configs/moxart_defconfig         |   1 -
> >  arch/arm/configs/multi_v5_defconfig       |   1 -
> >  arch/arm/configs/mv78xx0_defconfig        |   1 -
> >  arch/arm/configs/mvebu_v5_defconfig       |   1 -
> >  arch/arm/configs/mvebu_v7_defconfig       |   1 -
> >  arch/arm/configs/nhk8815_defconfig        |   1 -
> >  arch/arm/configs/nuc910_defconfig         |   1 -
> >  arch/arm/configs/nuc950_defconfig         |   1 -
> >  arch/arm/configs/nuc960_defconfig         |   1 -
> >  arch/arm/configs/omap1_defconfig          |   1 -
> >  arch/arm/configs/orion5x_defconfig        |   1 -
> >  arch/arm/configs/palmz72_defconfig        |   1 -
> >  arch/arm/configs/pcm027_defconfig         |   1 -
> >  arch/arm/configs/prima2_defconfig         |   1 -
> >  arch/arm/configs/proceq_vf_bck_defconfig  | 255 +++++++++++++++++++++++++++
> >  arch/arm/configs/proceq_vf_crc_defconfig  | 278 ++++++++++++++++++++++++++++++

Ooops, indeed. Thanks for spotting them.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
