Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8621E9396
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 22:34:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4iFfT+g+Jcb4x4vo6f/YGjtNHoNKLEAk1eM1T7begNc=; b=Px9khxhLArzsr9
	uB/avrqquYCTzimz/sDjzCSmDw34ZYAj1QoTgxUtCpKvAFloBDswZD+Yk18cnPMwYNQ3kQRElPLNk
	39fGiCJnSDzlAsrLGEtgWXDyRBGNmOmxOZr75HZaL5rnCAqOgR0KaD9Q5cIsH8n6z2anXbBFYiM30
	qozuyd2lokimpYgVytyeokaFIEbnWZabRkV/fxhgObW1bqXqu5K2SeE+qrckY0M0LJ7DQ6OEBai7T
	/qfoURE5pErsZlXvgAnQ2u1QmOjr5oae/Vn5Qm0iSbPDix3HyTDJxVwiew8JHTMbbu1+f/R63nrko
	ee0gLlyLfBRjYZrsPpkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jf8Bj-0002ol-No; Sat, 30 May 2020 20:34:39 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jf8BT-0002nn-TY; Sat, 30 May 2020 20:34:25 +0000
Received: by mail-il1-x141.google.com with SMTP id q18so5836684ilm.5;
 Sat, 30 May 2020 13:34:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YQ2eTRzHonhqJF3ZL4HYlMxSElcEqq+WSqbBmVWDUhI=;
 b=tRI5eqJPiHGaD4J0PlwEJbmOeTLTXvBVFiz49/nwb9HvI5FnUEIWpISRg9S6usOTLR
 ffjIu5AyTInmZJSpqk3cYkRMkn2P3lrBCQMiKvQK9WWw9oL1GOJrqjmtVQswiAu/xDMm
 hDx4qaoIjbgzSphtSas9COsc7e2LLqSmpg+k3o96kHelcU4kRlwRrb340EL7oH+vH7JY
 PxVflsJi0fglfmwXzpVLbVAPfgnolwiFXei2OZkWTU+d61+z/hmiHEwkb0T6eoZi1Cm3
 X03Igs/+fdvJU6arMWAXoecFr2s7WzdyRLFl21ZmB/lktpRTGHWuY0GQs5uCk82/RoAy
 f+Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YQ2eTRzHonhqJF3ZL4HYlMxSElcEqq+WSqbBmVWDUhI=;
 b=og/wvf/S2tcKGT8ia4FiLueLFGS9E5Pioo0xpHPR3HuP7exnhb0rh3eX5Iv1CESoFm
 R9bbPDq3UvrG6/8bYXWb2YdkJRLJspFMaxEMBGjsBi4NEup0WIVcLHwhFWjPB9AaI8Zp
 vOyWFlZO+oDX5RSsCwW95iQiu0Zv+PRAJi7RbTktjbrJTjgwWAuTNQo9mA16ttSOmwwV
 l7RIMorh9HQnyWvJowpnFzRtBG+falKnMhUEN4tI7D+JpaMhkA+Xe3urZ0pO4YOh4g69
 eBNjrj87FUGP04f/5cNFJgRfaNGiLU3cL4mkP3w85E3J+YySRMyC/D+8QhTrb7hKi0G3
 msWg==
X-Gm-Message-State: AOAM530NapMLfms+5ReiFbM2dQl8aTi4FaTJ2thxEIOPAHmaSCn53hlC
 zlKpLkROtK8z/C5dFDY601/Y1mByQAF27I4lPeI=
X-Google-Smtp-Source: ABdhPJykT3ennuBwiv4teUw8fHN2/mAUZtgeRiRVpY21O+TfXGVZ28jkFKhCCaxyiyHA34VHj2THd7C4qJbb3CjaPz0=
X-Received: by 2002:a92:7104:: with SMTP id m4mr7655023ilc.87.1590870861509;
 Sat, 30 May 2020 13:34:21 -0700 (PDT)
MIME-Version: 1.0
References: <1590685491-17107-1-git-send-email-dennis-yc.hsieh@mediatek.com>
In-Reply-To: <1590685491-17107-1-git-send-email-dennis-yc.hsieh@mediatek.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Sat, 30 May 2020 15:34:10 -0500
Message-ID: <CABb+yY16FzgafSYRo8DuVMttqUR5JVzXDsaP2rX+UnrNOD6k2A@mail.gmail.com>
Subject: Re: [PATCH v6] support gce on mt6779 platform
To: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_133423_974401_03A181B9 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jassisinghbrar[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, wsd_upstream@mediatek.com,
 David Airlie <airlied@linux.ie>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, HS Liao <hs.liao@mediatek.com>,
 CK Hu <ck.hu@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Houlong Wei <houlong.wei@mediatek.com>,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Bibby Hsieh <bibby.hsieh@mediatek.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 12:05 PM Dennis YC Hsieh
<dennis-yc.hsieh@mediatek.com> wrote:
>
> This patch support gce on mt6779 platform.
>
> Change since v5:
> - spearate address shift code in client helper and mailbox controller
> - separate write_s/write_s_mask and write_s_value/write_s_mask_value so that
>   client can decide use mask or not
> - fix typo in header
>
> Change since v4:
> - do not clear disp event again in drm driver
> - symbolize value 1 to jump relative
>
> [... snip ...]
>
>
>
> Dennis YC Hsieh (16):
>   dt-binding: gce: add gce header file for mt6779
>   mailbox: cmdq: variablize address shift in platform
>   mailbox: cmdq: support mt6779 gce platform definition
>   mailbox: mediatek: cmdq: clear task in channel before shutdown
>   soc: mediatek: cmdq: return send msg error code
>   soc: mediatek: cmdq: add address shift in jump
>   soc: mediatek: cmdq: add assign function
>   soc: mediatek: cmdq: add write_s function
>   soc: mediatek: cmdq: add write_s_mask function
>   soc: mediatek: cmdq: add read_s function
>   soc: mediatek: cmdq: add write_s value function
>   soc: mediatek: cmdq: add write_s_mask value function
>   soc: mediatek: cmdq: export finalize function
>   soc: mediatek: cmdq: add jump function
>   soc: mediatek: cmdq: add clear option in cmdq_pkt_wfe api
>   soc: mediatek: cmdq: add set event function
>
>  .../devicetree/bindings/mailbox/mtk-gce.txt   |   8 +-
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c       |   3 +-
>  drivers/mailbox/mtk-cmdq-mailbox.c            | 101 ++++++--
>  drivers/soc/mediatek/mtk-cmdq-helper.c        | 163 ++++++++++++-
>  include/dt-bindings/gce/mt6779-gce.h          | 222 ++++++++++++++++++
>  include/linux/mailbox/mtk-cmdq-mailbox.h      |  10 +-
>  include/linux/soc/mediatek/mtk-cmdq.h         | 125 +++++++++-
>
Please break the patchset into two. The lower mailbox related changes
with soc changes on top.

thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
