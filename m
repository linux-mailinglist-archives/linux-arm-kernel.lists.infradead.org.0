Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FEEB1930B5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 19:54:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lBSOr+5CiSQRzPq8A7BJKuMlx7H6t6RbEmlIWrgYl90=; b=LGep9EnUoRXKaQ
	G7GslO2WSCNMm6BJOftRDcDfgBTNHDxL54/ZN1DqN8VqAZZNOYIWY+dbikQSPvTcC7gl+GJyrfIhF
	QXMLuxgs63l+FAEpyCHW95AitQjJUXNqyqelMEX2WXUpPuIMB7mSAsIZsG7uBwgFX5/RMNXgtNjSM
	EXdvvR2DBe1gxhucfbzo2t5NtkzQETAZ539joeqwPUHCa+Yo12KHQsj8Zbqy+pVfyK3uP3EVsJx2p
	Okxk8mOmDMHqgGb9HtJClHEJE1lKOi6N3cYu2YeTRN8xauY/24e6rAJqsdblkXIR7YA9DB61SFUDD
	iRN1fbn0ZFiuP5ebpZKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHBAD-0004uk-HJ; Wed, 25 Mar 2020 18:54:05 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHBA2-0004u7-Py
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 18:53:57 +0000
Received: by mail-pg1-x543.google.com with SMTP id 7so1599363pgr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 11:53:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0A8XwLK/VHei5BNSLIP6RyAAlYr0PTQ3mUKooO2YHBI=;
 b=lRUs5gXjxEoqkj3/if5a2+eHB3Ind5z4U93waFxX6C2QEaho1OmHCbTn6w3kJqmrsf
 zrDUxx73i5J8KwBO5S1V+hx9GySQTXzGAkJ3upVOVowTfBnu49udAiW/y844IdGedClK
 loRaz52mO50+7BX5vqOf86CiRhXFAceiVCgzU+dOcR89dabpTMxLvslKANhq0WAxcZZg
 45ve6G5zRJgMup1TmPq8jKMj3OdlJXKEOOBhKbr9Sjo/MCHm5x60TFVxK4281OPRHOwk
 3KE1NAALBMq4ydP/SB1Gn/MKu8LbM6XLamBKfdq03weClINJIji8s8YHQbCDJFK+pFtS
 +U3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0A8XwLK/VHei5BNSLIP6RyAAlYr0PTQ3mUKooO2YHBI=;
 b=IJBFXylnmP7v2lZih6gk5E56XDm5DCRfESTSAs8pw5NZIq+YoCqoRfZ0hmCpipeETz
 AWC0ktHIjjcE4IpcT89rhxbjU5yhpJuWjFh6xmB0hGv/NNRMEx3Fcfn1hWrEdO1yuBiX
 qZo7jr+da6zpx0Ztu1ImfMZip0tMNeYvNvSlwHvF/maR5ZyQKeO1dvl2SfCZ0e30DA6R
 pZ6cuuF/wS33SDS6Xhxzj1zKGbMbFswqV+wLL4JEV6jf5TgSnVmueqXsAp2ufdXzLyoQ
 YZ7y9EUE+0lzSvXuS+lz/Ex+8u9roN1R+DMrvlHbgLaN1dMXU/JFqf+HKjBRipATvj8b
 Dkdw==
X-Gm-Message-State: ANhLgQ3BrYUdLm7hax09NcOykCftnsRJODateEU69FRSkMqBiMjW5obC
 8XnLkXu5YnGS/KgyGJQE2svv/d2YH7wj33rY968=
X-Google-Smtp-Source: ADFU+vs5IGiqDBHOJuHFA5G0E6zEcgp/2GS7T1qnTQ7Iwf3xjKO0zWxnArLFNE7IurwGXRC7fD0ppU5owx2lakG1HzI=
X-Received: by 2002:a63:5859:: with SMTP id i25mr4349929pgm.74.1585162433449; 
 Wed, 25 Mar 2020 11:53:53 -0700 (PDT)
MIME-Version: 1.0
References: <1585161361-3408-1-git-send-email-alain.volmat@st.com>
 <1585161361-3408-3-git-send-email-alain.volmat@st.com>
In-Reply-To: <1585161361-3408-3-git-send-email-alain.volmat@st.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 25 Mar 2020 20:53:45 +0200
Message-ID: <CAHp75VdPCWdpGo=2n9g0ivti-g2m4jZ=cG4BKHBLk8BVDzaCyg@mail.gmail.com>
Subject: Re: [PATCH 2/2] i2c: i2c-stm32f7: allows for any bus frequency
To: Alain Volmat <alain.volmat@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_115355_746207_A4668A1B 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>, Wolfram Sang <wsa@the-dreams.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 pierre-yves.mordret@st.com, Rob Herring <robh+dt@kernel.org>,
 linux-i2c <linux-i2c@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 8:38 PM Alain Volmat <alain.volmat@st.com> wrote:
>
> Do not limitate to the 3 (100KHz, 400KHz, 1MHz) bus frequency but
> instead allows any frequency (if it matches timing requirements).
> Depending on the requested frequency, use the spec data from either
> Standard, Fast or Fast Plus mode.
>
> Hardcoding of min/max bus frequencies is removed and is instead computed.
>
> The driver do not use anymore speed identifier but instead handle
> directly the frequency and figure out the spec data (necessary
> for the computation of the timing register) based on the frequency.

...

> +static struct stm32f7_i2c_spec *get_specs(u32 rate)
> +{
> +       int i;
> +
> +       for (i = 0; i < ARRAY_SIZE(i2c_specs); i++)
> +               if (rate <= i2c_specs[i].rate)
> +                       return &i2c_specs[i];
> +

> +       /* NOT REACHED */
> +       return ERR_PTR(-EINVAL);

WARN_ONCE() ?

> +}

...

> -                       if ((tscl_l < i2c_specs[setup->speed].l_min) ||
> +                       if ((tscl_l < specs->l_min) ||

>                             (i2cclk >=
>                              ((tscl_l - af_delay_min - dnf_delay) / 4))) {

Perhaps squash above two to one line at the same time?

...

> +       int i;
> +
> +       for (i = ARRAY_SIZE(i2c_specs) - 1; i >= 0; i--)


Perhaps

       int i = ARRAY_SIZE(i2c_specs);

       while(i--)

?

> +               if (i2c_specs[i].rate < rate)
> +                       return i2c_specs[i].rate;

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
