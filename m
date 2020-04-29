Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3954C1BD71C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 10:22:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WAf868AeqgxkRR8NTJkN0gCl/RIGmDJadCEtpjOnKuc=; b=eRDRCfJOB0BUnw
	L9WBUJ7hWeRMjHm446pXWfnRXFsMCKJpW+HerRJiuurPh39KfA4+khyl6XeSWiJnKUSkSzHe1IX3X
	7knR72ZiR3ttS8snc5lYNEmgs5Yqx2Ui/x8z7DgwpuuWi+IOZ9sRgPF0m7bBKszuKtyhhuSpp9nGM
	ka4DMEb+LDYAFwLEZspkjHDhws9WH5VfP3Wbuvi6EYX1Mhzs5XNNUJcxPKkOCw2ie4inh0rvCkZj5
	gd7Us9makUaNZHIQZB3if3ohwPJmjzL78XcBwfGRmcDzxWE+cUQmXxeM0nxHh9FMceEg4oPsDYr2u
	9DKywFHPwo/GkCIMR+ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jThz9-0000Zf-7v; Wed, 29 Apr 2020 08:22:27 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jThyZ-0000F4-4X
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 08:21:54 +0000
Received: by mail-wm1-x343.google.com with SMTP id x25so988865wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 01:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9YrQOHDbmJnPKKTvmQG5p/Lai5qrrvsqVUCdrarGgC0=;
 b=I9pcgC8TZZt5Kg0A7T7Sj2GX1f3NndD9VL3+SitseYmNYZCHbW4qyQbSaIhgJ2k8F9
 A4I/PYoz9MXS1mMf5mMtKKa8odnpWVMfBdSeYkjsmyccvPIjsyDG2KvoZckg84yWXCAT
 Y6BibMgeLOuRP5/QlCmQbtJbOwX2chmzcYD+0bKcOGgb2Jv2xrHxrCh8hYEH2YHJ6vF/
 6YBdsXb5KcdSrNCXK005EXZs+/4NDKa0kcEOmgHV35NNBcB18QblhsCRsehmWumsgBh4
 CE+724OEI0a1mlv9maOUA39PwHvLs1bBqHnYrym3q5oe0JXZlwl/nIpAO6g3UoDq/rNh
 SFsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9YrQOHDbmJnPKKTvmQG5p/Lai5qrrvsqVUCdrarGgC0=;
 b=N8I6o7zJfbPeQsmcs032t5hMxMPAERWr3k+RUccHEEK3M1guV/oUW5XGtpqRdsUCC9
 GGfyZjnp3b4WZ8HAmQ6pN16MJQjKZskBIWvNCTJAIayeCIFH+Xg/i+GLdMMhZu06/CSn
 C7A2NhIIYu5NAkUY0RhLg7eAeC6Ot6z2/epPOsvBWTZDjW9pFtNAK/Aib9I0rgzbDgLE
 1DlJLLzuLD2Wquu1vVk2ZwQr3ahs/XrvMx2+43t41VCUmTiZzgZ3LiR/4h9PNheHwbUb
 SCxMgoVHox8t41T9nhvTmOQBIrGdAXRDjmneGbrk2SNe6djFCq8O+/zLyMB7zqUogzyG
 pDRg==
X-Gm-Message-State: AGi0PuY3Ja4ReQB72UETd5Gk8n49QQA4u5ypGhSI5HonQi1rIJPpQZNb
 Nkr+/JH++bHmeXhC2OWtSTmDnvoojHFsBpGm0uQ=
X-Google-Smtp-Source: APiQypKGkoXSNV8IrqXx0pbjTev2ByLg0A0Y8YCXnburHa1C62WyWY3/obBJqfCR72hvN1/GNuPReGW+qHxhMBIIIcs=
X-Received: by 2002:a1c:9948:: with SMTP id b69mr1828574wme.44.1588148507074; 
 Wed, 29 Apr 2020 01:21:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200428212752.2901778-1-arnd@arndb.de>
 <6b39fbba-c65d-2c02-14bf-11c2d00547af@linux.intel.com>
 <CAK8P3a24whg2RhJE3Vf5u3EWy+wvFqhXdp7EQZuQx0shPsMARw@mail.gmail.com>
 <f91c9a68-7641-beb8-a23e-bd1b9b8d0acb@linux.intel.com>
 <b784c008-7094-05cb-6200-6b246ff39bb8@linux.intel.com>
In-Reply-To: <b784c008-7094-05cb-6200-6b246ff39bb8@linux.intel.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 29 Apr 2020 11:21:35 +0300
Message-ID: <CAEnQRZCr0NAfx4UGcd3v6Cr5bZpUmQg5VCG9OA=aj=4uJX0qOg@mail.gmail.com>
Subject: Re: [PATCH] ASoC: SOF: sort out Kconfig, again
To: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_012152_363101_008F20AA 
X-CRM114-Status: GOOD (  23.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [daniel.baluta[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 Fabio Estevam <festevam@gmail.com>,
 Kai Vehmanen <kai.vehmanen@linux.intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, YueHaibing <yuehaibing@huawei.com>,
 Takashi Iwai <tiwai@suse.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Daniel Baluta <daniel.baluta@nxp.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 sound-open-firmware@alsa-project.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd, Pierre,

Thanks for looking at this.

> >>> Thanks Arnd, do you mind sharing your config?
> >>
> >> https://pastebin.com/HRX5xi3R
> >
> > will give it a try, thanks!
> >
> >>> We noticed last week that
> >>> there's a depend/select confusion might be simpler to fix, see
> >>> https://github.com/thesofproject/linux/pull/2047/commits
> >>>
> >>> If I look at the first line I see a IMX_DSP=n which looks exactly like
> >>> what we wanted to fix.
> >>
> >> Yes, I think that fix addresses the build warning as well, but looking
> >> more closely I don't think it's what you want: If you do this on
> >> a config that has the IMX_DSP disabled, it would appear to the
> >> user that you have enabled the drivers, but the actual code is still
> >> disabled.
> >
> > Are you sure? we added a select IMX_DSP, so not sure how it can be
> > disabled?
>
> I just tested Arnd's config with the patch we came up with for SOF
> (attached) and it makes the unmet dependency go away and builds fine.
> the problem is really using select IMX_DSP if it can be disabled by
> something else. My proposal looks simpler but I will agree it's not
> necessarily super elegant to move the dependency on IMX_BOX into SOF, so
> no sustained objection from me on Arnd's proposal.
>
> Daniel, this is your part of SOF, please chime in.

I would go in favor of Arnd's patch as it gets rid of exposing
IMX_MBOX into SOF.
The code will be fine even IMX_DSP=n, because the exported functions
used by SOF have dummy implementations in case IMX_DSP is not selected.

One concern is that we could end up in a case where IMX_DSP={y|m} but
IMX_MBOX=n.

Technically this is not possible because IMX_DSP depends on IMX_MBOX. So,
one cannot generate such a .config file from menuconfig interface.

You can add my:

Acked-by: Daniel Baluta <daniel.baluta@nxp.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
