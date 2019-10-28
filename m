Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7355E7936
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 20:29:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=N8DldAjqTUUH/nRdCoXAZb2YCTslnLNT+dc2y8HeF4s=; b=hSJ/7XqgxNNlVP4Em8F0PgDV23
	TgAoU3htJorX8rvxpuuyxOp594vc2v5YUsRSPsImQ5IAcDQdbIA27oYjhO0YKdbQkctGcu+HRHSgg
	yovatF/wTH/Ty/5PCXlWjSAfjuvdHZNdaNroI6bsAnazbLDeIyiVuptX0pjTbHElm1kUZvIsyD0I7
	lYQc/juMqFQ5tNG6rlnDlTTeYZwN6QvXeR7BO3Zy6m6hIXpR46tIEcQ9HXYFIymlvVHaSP2W12VsJ
	5RimU2pjKbQR/BBjWbw1MERy41Io2Y5FFh7oxx+AQ4YUqARYeDWRJw5Mx6h8EZ6qalk9XZQh3FBya
	LASCAILw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPAhw-0002OB-G6; Mon, 28 Oct 2019 19:29:40 +0000
Received: from mail-io1-xd2c.google.com ([2607:f8b0:4864:20::d2c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPAhk-0002Nf-JB
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 19:29:29 +0000
Received: by mail-io1-xd2c.google.com with SMTP id q1so12054385ion.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 12:29:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=vZyO6oUnRM5QCWv8Tj0U2eoY8KE3W2oe2H1OhiD1LEY=;
 b=MKxJZLS+nDjSdUWNVmV07IYdOaBNMKKHsaXFK4Isz3iRJgy2lkd8srJk6XLH+0UKJM
 e9MONkRQ22KqlDhXFCoyp0awoRE1jgUqEtSe6LFz3wiHanrrZDW0M3n/lyHXXlh92/x4
 gVqFEmi+cZ3ySxc9T1JuekfTONfxZL10KaZ8ckyjU9Sh/umGtN/jugm2BPal3c7fJel7
 rYPoGFfQ44l+db0sHjrpOhKwBMKF4iJ82WGIJDRV53DGOm+1/6I1xFQmoV9a17jgRG+v
 QRNNSICJdVvIJ4W2b/wqlBVri0iiXmQVBmGWJQtQJ92rceE4qJ4OWxOV76TtVYfUL9jR
 K+yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=vZyO6oUnRM5QCWv8Tj0U2eoY8KE3W2oe2H1OhiD1LEY=;
 b=C+9mcXGA4J8okgAvb2z4dMgQPscM9q9uUDjPclEyD593d7lQUAzg1SBJlgl44P6q5k
 hyillm1haVCKKyh8IwZmdsPEdzaPL5778qDIgd4EJ0QO8pw6gNaGfT6rAjEuSxGBVOk6
 /K1mm6nEgWHVgjgxdHQ54I0oRXwTWzaQC/1EaszI8ann0jVOU6RPIw4S00AKSrT79+6n
 Jzeaff4UV+dixwgd39RKXyrPnlf3fkZ8ZgsEiBZNOvIsvGDyJZ11cdFbuXAzPr/TqcRD
 QkfICwGkoSHAKcL2AyRaIAy/0HijUiD4LHVTRIQLNF2I+Hura/ViQB8offnv8ZuubINO
 GSKQ==
X-Gm-Message-State: APjAAAWK2QyVM4cbglZEz2+kWEw/ZJ+Mct7Rkv7dQXom4xg7bpCgZNrO
 tAryl1dZMA1PIg8D21Gp88trdYt8QYhW1qnTsEM=
X-Google-Smtp-Source: APXvYqyJxgevfK2t1q+5Yi4AyUe6XK99TIlppAyg9mRbAgx6g6kxQV+N6nzIuGzCpzCLBn4eNVT/sgMIYI/IQEQaxdc=
X-Received: by 2002:a5d:9952:: with SMTP id v18mr15419147ios.58.1572290966022; 
 Mon, 28 Oct 2019 12:29:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAHCN7xKr-8DDt26RmQpVcfa4fj=vuGY1H-_DD4UWpsaPq6wH7A@mail.gmail.com>
In-Reply-To: <CAHCN7xKr-8DDt26RmQpVcfa4fj=vuGY1H-_DD4UWpsaPq6wH7A@mail.gmail.com>
From: Adam Ford <aford173@gmail.com>
Date: Mon, 28 Oct 2019 14:29:14 -0500
Message-ID: <CAHCN7xLgwTM8sU1uxKCRUKdtOc63RJs3e7nWHZ98_R_vp4ahmw@mail.gmail.com>
Subject: Re: i.MX6Q LVDS colors wrong when HDMI connected when V4L2 Streaming
 with KMSSINK
To: linux-media <linux-media@vger.kernel.org>, 
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Fabio Estevam <festevam@gmail.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_122928_654073_03FEFBAF 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 2:12 PM Adam Ford <aford173@gmail.com> wrote:
>
> I have an i.MX6Q with an OV5640 camera connected via CSI-2.
>
> I can stream live video to LVDS just fine when HDMI is NOT connected
> with G-Streamer and kmssink.  However, when HDMI is connected, I can
> stream just fine to the HDMI, but when I try to stream to the LVDS
> using KMSSINK, the colors are wrong.
>
> If I use fbdev instead of kmssink, the colors are correct, but I would
> prefer to use KMSSINK.
>
> I have tried using v4l2convert to change the format, but I keep
> getting errors that the format I try is not supported.
>
> Might someone have any suggestions on how to stream to both HDMI and
> LVDS without having the wrong color on the LVDS?
>
>
> # display on hdmi
> gst-launch-1.0 -v v4l2src ! kmssink name=imx-drm connector-id=54 sync=0
>
> # display on LVDS
> gst-launch-1.0 -v v4l2src ! kmssink name=imx-drm connector-id=56 sync=0
>
>
I should have noted that if I stream to fbdevsink, the colors are
correct on both screens simultaneously.

> thanks,
>
> adam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
