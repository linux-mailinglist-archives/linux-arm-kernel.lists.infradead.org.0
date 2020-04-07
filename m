Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49BE41A07DA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 08:58:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sm1yeSRgiZzDBNmNYqug9g5imYBXLWJm82Df3e6QwJo=; b=EIorIlfJJY1E8L
	dQUbnPxutRXMzXJk6bFdr+dgNS3PPXL3+qMcsjlMyh1y/7VhKO98muuuXP2eGyxJaizvUsaVz8B5l
	625bihOz3vxVhlY6C2qDnm4C3Af03JhWzINmvqoThYLyvEkaGulNgWGZq6fDJtdJ4r1TPsfHCvEWh
	z4vaIDx4Xz2meIVLeVJWu25av5SZWymS2v+HFb/Zyy1jlFZS/7Jpv/Yn+O9ElpR8d6enODt3/hmqf
	OZBOXIzWTRDtkrgAodpQb3rXJBll8Ie1bXgm26SjUxOrqLLQbcj09LrCRC70+yVot1cojerLs5Mlu
	zDMjLBvVGJUbvnUtOYTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLiBu-0000Q8-C4; Tue, 07 Apr 2020 06:58:34 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLiBm-0000PW-To
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 06:58:28 +0000
Received: by mail-ed1-x544.google.com with SMTP id cw6so2654316edb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 23:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PTus1HhmAwjgtZusz47Cocd0rsgHoslXEjkAB1idN5Y=;
 b=LmLVHk5Rma0Nob96e5PCxTU6PBnIl0GKYt6IMfMuzeXl+Cn+IpD0cHqvZKFogzUDYb
 20M8qavHrZJ/oppK4Axr2ZxPsKYyRwS0c3r0ClLn+V3m9cUxz43hoiwh8Ht9t01HGuIl
 aTvN0D+uzaCS6c8K3uVAILkdncJrNCXRr0W8N/zyEbrU3KaZJ+VpZW9yxL+oCRJgW69+
 K11w5iz8ViJuSUUq72JQ5h3Pbs0q7pOUytT47Eg77EbM/Xa5HwkRuGX3Wk+6w7VR2E1a
 OLZfq1v08YKU5Ya3f3ks/YBeH3UN9VPl7oQ5xHXJ2252OPK+Wf2jSoIFIVdGG9EZ3nqd
 TiCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PTus1HhmAwjgtZusz47Cocd0rsgHoslXEjkAB1idN5Y=;
 b=NKsvCDoyQVm3+wTyCHFK/zZbeuId9mMqndR1IfvVncDtAufYkFy0QsC4sdej1bRAjZ
 4I3ltti8IsqB1as53QB1Rjqz5gXMF6c+kp4QvnkTmDiZ5nKmC6+XsNqfEViH4QiMIlfe
 vIV7hyp+7iq8k0PuBm3Qb0aKTGiLZV3DG7JxGa0H2zjpiY/URxy/yc9axa7aRCvaDu2g
 CTIuw51cZzwcTddlCzTjtlF0PnIwhO0PapcsMVAi+q/rzqZz8POm/w8KQZHDW4iq1tsi
 qiR4PfP1vwaAC+yQb1gM3EJZbttAgsJ6OW7ZqNymNtMaQWWddkx1wNzdiK8FNv4Ov03z
 xeDQ==
X-Gm-Message-State: AGi0PuZqoywqOESRbUjHQ0BLzdQh6dfZsVSunajAykMWEyFG7KYvjbbN
 YidgLeQ4kVh4UQnDHGIr7NN0zNNbZymkbMFPqaE=
X-Google-Smtp-Source: APiQypLmjti+xb31CgGzLznKFFYtZ/CxeWVSEz3Rp3EHyb3R54c8nNJYU4UbSOv1BVwI4hIJZ78v77nix3e9VQlpHQk=
X-Received: by 2002:a50:fa88:: with SMTP id w8mr617737edr.183.1586242705221;
 Mon, 06 Apr 2020 23:58:25 -0700 (PDT)
MIME-Version: 1.0
References: <a809feb7d7153a92e323416f744f1565e995da01.1586180592.git.angelo.ribeiro@synopsys.com>
 <CAP-HsdQtdSeiSe3O8P6Pe587PYAqO48pGJLwf+Tvq20sY_nh=A@mail.gmail.com>
In-Reply-To: <CAP-HsdQtdSeiSe3O8P6Pe587PYAqO48pGJLwf+Tvq20sY_nh=A@mail.gmail.com>
From: Adrian Pop <pop.adrian61@gmail.com>
Date: Tue, 7 Apr 2020 09:58:14 +0300
Message-ID: <CAP-HsdRaSBrFHvVM1onwB1nj7P6k9Qwdpp547tNN9XZvXapqoQ@mail.gmail.com>
Subject: Re: [PATCH v2] drm/bridge: dw-mipi-dsi.c: Add VPG runtime config
 through debugfs
To: Angelo Ribeiro <Angelo.Ribeiro@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_235826_987619_6F6D60AB 
X-CRM114-Status: GOOD (  22.45  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [pop.adrian61[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pop.adrian61[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Daniel Vetter <daniel@ffwll.ch>, airlied@linux.ie,
 Gustavo Pimentel <Gustavo.Pimentel@synopsys.com>, philippe.cornu@st.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 yannick.fertre@st.com, alexandre.torgue@st.com, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 benjamin.gaignard@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tested-by: Adrian Pop <pop.adrian61@gmail.com>
Tested OK on STM32F769i-DISCO, DSI v1.30, on next-20200406.

On Mon, Apr 6, 2020 at 8:45 PM Adrian Pop <pop.adrian61@gmail.com> wrote:
>
> Hello Angelo,
>
> Tested OK on STM32F769i-DISCO, DSI v1.30, on next-20200406. I guess
> there is no horizontal for BER.
>
> Regards,
> Adrian
>
> On Mon, Apr 6, 2020 at 4:49 PM Angelo Ribeiro
> <Angelo.Ribeiro@synopsys.com> wrote:
> >
> > Add support for the video pattern generator (VPG) BER pattern mode and
> > configuration in runtime.
> >
> > This enables using the debugfs interface to manipulate the VPG after
> > the pipeline is set.
> > Also, enables the usage of the VPG BER pattern.
> >
> > Changes in v2:
> >   - Added VID_MODE_VPG_MODE
> >   - Solved incompatible return type on __get and __set
> >
> > Reported-by: kbuild test robot <lkp@intel.com>
> > Reported-by: Adrian Pop <pop.adrian61@gmail.com>
> > Cc: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
> > Cc: Joao Pinto <jpinto@synopsys.com>
> > Cc: Jose Abreu <jose.abreu@synopsys.com>
> > Signed-off-by: Angelo Ribeiro <angelo.ribeiro@synopsys.com>
> > ---
> >  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 98 ++++++++++++++++++++++++---
> >  1 file changed, 90 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> > index b18351b..9de3645 100644
> > --- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> > +++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> > @@ -91,6 +91,7 @@
> >  #define VID_MODE_TYPE_BURST                    0x2
> >  #define VID_MODE_TYPE_MASK                     0x3
> >  #define VID_MODE_VPG_ENABLE            BIT(16)
> > +#define VID_MODE_VPG_MODE              BIT(20)
> >  #define VID_MODE_VPG_HORIZONTAL                BIT(24)
> >
> >  #define DSI_VID_PKT_SIZE               0x3c
> > @@ -221,6 +222,21 @@
> >  #define PHY_STATUS_TIMEOUT_US          10000
> >  #define CMD_PKT_STATUS_TIMEOUT_US      20000
> >
> > +#ifdef CONFIG_DEBUG_FS
> > +#define VPG_DEFS(name, dsi) \
> > +       ((void __force *)&((*dsi).vpg_defs.name))
> > +
> > +#define REGISTER(name, mask, dsi) \
> > +       { #name, VPG_DEFS(name, dsi), mask, dsi }
> > +
> > +struct debugfs_entries {
> > +       const char                              *name;
> > +       bool                                    *reg;
> > +       u32                                     mask;
> > +       struct dw_mipi_dsi                      *dsi;
> > +};
> > +#endif /* CONFIG_DEBUG_FS */
> > +
> >  struct dw_mipi_dsi {
> >         struct drm_bridge bridge;
> >         struct mipi_dsi_host dsi_host;
> > @@ -238,9 +254,12 @@ struct dw_mipi_dsi {
> >
> >  #ifdef CONFIG_DEBUG_FS
> >         struct dentry *debugfs;
> > -
> > -       bool vpg;
> > -       bool vpg_horizontal;
> > +       struct debugfs_entries *debugfs_vpg;
> > +       struct {
> > +               bool vpg;
> > +               bool vpg_horizontal;
> > +               bool vpg_ber_pattern;
> > +       } vpg_defs;
> >  #endif /* CONFIG_DEBUG_FS */
> >
> >         struct dw_mipi_dsi *master; /* dual-dsi master ptr */
> > @@ -530,9 +549,11 @@ static void dw_mipi_dsi_video_mode_config(struct dw_mipi_dsi *dsi)
> >                 val |= VID_MODE_TYPE_NON_BURST_SYNC_EVENTS;
> >
> >  #ifdef CONFIG_DEBUG_FS
> > -       if (dsi->vpg) {
> > +       if (dsi->vpg_defs.vpg) {
> >                 val |= VID_MODE_VPG_ENABLE;
> > -               val |= dsi->vpg_horizontal ? VID_MODE_VPG_HORIZONTAL : 0;
> > +               val |= dsi->vpg_defs.vpg_horizontal ?
> > +                      VID_MODE_VPG_HORIZONTAL : 0;
> > +               val |= dsi->vpg_defs.vpg_ber_pattern ? VID_MODE_VPG_MODE : 0;
> >         }
> >  #endif /* CONFIG_DEBUG_FS */
> >
> > @@ -961,6 +982,68 @@ static const struct drm_bridge_funcs dw_mipi_dsi_bridge_funcs = {
> >
> >  #ifdef CONFIG_DEBUG_FS
> >
> > +int dw_mipi_dsi_debugfs_write(void *data, u64 val)
> > +{
> > +       struct debugfs_entries *vpg = data;
> > +       struct dw_mipi_dsi *dsi;
> > +       u32 mode_cfg;
> > +
> > +       if (!vpg)
> > +               return -ENODEV;
> > +
> > +       dsi = vpg->dsi;
> > +
> > +       *vpg->reg = (bool)val;
> > +
> > +       mode_cfg = dsi_read(dsi, DSI_VID_MODE_CFG);
> > +
> > +       if (*vpg->reg)
> > +               mode_cfg |= vpg->mask;
> > +       else
> > +               mode_cfg &= ~vpg->mask;
> > +
> > +       dsi_write(dsi, DSI_VID_MODE_CFG, mode_cfg);
> > +
> > +       return 0;
> > +}
> > +
> > +int dw_mipi_dsi_debugfs_show(void *data, u64 *val)
> > +{
> > +       struct debugfs_entries *vpg = data;
> > +
> > +       if (!vpg)
> > +               return -ENODEV;
> > +
> > +       *val = *vpg->reg;
> > +
> > +       return 0;
> > +}
> > +
> > +DEFINE_DEBUGFS_ATTRIBUTE(fops_x32, dw_mipi_dsi_debugfs_show,
> > +                        dw_mipi_dsi_debugfs_write, "%llu\n");
> > +
> > +static void debugfs_create_files(void *data)
> > +{
> > +       struct dw_mipi_dsi *dsi = data;
> > +       struct debugfs_entries debugfs[] = {
> > +               REGISTER(vpg, VID_MODE_VPG_ENABLE, dsi),
> > +               REGISTER(vpg_horizontal, VID_MODE_VPG_HORIZONTAL, dsi),
> > +               REGISTER(vpg_ber_pattern, VID_MODE_VPG_MODE, dsi),
> > +       };
> > +       int i;
> > +
> > +       dsi->debugfs_vpg = kmalloc(sizeof(debugfs), GFP_KERNEL);
> > +       if (!dsi->debugfs_vpg)
> > +               return;
> > +
> > +       memcpy(dsi->debugfs_vpg, debugfs, sizeof(debugfs));
> > +
> > +       for (i = 0; i < ARRAY_SIZE(debugfs); i++)
> > +               debugfs_create_file(dsi->debugfs_vpg[i].name, 0644,
> > +                                   dsi->debugfs, &dsi->debugfs_vpg[i],
> > +                                   &fops_x32);
> > +}
> > +
> >  static void dw_mipi_dsi_debugfs_init(struct dw_mipi_dsi *dsi)
> >  {
> >         dsi->debugfs = debugfs_create_dir(dev_name(dsi->dev), NULL);
> > @@ -969,14 +1052,13 @@ static void dw_mipi_dsi_debugfs_init(struct dw_mipi_dsi *dsi)
> >                 return;
> >         }
> >
> > -       debugfs_create_bool("vpg", 0660, dsi->debugfs, &dsi->vpg);
> > -       debugfs_create_bool("vpg_horizontal", 0660, dsi->debugfs,
> > -                           &dsi->vpg_horizontal);
> > +       debugfs_create_files(dsi);
> >  }
> >
> >  static void dw_mipi_dsi_debugfs_remove(struct dw_mipi_dsi *dsi)
> >  {
> >         debugfs_remove_recursive(dsi->debugfs);
> > +       kfree(dsi->debugfs_vpg);
> >  }
> >
> >  #else
> > --
> > 2.7.4
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
