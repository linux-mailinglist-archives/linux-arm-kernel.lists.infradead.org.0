Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 907E397FF6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 18:24:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HsgNNNa5g8DXMLpIJArBmrNWWMNoGF8zhlFlLoDCftM=; b=NQ6BTJIK3POHND
	NubCwNAij/2Tslka9Eww60Lb+IX6DZBT2uSrO7+T1BqXXoI5XPFex+r+SJO3jWi5e4MuKcB8YwB/C
	OzuMFB73ghliqh+UPcuLYYtQuMzwyR/FqQuF2gOy+C0mVCv9peiLjQpmSmmUduUrbNKGQn8oVrpay
	/5nfCCagSmthnmF7pmVWlasZaKnuXxNnHdmOFegiiZK2MHlnrHllBmw1RjDERHB8QEETp7Dzxxaix
	ymCHH9nxl/TqP4u11FHMPtUBw3b/Uhgiq1eElyZcOIIbFplZSAKp8xxnL5/pt/eeo9jQLShr4Fljf
	UmYUey93aSHsmYd5s6kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0TPF-0005Ws-GO; Wed, 21 Aug 2019 16:24:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0TP5-0005W8-6K; Wed, 21 Aug 2019 16:24:08 +0000
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
 [209.85.222.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BBE0E233A0;
 Wed, 21 Aug 2019 16:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566404646;
 bh=6vn5oS8HMSG7JMJf365FjEEzES/Bh/6N4hGyDrDNZn4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=WNTHVH0obfAHqho0ZQCiPxVlUvoCcLkMmqX2sT240VqcVX7tZBoHJOKqXnS+WaEJM
 DLeJFLdKciGAvKI9KVzs94AyUMnSTFNuOFvYp01DM3MgSt7PVo/ICvD9lbPO8Oydkm
 WMp7LoOXwuPPxk4qG1IFtvFdhtua71JjuTRpM7WI=
Received: by mail-qk1-f177.google.com with SMTP id w18so2370783qki.0;
 Wed, 21 Aug 2019 09:24:06 -0700 (PDT)
X-Gm-Message-State: APjAAAXQXjc1PupDSAhwX6vmVC+IaPFAmuwvYr5B59wtNYKpg6mPeFUM
 aaflg13k43fBfepyMNLsUqRB/3iROvfGDKTn3Q==
X-Google-Smtp-Source: APXvYqzQe60WO0Pk/hkQrXQ0DanP3ksbv6OcTJaNcrDWlHGnm64JYtW9XJ7EAZi/FJz1FSt53V60vbg804R7yTHVWfE=
X-Received: by 2002:a37:a48e:: with SMTP id
 n136mr33011507qke.223.1566404645998; 
 Wed, 21 Aug 2019 09:24:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190821031124.17806-1-kever.yang@rock-chips.com>
 <20190821031124.17806-2-kever.yang@rock-chips.com>
In-Reply-To: <20190821031124.17806-2-kever.yang@rock-chips.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 21 Aug 2019 11:23:54 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJW0WG_cs3Y+Rt+DgO=uJg-ccf64qGXCfURviS5fdvHsw@mail.gmail.com>
Message-ID: <CAL_JsqJW0WG_cs3Y+Rt+DgO=uJg-ccf64qGXCfURviS5fdvHsw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: arm: rockchip: remove reference to
 fennec board
To: Kever Yang <kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_092407_250627_C8E5025F 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "heiko@sntech.de" <heiko@sntech.de>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Akash Gajjar <Akash_Gajjar@mentor.com>,
 Douglas Anderson <dianders@chromium.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 10:11 PM Kever Yang <kever.yang@rock-chips.com> wrote:
>
> The rk3288 fennec board has been removed, remove the binding document at
> the same time.
>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
>
> Changes in v2: None
>
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 -----
>  1 file changed, 5 deletions(-)

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
