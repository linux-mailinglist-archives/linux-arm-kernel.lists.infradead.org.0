Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 799B1118F22
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 18:36:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kA2WEmquO88FqeS3zJSFl+jyMOBgdAzJ5dzuuT1KSqc=; b=rMob2Vz5fGb0JH
	DyFe523fSx/OCcFAk/kUh6Jq5CbiA50PBq+iM4oIEh/oj1LdHF/I5xEMLrWu3dtZLwC3zVBthNnmz
	WJWzhXiWezLsHaCa2wwMBxrMb9yF+NZapngUKuPcMBHp9ZqyDM0UuwApNTJUm2Gw4B32rgEoJbry6
	7bgL01LNbr43QRGjn1fBPBBT+jBuyVgggzvoq3Ba2YlD4rSXw4rWWg8vUqyd2lFqEVoa3p2p3JtlZ
	geULx3yJgoSEwyH0HhPLmQfE9zKEMEYH8i4M99vH8cgtF+1fbQo42QXCdmk5ggXB6OZHJiDogCMt0
	+eypeFXyP0Z2xtxM1bJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iejQw-0002pC-AS; Tue, 10 Dec 2019 17:36:26 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iejQl-0002nY-SW
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 17:36:17 +0000
Received: by mail-vs1-xe43.google.com with SMTP id x123so13674373vsc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 09:36:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LF0NUs/gTAbnPh3P7c8Oln5jd1snr+9Etxa+YYjvbv0=;
 b=dl6WuCKFsUS31yk49Inxc+5dHDgOn52SzlNfT/7dg+1I9qaCNTBCwNCCKAKKv5A7Li
 Ay1z4j3MBsFKfYnfh6TAdmG7cTRkUf9somwN+9q44jT3L8VZvZFwd9ybu2MrXOlpkDC3
 IgEEHFW8OOkvaKCoqcV1sdlJeqDsqOUD3JJxESAsE1NzAEN+KIC/kym/qNJlTwFBhEzL
 4FF0JAjwEgxbq3VRnWZI8Yid6QLfbMv1+4jxKRe309K7+fJwHG7ODyEeRnGUHZqiM1VX
 h5+BI8i2v5NH/K5rvCuSU2hBmOW3byyeDXZLSOxPtBwoW5cmbw/WzRHs48GCULg1skiW
 DNIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LF0NUs/gTAbnPh3P7c8Oln5jd1snr+9Etxa+YYjvbv0=;
 b=E/t3f9l9uUirl3k/uxoA0tuHyWdF0duDTbRJRO3ibC6pNRiw2ky4Oa7dRZLARWOHhD
 qp7QvERr51XRnAtFj8UZ66WLA+88DM9OcLOHtY0o55KvMymQbhUPWdzO8TJwrg2cbzts
 uN8+K8Z0fcwmLKsU9AWQ5U7YkS7env973OM1uVsuhDurdREXnGcjJHOEmKlWfZomFYcK
 bTTdOkhmI2kKVByVUlLoqD/W7JeQtM4AeQUFLy9rUy1t6kJ6vqnfKMfAS2GaiUMWNg1N
 ExMo71E4GcWeCNsECNtPNlX6B9FIn26pBVLm+npjBAfesEy+P30g3RGyWk0SzWJZV6dJ
 jmGg==
X-Gm-Message-State: APjAAAW6zJ2KY9/fP2j23893lTuXoVLz7rPMBiPP5Qe5s+qwwqpUbyw4
 DOzZAyD/Om+v2JqjRntnVlhWS+N0iwnS9fe8YWs5qA==
X-Google-Smtp-Source: APXvYqzFz6yoFGEfW03gURGMxzSAkxQY/YFTYE5kw7PmONkGWJkCKN3lGIhJ7kLEYxYUXYGbEDxHiBIBu8xebUTWbew=
X-Received: by 2002:a67:fb41:: with SMTP id e1mr18789486vsr.159.1575999374197; 
 Tue, 10 Dec 2019 09:36:14 -0800 (PST)
MIME-Version: 1.0
References: <1573068840-13098-1-git-send-email-agross@kernel.org>
 <1573068840-13098-2-git-send-email-agross@kernel.org>
 <CAHLCerN7buq82RmmFkoSi_n8g8sSe9VO2utcXuEGM3xG3HcRTg@mail.gmail.com>
 <20191108031854.GA12993@hector.lan> <20191210105737.GB228968@gerhold.net>
In-Reply-To: <20191210105737.GB228968@gerhold.net>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Tue, 10 Dec 2019 23:06:03 +0530
Message-ID: <CAHLCerPs8+Fp1N-x7cQ2ETQ8d+fHN5b08V-jVFyFdQLYDndoBA@mail.gmail.com>
Subject: Re: [GIT PULL] Qualcomm ARM64 DT updates for 5.5
To: Stephan Gerhold <stephan@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_093615_961659_DF966D8E 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Andy Gross <agross@kernel.org>, lakml <linux-arm-kernel@lists.infradead.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 4:27 PM Stephan Gerhold <stephan@gerhold.net> wrote:
>
> On Thu, Nov 07, 2019 at 09:18:54PM -0600, Andy Gross wrote:
> > On Thu, Nov 07, 2019 at 07:36:03PM +0530, Amit Kucheria wrote:
> > > (Removing arm-soc)
> > >
> > > Hi Andy,
> > >
> > > On Thu, Nov 7, 2019 at 1:04 AM Andy Gross <agross@kernel.org> wrote:
> > > >
> > > > Arnd, Olof, and Kevin,
> > > >
> > > > I have one slight faux paux in this pull request.  A drivers: soc change got
> > > > into my arm64 DTS branch and while it is innocuous, it wasn't easy to fix
> > > > without messing up a lot of people who depend on the SHAs not changing.  So I'm
> > > > sorry for this inclusion.  I'll scrub this better next time.
> > > >
> > > > Andy
> > >
> > > > ----------------------------------------------------------------
> > > > Amit Kucheria (5):
> > > >       arm64: dts: qcs404: thermal: Add interrupt support
> > > >       arm64: dts: msm8998: thermal: Add interrupt support
> > > >       arm64: dts: msm8996: thermal: Add interrupt support
> > > >       arm64: dts: sdm845: thermal: Add interrupt support
> > > >       arm64: dts: msm8916: thermal: Fixup HW ids for cpu sensors
> > >
> > > One of my patches to add interrupt support to msm8916 tsens is missing
> > > here. Specifically this one:
> > > https://patchwork.kernel.org/patch/11201853/
> > >
> > > Will there be a second PR this cycle?
> >
> > I can work up another and throw it on top.
> >
>
> FYI, the patch seems to be still missing in 5.5-rc1.
> tsens now fails to probe on MSM8916 with:
>
>   qcom-tsens 4a9000.thermal-sensor: IRQ uplow not found
>
> Can you queue up the patch as fix for 5.5?

Indeed. Andy/Bjorn, let me know if you need anything from me to get
this into -rc2.

Regards,
Amit

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
