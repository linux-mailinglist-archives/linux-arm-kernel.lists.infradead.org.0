Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA980DDE58
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 20 Oct 2019 13:50:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=73Mg5+ZvA+LipYWVjyFSsrGmfHpVPerVP9W0aBNKvig=; b=oQYgXxsGvG+34d
	Oy7pnjz6d2f+SMjrtiJ62cMAXL7xAX1zYZY0YFD3WMQREJa29QdrQxhv+H/tJo8M2OvN8SXEDNshp
	w1bfvPNcg9/74Ceo58QVXN27XC9XgbUFQhyWgObs3PY7VCn4IK2XqKSqBg4VLC2lo9nVnIflcaRzc
	j7h/U369fCP719D3yR6wlWFjt5FhNtOPA8X0OLio0JyXmgzVqFFUszCmKu63UqhoKnXfi1ypHmp+p
	Xa6Cnr/+lM/2VbmtsDz43lkGj52A5ORSfqjdkTJtQ3CRkVd8Ttqll2/fl04OofYc5AG5NiBqhvfVA
	M7UgKcIwGS0UUVaAWzJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iM9j2-0004aB-A9; Sun, 20 Oct 2019 11:50:20 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iM9iq-0004Jg-TQ
 for linux-arm-kernel@lists.infradead.org; Sun, 20 Oct 2019 11:50:12 +0000
Received: from mail-qt1-f171.google.com ([209.85.160.171]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Mr9Jw-1hiCfD0taY-00oBvG for <linux-arm-kernel@lists.infradead.org>; Sun,
 20 Oct 2019 13:50:05 +0200
Received: by mail-qt1-f171.google.com with SMTP id u40so16174528qth.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 20 Oct 2019 04:50:05 -0700 (PDT)
X-Gm-Message-State: APjAAAUiSw/l//r3giKk4C+sztrliUBV0zdr3LCForoOV54Q0jlAHZC4
 FOK8OP5dmCQHguwYI+BQDL45DfBhgK1z8dtMU2U=
X-Google-Smtp-Source: APXvYqyxuhiTjd0SZIgrrlxCYnlIXemNBz+y2/q75Jl/HJqU52fQRIar8MefLrwU+CB3BTQDPgAXmZ7VKZ/vpTH0v2o=
X-Received: by 2002:ac8:38e3:: with SMTP id g32mr19668378qtc.304.1571572204064; 
 Sun, 20 Oct 2019 04:50:04 -0700 (PDT)
MIME-Version: 1.0
References: <20191018163047.1284736-1-arnd@arndb.de>
 <20191018163047.1284736-2-arnd@arndb.de>
 <20191019184234.4cdb37a735fe632528880d76@gmail.com>
 <CAK8P3a0LWeGJshr=AdeE3QXHYe2jVmc90K_2prc=4=ZFk0hr=g@mail.gmail.com>
 <20191019222413.52f7b79369d085c4ce29bc23@gmail.com>
 <CAK8P3a3UztT5aqDTiBNDssHWcdYQNqbhiY_hxJ+AHuM54hgCWQ@mail.gmail.com>
 <20191019231418.c17b05f73276539536b4732c@gmail.com>
In-Reply-To: <20191019231418.c17b05f73276539536b4732c@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sun, 20 Oct 2019 13:49:47 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0FfTjNAvJG1yUi==bLBjeVaJ0oseaqs-ZouZKHrFdBHQ@mail.gmail.com>
Message-ID: <CAK8P3a0FfTjNAvJG1yUi==bLBjeVaJ0oseaqs-ZouZKHrFdBHQ@mail.gmail.com>
Subject: Re: [PATCH 2/6] ARM: ep93xx: enable SPARSE_IRQ
To: Alexander Sverdlin <alexander.sverdlin@gmail.com>
X-Provags-ID: V03:K1:Xe9JscXJudrkP5mte6WzY2ktZcSbm0N0gloCvH2sIhkpITWGJyS
 UawdoUpKtJBncmGefteA9zKgBZuw4OkBGatbve054uyvwOVSmOFU6wkacdwXri+onCJTW/n
 LW49IymlZzh3efLv7SCZ6JOibU12JkXCITqvxlg6dzJSnIZ4sCYk1Sc/iifElAKsjhXHSUy
 fgXQ65R2ovldnr4LRD8zA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:u4lZBfTJvW4=:rayznAcAqBCkdMYVeNpjwz
 1pCfNz84UNI003Y7AaV+qtHOd/9jrYMVfSHjYsVuqy7p3xvF0s6rrdnyrS8b4VXlX8PhGbNcP
 Ar0FQoyN/ate+HCr7fYHZBov3NgIQ9/gj08NhFg5IdNX9b2KGe6F/fsg3ZgRuJWVyTQMjmEdB
 9HGhTiJnWyZAAH96EOHtokmHJ+ePXSi2aTuw2Z7K3LspE8a6bG9TGgBKowDfJifE9nvF6r9Ri
 ZVcmkjkNjQmuXwO21t1SQMxoBHo3vaCLqRqZ27PjKt5e5EbtYzhTKl6D5TxggzrUO0aGfDYIE
 hjqA2dQDhZ7jNLmviQ1IlMaJYEEAN7ScHdGguXDKmNltIT4zkJqaJ4NUqtZIvkdPryHrl9raM
 Dm4JQjUtyJilJ8Yk5eezaaw2qahZSEha/B6DOkVXJUkHcJ1uxJ34VZbwP5sYDEWCes6/zzp+R
 HP3AlNhGvdjWc/COgsTXR/3btDoqrAjS88g9O56BpiiPqHQNA0+xXEmNoIYY+b7DdMUhhgWM3
 +6KPr8M0MyulPzgg+VTTdCoYYO52+J24lfDLFDTh/wneaGawQOW1NxSMWYVNnOJKoJLSYm8FQ
 UKHdlT+FRCdgE+8WkouKxXQIJ/rKOoQEh+SbZSoxJ9XFDdGCWLV+4oedlgj6qlB1iZgOtaAPp
 6SEyFNiO9C2NV3tg5h6wJrnpRtfRopatxbwSEsxaFd3f+6R2Hfm5dOGrc+YRg4WaE3QlUQ4co
 nw+6njTgaNNDtQQkFTqS2G/6RdWFLGUtNdSzvT1djHi7oxqc6rDek0a/EqyUHzK+OMVkJ5TOz
 FeEW40dSJwO35+1GHGFeOa/dCGCyieigsOtVcXw80JVv3vtehd4pOAI0edvLfv+9syQ4V1/ex
 zyLjcYMOZWEibLHU052Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_045009_246876_2BDDD640 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Hubert Feurstein <hubert.feurstein@contec.at>,
 Hartley Sweeten <hsweeten@visionengravers.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Lukasz Majewski <lukma@denx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 19, 2019 at 11:14 PM Alexander Sverdlin
<alexander.sverdlin@gmail.com> wrote:
> On Sat, 19 Oct 2019 22:44:18 +0200
> Arnd Bergmann <arnd@arndb.de> wrote:
> > Ah, that makes sense. so all interrupt numbers need to
> > be shifted by a fixed number (e.g. 1) like we did for
> > other platforms (see attachment).
>
> Yes, the below patch resolved both GPIO and DMA issues.
> Previous patch (selecting IRQ_DOMAIN_HIERARCHY) is not
> required.
>
> If you re-spin all 3 ep93xx-relevant patches together, you can put my
> Tested-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
> on them.

Awesome, thanks for testing.

I only remember sending two patches  for ep93xx:
 ARM: ep93xx: make mach/ep93xx-regs.h local
 ARM: ep93xx: enable SPARSE_IRQ

and have added the Tested-by tag to them now. Is there a third one
I missed?

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
