Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86226113D3F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 09:44:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r3cCf8nJRIegmnDdf7HggGhEVW51mqoJgJXi1jEnIMY=; b=tuEnKu4SL2Luns
	sdQEXMyt74g7NVy0bB+WKkIQ8Wn320QJk0tBPuVsNqFHZgmeHx4BdUbsghPO2q1rb22rCf5bLd/pL
	YKQ9yvh6j17CiZhBEkkechyMmI8D+Qb30Ck69SnO1tIysg2RtaMYgCEm0xxWhcf8oWxU3zwYYOlF5
	cu4PndBBlZ8/ApzBq1I/UTpJI9VtYawF38VyCm/O+X2JZUpmYaaYtmdht0vpyAoinWlZaPNFeh5M2
	pvsnnkdVIYA1POFxhSRmL/MhMSDc7b2Hi0AsahfFmVTepeTM5ipkYsXKvV3l6jk61kdohAQmkuFps
	4fwPCbjz8x8kNxgb3Nlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icmkd-0004LP-IJ; Thu, 05 Dec 2019 08:44:43 +0000
Received: from mail-io1-xd34.google.com ([2607:f8b0:4864:20::d34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icmkO-0004JW-UA
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 08:44:30 +0000
Received: by mail-io1-xd34.google.com with SMTP id z193so2786501iof.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 00:44:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wt9G2vozOpMT2hGMgKE0ip5uoYB13lnK1YvlPurVBq4=;
 b=mx51vNNmXng2Ai4iTAblfI1F6ComWE5BNDOYZ4xrxfULaKGleW01zww0J9E6sEvEGm
 lfLcgIvUw/0nKHL3PF9n6k428lWT/lZXzBTmVRVLyRjWQMqUnL/4r42HLnAkItilGkYS
 rEOKRmjE51Iy/fCKvADi2jVYm4ok8Pi5z2RxI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wt9G2vozOpMT2hGMgKE0ip5uoYB13lnK1YvlPurVBq4=;
 b=SGumaSBW4Q7dYQA+G4YO4DhzbvMmwiQXmjR7KhO8DMydOdu+rlxfNfGlx+Ii5V4O8F
 J+GwzsYkjvzPb/wFzaWU+Xzzxa25qf8OETMV7S90uRkzg70LoaViRY/mdsiFulTPZrkq
 IflYz/QtHkk42TYOwHy25a3kbgZvqCo9L5yLCXT/JyYsqz7DCHOp0lUEBvuG/eVYuhDF
 zfMfywe0+UkIac6qJgtKB/APG21+0mlEvTrZbDeHATQrdWkMAh+u5r9zIYUuZvT+6b8C
 nztcrfSRPXmkPYI97HQiySde5YgHZFSZCFzpoF+mp8lM5ssbls5g2JN/oSixyF1iUdTS
 PUDg==
X-Gm-Message-State: APjAAAU/GCuLQsvYGfJ/mDJs5W0Yl5P92ViXzGpp+Et8PBwa3KwIKneY
 AKw+eFnFjScVFTcLEiNiAIzLc6/nRIlxJk5BIZ0udg==
X-Google-Smtp-Source: APXvYqzsTUeVlvYNSc46o8MgjJIitMPOpzSQhh53SIxsiMDq5akjwRzVyhJ8uX4NGcPMJOsXZfEjVH38FLKYx8LYJGo=
X-Received: by 2002:a5d:8cd6:: with SMTP id k22mr5264840iot.283.1575535467112; 
 Thu, 05 Dec 2019 00:44:27 -0800 (PST)
MIME-Version: 1.0
References: <1574817475-22378-2-git-send-email-yongqiang.niu@mediatek.com>
 <CAJMQK-iDnOWCYmxcREGschD=sDfU6yKpUu+koP3YDeO3MPCdhQ@mail.gmail.com>
 <1575529976.9400.4.camel@mhfsdcap03>
In-Reply-To: <1575529976.9400.4.camel@mhfsdcap03>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Thu, 5 Dec 2019 16:44:01 +0800
Message-ID: <CAJMQK-jGTAm7YS3ov3ok0SkrH7dWEL4umC21O6RSchrfDs5omw@mail.gmail.com>
Subject: Re: [v1,1/2] drm/mediatek: Fixup external display black screen issue
To: Yongqiang Niu <yongqiang.niu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_004428_997675_105FC350 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d34 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 lkml <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 CK Hu <ck.hu@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 5, 2019 at 3:13 PM Yongqiang Niu <yongqiang.niu@mediatek.com> wrote:
>
> please double confirm is this dump stack log is ruining on MT8173 real
> IC or not.
> if yes, that may caused ovl hang when disable layer not in blanking,
> then cause vblank time out.
> i will disable overlay with cmdq in next version.
>
It is running on MT8173 acer chromebook. Error only happens when
turning off display.
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
