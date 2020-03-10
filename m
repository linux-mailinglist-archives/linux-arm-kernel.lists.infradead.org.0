Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4905518081B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 20:31:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3akDuIuia9FJuCZmjq+nNVft3t+wrTXLKPCo795dm9E=; b=g9K3AvO2D2OJzg
	BySWAFTvylB8d+cjiZhYitYReY8RtXRxyNZGSVA7qFlHUAfWnRx6RFYe8YDnBnEo4Z+Lhg0akY8oP
	pJBPG/bLE2S5NCZWWhZc8Dvm+HCfBZu054XPaMEPDMS6kL/baOwr81IHLENo6Kn1OHymr8lYm85jD
	+zQqc2NCQZiDqM72JumCJuz+ffDclrYSAgM4fR6s1ZbjtDboYPQtRyFqsvWVxEAFK3q8rbwe52k8X
	fR+S+Wijz4mJszej9Gpi0j21fSH8RHypaoZ2XvRbcntRskRVrHFltfFd604/VzncBEilBaZotDQ4X
	q/jn6javAMbVpKhpOI7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBkak-0002PX-7E; Tue, 10 Mar 2020 19:31:02 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBkaU-0002OW-TI
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 19:30:48 +0000
Received: by mail-pj1-x1041.google.com with SMTP id u10so849432pjy.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 12:30:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=AJRSlX8ACsNJYHeYADgE5H8uhXcF0mJHjX5CwOONp+U=;
 b=tNa2jovN2/9sEj+6L+LwQ89bUm6qQeL5msJv6lU9KS/ceeZ43FUB09Flmsn6bgDHj4
 aAZ1SXH+4BR3x+lnlFZj+jZ4zGtboFb18SrT62j0SZ/0dzyG4C3e8vqirT3qBl+vQyFY
 FmhEfWDKOmwrZAbmVMS89aVn9svg7eNR81bzxT1otZKw7VXyHPfGicxpnBlFOj+tLr3E
 oPBY4Y/Zd97bn7KYmCDKZJ3hekzFzeu2r+vXpUsxmHsjV9c2f+eH3NBdTzCO2HkVBdqT
 z3Nt7KOgDUJ3b5vWXwF5iZzGRN7QlM583joEbUXkF7mdmeWDZbrljNYf8dGuJmwiiI++
 H2Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=AJRSlX8ACsNJYHeYADgE5H8uhXcF0mJHjX5CwOONp+U=;
 b=n5Ev8aFYT+8gC9GJJ5BQXR6PCwOexivXDFfNfVGyQNHUkLxzrwcUT/FnvIPGpry2ng
 5ZcrIB2fbYsr1DyFhJh4IpKwMfIo0yLIfbI6XpYokpBDEtWV+zprNtXt+q4HE8snFtsA
 ARDvv5NVUmOTiT0fV++rkcn/OGqhWyCIRYeuhByT1qYQ2a7xlqFM3I/4qc4Umx6Uxwb9
 U+NGxctWhY+zS/t6Lh+pA2J3pVXHzYT63y0cUTz2rg31x6wk/5vI/BKAZ1oGnPAfumeg
 nWhn7LtnE1L4wJtYocF+gOyZ06PAr0lhSkK3dvrWys9hhJgrU8ihTS3cCok58Qn4C3Gx
 7GMg==
X-Gm-Message-State: ANhLgQ2bKJfLpN4rsmw9M2FEuCgnW1K17hyrfAaVjc8yg1hWROxKH+tJ
 if5bGFakr4hgUyydF+JBYVVo8w==
X-Google-Smtp-Source: ADFU+vsVDVUGxR6MJs+LL+a6nlg/iZNbc1sWFgPhY/gWhW0iz8LwAh/F6g2cpRAUdwBA/bEkQ0opQA==
X-Received: by 2002:a17:90b:4903:: with SMTP id
 kr3mr3246307pjb.3.1583868646154; 
 Tue, 10 Mar 2020 12:30:46 -0700 (PDT)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 19sm27050061pfn.30.2020.03.10.12.30.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 12:30:45 -0700 (PDT)
Date: Tue, 10 Mar 2020 12:30:42 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Cl?ment Leger <cleger@kalrayinc.com>
Subject: Re: [PATCH v5 5/8] remoteproc: Rename rproc_elf_sanity_check for elf32
Message-ID: <20200310193042.GK264362@yoga>
References: <20200210162209.23149-1-cleger@kalray.eu>
 <20200302093902.27849-1-cleger@kalray.eu>
 <20200302093902.27849-6-cleger@kalray.eu>
 <20200302231342.GE262924@yoga>
 <482678048.7666348.1583222551942.JavaMail.zimbra@kalray.eu>
 <20200310000005.GF14744@builder> <20200310152031.GA25781@xps15>
 <371773363.9138477.1583854699708.JavaMail.zimbra@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <371773363.9138477.1583854699708.JavaMail.zimbra@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_123046_953693_BCE5E936 
X-CRM114-Status: GOOD (  27.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 Loic PALLARDY <loic.pallardy@st.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, Jonathan Corbet <corbet@lwn.net>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-doc <linux-doc@vger.kernel.org>,
 linux-remoteproc <linux-remoteproc@vger.kernel.org>,
 Patrice Chotard <patrice.chotard@st.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Andy Gross <agross@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, s-anna <s-anna@ti.com>,
 Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 10 Mar 08:38 PDT 2020, Cl?ment Leger wrote:

> Hi Mathieu,
> 
> ----- On 10 Mar, 2020, at 16:20, Mathieu Poirier mathieu.poirier@linaro.org wrote:
> 
> > On Mon, Mar 09, 2020 at 05:00:05PM -0700, Bjorn Andersson wrote:
> >> On Tue 03 Mar 00:02 PST 2020, Cl?ment Leger wrote:
> >> 
> >> > Hi Bjorn,
> >> > 
> >> > ----- On 3 Mar, 2020, at 00:13, Bjorn Andersson bjorn.andersson@linaro.org
> >> > wrote:
> >> > 
> >> > > On Mon 02 Mar 01:38 PST 2020, Clement Leger wrote:
> >> > > 
> >> > >> Since this function will be modified to support both elf32 and elf64,
> >> > >> rename the existing one to elf32 (which is the only supported format
> >> > >> at the moment). This will allow not to introduce possible side effect
> >> > >> when adding elf64 support (ie: all backends will still support only
> >> > >> elf32 if not requested explicitely using rproc_elf_sanity_check).
> >> > >> 
> >> > > 
> >> > > Is there a reason for preventing ELF64 binaries be loaded?
> >> > 
> >> > I decided to go this way to let driver maintainer decide if they want
> >> > to support elf64 to avoid problems with 64bits addresses/sizes which do
> >> > not fit in their native type (size_t for instance). This is probably
> >> > not going to happen and there are additionnal checks before calling
> >> > rproc_da_to_va. And addresses should be filtered by rproc_da_to_va.
> >> > So, actually it seems there is no reason to forbid supporting elf32/64
> >> > for all drivers.
> >> > 
> >> 
> >> I was hoping to hear some additional feedback on this from others.
> > 
> > I didn't follow up on this one because I agreed with your assesment and didn't
> > think it was needed.
> > 
> > Simply put I would rather see rproc_elf_sanity_check() gain support for elf64
> > and let the platform code decide what to do with format they don't support
> > rather than spinning a new function.
> > 
> >> 
> >> I've merge the patch as is, but think it would be nice to clean this up
> >> and just have the driver ignore if fed a 32 or 64-elf.
> > 
> > It would be really nice to see this cleaned up in time for the coming merge
> > window...
> 
> I could have sent a V7, but Bjorn was faster than my comment ;)

I figured it had been maturing on the list long enough and expected the
cleanup to be a nice incremental patch.

> Bjorn, Is there any way to revert that or it's already pushed ?
> I already have a clean V7.
> 

Please base your changes on what's in rproc-next (and today's
linux-next).

Thank you,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
