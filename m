Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19289131B74
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 23:30:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s4GDOJEVXvzho1bvZ7zU5wwlsbpSlygES3u1bqu00rs=; b=GG8BgOZ1S/dvH2
	oF8+kKQsSbIxQzKnHWM+iqMVdWD1czoBfctDcGAVixCl/gA4Eq/OaKzQd9uoCXmp7bP1yMK7gDPnp
	gXjx+aaxZ1RkjuBx8pJCExHv2gfs65awJ4jwiPFHHZO0V2jM/4Ys5iR7R1HZVll2eF17jz1t8oXhj
	RAB719HN43gw9ZlB/qI5u/kPrkpMFKzlhYCQ1WYKun6Qv1Ecj9oVPM0aSuQXSlZpBb0kyfEmybBwQ
	zgjIBYGzIEoievtFW4PvUaN1fQCVKBxH/PV7p0Y897sZGs/F1zqhw2ovpCWgLcYqSMj58jrtpyXIz
	M4FstZSw1RVdx3tXg7mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioasv-0003B8-Oa; Mon, 06 Jan 2020 22:30:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioasi-0003Ad-W9; Mon, 06 Jan 2020 22:29:54 +0000
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
 [209.85.219.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7800F24683;
 Mon,  6 Jan 2020 22:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578349792;
 bh=1De1CokmZJzvWcJL3EL1QdC4D4rWqmpc0SisOSfVtB0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=yqgOwbgI6EhCqdM8g9AQYz5x6tFbiGs87TCojq6MMCGjzBnGj9qM+OvtR3zCtxRhX
 Dr+7N4EW6o/9ptvy2xqkhWaWimTP7A4SicBarV7iCq/XZXm22PgTTKeW0VkcZjMsPx
 sYkyeuuOQGWd1cD6I3HOJpqJcbFYcc87GFqNFv5c=
Received: by mail-qv1-f53.google.com with SMTP id o18so19750017qvf.1;
 Mon, 06 Jan 2020 14:29:52 -0800 (PST)
X-Gm-Message-State: APjAAAW3N08Ssxc1UiWeP0afgCNTECn6r70/7qu5X3DEZ5i+V1pEkRoQ
 zYGqcTkIfxkuggJb7TCyDQOiRUv8A2k2/MfY2A==
X-Google-Smtp-Source: APXvYqzF+/+VjZiO27tMFOFZDdgfF2Kx9B2Ly1NVCZZoUZYFxwJPkkwCNae3ZKIHAXThR4kSNA6ABNukCDQkEY/s4/4=
X-Received: by 2002:ad4:4511:: with SMTP id k17mr77533622qvu.135.1578349791507; 
 Mon, 06 Jan 2020 14:29:51 -0800 (PST)
MIME-Version: 1.0
References: <20191227200116.2612137-1-helen.koike@collabora.com>
 <20191227200116.2612137-10-helen.koike@collabora.com>
In-Reply-To: <20191227200116.2612137-10-helen.koike@collabora.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 6 Jan 2020 16:29:39 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+Oarx=Q95H+_mOYUiD0OpdxX6eMNJ0Dyv_zzSiEUzWaw@mail.gmail.com>
Message-ID: <CAL_Jsq+Oarx=Q95H+_mOYUiD0OpdxX6eMNJ0Dyv_zzSiEUzWaw@mail.gmail.com>
Subject: Re: [PATCH v12 09/11] media: staging: dt-bindings: add Rockchip MIPI
 RX D-PHY yaml bindings
To: Helen Koike <helen.koike@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_142953_447033_92F99F63 
X-CRM114-Status: GOOD (  13.08  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Eddie Cai <eddie.cai.linux@gmail.com>, kernel@collabora.com,
 "heiko@sntech.de" <heiko@sntech.de>, Ezequiel Garcia <ezequiel@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Jacob Chen <jacob-chen@iotwrt.com>, Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, joacim.zetterling@gmail.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Andrey Konovalov <andrey.konovalov@linaro.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 27, 2019 at 2:02 PM Helen Koike <helen.koike@collabora.com> wrote:
>
> Add yaml DT bindings for Rockchip MIPI D-PHY RX
>
> This was tested and verified with:
> mv drivers/staging/media/phy-rockchip-dphy/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy.yaml  Documentation/devicetree/bindings/phy/
> make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/phy/rockchip-mipi-dphy.yaml
> make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/phy/rockchip-mipi-dphy.yaml
>
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
>
> ---
>
> Changes in v12:
> - The commit replaces the following commit in previous series named
> media: staging: dt-bindings: Document the Rockchip MIPI RX D-PHY bindings
> This new patch adds yaml binding and was verified with
> make dtbs_check and make dt_binding_check
>
> Changes in v11: None
> Changes in v10:
> - unsquash
>
> Changes in v9:
> - fix title division style
> - squash
> - move to staging
>
> Changes in v8: None
> Changes in v7:
> - updated doc with new design and tested example
>
>  .../bindings/phy/rockchip-mipi-dphy.yaml      | 75 +++++++++++++++++++
>  1 file changed, 75 insertions(+)
>  create mode 100644 drivers/staging/media/phy-rockchip-dphy/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
