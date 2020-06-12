Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3B61F770F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 13:04:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JNZU0pZ+jdbghmbXv88cX9YR28uuw6mRUtxZdfICzrw=; b=UDZdRdkJiMe4gr
	kF+mYwprDUgH6a7RbGmiSla7nkRmtHGU7S57n9Pu9OAn5WiGolxMxzgtBgmKA9qVouajTPVqubb5k
	wZzi6dbYEYiwv3L1AOQt1ypRyd0oVOO8cDJ3g1USaxljaRwCBUvnmEHXpZCdesRJ02foNM83cH1rd
	TpFCBshtg69++DVayf/YMW6tHC6isfEb5vgEBWiw3Jjnye83BQk/LFl/smXmyz8el0BaNzvc9Dz6G
	TXhRm8VUylSeQtt2F2sW6yngeHcAy1BsESzf2f0BplQqBKEmyl/jO6in/tXTk5DeC8R9xUcm4j2l4
	QXevXXY0zIWMar0HSW/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjhU4-0006gM-Jx; Fri, 12 Jun 2020 11:04:28 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjhTt-0006f8-50
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 11:04:18 +0000
Received: by mail-lj1-x242.google.com with SMTP id a9so10600932ljn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 04:04:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bTCLOyMG5WAJlNutWrbvXvzVWtTz1Ki5CE4mfBnFpug=;
 b=dopIPNC0Rsp46b+MXz6/oO1UNbscIY6zf6Pt0pb/CcwoXuN6bx2qlmAs9grcZw2RQX
 v9wTidKjbsgVhGi1AIZewuqb3MgYHuF590imU5BLQV1eb607hqUYJje80R9c3U77BqBk
 1D7TEdXmbySrLP2i3r6pXRylXpWq59EOr+2o117zkmECxWlemA+20S3Su7jiHLyW8qTW
 +rfEVC44lf/dDJMZdvBGrxY6YYcXhh89viRfnWKVxAcjSrOPUTs3l6U8g3F//LCgnlm2
 Qd1KPZQdyxVLSa27A/CLluErNY7z5DxbHk/zPiMY8QR8qqDBuqtNPecHwGSAeLTxiIzS
 n91Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bTCLOyMG5WAJlNutWrbvXvzVWtTz1Ki5CE4mfBnFpug=;
 b=Vb2j84/OHJbXAlFeSUQ5CTGIK2UBZ4/L81LIXFHh0AgKW5W51JdOUgYIS/ocIo/WLD
 9e1r5biv0de6wzvx2joE6ZpxTO0YAf+vRjXcz52w/wZjGOmK8Ia0PlH671bcbJXtjKqY
 yvrKwWNDTLbhDS1WaFjPLEcO3aGLQ8XG6SsqE1kOLvpCJnjYryNZbkglZohNOP+1aUpQ
 1Kx8yrcZLNevzJC1Xv97h98Ssy2ur+1cBClClPqCA+0Yfth6rF2gN764NlDow+yWeJr/
 /+q6mCbP+A6wD5Zudd17/YWAMyF1r09o/8ayZjWPMfrmymyahYnhtM8vGuDFpNjURVrE
 0uIA==
X-Gm-Message-State: AOAM532r9UXCiKARKFrqkJMXEmxQ7yBWH4Tj9wUe/TlkrK5z/a35WeES
 z3PfHIFcJy7EWkH18r4nzNaJByxdZ38r/vyTAwH2lN8nqk8=
X-Google-Smtp-Source: ABdhPJzJUo2m4/QEOCUVTfeCUSii5+RSbexYUNIuSMs+0+OTNWgT2a1MpJJeb11vL4/k5gZj/09L/Tm9A7bjqHhGJCM=
X-Received: by 2002:a2e:974a:: with SMTP id f10mr6883910ljj.283.1591959854875; 
 Fri, 12 Jun 2020 04:04:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200609200446.153209-4-linus.walleij@linaro.org>
 <202006101538.mV5c2loX%lkp@intel.com>
In-Reply-To: <202006101538.mV5c2loX%lkp@intel.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 12 Jun 2020 13:04:02 +0200
Message-ID: <CACRpkda+GJpHQjvfjcFfhher+Vfr66DRgf6my2Fx7qg9=-5ATQ@mail.gmail.com>
Subject: Re: [PATCH 4/4] drm: pl111: Update documentation
To: kernel test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_040417_257805_D5B4D0F8 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kbuild-all@lists.01.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Russell King <linux@armlinux.org.uk>, Maxime Ripard <mripard@kernel.org>,
 Eric Anholt <eric@anholt.net>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Sean Paul <sean@poorly.run>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 9:38 AM kernel test robot <lkp@intel.com> wrote:

> I love your patch! Perhaps something to improve:
>
> [auto build test WARNING on drm-exynos/exynos-drm-next]
> [also build test WARNING on drm-intel/for-linux-next tegra-drm/drm/tegra/for-next linus/master v5.7 next-20200609]
> [cannot apply to drm-tip/drm-tip drm/drm-next]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>
> url:    https://github.com/0day-ci/linux/commits/Linus-Walleij/drm-pl111-Credit-where-credit-is-due/20200610-041025
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/daeinki/drm-exynos.git exynos-drm-next
> reproduce: make htmldocs
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>

What on earth was that. The robot reports on a patch only adding a few lines
of comments as breaking the whole universe, and none of these systems
even use the PL111.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
