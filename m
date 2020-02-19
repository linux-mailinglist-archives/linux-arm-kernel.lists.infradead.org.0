Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE6016444F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 13:32:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xkXDtj7NK2TsfWRtetBAcazLYAQVBMZGtrb9eVhQInc=; b=hSaiQw+1ItyGVJ
	4EApWhYfuHbQoQ57CMhHhBWTmMXbN0Nknsmtb5kah/NIXFaFp+ulDVmx7ZZA0xHkiYdLp42c7rShV
	FMif9PRag5Lm7ug7Z99Lo/hQYRRFrjNTqVsbMjmCiaKYOXlaWhch15kcjRxUFjLE9HDpBkkj+stYl
	ZmeJUJPmhXU1gBQ62mLAo1wf2AHhSS9UO5N5YHeqICwzJxDtgowRGwM953tTbVmD/FZbN57AXuTYH
	X41tOvQNKwKLZUT3QFeMXmLdljTtrurQXDRmiszA4Jqq/Mf0Nw1ehLlygdxngDxeKdB4ycN8G6Cjp
	C2oW2qu28cNcDBaQoCRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4OWq-0005WM-9p; Wed, 19 Feb 2020 12:32:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4OWe-0005Vp-RY; Wed, 19 Feb 2020 12:32:26 +0000
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
 [209.85.222.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0B5AD21D56;
 Wed, 19 Feb 2020 12:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582115544;
 bh=rQLJgipmlA/J0x8qYVNwChZfoUkcJu+Lgm8+HW4iZzM=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=v2JIwPKZh9fkwtMSlz8fGZMHPM5CoZ/WyPJCCAlbGZowpvhB3wn80T8159JQ8Q0VB
 jhveTQs9a+KKktG0sefaUC2IT+AUV2CoFxKnyalLPSMSM3rfyJejlv+hE3SQ/7jqv2
 17BQTYraZe79zh2uP2VOTTyJxqrKuUtyHgrlF9/4=
Received: by mail-qk1-f169.google.com with SMTP id a2so22731915qko.12;
 Wed, 19 Feb 2020 04:32:24 -0800 (PST)
X-Gm-Message-State: APjAAAWyQItcTNVG1XOmZ9IiXIlLCIOSwBGAmHMv8sDoZxU4FEMv5/Mz
 uF2iDKPxF1K2ptLqJqAn5aPOrBDzhtg2b7AAktc=
X-Google-Smtp-Source: APXvYqyYbSlrgoOVMio4VbdRpfZqdoVp+jaZdX4Gx4S9LVzr/bZxAZhbKRq9gJWfd2ujLmWJLj4uwHnSONCco6EONkQ=
X-Received: by 2002:ae9:ed10:: with SMTP id c16mr22229007qkg.95.1582115543191; 
 Wed, 19 Feb 2020 04:32:23 -0800 (PST)
MIME-Version: 1.0
References: <20200218100358.2015-1-gtk_ruiwang@mediatek.com>
In-Reply-To: <20200218100358.2015-1-gtk_ruiwang@mediatek.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Wed, 19 Feb 2020 07:32:12 -0500
X-Gmail-Original-Message-ID: <CA+5PVA4K1jtuvQWBOMuORJC-VRMUs7t+T4_SpX08xw7SuQn+AA@mail.gmail.com>
Message-ID: <CA+5PVA4K1jtuvQWBOMuORJC-VRMUs7t+T4_SpX08xw7SuQn+AA@mail.gmail.com>
Subject: Re: pull request: linux-firmware: Update Mediatek MT8173 VPU firmware
To: gtk_ruiwang@mediatek.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_043224_907982_2621A591 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Maoguang Meng <maoguang.meng@mediatek.com>,
 Alexandre Courbot <acourbot@chromium.org>, srv_heupstream@mediatek.com,
 Yunfei Dong <yunfei.dong@mediatek.com>,
 Longfei Wang <longfei.wang@mediatek.com>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 Linux Firmware <linux-firmware@kernel.org>, Tomasz Figa <tfiga@chromium.org>,
 linux-mediatek@lists.infradead.org, PoChun.Lin@mediatek.com,
 Tiffany Lin <tiffany.lin@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 5:04 AM <gtk_ruiwang@mediatek.com> wrote:
>
> Hi linux-firmware maintainers,
>
> The following changes since commit 6f89735800fe3af761104defdb81b50b6d6402f0:
>
>   rtl_nic: update firmware for RTL8153A (2020-02-07 08:30:37 -0500)
>
> are available in the Git repository at:
>
>   https://github.com/ruiwang-mtk/linux_fw_vpu_v1.1.4.git
>
> for you to fetch changes up to 0bd965d5e4b0d24e2fc054a933fea3a8c22af92b:
>
>   mediatek: update MT8173 VPU firmware to v1.1.4 (2020-02-18 17:27:30 +0800)
>
> ----------------------------------------------------------------
> gtk_ruiwang (1):
>       mediatek: update MT8173 VPU firmware to v1.1.4
>
>  vpu_d.bin | Bin 2977136 -> 2977184 bytes
>  vpu_p.bin | Bin 131180 -> 131180 bytes
>  2 files changed, 0 insertions(+), 0 deletions(-)

Pulled and pushed out.

josh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
