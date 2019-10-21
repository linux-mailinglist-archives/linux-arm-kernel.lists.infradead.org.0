Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 371B8DE58B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 09:52:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2GGqS2zn58PmcuXLO59V8iX7BeOaO5lsla7ne0ekxps=; b=jstAS75smItslR
	q1vgQvHc02hCPD1hBYsrL/YJT+Eb3ZL7e2IlOMVjkS7qkV09rkzOA662xDpyxxRBzBtvCef6lLiyi
	iBmFUvOpX1rv63hEpMiuqnyzO5JxgWB3bUCedX/pjAQo3v7OkLtQ8W3dmHMN1cNlQoaxXWJtPEIbq
	Zlp29sZsU09ncmBEgojZlxwoinja+EJDK2c/BxTD2tfwYQ0iJyVPzU01r3egXHAPfGmkpnzUT2PNF
	TvW1Lf3pn0Y9pceZAWxMKeq7ek4Sbwt3nglzY79LXsY1FNaHMkWzJqYe7Ox8iSSeTsrjBA1YNPM8S
	ZYi5ETdXcMTARMy+ltcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMSUY-0003wW-7B; Mon, 21 Oct 2019 07:52:38 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMSUM-0003t0-6z
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 07:52:28 +0000
Received: by mail-ed1-x541.google.com with SMTP id l21so9269291edr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 00:52:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lshseq5695iLMWS2/yTnU4q4phMFdnGbVyLcqMyDgNw=;
 b=f4plsD5OF7QI01+J/daaDJeoz3LkteQ6BQB7+jftsCG7vHACEuYAS0/ifg1VOZ+2bv
 DVnIY34EwF6RV/LyAIkxxcICf5gDAB5lJnzvHZwPiIbqUNd0/Lda6KhsIL7Vv666qS53
 0dm2LtJmUWVBz3Z6INSe5m7WXyh7OwRPV6IN4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lshseq5695iLMWS2/yTnU4q4phMFdnGbVyLcqMyDgNw=;
 b=ZBTlkC8xVpolgOhp9947mMTHx5/Icmqpo1ywC/FBT6/F8rypP3UEK8KvzNHsn2EpsD
 2DvRPpoKq3PSEks2MGJGcuUYvzWgE+XcX3iSW7gCPskrAsZWoylKb/Qi8i9xF5a345Ql
 +RHRO/Upqjo2QZv4MiS1yr/sCba5iuyuj9pvGHPC5YBwc4/AqZjQfgjbNjt4NMX3t0jX
 IGuWQLd+KOfUDubHzG6DwSRTTAIe8sU/kFxbLImiEQXSKM/aAUF7YocYh6ysaQB21m8s
 3Lx0NPZ234laSPoJj4JhIs29aPOPECOyDc88Ourvx/B+ZkQkj7F72gJ2oDK5NuVgWZZ4
 AWmA==
X-Gm-Message-State: APjAAAVCndntpAY/aO3Ra8hfU8t/HvM6nJGdTH0i9V3oaHnTHTzNsbyd
 pc5aLDWy9y3A2z+k9oXXmNV+wcp7TmySe9NX3jZBlA==
X-Google-Smtp-Source: APXvYqzlkUpYGQn2syS3ZLVsVWF/tTk0yVfY4fQyTuFCwfaWNooQm7u2tuJVHYSsQtBTu3rWlHNporZiD288c1BLvm4=
X-Received: by 2002:aa7:d8c6:: with SMTP id k6mr23548337eds.87.1571644344157; 
 Mon, 21 Oct 2019 00:52:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190906100514.30803-1-roger.lu@mediatek.com>
 <20190906100514.30803-4-roger.lu@mediatek.com>
In-Reply-To: <20190906100514.30803-4-roger.lu@mediatek.com>
From: Pi-Hsun Shih <pihsun@chromium.org>
Date: Mon, 21 Oct 2019 15:51:48 +0800
Message-ID: <CANdKZ0dAWWy7QMMZhNHAha5ZpcBo1GHebPc5_FRu5gvBc569QA@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] PM / AVS: SVS: Introduce SVS engine
To: Roger Lu <roger.lu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_005226_278634_3D9D5D57 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nicolas Boichat <drinkcat@google.com>,
 Angus Lin <Angus.Lin@mediatek.com>, Kevin Hilman <khilman@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 HenryC Chen <HenryC.Chen@mediatek.com>, yt.lee@mediatek.com,
 Fan Chen <fan.chen@mediatek.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Nishanth Menon <nm@ti.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Roger,

On Fri, Sep 6, 2019 at 6:06 PM Roger Lu <roger.lu@mediatek.com> wrote:
> ...
> +static int svs_resource_setup(struct mtk_svs *svs)
> ...
> +               for (i = 0, freq = (u32)-1; i < svsb->opp_count; i++, freq--) {
> +                       opp = dev_pm_opp_find_freq_floor(svsb->dev, &freq);
> +                       if (IS_ERR(opp)) {
> +                               pr_err("%s: error opp entry!!, err = %ld\n",
> +                                      svsb->name, PTR_ERR(opp));
> +                               return PTR_ERR(opp);
> +                       }
> +
> +                       svsb->opp_freqs[i] = freq;
> +                       svsb->opp_volts[i] = dev_pm_opp_get_voltage(opp);
> +                       svsb->freqs_pct[i] = percent(svsb->opp_freqs[i],
> +                                                    svsb->freq_base) & 0xff;

Should have dev_pm_opp_put(opp); here.

> +               }
> +       }
> +
> +       return 0;
> +}
> ...
> +static int svs_status_proc_show(struct seq_file *m, void *v)
> ...
> +       for (i = 0, freq = (u32)-1; i < svsb->opp_count; i++, freq--) {
> +               opp = dev_pm_opp_find_freq_floor(svsb->dev, &freq);
> +               if (IS_ERR(opp)) {
> +                       seq_printf(m, "%s: error opp entry!!, err = %ld\n",
> +                                  svsb->name, PTR_ERR(opp));
> +                       return PTR_ERR(opp);
> +               }
> +
> +               seq_printf(m, "opp_freqs[%02u]: %lu, volts[%02u]: %lu, ",
> +                          i, freq, i, dev_pm_opp_get_voltage(opp));
> +               seq_printf(m, "svsb_volts[%02u]: 0x%x, freqs_pct[%02u]: %u\n",
> +                          i, svsb->volts[i], i, svsb->freqs_pct[i]);

Same here.

> +       }
> +
> +       return 0;
> +}
> ...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
