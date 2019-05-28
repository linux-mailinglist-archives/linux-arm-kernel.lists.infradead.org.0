Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTP id 662F12CE6A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 20:20:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UyplVMRoAhEqW9+rO9rlbCePcG4fzsQXAKNu5GDToKM=; b=cE6aDif3n1hVNG
	mnpoSwZuPw8ctaFsj7Gwzz45MXYRBSvuUhVDBgsgQ0GqCT49CwIkw+Tumu4bEvyq+uGDFz56kFUTQ
	vHsLwJ7zZPUBZl5Icd+Yeg7Mn5Vqf37Z1t0TQ3ULD5ffysBUfXug0rz0nGeb+D6p8oVOcW8JlZ5yY
	GkTw7lhsFNM4L3YG+UsKCAKnAch13hTDyoaPKv2u2m/bQ74X5IUeq7zjw9qH2QoctKhisWSYWtsYs
	MgTzPGVmmJSTqhYlHjvr4UdQ/R1+vfzMp1nX/Y5IaHXRFGNh0qPPIalKTaqjIsZDjyixm4NcCRDsQ
	sxwFinv6vP4Zjh34qmvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVgcM-0004EC-QB; Tue, 28 May 2019 18:14:34 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVgc3-0004Co-PO; Tue, 28 May 2019 18:14:28 +0000
Received: by mail-ot1-x341.google.com with SMTP id r7so18667510otn.6;
 Tue, 28 May 2019 11:14:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LPvFSy/+Ol+ZuQMgkb+qnJE+L1Iql0hHfM4lKqsprYE=;
 b=Ojcs6udBEkePD30+FubBfExeTjFdf/YPOSYCAUMwiskoT4bMtWzZOPU9/eKjyPOG7U
 wVAlr775HDvInKKs9ocAemTOAMS11GS5df+uZmdNUi27faV9vJvZnuQC77iYUGzfY28o
 pPd64Eyv8SmCOroCDWO9P3uhnW5BMAAPYzWJjtLLkdLrQbp662bgEcrPAqk9B1XOkqX3
 mJLxI8CS0ikanr/A+ddV34f29i+OkHMjuc4IP0CFELBtD+09E+zlfQB/LYE/HBANMPyh
 tRwogab5N70tW5YDnREToqiEgRSlTZyRCdQQA4xwWIZCJxCWC1Ms+/aWZEVVz5KK1rg0
 7DsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LPvFSy/+Ol+ZuQMgkb+qnJE+L1Iql0hHfM4lKqsprYE=;
 b=Mf4VxcqTgj73obOxwYyoci44qpk7JzHkVOazH+IiqXacpPxeKM226bNHjxK0aJrvOD
 09BxQLk4PdqJ0H7HG9KnmmSF9McstMPWl8IueBVBkMteYhCsYeI+pWJnDO755ZwFhUL1
 epXABoBc91HcpRqG4KWdIbdz0F0VpNvRniAiAfdNIaVRb02tfQr0gsKrGrdIJOOCkT9J
 u7cMT4jvF8PR/IYOpD6LREVXO2cmvA1T6x9HQ61mqAhhlcaoPAJ9uASjne6QAETSCrgN
 DMtrcfmBmKcQbwCxrIYoYeoSDJFMFqcyj79LGPZ3vYhBOsbKvkZN80gdGkR//7ECIoow
 aRXA==
X-Gm-Message-State: APjAAAWMaL4k3rDt8pxHKdYyAOe7sWQIn5cVg00pKcoYfmMsEBgV80Zk
 E+LtU8APtB259jSUjacrDw7rTSScAGoOIBOtJew=
X-Google-Smtp-Source: APXvYqyagHBu0OgYtX3i84tIgx8uv2A97o9m+a9iuX4CshpGLW7d441lQy2nxKnxaNDuCwtbZifs7QCWJ9IKORrBOo0=
X-Received: by 2002:a9d:69c8:: with SMTP id v8mr22334562oto.6.1559067206898;
 Tue, 28 May 2019 11:13:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190528080758.17079-1-narmstrong@baylibre.com>
 <20190528080758.17079-3-narmstrong@baylibre.com>
In-Reply-To: <20190528080758.17079-3-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 28 May 2019 20:13:16 +0200
Message-ID: <CAFBinCCMfTL337=HtvoXDDznfqhH+i0N6NAj8qBPso84XFoJBg@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] clk: meson: g12a: Add support for G12B CPUB clocks
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_111415_825318_BA8D10FD 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Tue, May 28, 2019 at 10:08 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Update the Meson G12A Clock driver to support the Amlogic G12B SoC.
>
> G12B clock driver is very close, the main differences are :
> - the clock tree is duplicated for the both clusters, and the
>   SYS_PLL are swapped between the clusters
> - G12B has additional clocks like for CSI an other components
>
> Here only the cpu clock tree is handled.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
thank you for taking care of everything I noticed in the previous version!
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

do you still have the CPU post-divider muxes (which are currently
modeled as CLK_DIVIDER_POWER_OF_TWO dividers) on your TODO-list once
this is merged?


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
