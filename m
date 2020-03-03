Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14539178612
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 23:59:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gzjn8DL0cwIOUt+raJbyVIQtO964Upxomw/djzSBCbU=; b=Dvha5He3CcVGEa
	5MpYfUF+348ob6oTWs0Kpo6Sdp6yhGlQpN9igzhJrhdIcJMDZntRVLyZLKe5Elnb2sFyOiGi4Eakz
	MMoFTluTrXMgA4nD+yxqQKEIGPewAgBYIZJs4S7NgnydaTzq3oecs016l7zRxxbzHLl8BeE8pYXM8
	SrFey1gcSLWpXhu5oKjaWzFQsU1B0ZgVKlhhdsD2hPD8hSB6WnsMDkfJ7awGwZ+MlJ22zhwQUb9aT
	A5pR3oj+JcFIQwYX0veY6BN68zCRF2tI3NCx1SHU6I+0gfKvM0+Wr3inkj9WsZ/zIOHRM2k8lrvYG
	suirbzcl5cf1aDLdPXfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9GVp-000407-8C; Tue, 03 Mar 2020 22:59:41 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9GVh-0003zj-34
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 22:59:34 +0000
Received: by mail-io1-xd43.google.com with SMTP id h8so255188iob.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 14:59:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MpN8nl07RalorZD1vqMq5CAqKDiCn5TDYW7uD9kts8E=;
 b=sxYovqTGGNhp4kUGXwaOMnrbFgrb5QsGPQAYjOhw1dMu0XuB4tZnxg9IoCi3D2kZtm
 TmFjXWL3JG0X36vdUC2mztB7j9ov8hm5qVRu/lLKXPdQmRYeagBMMwnhweGxV6ZkhB7E
 4a4wtmb1MeVg085rYDMTFGA3Wm5OUDCAQt4XRn55/p9z0ywEhu+T6mdp2h1E+37HF+w4
 V1RwHymMXc/1D5spVcsNgqSToPvvKyOYNztfVZkpX48iq2Bts3dm/QQO+13V9OiuKtIw
 HE+Vrk07Up9BG8cEwSr8fGxR8KyloQMeg7qRdUx9ogrI7nIJ5a7QgomuNax8XAtYkDt5
 XvaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MpN8nl07RalorZD1vqMq5CAqKDiCn5TDYW7uD9kts8E=;
 b=k9OD2OFi2z0FuMLCxJh0fSEiSBBSD013BnQauhRrbrj2f7Nz7eVeAyKY2Kvkt3N5JP
 DlDt1qYjaecbCSPs2ENXvf4M1p2PS6YmUlOjS9kM0bUR4HyW0gTBqpfzS9CZnww4MLk1
 1gN7BQaUVyCN5f9cFzk/yRNJ7X6r8pDRLw8wAH33qB7FSmuODz3fPq96VO+yJERdZB4H
 /a80dkhnqIZ/2AopZS9NVYf2LoBQk1jXidjcSJxGJc5UjRKNjNgz0nS9blnMb9zd1/5M
 wO6RC5+izk4gM8c5gRzxfdqLauByduKrEz50I8Z53AveBilBt7Xzv73/Uph0SKfc++zw
 y+nw==
X-Gm-Message-State: ANhLgQ3FlFULZ4+/pfc/ClbGNz7hu9ZRAY3eNYrnuJKl40qdMkVt6Mf+
 J8FjhgzGv17sJRtzbj4oouqxKGhsYHmZhUpv4b4H1w==
X-Google-Smtp-Source: ADFU+vtRZHG8x3tkGzZ+OW+UrtIvQqDuht4+UTISxpk2vlRAKDv5wRTGzcZfABOIn9pBdZ6+llk1FRipU0lHIyUyrd8=
X-Received: by 2002:a5e:9803:: with SMTP id s3mr5781685ioj.207.1583276371290; 
 Tue, 03 Mar 2020 14:59:31 -0800 (PST)
MIME-Version: 1.0
References: <e6eaa409883cbae8d1e818b732b98c3362635712.camel@pengutronix.de>
 <CAL_JsqK7TiMp4KRjTweVzsHS1+iogSKEMM3jAwJmnkbEuJE0yA@mail.gmail.com>
In-Reply-To: <CAL_JsqK7TiMp4KRjTweVzsHS1+iogSKEMM3jAwJmnkbEuJE0yA@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Tue, 3 Mar 2020 14:59:20 -0800
Message-ID: <CAOesGMgAQpAdumG4hi0J8cbVSKuOxM9xq=k4fLE9tK+59gYiHQ@mail.gmail.com>
Subject: Re: [GIT PULL] Reset controller fixes for v5.6
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_145933_158494_F9F3A232 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, SoC Team <soc@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>, Philipp Zabel <p.zabel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 3, 2020 at 1:31 PM Rob Herring <robh@kernel.org> wrote:
>
> On Mon, Feb 17, 2020 at 3:10 AM Philipp Zabel <p.zabel@pengutronix.de> wrote:
> >
> > Dear SoC maintainers,
> >
> > The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:
> >
> >   Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)
> >
> > are available in the Git repository at:
> >
> >   git://git.pengutronix.de/git/pza/linux.git tags/reset-fixes-for-v5.6
>
> Is this landing in Linus' tree any time soon? It's only been 6 weeks
> since sending the fix.

It's been sitting in our tree since Feb 24, and should go in this week
when I send out a pull request.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
