Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A68ADAD6E5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 12:33:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s4CDzaASGBUwgNQvC3yvnomtNaDtrSO/pRkc3bvkTVo=; b=dZ3eaKevh9GJLa
	AnRJtxFf7AK5f8EP1Mu4Su2pkflVMnGCp/rXdLjjB/enRZrRHR6yQdJcBPuE+sEnduHWwsIcoBJya
	NN9fU+Sck9Cf//5WZQRjlbWwE6DBAnMHqCNepyf2cC/AmWRqMoiB947yxTC4GSoVIUfMMn+iS5cfv
	9nlv0Em0jnzGai5NFMi1Xq1/YcfQ7MZl3TStcUk8Z8fdafnGIkWT5QXkbCy1OQ1V0I4U3srR1G57T
	hFV/yyGVDQG5rv47j3zU+7C/e6wPqU9HRxfA/xFjOt/Uj2YwjI5lybMlBXXvEo4hAaHqSX63DysnE
	Y6Q/m3RLj/YWDIEZOQfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7GzM-0001HC-UC; Mon, 09 Sep 2019 10:33:41 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7GzA-0001Gn-C2
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 10:33:29 +0000
Received: by mail-io1-xd43.google.com with SMTP id d25so27451164iob.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 03:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fuz0APlA/91vrCKi8bgo0ZO6GT+wvw8fr5yIHMd8ndA=;
 b=tbS7vsPlsq4H9GZeJS8G+mX1H76qs4fHTPvjl6vrUekVObE4mnV36z9jP3iQdkhE4H
 jStQyOt4LQxGg8ssfN9otSTRoryWz/1PGeC/gWXnLNJ1w9K4cgT+ftlLNdQgI+enSpij
 vCE5hdZxWi7SCzYky2nt+WvFHta8yhbdAU+ifI/7vRdw28UWnqSbGu6i8T3TK9B2S73/
 AtretYLKnHjrqH0lp9C/HLGBwIEl4U6fX4cPgPEKEwpzAJNM76axXQwWXMBf/YsaBJ5G
 EeSH+t5E3KmcA6jvpcq339YbCsowWp5cXq9Al6AJPGD0+nk/0Tr0smv13WH9JoZvsjy9
 kdRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fuz0APlA/91vrCKi8bgo0ZO6GT+wvw8fr5yIHMd8ndA=;
 b=ua6RRBmPjfvw/YsNl7JlDGPU7iQHeLC28wTiECBE5EvzC/gBnnb9njxts5mpXwqDw2
 IRAZ/CIFIb2ZrOayGvwK2weQJDR+mBuKY/381oh2Z5lCZ2HH9HTN34XSqLVGBqp6HE8j
 fcMpGk9BW+1lK8Ez7yjzva78TcDsCOvLdxo22dXE1IlhDvu1aaz9tY8oOV3dpkLZXUu6
 oVGHqzApX2wauafKWlpmG85ebS5HYyiwGWT+LwS6sEEPzBTQiRmKnhBQP+7Pbhc0kKr2
 p+M3zh30J7x2uPX/z0VTHEyMR+HiPoPP1V1ESETDssw9pQPIS+u0Xm/Bpf82ykxUn6wG
 GGwg==
X-Gm-Message-State: APjAAAUXuL+zzMYbu508u95m6JB2rZXNMqIaODOzDDQnFSW+I1lZE9WU
 kgFPVLoHCy9GL/bw3Wz+fJXssOrAVCnSgpNMAPQ=
X-Google-Smtp-Source: APXvYqyNtCv+7lh5AAglF7wdI0kymQ1YlOxUM2k5zsdtIckxMfVfQa6VopJ4YAj2nAD+UIzYSZo8klCrbUFIV2jbmbU=
X-Received: by 2002:a02:3b6f:: with SMTP id i47mr197535jaf.24.1568025206922;
 Mon, 09 Sep 2019 03:33:26 -0700 (PDT)
MIME-Version: 1.0
References: <1566299605-15641-1-git-send-email-aisheng.dong@nxp.com>
 <1566299605-15641-4-git-send-email-aisheng.dong@nxp.com>
 <20190906170643.B310F20578@mail.kernel.org>
In-Reply-To: <20190906170643.B310F20578@mail.kernel.org>
From: Dong Aisheng <dongas86@gmail.com>
Date: Mon, 9 Sep 2019 18:23:25 +0800
Message-ID: <CAA+hA=QoZFFb_EVfxcDuJB-9VobVd-1-RyhWeNTSePxW50P8Eg@mail.gmail.com>
Subject: Re: [PATCH V4 03/11] clk: imx: scu: add two cells binding support
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_033328_434962_1700A1EE 
X-CRM114-Status: GOOD (  20.28  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (dongas86[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dongas86[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, dl-linux-imx <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen,

Thanks for the review.

On Sat, Sep 7, 2019 at 5:29 PM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Dong Aisheng (2019-08-20 04:13:17)
> > diff --git a/drivers/clk/imx/clk-imx8qxp.c b/drivers/clk/imx/clk-imx8qxp.c
> > index 5e2903e..1ad3f2a 100644
> > --- a/drivers/clk/imx/clk-imx8qxp.c
> > +++ b/drivers/clk/imx/clk-imx8qxp.c
> > @@ -134,7 +134,12 @@ static int imx8qxp_clk_probe(struct platform_device *pdev)
> >                                 i, PTR_ERR(clks[i]));
> >         }
> >
> > -       return of_clk_add_hw_provider(ccm_node, of_clk_hw_onecell_get, clk_data);
> > +       if (clock_cells == 2)
>
> Can you just read this from the DT node again instead of having a global
> variable called "clock_cells" for this?
>

I tried thinking about it.
One problem is that we also need this information in the exist clk
registration API to
keep the backwards compatibility:
e.g.
 static inline struct clk_hw *imx_clk_scu(const char *name, u32 rsrc_id,
                                         u8 clk_type)
 {
-       return __imx_clk_scu(name, NULL, 0, rsrc_id, clk_type);
+       if (clock_cells == 2)
+               return imx_clk_scu_alloc_dev(name, NULL, 0, rsrc_id, clk_type);
+       else
+               return __imx_clk_scu(name, NULL, 0, rsrc_id, clk_type);
 }

Parsing it for all clocks seems not good.

In the future, i planned to totally remove the legacy binding support which
is a premature one and missing continued support.
Then we will also remove this unneeded clock_cells.

> > +               ret = of_clk_add_hw_provider(ccm_node, imx_scu_of_clk_src_get, imx_scu_clks);
> > +       else
> > +               ret = of_clk_add_hw_provider(ccm_node, of_clk_hw_onecell_get, clk_data);
> > +
> > +       return ret;
> >  }
> >
> >  static const struct of_device_id imx8qxp_match[] = {
> > diff --git a/drivers/clk/imx/clk-scu.c b/drivers/clk/imx/clk-scu.c
> > index fbef740..48bfb08 100644
> > --- a/drivers/clk/imx/clk-scu.c
> > +++ b/drivers/clk/imx/clk-scu.c
> > @@ -16,6 +19,21 @@
> >  #define IMX_SIP_SET_CPUFREQ            0x00
> >
> >  static struct imx_sc_ipc *ccm_ipc_handle;
> > +struct device_node *pd_np;
> > +u32 clock_cells;
> > +
> > +struct imx_scu_clk_node {
> > +       const char *name;
> > +       u32 rsrc;
> > +       u8 clk_type;
> > +       const char * const *parents;
> > +       int num_parents;
> > +
> > +       struct clk_hw *hw;
> > +       struct list_head node;
> > +};
> > +
> > +struct list_head imx_scu_clks[IMX_SC_R_LAST];
> >
> >  /*
> >   * struct clk_scu - Description of one SCU clock
> > @@ -128,9 +146,29 @@ static inline struct clk_scu *to_clk_scu(struct clk_hw *hw)
> >         return container_of(hw, struct clk_scu, hw);
> >  }
> >
> > -int imx_clk_scu_init(void)
> > +int imx_clk_scu_init(struct device_node *np)
> >  {
> > -       return imx_scu_get_handle(&ccm_ipc_handle);
> > +       struct platform_device *pd_dev;
> > +       int ret, i;
> > +
> > +       ret = imx_scu_get_handle(&ccm_ipc_handle);
> > +       if (ret)
> > +               return ret;
> > +
> > +       if (of_property_read_u32(np, "#clock-cells", &clock_cells))
> > +               return -EINVAL;
> > +
> > +       if (clock_cells == 2) {
> > +               for (i = 0; i < IMX_SC_R_LAST; i++)
> > +                       INIT_LIST_HEAD(&imx_scu_clks[i]);
> > +
> > +               pd_np = of_find_compatible_node(NULL, NULL, "fsl,scu-pd");
> > +               pd_dev = of_find_device_by_node(pd_np);
> > +               if (!pd_dev || !device_is_bound(&pd_dev->dev))
> > +                       return -EPROBE_DEFER;
>
> Do you need to put some nodes here with of_node_put() one failure or
> when they're done being used?
>

Good catch.
We should put the node for of_find_compatible_node().

> > +       }
> > +
> > +       return 0;
> >  }
> >
> >  /*
> > @@ -387,3 +425,99 @@ struct clk_hw *__imx_clk_scu(const char *name, const char * const *parents,
> [...]
> > +
> > +struct clk_hw *imx_clk_scu_alloc_dev(const char *name,
> > +                                    const char * const *parents,
> > +                                    int num_parents, u32 rsrc_id, u8 clk_type)
> > +{
> > +       struct imx_scu_clk_node clk = {
> > +               .name = name,
> > +               .rsrc = rsrc_id,
> > +               .clk_type = clk_type,
> > +               .parents = parents,
> > +               .num_parents = num_parents,
> > +       };
> > +       struct platform_device *pdev;
> > +       int ret;
> > +
> > +       pdev = platform_device_alloc(name, PLATFORM_DEVID_NONE);
> > +       if (!pdev) {
> > +               pr_err("%s: failed to allocate scu clk dev rsrc %d type %d\n",
> > +                      name, rsrc_id, clk_type);
> > +               return ERR_PTR(-ENOMEM);
> > +       }
> > +
> > +       ret = platform_device_add_data(pdev, &clk, sizeof(clk));
> > +       if (ret) {
> > +               platform_device_put(pdev);
> > +               return ERR_PTR(-ENOMEM);
>
> Why not ERR_PTR(ret)?
>

Good catch. Will fix.

Regards
Aisheng

> > +       }
> > +
> > +       pdev->driver_override = "imx-scu-clk";
> > +
> > +       ret = imx_clk_scu_attach_pd(&pdev->dev, rsrc_id);
> > +       if (ret)
> > +               pr_warn("%s: failed to attached the power domain %d\n",
> > +                       name, ret);
> > +
> > +       platform_device_add(pdev);
> > +
> > +       /* For API backwards compatiblilty, simply return NULL for success */
> > +       return NULL;
> > +}

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
