Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0EFE7907
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 20:12:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=l/SIuxv3DnXzNidJ+2nucN3vlSbuXXC2T+/fxn+3cwo=; b=b22
	2WNUrtM+cPiHMnUFTqMb2wQtAXI438oj23tDf8tJCK74FLhW5buWI/f90OMbJrUFljV/N+C945pQR
	EPidaaJEX++V3Do/kdi6dGvmiLt00fnw/XI6vMifMMK4+14LMihoHZdLdcnHP8NoK8FsfZTZBEZr0
	dKTdmUUsMCaH38lUG41nebcVZcIkAhSeWqUBj02cIbdkRzU8y18jCRNNBnEmHsj9wvr/RFafr65YZ
	eflCis8tXh8XnGff3pxuNzWeB58597xbHkApXSmTD7S3XNa/leUk5/BF5G6kRQ9VMG5QHOCdQJ3oB
	uJW8gxzqxGz95+ikI7dwP3EQll3DnQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPARd-0003p5-SB; Mon, 28 Oct 2019 19:12:49 +0000
Received: from mail-il1-x12b.google.com ([2607:f8b0:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPARR-0003oK-NM
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 19:12:38 +0000
Received: by mail-il1-x12b.google.com with SMTP id t5so9156915ilh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 12:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=v4sgx6tchij8udDll/f9f9oHOKU/r/ECQQ/X3jh4Gb4=;
 b=JulU5Znpy+o0szi7aWndZp50W4ha9IcjoKHmC6Pex0hJ19Tf7BBpz1hiyTYeBAYzpx
 90xsZEzOu3UangkCcPwcy0MZkcs0ko+ULIXUEOSw4HZKv01KCrG2t2qpnXjBv4ZCy6er
 b5AIAqEvAPTJwb1+Kfjp2/4HZRbPUfWEgjSGkXKhOZZX0o1d+G9RVGT53aSxjch+ZxeY
 rpupSfUP35MDZYhVHPa32v8GXZOyq2UvPjuL6zHEqe+NKUzlWOatKDNGdmRktspOTE35
 lmjjgitPRGPgtfDL2lc4ntCy9aqW6T11UPQK6SOmg9XPf12S28y1GMbbdPTW77Z5AQkb
 iX9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=v4sgx6tchij8udDll/f9f9oHOKU/r/ECQQ/X3jh4Gb4=;
 b=gb3EE/kPfr8MEdJmLWoTk6EAfNc6Zhb3JPYKUg/ckGdxesyXlxRHQfLPjlDWQ2T9D+
 tcS7FC3JABHVLRXE+1w59MdxT5Y844R24yUpsLDfcbVMp6Pp8IJ+exyvp3S4kpeVsYWT
 YAraZqN2rJK2Dv51EQnGTnwWw9bER9Ejit44qN7MfI6O5RR9S4tlemKMjSN1V1RsdeEB
 22BGDAv5Hg3Cdhu2PhEsIPpQeY7m8D/GRZYDCIUMFU5vLkCqSO1vwc4dvjHntO+anChm
 BL7DOLcQa+9Pc9A3e1CoPP2AjRT2sGxd3DyjtKnT+e/0qlnipGAW4T9WS5nym1nnmLKm
 560Q==
X-Gm-Message-State: APjAAAU2TTR/jqC00xym0C4LDVFfKXABCvCG1DrGwSL0s2y8pBJ1Gus8
 QPIa2BQUkkTZ8AMqLk5tTYjDdpIJAwGIqqqfRTI=
X-Google-Smtp-Source: APXvYqzucp6wZcJ3FHkZhEaKy/z937yKsX7gd/OWChJ2SLqyjV0cc9vVVCVy3t4zI4ol7ZZ76p60cLKq3gv5rhVHeH0=
X-Received: by 2002:a92:5c4f:: with SMTP id q76mr21239271ilb.158.1572289956128; 
 Mon, 28 Oct 2019 12:12:36 -0700 (PDT)
MIME-Version: 1.0
From: Adam Ford <aford173@gmail.com>
Date: Mon, 28 Oct 2019 14:12:25 -0500
Message-ID: <CAHCN7xKr-8DDt26RmQpVcfa4fj=vuGY1H-_DD4UWpsaPq6wH7A@mail.gmail.com>
Subject: i.MX6Q LVDS colors wrong when HDMI connected when V4L2 Streaming with
 KMSSINK
To: linux-media <linux-media@vger.kernel.org>, 
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Fabio Estevam <festevam@gmail.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_121237_760048_4D0D4920 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:12b listed in]
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

I have an i.MX6Q with an OV5640 camera connected via CSI-2.

I can stream live video to LVDS just fine when HDMI is NOT connected
with G-Streamer and kmssink.  However, when HDMI is connected, I can
stream just fine to the HDMI, but when I try to stream to the LVDS
using KMSSINK, the colors are wrong.

If I use fbdev instead of kmssink, the colors are correct, but I would
prefer to use KMSSINK.

I have tried using v4l2convert to change the format, but I keep
getting errors that the format I try is not supported.

Might someone have any suggestions on how to stream to both HDMI and
LVDS without having the wrong color on the LVDS?


# display on hdmi
gst-launch-1.0 -v v4l2src ! kmssink name=imx-drm connector-id=54 sync=0

# display on LVDS
gst-launch-1.0 -v v4l2src ! kmssink name=imx-drm connector-id=56 sync=0


thanks,

adam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
