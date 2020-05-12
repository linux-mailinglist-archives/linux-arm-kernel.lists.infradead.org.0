Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F3F1CF4D7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 14:51:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ijsffpuIfXUmdzmYSei7ZJRK+hUi4WRUADBw2FEj4zY=; b=BUuc7nZ6y1zRSq
	Le4JRTe7u0KpT/P3x4UPL3PqkdwZFZa6KOinmQ8iznXPglvcoMFqEEDELaNiW7ca8fQZyGC7LBEqq
	FvWonLhCo9ERSsKinITplnmPW/D8qMa0gPTe1uHdlALZGEpc6tICRgSsQbWmkjX2qQ5wishIgd3Dt
	Lbxuq3iE/AQIKI0HpXKOhedo/H2sELNpIiKClYyAHR2E/hicqRXOR/YVj0K3zBHufi8U1KGl9XYN2
	mxH1ofp1a3dl/kODaaOnzYS7d798mPNECXYifJSaoDp9hvCJ/IGfu07lApBWYllmKQpRxcikJ4872
	Ua2whJV72s1d5MD/U+/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYUNY-0003NV-Uz; Tue, 12 May 2020 12:51:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYUNP-0003Mm-Uo
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 12:51:17 +0000
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com
 [209.85.167.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 459EC20746
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 12:51:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589287875;
 bh=HXOMNAAV5i7uryc5jqMFnXGloB/kWRu8vcUFOMkisMU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=MyTktIuf9gYyDHEdCKCEbjxi//J1qwvBN2D/FfKuWua0SBNVrk+U3zI4FyJU+tRSn
 uf0DlYCvy8pOITWv3pNJO4unGPVWJYaQXdnz4C5Jpuuv2tI4J3YHN06au52gTHBgVA
 OdRhiIBh25xilLIVcs5/OZnQeGS5/jiej1TnP61Q=
Received: by mail-oi1-f178.google.com with SMTP id o24so18098006oic.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 05:51:15 -0700 (PDT)
X-Gm-Message-State: AGi0PubSyZY+Ir+SF+XgsNQwTHuZyohqUKPJDJ0Y9+/eYcndaIcp8Wxk
 XuN67/8WZtJVRIMq+QXq2GRw65WVyVqNNN/+rw==
X-Google-Smtp-Source: APiQypIYDL2e2mHa7jZluV0BjNao3zn0dcuxxGE3/39KlraczebWuS2rF27T0TgdeZFNrIkXqJJqsGvz5JnqcKMT69M=
X-Received: by 2002:aca:51c3:: with SMTP id
 f186mr10992380oib.147.1589287874633; 
 Tue, 12 May 2020 05:51:14 -0700 (PDT)
MIME-Version: 1.0
References: <1589268410-17066-1-git-send-email-hayashi.kunihiko@socionext.com>
In-Reply-To: <1589268410-17066-1-git-send-email-hayashi.kunihiko@socionext.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 12 May 2020 07:51:02 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJ_XKH0etPaX-qZq1t+2Z+2dhXeerCQhU5U5ypZXjr=7A@mail.gmail.com>
Message-ID: <CAL_JsqJ_XKH0etPaX-qZq1t+2Z+2dhXeerCQhU5U5ypZXjr=7A@mail.gmail.com>
Subject: Re: [PATCH net-next v2] dt-bindings: net: Convert UniPhier AVE4
 controller to json-schema
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_055116_012946_CC4E5786 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
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
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, netdev <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 "David S . Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 2:27 AM Kunihiko Hayashi
<hayashi.kunihiko@socionext.com> wrote:
>
> Convert the UniPhier AVE4 controller binding to DT schema format.
>
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>
> Changes since v1:
> - Set true to phy-mode and phy-handle instead of $ref
> - Add mac-address and local-mac-address for existing dts warning
>
>  .../bindings/net/socionext,uniphier-ave4.txt       |  64 ------------
>  .../bindings/net/socionext,uniphier-ave4.yaml      | 111 +++++++++++++++++++++
>  MAINTAINERS                                        |   2 +-
>  3 files changed, 112 insertions(+), 65 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/net/socionext,uniphier-ave4.txt
>  create mode 100644 Documentation/devicetree/bindings/net/socionext,uniphier-ave4.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
