Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19915139277
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 14:47:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W4NbU40nOv4UhULVWNxdFU9xwxm9AziqVL8FXkFZB6w=; b=LxuW+vvaVAKhfM
	T4sdsTlavwxjNJY35Rq1oMhN8fHXPBppIWFmze2QmkahTBOHpczKuKQR89I3EmnzX1q156TqG+mMl
	OH9OZBWk0cjtW2Frf0fe+LUuqwEgksYjKb4YjSdGdxWh4P3cTOtiBh+x9dtfVSaVMjcGBCJ0DVs24
	52mq8/YWfFybyuSFpPhVXYy7DbPbmJUIvVCA/gxrmLM1EoOGnPA68hUDJXFPDnUOrTeapyrGZlOIQ
	snM7bABUCVCx7XJbiWcXfimUSp8z10UX93BEveeRAKuPIFAYUe/HoXi5JSQDFc8fEJXBzmZU6Jfao
	X0E0KNMcqvk5UeIemLTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir03T-0006fl-11; Mon, 13 Jan 2020 13:46:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir03H-0006eo-B3; Mon, 13 Jan 2020 13:46:46 +0000
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com
 [209.85.219.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1EB302187F;
 Mon, 13 Jan 2020 13:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578923202;
 bh=AIlrTSnZ1J1BYZeDE/zgmZ4IXahNEVbk9lgMh1AEQ7Y=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=iuAnG+CuflajR1/NGCyzA+4OgWdGpK3JBRoW8i3KxcgXNDqf9Araj+ScJo6ZeOjjT
 ToxoD9QgrlII2z7n3Hm7SMXMKF36MPInnWtwtpDLa2NsPpMtB1H9dT9mt/EKuNq5Z+
 kUI3gsWP6kXyJfteOQcIJNHfn36dpPu35Nr5/ljs=
Received: by mail-qv1-f48.google.com with SMTP id dc14so3972904qvb.9;
 Mon, 13 Jan 2020 05:46:42 -0800 (PST)
X-Gm-Message-State: APjAAAWT7Sg2VcsgTN819vVhkFEKOIQpgZ8UGk9wING5Nyua0y8FkN+C
 e/yhd8vzUJfbfMF2472vZ4yvgdEoIUWUWbgGXw==
X-Google-Smtp-Source: APXvYqyIYYc2t9K2miXG3KyEWH3O5mjcXutnn4DUpikq6B35lTbFFyOCnIJ1ccg69kvCPXEd2zULH+m1JMCJtqyImI8=
X-Received: by 2002:a0c:f6cd:: with SMTP id d13mr15327544qvo.20.1578923201111; 
 Mon, 13 Jan 2020 05:46:41 -0800 (PST)
MIME-Version: 1.0
References: <20191230090419.137141-1-enric.balletbo@collabora.com>
 <20191230090419.137141-2-enric.balletbo@collabora.com>
In-Reply-To: <20191230090419.137141-2-enric.balletbo@collabora.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 13 Jan 2020 07:46:29 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLHWa9n167xn+aPFVDvcFLNZpNvWVkrJ15v1WnTtYBLWg@mail.gmail.com>
Message-ID: <CAL_JsqLHWa9n167xn+aPFVDvcFLNZpNvWVkrJ15v1WnTtYBLWg@mail.gmail.com>
Subject: Re: [PATCH v24 1/2] Documentation: bridge: Add documentation for
 ps8640 DT properties
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_054643_402596_10D91168 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulrich Hecht <uli@fpond.eu>,
 Nicolas Boichat <drinkcat@chromium.org>, Jitao Shi <jitao.shi@mediatek.com>,
 Daniel Vetter <daniel@ffwll.ch>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 30, 2019 at 3:04 AM Enric Balletbo i Serra
<enric.balletbo@collabora.com> wrote:
>
> From: Jitao Shi <jitao.shi@mediatek.com>
>
> Add documentation for DT properties supported by
> ps8640 DSI-eDP converter.
>
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> Acked-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Ulrich Hecht <uli@fpond.eu>
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> ---
> I maintained the ack from Rob Herring and the review from Philipp
> because in essence the only thing I did is migrate to YAML format and
> check that no errors are reported via dtbs_check. Just let me know if
> you're not agree.

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
