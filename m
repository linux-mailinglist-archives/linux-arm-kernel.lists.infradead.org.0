Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2C45CCF9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 11:51:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uwr+uI7oMFXUXbFvUaXpVjXPWBN4RnWhtgDFPkVvvts=; b=GtxUcTTeAvOV+b
	luT1cA2zPEwn6NYLMjsCdQjv9RqS6DdJAOuLTfQvbR5nhcapA6EA/PC1NTmr6qeWNJBBsITYM4+ph
	HO/Gk0fvp9zFyAVzcbHjPZd+3SPTobYfnxbHrNoSpv1cVGTEnfuXbhFTAmNEzz3OIXvwvT8/qTj45
	0MgtQ3FZDzzT3/2q91GSv1lENL4At/OhBZP7/QqWMCdxIKz4Iuebo+Cpq16WE7rJaLpw4imWHtIz9
	yp5swgRzg3oY936KMbJu4qNllF9MnJE/3J7JDHtc/7trPOoxsYLmrltFZf9rrzj7bSkrsXhW6L+tC
	zJIN/eY1KYdZfOQpRdFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiFS4-0005DF-Ck; Tue, 02 Jul 2019 09:51:52 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiFRq-0005CQ-NY
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 09:51:39 +0000
Received: by mail-pl1-x641.google.com with SMTP id 9so105282ple.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 02:51:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=96/3jtqs845f5zIFwO5nxuuVCQy9SyepnoAKFsIrIMw=;
 b=JfZyrUjlJL43ILmmdwAy6F7txZsfdzO4AQzkvU7IZPP/iF9/X6mtv5kQO6hMGe4MJV
 2l0FeeMmm6hwQNIyj1F/HRmwbXPZJxWLb+aw+9WQ+CbJpEYfWp2N7nLI+xWWUA0TJddq
 J1SrIjHpPakOu+/2qOzUTtgqt0GDGhKM+5lqGldG1FvUP7qTXUHsZLLs3KmEJ2mmKzc6
 C0hgtVgTsJFWst0ts15bRtKuNlwucq4HLOHhSZuiWhCIsNxLQzP8oppYwIx6iYl5TZEl
 3kcJwVcth2oV3/nxOU2RR9CqWxMtosf0r3x2Ok+Rq1pTgO/MbphyI9wQ0PhKI1a//55F
 yo4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=96/3jtqs845f5zIFwO5nxuuVCQy9SyepnoAKFsIrIMw=;
 b=twOc4kHs69mwJ43yjv2UaZu+prkcn4I1Z14AK+0a98J9yq21jw/sn6FviNL0Te9DzD
 v0VVcfBEukuLejY2sAVo/u+WapmmF9N+YjmBnngBZtGgZkvQmiA74krxzcrEpyMOKCp8
 15VwsKubTJm4mlQtswaphuteEDcft+OfmQvUs5bY+70gn8s1zPmdl+th5M1W982k1aVK
 Ei7qtse+XKzDHsizmw2iylonDYtz3+O7HJK5SJyEHQdKP+dsIlrg7BoOON9PV6xQNxZ+
 Ym6+bdw7/b63Yy0ghh8r8QcGhHAeYGwvDfnNyyUdKWh6CIqMFByJQC6/zf3p/RtoU17A
 gklA==
X-Gm-Message-State: APjAAAU9L1a+1hXIJaRO1dEnrni5lEiu4wdSsIOt/4VzuV9s+RiI0vnH
 RfVmB5DacjZ/Tkomqc3t/V2KvKcPSW4ukVS52Xs=
X-Google-Smtp-Source: APXvYqxhyUjR0CrI9KX1v9haSzz6fkp5zqzu2IxjxZvlFO45fy5nIdN3K4RDU2J0uhXSTOlvwyIMohZj8GfA+WQFMqk=
X-Received: by 2002:a17:902:934a:: with SMTP id
 g10mr34957358plp.18.1562061097869; 
 Tue, 02 Jul 2019 02:51:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190701032342.25971-1-huangfq.daxian@gmail.com>
 <20190701075255.GD172968@dtor-ws>
 <CABXRUiSO2Fos1V3hR5t3AviZ9Hit_y+E-Tp3PNOQj6-FKUBJBw@mail.gmail.com>
In-Reply-To: <CABXRUiSO2Fos1V3hR5t3AviZ9Hit_y+E-Tp3PNOQj6-FKUBJBw@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 2 Jul 2019 12:51:25 +0300
Message-ID: <CAHp75VeUo2Au66tETo3zneBpeaVU+Y+-h5zghpo+hPuB=a6-eA@mail.gmail.com>
Subject: Re: [PATCH 2/4] input: keyboard/mouse/touchscreen/misc: Use
 dev_get_drvdata()
To: Fuqian Huang <huangfq.daxian@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_025138_793761_310C95DA 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andy.shevchenko[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Tony Lindgren <tony@atomide.com>, Richard Fontana <rfontana@redhat.com>,
 Laxman Dewangan <ldewangan@nvidia.com>, Fabio Estevam <festevam@gmail.com>,
 Rob Herring <robh@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Anson Huang <anson.huang@nxp.com>, Lee Jones <lee.jones@linaro.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Luca Weiss <luca@z3ntu.xyz>,
 NXP Linux Team <linux-imx@nxp.com>, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, Brian Masney <masneyb@onstation.org>,
 Arnd Bergmann <arnd@arndb.de>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-input <linux-input@vger.kernel.org>, Vladimir Zapolskiy <vz@mleia.com>,
 Alexios Zavras <alexios.zavras@intel.com>, linux-tegra@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Allison Randal <allison@lohutok.net>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Pascal PAILLET-LME <p.paillet@st.com>, Shawn Guo <shawnguo@kernel.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Olof Johansson <olof@lixom.net>, Christian Hoff <christian_hoff@gmx.net>,
 Enrico Weigelt <info@metux.net>, Gabriel Fernandez <gabriel.fernandez@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 2, 2019 at 11:20 AM Fuqian Huang <huangfq.daxian@gmail.com> wrote:
>
> I am not an expert on this. I just write a coccinelle script to search
> this kind of misuse and fix it in a naive way.
> Could you tell me about how to use the proper bus accessors? Then I
> will fix it up and resend a v2 patch set.

First, don't top post.
And answering to this, simple drop the patch.
Proper bus accessors is exactly what it's used in the current code.


-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
