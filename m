Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ABCA2200F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 May 2019 00:07:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wa5RBajpiksZmwszjRWj2FmFC/FUavGvtbFQ9cBS5jE=; b=ZPy78t3dhxbcA1
	vRPl+5HIOaEc96TYZj7oMCM2StMmI3DLNfuQ/IFPpCtI+3RXJemrXFX2B8DCnFb4ws8r30g3ytmK9
	XTv4sG5z6xUi3XjqvXpbxZLOB2Za6c8yxu5dliMtHdKBLR1XiBg5i6tL2htjueB+zucq+ZpusBNk/
	IOd0eyVaz19kSUbLWM2iSvmgIHpFWWcnm29r/MErkFHOa1Ke7MGg3PYXh2kW6LRHW+LaEAzNk4eWK
	DimrRTJ3Ca+hzrL1w2WCZTq8GlXV6UGDQE/GuXGhXcCfj5cHZ5Wgd7RUs1jEHCNZdziwbEUIUq9/r
	5NQwzOvgWRcKccFE8F3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRl0Q-0006va-E8; Fri, 17 May 2019 22:07:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRl0I-0006vA-GD
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 22:07:03 +0000
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
 [209.85.160.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AE4DE21744
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 22:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558130821;
 bh=NGfDVpnHGlZSPBv3BpoihAF+0N7E7o+m14ZovnpkobE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=y9fdFpl39fMid+8MsAA/hPpFb3TrE6k7jLGR+qBODvjBpasdPNATrAFSnanBPYEuo
 KtPp2TC60I+dC2MynZazihAVFCl0jWkxQa8eV2Y4QOiEO/fEEvbGhmecLADiaLmnbA
 1r+a7Fd/E/FeD0aKgq2gMx7ncK4i8B2OPhhCrMMs=
Received: by mail-qt1-f179.google.com with SMTP id z19so9725929qtz.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 15:07:01 -0700 (PDT)
X-Gm-Message-State: APjAAAV62iDhuDn5HWwHGr8K2UcDM6BGkK+q9nDo0hgijZm+89H7WHqq
 O09Ajf85uijQTaJkpx7KOsuCzjtWlfIkjhfQyQ==
X-Google-Smtp-Source: APXvYqzgnPSjbNZB21jfdHyrVRvTQpjTFduXMTCC2dRcGxkUBTV0K1qQ8CT5M1gXcRQgkiXQx+OFoK0kRL1cf4DpnAo=
X-Received: by 2002:ac8:2d48:: with SMTP id o8mr51145213qta.136.1558130820928; 
 Fri, 17 May 2019 15:07:00 -0700 (PDT)
MIME-Version: 1.0
References: <1558118857-16912-1-git-send-email-isaacm@codeaurora.org>
 <1558118857-16912-2-git-send-email-isaacm@codeaurora.org>
In-Reply-To: <1558118857-16912-2-git-send-email-isaacm@codeaurora.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 17 May 2019 17:06:48 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKcZaQCZuodCiaTKV1ZyQQcufL4P4jpcDcKCDwR0B+6EA@mail.gmail.com>
Message-ID: <CAL_JsqKcZaQCZuodCiaTKV1ZyQQcufL4P4jpcDcKCDwR0B+6EA@mail.gmail.com>
Subject: Re: [RFC/PATCH 1/4] of: Export of_phandle_iterator_args() to modules
To: "Isaac J. Manjarres" <isaacm@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_150702_553864_72413A1F 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Android Kernel Team <kernel-team@android.com>,
 linux-pci@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Pratik Patel <pratikp@codeaurora.org>,
 Linux IOMMU <iommu@lists.linux-foundation.org>, lmark@codeaurora.org,
 Bjorn Helgaas <bhelgaas@google.com>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 1:48 PM Isaac J. Manjarres
<isaacm@codeaurora.org> wrote:
>
> Kernel modules may want to use of_phandle_iterator_args(),
> so export it.
>
> Signed-off-by: Isaac J. Manjarres <isaacm@codeaurora.org>
> ---
>  drivers/of/base.c | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
