Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 905AFA85E2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 17:04:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NdXBSWsJvSdLRXFWIWZMaHFbmBMkHalm7WpGVisTzxg=; b=Y+z2UIq/ktD4YX
	eO8S+ekUiPbnqTMK7ARHv1TONbcdXxVzTOZ9vedRVoMxfdNQmZdlcuzVSG6SdJyhh6dH/BWI8T/JL
	1FpoRJetNds0bwo3u88B3EFFSFhBK+/CCK8xHUEFLW3r7Sf9OLIs9ADYmprhYMNDGtiLjlaf0cUw1
	uT8KD9b/zoIDZXtWHOLSw/j7tkwGP5RCGPfjUnkw5liH14MyYRtU+SJf4IOPUiwD7jm166V1+ap87
	z3dWe9UDPf8P2ymswnpbqS68irMjlpNJeC55rDh7xfyC+W9oqFl9EoahxTbVy2miqOjZ/iqHo0pGw
	DAonxApXfKv80Kf8qzlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Wp9-0004QS-TS; Wed, 04 Sep 2019 15:03:56 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Wox-0004Ou-CS
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 15:03:44 +0000
Received: by mail-qk1-f195.google.com with SMTP id m2so19846253qkd.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 08:03:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IKOWkzJjL/k86AmuYOdEShvopeXlL7D6ZxFMOP1g5n8=;
 b=nrScMC+ahCZrlW8Q+vEzP4SaYUWnzsVaxm+ljTygCatyQINCM5R2cyypptS9BAKBiu
 Qxrnfz82/Rgh7QawfZRvasIV8mVEmMWlQqbtv4JEVKTtrULO/8SZzT3AOEjcsj2AQtVC
 Glb6TcQyyJt07O/KnY/DYJnd1IDPV2J9GKHnUL7OyugWE5go8PzzoWd64u8K/AtdoGEe
 zOgPGlWTqyYwoeanhR0vts8YGl1KCMb2s/KcJMdu49lymqlOatd9oe3fuaovmrCLAaZa
 S5QD8HCwMRO3ibW6tEQOcGr5qWh10+Xfezig1+cOaf0OSEdonCrRo0Jskxb2Viczlixi
 ul1w==
X-Gm-Message-State: APjAAAWPK3KQR8NMQXQzHD2IiBAVKwPFADcBg/ggrcNHGZ3JaDh2uReI
 rS1/q1jhkzm5bhnYpuGNNF2HBB2FxeA5iTEWu/w=
X-Google-Smtp-Source: APXvYqwLGvjugccaEkF7cDG+RyQGuAaeSlbMdwjyxib0np06BZnq4h1o1oo2e8UJhoLsybrAmvsFNm9JUFRsAvTrQno=
X-Received: by 2002:a05:620a:b:: with SMTP id
 j11mr40455574qki.352.1567609422080; 
 Wed, 04 Sep 2019 08:03:42 -0700 (PDT)
MIME-Version: 1.0
References: <1567317285-8555-1-git-send-email-agross@kernel.org>
 <1567317285-8555-2-git-send-email-agross@kernel.org>
In-Reply-To: <1567317285-8555-2-git-send-email-agross@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 4 Sep 2019 17:03:26 +0200
Message-ID: <CAK8P3a08r4CzYmYJXD-zs+J-y=Dm37pXDAz-9B80DAgyHiW-Ng@mail.gmail.com>
Subject: Re: [GIT PULL] Qualcomm ARM64 DT updates for 5.4
To: Andy Gross <agross@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_080343_426355_D96673B1 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
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
Cc: linux-arm-msm@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 arm-soc <arm@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 1, 2019 at 7:54 AM Andy Gross <agross@kernel.org> wrote:
> ----------------------------------------------------------------
> Qualcomm ARM64 Updates for v5.4
>
> * Add Lenovo Miix 630, HP Envy x2, and Asus Novago TP370QL support
> * Assorted cleanups for SDM845 nodes
> * Add video nodes, cpu coefficients, adsp, csdp, and
>   fastrpc nodes for SDM845
> * Add coresight for MSM8996, SDM845, and MSM8998
> * Misc cleanups on QCS404 and PMS405
> * Update memory map for QCS404
> * Add wifi rails, update WCSS clocks, and add ADS unit names on QCS404
> * Add Longcheer and Samsung Galaxy A3U/A5U support
> * Add initial support for SM8150 and PM8150
>

Pulled into arm/dt, thanks!

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
