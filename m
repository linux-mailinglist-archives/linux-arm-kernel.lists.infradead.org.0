Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A81E31BD8EB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 11:58:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rHe4EFG8d4Arbw4BQTveqTo/RcAsWwEVzZA+xQXVUtA=; b=TyiFUQLHKcALJE
	Z2np5I2j3nrsHyJr1oh1PIStRqTsgu6bXM01gqZQas6nhW2Im+0CU7rWUYor/QN8qHmIDXPgQgv3n
	2X2VSzHHmlaT+6A2+g2U+WKSBkFKU4qxIft/5LcFNUgtDMwO1pvxXfAuRx8dMzZ8eoOXp8I3E+2qR
	3TSHLwSIhHirj/xeYSN2sFDPiMnAwoEndsJ8m3Ry2QnTGVQaNPAcg00UzJbn/Uo5N8KAzMBl2wy3P
	IF9LjhamZ8nBRgdukUitEQk/U5Hn0PdHYlsDNuA21xJ8SyHqAhFLSR9FwS5XCzHHYlRBoOv+ViY+R
	Cg7e/uTP93wF5GKJm1fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTjTz-0006S9-Vu; Wed, 29 Apr 2020 09:58:23 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTjTq-0006RG-HN
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 09:58:16 +0000
Received: by mail-pl1-x641.google.com with SMTP id t7so676737plr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 02:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=kQWwU0V3P2cG9Df5CLi5Aes1IF7DF82n54z1tZA0tj8=;
 b=cQvDE5r8qFSkTrzZ4i81Gzp9dqP8ohUksJfLHUOBX+Po2pmMP1o2x1SSUZbwTC8ztO
 zpFtzt+mwbM1zrcinR/taemda/w0yc07a72tRJ+6+0IqETkEPswX0PzdXQJA5MSkyDmy
 bKGwQYt2bvw3qkOGUhOoR/WrST1Z0rVWR0Ba7OvU/32/ioUNtW8tLcJLNx7kKr4R5fq9
 xr7H/GbrVerDj9h4NkOjjmltmQnAiuozN55x/j7xKkGcazgitsrOdRcgn6qX+AmsxrKA
 bba2c5CNuwCwg+sVjBVP/Qb3NEU0bcRuttgfKRjy1jPmEEYaWLyGS5n2r52Mc3UZ4Gwv
 K/tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=kQWwU0V3P2cG9Df5CLi5Aes1IF7DF82n54z1tZA0tj8=;
 b=GWjE7JsmyetJag1BBP93CCm/Hn2vxYfaPPNJcWRtx3u4A/afO8G3FFm1amH8Ql68m5
 kK3Pyr5lkbDjlukiCJhT712VXBAIM6eu9Sfhu3D1VnCeCS6hzpuT3pnUFKppF8wl8DBZ
 sdMAW1Z4imL06YTIXjLDlV3QUQRXD1qDCHHNS1NLKxYOn9AKEuM684jhpP3mfWhvnnx/
 gHspk9LSvIvPHT+Bm41X3Avi1MapizK22XYc0kJ2cDyt3zMR77DmL9MC68fRr6Eu3jbJ
 KE4FqN3Aug9mO5+6tMvlo50pHSRCmYx/d9wO1uu1GjPqPZX/5n93lJ8gyYf+nwweHoPb
 /7ig==
X-Gm-Message-State: AGi0PuY6Z/oj+WZtQaUsaYnhNFTrDLgtPdgmMZjtcOLI5p2G/UkayEVF
 Ii9Umvmrz0wMSH4OU45n1Z4j
X-Google-Smtp-Source: APiQypJq9Vv8kOy3qRauSuH1fn2l54cguipwDjEbc1fxWc9BOiY6PCKS0U4dHaO2yA/f4lXw0vFZ9A==
X-Received: by 2002:a17:90a:d085:: with SMTP id
 k5mr2279937pju.91.1588154293427; 
 Wed, 29 Apr 2020 02:58:13 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6114:a3cc:cde9:1262:3f57:5dd])
 by smtp.gmail.com with ESMTPSA id f99sm4493906pjg.22.2020.04.29.02.58.08
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 Apr 2020 02:58:12 -0700 (PDT)
Date: Wed, 29 Apr 2020 15:28:02 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [PATCH 1/1] dma: actions: Fix lockdep splat for owl-dma
Message-ID: <20200429095802.GB6443@Mani-XPS-13-9360>
References: <7d503c3dcac2b3ef29d4122a74eacfce142a8f98.1588069418.git.cristian.ciocaltea@gmail.com>
 <20200428164921.GC5259@Mani-XPS-13-9360>
 <20200428181115.GB26885@BV030612LT>
 <20200428181803.GD5259@Mani-XPS-13-9360>
 <a70a2352-7b22-6b85-848b-94d9ee17c022@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a70a2352-7b22-6b85-848b-94d9ee17c022@suse.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_025814_617022_928DCC07 
X-CRM114-Status: GOOD (  26.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 Cristian Ciocaltea <cristian.ciocaltea@gmail.com>,
 Vinod Koul <vkoul@kernel.org>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andreas,

On Wed, Apr 29, 2020 at 10:36:01AM +0200, Andreas F=E4rber wrote:
> Am 28.04.20 um 20:18 schrieb Manivannan Sadhasivam:
> > On Tue, Apr 28, 2020 at 09:11:15PM +0300, Cristian Ciocaltea wrote:
> > > On Tue, Apr 28, 2020 at 10:19:21PM +0530, Manivannan Sadhasivam wrote:
> > > > On Tue, Apr 28, 2020 at 01:56:12PM +0300, Cristian Ciocaltea wrote:
> > > > > When the kernel is build with lockdep support and the owl-dma dri=
ver is
> > > > > used, the following message is shown:
> [...]
> > > > > The required fix is to use spin_lock_init() on the pchan lock bef=
ore
> > > > > attempting to call any spin_lock_irqsave() in owl_dma_get_pchan().
> > > > =

> > > > Right, this is a bug. But while looking at the code now, I feel tha=
t we don't
> > > > need 'pchan->lock'. The idea was to protect 'pchan->vchan', but I t=
hink
> > > > 'od->lock' is the better candidate for that since it already protec=
ts it in
> > > > 'owl_dma_terminate_pchan'.
> > > > =

> > > > So I'd be happy if you remove the lock from 'pchan' and just direct=
ly use the
> > > > one in 'od'.
> > > > =

> > > > Out of curiosity, on which platform you're testing this?
> > > =

> > > Totally agree, I will send a new patch revision as soon as I do some
> > > more testing.
> > =

> > Coo[l], thanks!
> > =

> > > I'm currently experimenting on an Actions S500 based board (Roseapple=
 Pi)
> > > trying to extend, if possible, the existing mainline support for those
> > > SoCs.
> > =

> > Awesome! It's great to see that Actions platform is seeing some attenti=
on
> > these days :)
> > =

> > > I don't have much progress so far, since I started quite recently
> > > and I also lack experience in the kernel development area, but I do my
> > > best to come back with more patches once I get a consistent functiona=
lity.
> > =

> > No worries. Feel free to reach out to me if you have any questions. The=
re is
> > a lot of work to do and for sure it will be a good learning curve.
> > =

> > We do have an IRC channel (##linux-actions) for quick discussions. Fee[=
l] free
> > to join!
> =

> Please also CC the linux-actions mailing list on any patches:
> =

> https://lists.infradead.org/mailman/listinfo/linux-actions
> =

> Mani, do you have a 5.7-rc1 tree set up or should I queue patches this
> round?

I haven't set up the branch. You can do the maintainership duties for this
cycle.

> It still seems missing in MAINTAINERS, and then there's Matheus'
> patches in review.
> =


Yeah, the MAINTAINERS patch has fallen through cracks:

[PATCH v2 6/6] MAINTAINERS: Add linux-actions mailing list for Actions Semi

I did this as a part of S500 clk series. Feel free to pick it up.

Thanks,
Mani

> Thanks,
> Andreas
> =

> -- =

> SUSE Software Solutions Germany GmbH
> Maxfeldstr. 5, 90409 N=FCrnberg, Germany
> GF: Felix Imend=F6rffer
> HRB 36809 (AG N=FCrnberg)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
