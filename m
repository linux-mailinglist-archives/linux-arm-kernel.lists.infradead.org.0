Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 593F21C1B47
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 19:10:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wgRmSuhnsKoYDNdBj6CFV++YJMKuJJhHFRDcMArjiEI=; b=mhmkNJK2A7aBKs
	ZmwXwzDCOVmb5ufOR78KYxNU79jtB0GW2CZEfn/obT109XjpvOPti43stvfuGw0+h7Z2d5twzHRmy
	BEQBfSHkJNt8hiK4yAXkJdoll/QIhsAGGrzo2PTw2/3QxdFa1lZQTl4cV1YJpBU8AxYx9ZuomYJKU
	VUQVkiGISoUfLjc4S5efrXqTLAshg03hHFtRAr3lk6THbCP/oi23RB86MSA6aNizTkcR76dmLm+mH
	F+wtYnHSbKcGeppbg4njHME8NOzfZPePM1ZN99CPN5XhdD+26Cmk1sScjzgmHeMEvMPCgm9zdAPo6
	I9xwKBcMQE98+TLHcrjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUZBD-0004jq-Ru; Fri, 01 May 2020 17:10:27 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUZB5-0004hx-PI; Fri, 01 May 2020 17:10:21 +0000
Received: by mail-ed1-x544.google.com with SMTP id r16so7757509edw.5;
 Fri, 01 May 2020 10:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mdsa9GHdUWtpaN13DncP5RB/gp8GCrhEqRpKlncbW8M=;
 b=VFix+ZzzMeP4eNt2Ma6wISbnBws23mS6CK24e9btsoxi/rWAL28gHCi3lnw01N2Mso
 xg7A5BAI4W+HY83Q4a9smJTfbPRB6vX6oaiV3FXBRkn6hDHWIN0DGdL47vAFMZS93EAF
 Xkpme5PxE0x9U6DQBOSk3KEchoiisb+4c0tORK82VbZJgmveYqqkviH8RVMWJ5kFg7Xj
 2ccbyQziO0INOSv7Rs+puN5g+q31+TzX5QZpBq0IJFlBvvq+RRHCqRO29F3xDWvwUxN3
 UqXlO2R0Jo/A2g7JJ6pIyPJD/KyOOoAubmsnNLXOyDELxVxqF3Zt+TX4hw9AX1+H4XOu
 eayg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mdsa9GHdUWtpaN13DncP5RB/gp8GCrhEqRpKlncbW8M=;
 b=Mvr778edSVjsEKqLvxeVhEYnbMi4JnHFBfhwT26rc4tKV123OIZcrpwCq4e3+QnyQM
 bnRhHVIZZdEBXAm6YOm4XPCM3TKZdOxH2jxc6Ux06LJ39IkyRjy6xogWiN91d1E0wQ21
 p1bVkOgTRTIyWE2jbTp88Zs7Qfp1OmApDGMIiYw38RmfLJOXM7ixT0GLIJd4ehy/IKMq
 iBntMfxPlJyWlKTljPB24I+wQixw5EfJ5xkcoJH6EIgzcAVg8hDWF3Z+PVa+ZW0Hs3mO
 8t80GdhOtXoh2efNBDvKab/e//L54u+hsswSnp5zxh1yi5UqqmmUEQBDB5jbStMvcRPk
 FloQ==
X-Gm-Message-State: AGi0PuaViy/1KHN7YojNDMALqoVd21uLlZynGsOXrFEYaFGc8Blzx98X
 6ILap5jj2S5zq8YE3FL5EpOBbKb6cna6HV0RUSc=
X-Google-Smtp-Source: APiQypIlznByGASsngfncYgj2mcw6Vrs/KqUKB8Ee7ab33jQKBgHBdr9tJ2P2JZNmmWhIHFqaa9FcURiBcyKlJ1LWcU=
X-Received: by 2002:a50:fc06:: with SMTP id i6mr4256455edr.110.1588353017519; 
 Fri, 01 May 2020 10:10:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200429201644.1144546-1-martin.blumenstingl@googlemail.com>
 <20200429201644.1144546-9-martin.blumenstingl@googlemail.com>
 <20200501154448.GH128733@lunn.ch>
In-Reply-To: <20200501154448.GH128733@lunn.ch>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Fri, 1 May 2020 19:10:06 +0200
Message-ID: <CAFBinCCbtLRomdikKWkS+HOFoek4cGhN4L91FQfQ4rbKTV-xvg@mail.gmail.com>
Subject: Re: [PATCH RFC v2 08/11] net: stmmac: dwmac-meson8b: add support for
 the RX delay configuration
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_101019_848739_E084A631 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, f.fainelli@gmail.com, jianxin.pan@amlogic.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-amlogic@lists.infradead.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On Fri, May 1, 2020 at 5:44 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> > +     if (rx_dly_config & PRG_ETH0_ADJ_ENABLE) {
> > +             /* The timing adjustment logic is driven by a separate clock */
> > +             ret = meson8b_devm_clk_prepare_enable(dwmac,
> > +                                                   dwmac->timing_adj_clk);
> > +             if (ret) {
> > +                     dev_err(dwmac->dev,
> > +                             "Failed to enable the timing-adjustment clock\n");
> > +                     return ret;
> > +             }
> > +     }
>
> Hi Martin
>
> It is a while since i used the clk API. I thought the get_optional()
> call returned a NULL pointer if the clock does not exist.
> clk_prepare_enable() passed a NULL pointer is a NOP, but it also does
> not return an error. So if the clock does not exist, you won't get
> this error, the code keeps going, configures the hardware, but it does
> not work.
>
> I think you need to check dwmac->timing_adj_clk != NULL here, and
> error out if DT has properties which require it.
Thank you for your excellent code review quality (as always)!
you are right and I will fix that in the next version


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
