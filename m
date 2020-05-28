Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6DC1E66DA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 17:54:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LknVLdo63U82/bnerO1OvXebNPiugJ2hZUZbvMtmNvQ=; b=kPf9HUFcwS2t6q
	JSJlwVcTLQgmlrYAq/YNsaZcxhE9Yn0NBz8CBjHB618Ernreh9GKLVA7IT15Ljod4fH9asOULL8V3
	HJAuas0DJpIsLl3qYWfVL05zE9kmcI7oTvM1yZ5jJgGXwQbs0BChMCgSKVclj8kWcEtH5RKZ5vKXw
	asaiQNjk2RDB7UuxXCQj7lxYlQ1nM46kqvRZEvShQ3KjYLTP1Us4NHYUh0Cy7ZV+l8OdZ6/2rEeOu
	73SrL3E6gP49n3woO4qkxsMnDvBB2clsyhgi3OpDNys3cK4QDbpdaAbNhMlbZ3JkS5+w2PpGMmEDG
	nMBy41LNA9wzrDc1Pf5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeKrr-00089t-Qe; Thu, 28 May 2020 15:54:51 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeKrj-0007nV-5v; Thu, 28 May 2020 15:54:44 +0000
Received: by mail-vk1-xa41.google.com with SMTP id j28so6868111vkn.8;
 Thu, 28 May 2020 08:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eD9Q69yAidIqs4JbIyrQRrLyc1rX+qPaojDMR0joP5U=;
 b=C+6c+/zy8X6oTdVUsHMPt6wtqdA0tC4QkpLSWdowQI9DkamTI3pEeTTNwx05CUF3Ck
 j9QffXYNwLwSAwzGnNt5/ybY54h7uLZdbuPeEvcHeqdlowZRVJZ2u0Z8z9fGW66IR/Ec
 g1E8wcwTUs1kkq97e0xEC+nhTHjbKMwHHKRvv2bi+dJDaUvPB6Eyi5bItg1rvvrgB26l
 1pPdNkR6iMiN1GoI7/dpaQeKS3596mUhoP/w6UbOIPxD2QsREiYbX/29PTbKxGMG/Gtr
 voApI0UepKgzJ5C9/b+P2vRerTtJqf0vDAVf1Oo7UvGcpfMU4ZqjBtYzbYTZLa/rS/fE
 b/EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eD9Q69yAidIqs4JbIyrQRrLyc1rX+qPaojDMR0joP5U=;
 b=Pv1X2+9pCr3F+pd1Z/iCYmLf4+vidWRVpBO8KU/zoEfvaIsPINzKzOQENUc8pKWqaH
 DAjedzd89nIvkx8hMlrEm46za3/6c/fWg2U4oPZs2axoOU6YvhSAZT5sTxd0DcxJvWTy
 OWLvvcL/tjUIqLwdwQ8k7VQdejaLNgK8O6njfEkQPJPco4k/7G6zjDJTCWXNTzY7jq70
 jcehfzsZQLYIbEYTc+Lq7py31pDXIvpFXF7ALWv58hn59u0Vgy/+FSOkF9sb31ujvqtw
 79WUyKScFwM//Pv/oFtRrk1tedpGe+vtIyeuVn0jOzWluVCiDg5s38mdG614AwEpcfks
 W3ow==
X-Gm-Message-State: AOAM5313QW1elMdkk8srAI/0y7B6AbC6uPIBexPEwOMUPBoCCYp8rvxR
 sbtucl5cMjPm3SjCmhAweLC+zkRNZJ8Qjzhya1c=
X-Google-Smtp-Source: ABdhPJw8Xk8oV6L3uEur2x175XF+krnVvLBDXMAI0SFt0rkatKFthbfQqghuLCvU+aV4LiyrGoasfZr/GxwSNaGmR1s=
X-Received: by 2002:a1f:a3c1:: with SMTP id m184mr2268337vke.38.1590681279501; 
 Thu, 28 May 2020 08:54:39 -0700 (PDT)
MIME-Version: 1.0
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
 <e9bc87e240b62c80617ea7825144121a470a2d44.1590594512.git-series.maxime@cerno.tech>
In-Reply-To: <e9bc87e240b62c80617ea7825144121a470a2d44.1590594512.git-series.maxime@cerno.tech>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Thu, 28 May 2020 16:51:31 +0100
Message-ID: <CACvgo50j1t5VtMgE7-pquuYRaC_ku5pZ2aBVoD-MCCktfPm-VQ@mail.gmail.com>
Subject: Re: [PATCH v3 066/105] drm/vc4: txp: Turn the TXP into a CRTC of its
 own
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_085443_246361_5A7C530D 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [emil.l.velikov[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: LAKML <linux-arm-kernel@lists.infradead.org>,
 Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime,

Have you considered splitting the series into several parts and
focusing on merging one at a time?
IIRC this the longest series _ever_ submitted to dri-devel, plus it
seems to be growing with each revision.

Due to the sheer volume, it's likely to miss various points - large or
small (like below).

On Thu, 28 May 2020 at 08:47, Maxime Ripard <maxime@cerno.tech> wrote:

> +static int vc4_txp_enable_vblank(struct drm_crtc *crtc)
> +{
> +       return 0;
> +}
> +
> +static void vc4_txp_disable_vblank(struct drm_crtc *crtc) {}
> +
Core should handle if these are NULL, so the stubs should not be needed.

HTH
Emil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
