Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B32C9174331
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 00:34:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EzUsyZvh+7FoOERlIrD6hDsZpS5k9O24VulmbDDaaCA=; b=hrCL8Gas6ltqZw
	+2J+qZ5sI/BtHGwc/5gqz3eBmEB0feios5bhiIapVRSI5ShbsQWkoFRZLIlkWEeR9a42Z+9lPxh7H
	z8MuEv+syg0+JejjtG4BndUZtU+mqjtyF0rRYqefpnY+VknKjANqUYh0GQRwcrvZ0GkFlKuI4xU16
	9pfV+d/2ml4Wm1Tn1VSUgHXWPtOsXi4WK8fUhbE6Ex/TZlpiAQtK7TDOcmKKBt9mlQHKH++vBO9jd
	aNzodeQEhShkGomalo9/EN3yuhsNW4YnkZEU5cqbn8dp1urjaQxbnOtdGK6HOUQTCP/XAideMx/nd
	HVeQKhPt65so1X8YCwaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7p9O-00028p-8Z; Fri, 28 Feb 2020 23:34:34 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7p99-00027X-DV
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 23:34:21 +0000
Received: by mail-oi1-x241.google.com with SMTP id l12so4537129oil.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 15:34:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h0556FVWacGEFgxMtqStXRWzsjC46nrrGUt+kCc19ho=;
 b=AEzMwrRuTzvHuiMvlPXsYlLf84Up58bH6QyyBOgE2Z/L2WNzaANNLYMOBxNOutWjpY
 Qw6y4bIfIDlaeHgc1H8nOEHrCIHn6QBMjaKFdnt7puLoS5dS7fi0M7KviL5Nc4IZPYI9
 Lor5d+gn62sMxHIxBpVfJTkziHTEtL2858w8A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h0556FVWacGEFgxMtqStXRWzsjC46nrrGUt+kCc19ho=;
 b=GW2j8Nh904L1+VEsy3QfqAvVwPUgb6glEdiH3/bxpk+v7z+xNOoO1LVjP7AKtjK6AA
 jA2nVKgBeRkwg+NsEZizEupylOPAx/YjV7OeFEhJJN9MhHMKNebj7mk0ioUSw4cqFbzZ
 eMHIdGFLjAFimXTMrV1uxuoyezrqr9KlQNjy5DBrUblU1odYnRhw0JNqzjMIh3ELUp5f
 KUgr8dBmUT89gty2KJrSQq1/x4DfbbF1QQnT0ufl09JxT4YrA94np76I28vR+dpwuWze
 AHrABrvNJhjjCQEMUscjQ/ur0WBumGSvSsX8/WSSMWYLSm3CU9Z3Eha0NpmCrT/+lTth
 gA3g==
X-Gm-Message-State: APjAAAWChBk2aMs6oR+hImQDrKUoN3eE8itNGETLp4I7H9Lzrk2UCdlT
 3xqizM6a59P2NxE7bf3F6t8eYgwpWzNRRwx/3CuUgQ==
X-Google-Smtp-Source: APXvYqxM05oavT4RyNxOiRiEE9dbfhSaHWO5A5cKif2OmmAQT3imXICDXoF0SzCvUrn7aIws1ZQ2b0VIXLneP3LS0Jk=
X-Received: by 2002:a05:6808:319:: with SMTP id
 i25mr4916759oie.128.1582932857653; 
 Fri, 28 Feb 2020 15:34:17 -0800 (PST)
MIME-Version: 1.0
References: <20200227181522.2711142-38-daniel.vetter@ffwll.ch>
 <202002290524.w5E4ezpR%lkp@intel.com>
In-Reply-To: <202002290524.w5E4ezpR%lkp@intel.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Sat, 29 Feb 2020 00:34:06 +0100
Message-ID: <CAKMK7uF1aRxLs-wxdSP5BoENFib96AhiuqCasDE19YdnmrG35g@mail.gmail.com>
Subject: Re: [PATCH 37/51] drm/rockchip: Drop explicit drm_mode_config_cleanup
 call
To: kbuild test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_153419_519500_99591CA2 
X-CRM114-Status: GOOD (  17.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kbuild-all@lists.01.org, Francesco Lavra <francescolavra.fl@gmail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Marco Felsch <m.felsch@pengutronix.de>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Sandy Huang <hjc@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Drat I butchered this. Will fix for next round and actually
compile-test arm again :-/
-Daniel

On Fri, Feb 28, 2020 at 10:19 PM kbuild test robot <lkp@intel.com> wrote:
>
> Hi Daniel,
>
> I love your patch! Yet something to improve:
>
> [auto build test ERROR on drm-tip/drm-tip]
> [also build test ERROR on next-20200228]
> [cannot apply to drm-intel/for-linux-next linus/master pinchartl-media/drm/du/next v5.6-rc3]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>
> url:    https://github.com/0day-ci/linux/commits/Daniel-Vetter/drm-managed-resources-v3/20200229-005817
> base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
> config: arm64-defconfig (attached as .config)
> compiler: aarch64-linux-gcc (GCC) 7.5.0
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         GCC_VERSION=7.5.0 make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    drivers/gpu/drm/rockchip/rockchip_drm_drv.c: In function 'rockchip_drm_bind':
> >> drivers/gpu/drm/rockchip/rockchip_drm_drv.c:147:3: error: label 'err_mode_config_cleanup' used but not defined
>       goto err_mode_config_cleanup;
>       ^~~~
>
> vim +/err_mode_config_cleanup +147 drivers/gpu/drm/rockchip/rockchip_drm_drv.c
>
> 2048e3286f347db Mark Yao          2014-08-22  110
> f706974a69b6e2b Tomeu Vizoso      2016-06-10  111  static int rockchip_drm_bind(struct device *dev)
> 2048e3286f347db Mark Yao          2014-08-22  112  {
> f706974a69b6e2b Tomeu Vizoso      2016-06-10  113       struct drm_device *drm_dev;
> 2048e3286f347db Mark Yao          2014-08-22  114       struct rockchip_drm_private *private;
> 2048e3286f347db Mark Yao          2014-08-22  115       int ret;
> 2048e3286f347db Mark Yao          2014-08-22  116
> f706974a69b6e2b Tomeu Vizoso      2016-06-10  117       drm_dev = drm_dev_alloc(&rockchip_drm_driver, dev);
> 0f2886057be322d Tom Gundersen     2016-09-21  118       if (IS_ERR(drm_dev))
> 0f2886057be322d Tom Gundersen     2016-09-21  119               return PTR_ERR(drm_dev);
> 2048e3286f347db Mark Yao          2014-08-22  120
> f706974a69b6e2b Tomeu Vizoso      2016-06-10  121       dev_set_drvdata(dev, drm_dev);
> f706974a69b6e2b Tomeu Vizoso      2016-06-10  122
> f706974a69b6e2b Tomeu Vizoso      2016-06-10  123       private = devm_kzalloc(drm_dev->dev, sizeof(*private), GFP_KERNEL);
> f706974a69b6e2b Tomeu Vizoso      2016-06-10  124       if (!private) {
> f706974a69b6e2b Tomeu Vizoso      2016-06-10  125               ret = -ENOMEM;
> 9127f99c4801f32 Tomasz Figa       2016-06-21  126               goto err_free;
> f706974a69b6e2b Tomeu Vizoso      2016-06-10  127       }
> f706974a69b6e2b Tomeu Vizoso      2016-06-10  128
> 2048e3286f347db Mark Yao          2014-08-22  129       drm_dev->dev_private = private;
> 2048e3286f347db Mark Yao          2014-08-22  130
> 5182c1a556d7ff7 Yakir Yang        2016-07-24  131       INIT_LIST_HEAD(&private->psr_list);
> 60beeccc72cabef Sean Paul         2018-03-05  132       mutex_init(&private->psr_list_lock);
> 5182c1a556d7ff7 Yakir Yang        2016-07-24  133
> ccea91998c8f140 Jeffy Chen        2017-04-06  134       ret = rockchip_drm_init_iommu(drm_dev);
> ccea91998c8f140 Jeffy Chen        2017-04-06  135       if (ret)
> ccea91998c8f140 Jeffy Chen        2017-04-06  136               goto err_free;
> ccea91998c8f140 Jeffy Chen        2017-04-06  137
> 7db42e97bb41bd5 Daniel Vetter     2020-02-27  138       ret = drm_mode_config_init(drm_dev);
> 7db42e97bb41bd5 Daniel Vetter     2020-02-27  139       if (ret)
> 7db42e97bb41bd5 Daniel Vetter     2020-02-27  140               goto err_iommu_cleanup;
> 2048e3286f347db Mark Yao          2014-08-22  141
> 2048e3286f347db Mark Yao          2014-08-22  142       rockchip_drm_mode_config_init(drm_dev);
> 2048e3286f347db Mark Yao          2014-08-22  143
> 2048e3286f347db Mark Yao          2014-08-22  144       /* Try to bind all sub drivers. */
> 2048e3286f347db Mark Yao          2014-08-22  145       ret = component_bind_all(dev, drm_dev);
> 2048e3286f347db Mark Yao          2014-08-22  146       if (ret)
> ccea91998c8f140 Jeffy Chen        2017-04-06 @147               goto err_mode_config_cleanup;
> 2048e3286f347db Mark Yao          2014-08-22  148
> ccea91998c8f140 Jeffy Chen        2017-04-06  149       ret = drm_vblank_init(drm_dev, drm_dev->mode_config.num_crtc);
> ccea91998c8f140 Jeffy Chen        2017-04-06  150       if (ret)
> ccea91998c8f140 Jeffy Chen        2017-04-06  151               goto err_unbind_all;
> ccea91998c8f140 Jeffy Chen        2017-04-06  152
> ccea91998c8f140 Jeffy Chen        2017-04-06  153       drm_mode_config_reset(drm_dev);
> 2048e3286f347db Mark Yao          2014-08-22  154
> 2048e3286f347db Mark Yao          2014-08-22  155       /*
> 2048e3286f347db Mark Yao          2014-08-22  156        * enable drm irq mode.
> 2048e3286f347db Mark Yao          2014-08-22  157        * - with irq_enabled = true, we can use the vblank feature.
> 2048e3286f347db Mark Yao          2014-08-22  158        */
> 2048e3286f347db Mark Yao          2014-08-22  159       drm_dev->irq_enabled = true;
> 2048e3286f347db Mark Yao          2014-08-22  160
> 2048e3286f347db Mark Yao          2014-08-22  161       ret = rockchip_drm_fbdev_init(drm_dev);
> 2048e3286f347db Mark Yao          2014-08-22  162       if (ret)
> 8415ab565da966b Mark Yao          2017-08-01  163               goto err_unbind_all;
> 8415ab565da966b Mark Yao          2017-08-01  164
> 8415ab565da966b Mark Yao          2017-08-01  165       /* init kms poll for handling hpd */
> 8415ab565da966b Mark Yao          2017-08-01  166       drm_kms_helper_poll_init(drm_dev);
> 2048e3286f347db Mark Yao          2014-08-22  167
> 9127f99c4801f32 Tomasz Figa       2016-06-21  168       ret = drm_dev_register(drm_dev, 0);
> 9127f99c4801f32 Tomasz Figa       2016-06-21  169       if (ret)
> 8415ab565da966b Mark Yao          2017-08-01  170               goto err_kms_helper_poll_fini;
> 9127f99c4801f32 Tomasz Figa       2016-06-21  171
> 2048e3286f347db Mark Yao          2014-08-22  172       return 0;
> 2048e3286f347db Mark Yao          2014-08-22  173  err_kms_helper_poll_fini:
> 2048e3286f347db Mark Yao          2014-08-22  174       drm_kms_helper_poll_fini(drm_dev);
> 8415ab565da966b Mark Yao          2017-08-01  175       rockchip_drm_fbdev_fini(drm_dev);
> ccea91998c8f140 Jeffy Chen        2017-04-06  176  err_unbind_all:
> 2048e3286f347db Mark Yao          2014-08-22  177       component_unbind_all(dev, drm_dev);
> 7db42e97bb41bd5 Daniel Vetter     2020-02-27  178  err_iommu_cleanup:
> ccea91998c8f140 Jeffy Chen        2017-04-06  179       rockchip_iommu_cleanup(drm_dev);
> f706974a69b6e2b Tomeu Vizoso      2016-06-10  180  err_free:
> 574e0fbfc95e7fc Thomas Zimmermann 2018-07-17  181       drm_dev_put(drm_dev);
> 2048e3286f347db Mark Yao          2014-08-22  182       return ret;
> 2048e3286f347db Mark Yao          2014-08-22  183  }
> 2048e3286f347db Mark Yao          2014-08-22  184
>
> :::::: The code at line 147 was first introduced by commit
> :::::: ccea91998c8f140bc3e324bbb3c3fb7148e72d31 drm/rockchip: Reorder drm bind/unbind sequence
>
> :::::: TO: Jeffy Chen <jeffy.chen@rock-chips.com>
> :::::: CC: Sean Paul <seanpaul@chromium.org>
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
