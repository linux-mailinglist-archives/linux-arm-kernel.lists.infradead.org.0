Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39798A5B7B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 18:42:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rWjRVJiSkUkRcEMfYEPnfxGS9nanW7eG02N/Me6HK7Y=; b=RfMgTz2YDw5ADI
	TUPzJDdsDS4TnMKCPEa+vax+i4GteVoCAfdVmBeCJ069cCiw0jLjDMeaEr+VOX/2wHz23zca7ZtmO
	2s2bHLN3tVR4hcfXMInOCDQM2kwgO9OEN9X9sE6Wb66dE+XVtkS3xh7n8D+GqqQhVcKObEDECRB4k
	hlp+SHo1HzfAaOF9CH2pISzDEqD/kE7SIWerheD7mzaqABVDh78pGJryJGXofZVj0c/hBUJDcVXPd
	MfHE9aV0sbVmeIUnqSIpt+AP1m1QbkjpWbIM9V89y2HnxfWYhWuzjgd0bPOrEwlkny8tEqG6LR7Xw
	KEZbm9UVTfDuzkx0Kkkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4pPo-0001zT-Ic; Mon, 02 Sep 2019 16:42:52 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4pPf-0001y3-Ro
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 16:42:45 +0000
Received: by mail-qt1-f193.google.com with SMTP id l22so3945458qtp.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 09:42:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ESVPzvoDmyhr0qPHPc2dAllaJ5z0kVzBcRcJ6MBqm24=;
 b=NE73lW9BgMDq3eOe7oPzg9xktcaU4VO8YuS82KG1ExczCET8Ri/cWHsSDXtBVEsvCP
 Go56/G1NZGFEymOiCy8WwfUGGTczgwkm/VPi0vH333aAnu1vw/tSLVwRlCWC664TtP9x
 EjRLJ2IWcJXcHsIRBZNwrrZx8sknofJuG5lovv9cDa6eC1sLtfWZMfy0l59B5Yb/fduH
 OPukiRRZRyhp5uZdL6K6U+skfIJnQ8r+uyVCcUaci4B95EUycSCIv+OLGnXM1PWZKI5f
 WFnXaAdQGoc6bYnEn6xpJBizCva13kTJC2EhjR1WGM+Bi6pgKsZK8NIl/JAaXhPn1o8F
 Idgw==
X-Gm-Message-State: APjAAAV5epRl8bI/hny0grUDvLR2zcfYQpzfwMQ2od3r0nDu/5U7qv6c
 KytT3FWmprt89witoFOIg8nh5hRgivVHBgP4dnc=
X-Google-Smtp-Source: APXvYqyBIip2MdBOWy21R2bhPQrCc7eiTrHZFC+NOHCN4Z9fnQKXYsfcYC6/YlQc/qHGnz8aoQ0TFDMFoEZIE2D91R0=
X-Received: by 2002:a0c:e74b:: with SMTP id g11mr18622746qvn.62.1567442558193; 
 Mon, 02 Sep 2019 09:42:38 -0700 (PDT)
MIME-Version: 1.0
References: <1567440041-19220-1-git-send-email-olivier.moysan@st.com>
In-Reply-To: <1567440041-19220-1-git-send-email-olivier.moysan@st.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 2 Sep 2019 18:42:21 +0200
Message-ID: <CAK8P3a3WvXmMys3mamCZef1-ychtdg+XbV=H-WTs2ZN6Jsrcbg@mail.gmail.com>
Subject: Re: [PATCH 0/4] ARM: multi_v7_defconfig: add audio support for
 stm32mp157a-dk1
To: Olivier Moysan <olivier.moysan@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_094243_900277_E2A06606 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Tony Lindgren <tony@atomide.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Yannick Fertre <yannick.fertre@st.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Olof Johansson <olof@lixom.net>, Simon Horman <horms+renesas@verge.net.au>,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 2, 2019 at 6:01 PM Olivier Moysan <olivier.moysan@st.com> wrote:
>
> This patchset adds audio support for stm32mp157a-dk1 board.
>
> Olivier Moysan (4):
>   ARM: multi_v7_defconfig: enable stm32 sai support
>   ARM: multi_v7_defconfig: enable stm32 i2s support
>   ARM: multi_v7_defconfig: enable cs42l51 codec support
>   ARM: multi_v7_defconfig: enable audio graph card support

The changes are ok, and I expect Alexandre will pick them up and forward
to the soc tree.

However, I would prefer these to just be a single patch, as there is little
use in splitting the intended change up into one line per patch.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
