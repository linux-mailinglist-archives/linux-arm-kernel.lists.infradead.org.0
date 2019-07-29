Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C9A789E2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 12:53:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qSXAGmroyaChgU+fqMGkXEtJKwYHvaS3a6N3CJ8olUI=; b=Od3LkNbb4+woDy
	inUAnzrCcSnMVYNcFQiLav+gTB8VxowKRpDa79o7KSTrL4Pe7e/Qjm2h5jKJRs7s/IjFhXSR9qSLb
	0W6tKyvg1B+HrNzzPLH4DnAOXxTurD02zy7LJEMy1HyrOkK/IKfGYH2Xirz1FOV7WdvLLFtxpKT4W
	YKt7ETHOonAlj8BmrQnNEzDg3SDfFgxICju7EIrWn1hF/bdCVdYBWnCbCdj6ETaj1Zs97QKGfbzzp
	FU+2MsWOcYRjKFeThZsd+i6l91NcbViEWTGezs+o8jz2z3CdbhnACeXbdDr9+u01kqB5MNuWxKYyd
	93jt88SpSmQ/ESYB3Y3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs3Hp-00009W-Fv; Mon, 29 Jul 2019 10:53:49 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs3Hi-00008o-3s
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 10:53:43 +0000
Received: by mail-wm1-x342.google.com with SMTP id 207so53415212wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 03:53:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=P3COhzyH6iXhkUqb58Ll+n9CaZJ1lhlavM2fMRktAGU=;
 b=JaMcne2DiIeeVdHaTOx7JgVOlm1khWybU1LyPFgBTqmdGdKfa9IF6b1ryZ2sB+bASI
 Fi2JBz7VOeu8iKN+vl4MO5yNst6wEnE2TqUsVhBiNePV0f3zFT3jzs2RL7c+Sb9kcQxm
 CG59Hh/jNrQbPWIpCAo9g+OsOTjKTyUjGfA990pehRyBz0gvUdzeP1pzVdohzIdGOemP
 fiVrSttr2vz+jWzQxvJ7d3GcWtgQdpmSyiv50M02cUS1ChTJ8z7Fnj+45R8o4VejuBRO
 jUHBx90LyQtnv7Tklc6uaYD0QK7/OWaB6JmVSEU19GSqhUnO3kxP8m3sLeaiYIVbb7o2
 385w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=P3COhzyH6iXhkUqb58Ll+n9CaZJ1lhlavM2fMRktAGU=;
 b=qXal644Oqf4ew8mReBxIBTYKQQqAICefnl1UPy1yXRHD9iU4bHyT96iWDRPSi9hNhf
 3srijpc7zlVshvhiu5jIXMM1xbAC9Vl/EFrDIl/xHOJqK67mnHQ7bV8/rjNdG80gJ2Bk
 ExR/u70JHgeWuZgiSH3e+7YLBwZbkrQ13XURHDfaHakmxpuz6Q1abWMBLi8X1pAibtiK
 O+sbLu32XnpBXy5XIm6wnyvh0Mq30SeOflPQrRYVMWzyPGBpFOsBB8I6D61sih577pvE
 GD8ZTzXQeEwYu47ThL09wairFIPb1pL9OY0GwfhWIWK+M0CPTX6R2L89+W42jIf40nZq
 HK5g==
X-Gm-Message-State: APjAAAWt39kljZRza+jWfmGSFK48fw/MHsmPKQ9C+s4+AxuRUEvhm/at
 IT9OrQ7yvb1YKbPo65uU0WLtXw==
X-Google-Smtp-Source: APXvYqxwuWo8lB42LjgZDeetJ6kM9JIYJvns12qyruinqHeJddpFQariDUkpt28Qlhw6t91UoVT+pg==
X-Received: by 2002:a1c:e341:: with SMTP id a62mr41453713wmh.165.1564397620334; 
 Mon, 29 Jul 2019 03:53:40 -0700 (PDT)
Received: from localhost ([2a01:e34:eeb6:4690:ecfa:1144:aa53:4a82])
 by smtp.gmail.com with ESMTPSA id i13sm53855709wrr.73.2019.07.29.03.53.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 03:53:39 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Alexandre Mergnat <amergnat@baylibre.com>
Subject: Re: [PATCH v2 0/4] clk: meson: ao: use the new parent description
 method
In-Reply-To: <20190725164126.27919-1-amergnat@baylibre.com>
References: <20190725164126.27919-1-amergnat@baylibre.com>
Date: Mon, 29 Jul 2019 12:53:38 +0200
Message-ID: <1j36ip9knh.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_035342_627317_E1A314F7 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: narmstrong@baylibre.com, sboyd@kernel.org, khilman@baylibre.com,
 Alexandre Mergnat <amergnat@baylibre.com>, linux-kernel@vger.kernel.org,
 baylibre-upstreaming@groups.io, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 25 Jul 2019 at 18:41, Alexandre Mergnat <amergnat@baylibre.com> wrote:

> Meson SoCs clock controllers use the string comparison method to describe
> parent relation between the clocks, which is not optimized.
>
> Its also use bypass clock made from device-tree clock to provide an input
> clock which can be access through global name, but it still not optimal.
>
> A recent patch [0] allows parents to be directly specified with
> device-tree clock name or without string names from localy declared clocks.
>
> This patchset replaces clock string names by clock pointers (as possible),
> removes bypass clocks and uses directly device-tree clock names in parent
> assignment.
>
> Tested on GXL, GXBB, Meson8b, AXG SoCs by comparing the clock summary
> (orphan too) before and after migration.
>
> [0] commit fc0c209c147f ("clk: Allow parents to be specified without string names")
>
> Change since v1:
> - Improve clock parent assignment for "fixme" using name instead of fw_name.
>
> Alexandre Mergnat (4):
>   clk: meson: g12a-aoclk: migrate to the new parent description method
>   clk: meson: gxbb-aoclk: migrate to the new parent description method
>   clk: meson: axg-aoclk: migrate to the new parent description method
>   clk: meson: remove ao input bypass clocks
>
>  drivers/clk/meson/Kconfig       |  1 -
>  drivers/clk/meson/axg-aoclk.c   | 63 ++++++++++++++-----------
>  drivers/clk/meson/g12a-aoclk.c  | 81 ++++++++++++++++++++-------------
>  drivers/clk/meson/gxbb-aoclk.c  | 55 +++++++++++-----------
>  drivers/clk/meson/meson-aoclk.c | 37 ---------------
>  drivers/clk/meson/meson-aoclk.h |  8 ----
>  6 files changed, 114 insertions(+), 131 deletions(-)
>

Applied
Thanks !

> -- 
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
