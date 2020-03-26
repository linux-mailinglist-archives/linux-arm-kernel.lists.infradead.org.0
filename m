Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F040193E0C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 12:39:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fAoUtoWO7urGjYT/53FxrHuaiyV6YcZISn+/hdKydLw=; b=Tzhde83xNkNwHAYEK2wbSDcUjE
	lJ40juZcNF09PaFBXF0y8d2gUUvVKSHPqMTcdaT3dsguX9+wDK8ITFxeZySO9qt6LFN9cSihuGPlP
	M1QRC7A9LN8TJkSsu3uct9HeAPYOKv66pWgnBTNkNz56ANFNg5/UgLe+2+dFhbhoMGXZvZyGUYNB5
	ZdrJruVrFbUvdWl4JACO/kTeNPRAMcdw+V1F5ZvatKpoQMfVj3xzD7W6+W0rg0FMxjDVom0WJ3YGo
	fsesly81fUQn8EH8PKlIsUuCfW41t1Fd1OODx0L4vf9nMgMFoGtQmGqiBaQAZda09UqMJGO0lWLzf
	NJ/RKdYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHQqd-0004kB-3E; Thu, 26 Mar 2020 11:38:55 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHQqU-0004js-Pa
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 11:38:48 +0000
Received: by mail-pj1-x1043.google.com with SMTP id o12so2277598pjs.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 04:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=R0qU1vfFJtq/8uG9IZGBPMdQ0ZUew1mrKKw6hutamAQ=;
 b=DQZmDaLxybbCIR7OhJBlYkbfh0VC2lyHZ20SSGUBLSGqUYDxLQ8242wwrhvmMIkb+S
 kauniwR17uUed8TQ9jHasiNY9F0hFIQ+iOXlw+Z3KaBoTjCoZBiR8qmIhLhgn0N/zuzM
 22Gb5fG2swp7zD4zWaEa3wgW3PwSj369qegoLcBMjvsICPfjheRv0y8uxvwVUSBIG5Bg
 +OF0emN61e/tbswYEZI3gzkS/0ortnuXK/NQ29CCygBvb3JByEMDtFdtk+d7akr6J7KW
 7kSiz9I257CjR4R0WzKrrxKa8jSsmeOkN6bk6alieSvYuWHfQGIt4IjoxeM4+Q3z0DVJ
 WLlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=R0qU1vfFJtq/8uG9IZGBPMdQ0ZUew1mrKKw6hutamAQ=;
 b=o1Pgbu7L6xX1G0Hnk7JMS4FMTJAoNQ36B11ozqHAcyqGsM/+INAEjQTqZpXNR1cwbQ
 1B140WEoy3AnspGCDM2qwgAANTAntyneTldw/uUAXTZ9GVmCv5Kdveh+De2mqqgOYdBh
 iKuReEwgnpQ1w0dNOq013oS5UKSx5/0Licd/OnSUEZRTN4uajwwS2i/EDvdKndcVAWFw
 rZ24hRpZEbO6hnFbz8Ilr3h92JzjigPFcmx9/BTQkE0rj86V2fsAuA1Z4zEnj0KjKE6u
 BXV/WsBXflRzzZ0/7PhTswF+jQ3vwIgRCXBxH7HD91McA6bY+tFZIoJSIWUjlPXlRaeK
 KbwQ==
X-Gm-Message-State: ANhLgQ0RHJZaFRuiKfeg5d5atuXozBKmDtsCf16vGtP4cVtqwMxvEdRR
 ys6LGMdBOzSI/7d8LmJmaBPZ0hW9wMOHuShaX2A=
X-Google-Smtp-Source: ADFU+vvCH5BmVxfLH5Lsgo06YaFz8cXJ4Ew5KtuIz1eSdJLbu86yn4cADJqPrChVHtpWYi3ypBWuWoz1w1lJOmB4knk=
X-Received: by 2002:a17:902:5acb:: with SMTP id
 g11mr317572plm.18.1585222725777; 
 Thu, 26 Mar 2020 04:38:45 -0700 (PDT)
MIME-Version: 1.0
References: <1585161361-3408-1-git-send-email-alain.volmat@st.com>
 <1585161361-3408-3-git-send-email-alain.volmat@st.com>
 <CAHp75VdPCWdpGo=2n9g0ivti-g2m4jZ=cG4BKHBLk8BVDzaCyg@mail.gmail.com>
 <20200326101219.GA21190@gnbcxd0016.gnb.st.com>
In-Reply-To: <20200326101219.GA21190@gnbcxd0016.gnb.st.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 26 Mar 2020 13:38:38 +0200
Message-ID: <CAHp75Vc896RpnrX6+yb0LfXVroLJO5XX6Gt5V4BJZjdFYOXYnQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] i2c: i2c-stm32f7: allows for any bus frequency
To: Andy Shevchenko <andy.shevchenko@gmail.com>,
 Wolfram Sang <wsa@the-dreams.de>, 
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Pierre Yves MORDRET <pierre-yves.mordret@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre TORGUE <alexandre.torgue@st.com>,
 linux-i2c <linux-i2c@vger.kernel.org>, 
 devicetree <devicetree@vger.kernel.org>, 
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, 
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Fabrice GASNIER <fabrice.gasnier@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_043846_854242_0D6F1482 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 12:12 PM Alain Volmat <alain.volmat@st.com> wrote:
> On Wed, Mar 25, 2020 at 06:53:45PM +0000, Andy Shevchenko wrote:
> > On Wed, Mar 25, 2020 at 8:38 PM Alain Volmat <alain.volmat@st.com> wrote:

...

> > > +       int i;
> > > +
> > > +       for (i = ARRAY_SIZE(i2c_specs) - 1; i >= 0; i--)
> >
> >
> > Perhaps
> >
> >        int i = ARRAY_SIZE(i2c_specs);
> >
> >        while(i--)
> >
> > ?
>
> I propose the following code to make it a bit easier to read/understand:
>
> static u32 get_lower_rate(u32 rate)
> {
>         int i = ARRAY_SIZE(i2c_specs);
>
>         while (i--)
>                 if (i2c_specs[i].rate < rate)
>                         break;
>
>         return i2c_specs[i].rate;
> }
>
> If you agree with that I'll push a v2.

No objections.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
