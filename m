Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4D1177704
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 14:30:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EoRBVrEVF6tZer8qKUynjenH4WJJTxOetRS8R9JtWMY=; b=BVlmqLQWnCkfal
	f3ZuRM3+MB7LcJ+Um+/irD/ZqJzGwzYPVpkTQEqkkwPrNj+xDV4UTs+g4RoHejqj7QpRUWM7Xin0v
	Jh7s52YcCh0G5bS+a4/5SbGKuVVJfepwl1UKk78QYYFAF0IdYwF2ld1mJWj/u0bCPhgHm/uahw3SJ
	KldzCVbFzW0F3JlEXKhtvRuAa79BDQAswsf14aMo6QMcIrExq4fNXuViybU6lFUwU0PuvH5bS1gCs
	DxkdzggpTRp959pz/obPLu7dimhzcE+iVDx+SSGJsKFNNFphCADN72IIgYtMPqktZTOfNbtIjNNma
	nIDVYXQFQfrAwKLe723w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j97cX-0000G7-9I; Tue, 03 Mar 2020 13:30:01 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j97cO-00007m-2O
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 13:29:53 +0000
Received: by mail-wr1-x443.google.com with SMTP id v2so4267133wrp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 05:29:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hicGAyZ5CpHfmsbw4Kl9cPGuNpt8g32PuytU/UcEDL8=;
 b=CV1elQMgZLhBpuFfL5DjPopxXqFjooMD4nNFS/3zO/mg/Y0/qPPlbnp33SZup+b6Xn
 R0cE9JzQP4R+zgJnfJFQeNA7dybshykF3a2Ldu9qefqWJuiMHnZSFlgqQpSJtEsRyXab
 qAGDJu1tgLL/6+jZDbiLPhijElTtaRK5jMYuE82RT5dC2hH+bHvuAP9EdL3BBOjQkmxT
 IqqyonwLWKq58HGm6CL1MVGtHWy1+FBRHWDoYPPWKlVhP9gL8EQOMMNbZGEZrl7vM5RD
 qncE4ethqNSxzsEB357sbW5pZKYYUinUGRcUtKfY65TpSbFeZUURs1wPKt6vMXtGRShc
 wPsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hicGAyZ5CpHfmsbw4Kl9cPGuNpt8g32PuytU/UcEDL8=;
 b=TqYG7Rv14iTzLgUXBETElkrV1FlveT0oSKTHOA5J9AFU9JUJ2zmt3U8rXaGhVS7zEW
 xh37X7nUJYff+F9hFSqFknTK7gWESraMSV5ABAhUE6punYgHai6ZVB5iVDlZSqaoQ4gL
 vVDfD1A17Tnj665Q6+YpEhfhhhcoH0N3YVS+CpNKAcgiawd3636OudgIxNyTGrhQPFxt
 UuEXpRPPkCoiUUgfL3AC7X7S3Kr/rmuSRJ6P67vFBFZy0eQN9GWFQ72QuFa3qgn0RGiz
 o1+4O7hv9ZIwd+G+IB048lDjC4sFVMKLmxv1B1LvVJ8INvZrzqXmzP1BlsdNUhxkjmU3
 rDQQ==
X-Gm-Message-State: ANhLgQ0l24EJRMOcIpySbnEU/o/iHYKeGc/1lk1MhwDE0J/diERpgPH7
 EsvuZ3lSC46z++TTgYjYxzwEaEfbRvq795mTgLo=
X-Google-Smtp-Source: ADFU+vuFtNgxjbewAK+JcEL9uWLOVuASSCsfonI72+FgdQg4t/bXLC/G4KfOc+tj4z3cmF6C36Db39T7GycrQg3xlxQ=
X-Received: by 2002:adf:9dcc:: with SMTP id q12mr5802969wre.164.1583242185866; 
 Tue, 03 Mar 2020 05:29:45 -0800 (PST)
MIME-Version: 1.0
References: <20200302205700.29746-1-daniel.baluta@oss.nxp.com>
 <20200302205700.29746-2-daniel.baluta@oss.nxp.com>
 <CAFQqKeU8YF+aZVTafj3ZiPvNUsx3nK-8cdr8eJUm=_9_2TkRQg@mail.gmail.com>
In-Reply-To: <CAFQqKeU8YF+aZVTafj3ZiPvNUsx3nK-8cdr8eJUm=_9_2TkRQg@mail.gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 3 Mar 2020 15:29:34 +0200
Message-ID: <CAEnQRZBNMRNYOKwqweuZCeOYgMGh9DprRvz2ci3EOQPxqN3fhg@mail.gmail.com>
Subject: Re: [RFC PATCH 1/2] PM / domains: Introduce multi PM domains helpers
To: "Sridharan, Ranjani" <ranjani.sridharan@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_052952_116397_75D721CD 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [daniel.baluta[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Daniel Baluta <daniel.baluta@oss.nxp.com>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Pavel Machek <pavel@ucw.cz>, Fabio Estevam <festevam@gmail.com>,
 khilman@kernel.org, Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
 dl-linux-imx <linux-imx@nxp.com>, "Brown, Len" <len.brown@intel.com>,
 linux-pm@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Paul Olaru <paul.olaru@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Greg KH <gregkh@linuxfoundation.org>,
 "S.j. Wang" <shengjiu.wang@nxp.com>, rjw@rjwysocki.net,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Ranjani,

On Mon, Mar 2, 2020 at 11:24 PM Sridharan, Ranjani
<ranjani.sridharan@intel.com> wrote:

>> + */
>> +struct dev_multi_pm_domain_data *dev_multi_pm_attach(struct device *dev)
>> +{
>> +       struct dev_multi_pm_domain_data *mpd, *retp;
>> +       int num_domains;
>> +       int i;
>> +
>> +       num_domains = of_count_phandle_with_args(dev->of_node, "power-domains",
>> +                                                "#power-domain-cells");
>> +       if (num_domains < 2)
>
> Hi Daniel,
>
> Just out of curiosity, should it be an error when num_domains is 1? Is it an error because the expectation is that the caller would use dev_pm_domain_attach() in that case?

NULL here doesn't really mean an error. It means that we don't need to
handle Power domains because as you said the caller
already used dev_pm_domain_attach.

Similar with this:

$ drivers/base/power/domain.c +2504

int genpd_dev_pm_attach(struct device *dev)

         / * Devices with multiple PM domains must be attached separately, as we
           * can only attach one PM domain per device.
          */
        if (of_count_phandle_with_args(dev->of_node, "power-domains",
                                    "#power-domain-cells") != 1)
               return 0;

Will update the description for when this function returns a NULL.

>
>> +               return NULL;
>> +
>> +       mpd = devm_kzalloc(dev, GFP_KERNEL, sizeof(*mpd));
>> +       if (!mpd)
>> +               return ERR_PTR(-ENOMEM);
>> +
>> +       mpd->dev = dev;
>> +       mpd->num_domains = num_domains;
>> +
>> +       mpd->virt_devs = devm_kmalloc_array(dev, mpd->num_domains,
>> +                                           sizeof(*mpd->virt_devs),
>> +                                           GFP_KERNEL);
>> +       if (!mpd->virt_devs)
>> +               return ERR_PTR(-ENOMEM);
>> +
>> +       mpd->links = devm_kmalloc_array(dev, mpd->num_domains,
>> +                                       sizeof(*mpd->links), GFP_KERNEL);
>> +       if (!mpd->links)
>> +               return ERR_PTR(-ENOMEM);
>> +
>> +       for (i = 0; i < mpd->num_domains; i++) {
>> +               mpd->virt_devs[i] = dev_pm_domain_attach_by_id(dev, i);
>> +               if (IS_ERR(mpd->virt_devs[i])) {
>> +                       retp = (struct dev_multi_pm_domain_data *)
>> +                               mpd->virt_devs[i];
>
> Should retp be PTR_ERR(mpd->virt_devs[i]) here?

PTR_ERR returns a long but our function needs to return struct
dev_multi_pm_domain_data *.

> Thanks,
> Ranjani

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
