Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9395719F03A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 08:04:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1dCQyUeWpUjRdx1GegtNwpf5PqiHpKnYH1VvBM+sOHU=; b=nXjOjCUs4jRyeC
	cpCIlHndjKEHSFVp8CI2u898tHwl+Frppm+xmU29e/2oV5i3b6T5LAAD0/Ab5UPVyfNJDBU7M9P/m
	RFuUb+D7Xdtg1qgJXJqnFi+feIo0RTnKKQrIZUvMvWvuMLbO2p7f9z7+YwQnDJkeV+rw+MfIgHDK/
	yOiwmGdihWSuvLkr7jTLAoyJ4vZhkRroutw8b+7bipZ09tf43u68Ecmf4Npe5R6LGfqJb3aod3gvf
	Rzo/mAFnUl73KDslXzfYXoVO6u0fvrKnJhJr3O6p7ncDsWm5FCHdGrM7jgZH+4JjJ7iSyE+Tv9dPJ
	FiA/NG2vdKf3ySd0jtQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLKs7-000738-Da; Mon, 06 Apr 2020 06:04:35 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLKrz-00072h-S5
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 06:04:30 +0000
Received: by mail-pg1-x543.google.com with SMTP id d17so7052163pgo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 23:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QFvFA2IJ6GMOs1qc9Un2h+lh0ikAjobBmHDiymvmQ3w=;
 b=GtrdT8yyu6uljdxsXnGcOZJDYfipXrhZT+Ssi3IqgeE9LYYy5k1Rnzwhe0cCNuZc8i
 GEx6PLXt1WQ5T+P6vcjJZFcsxEWZMIZ+pBmB1urS3mcMsJ0JAbIaRlOo12oYSM3KsQ52
 QGT6FTVas4uKbVvSR1iuVGzqx21DhqwZuCBd41cAmG+7Z+5ROHOm8NHmLyO7bmTa7sY1
 sEkidKwptE8eRpFAivg0O1K7DovYi5TQjP3UtLawxGm/PHs30JrAiI4rb8oygYAp1k8T
 /O8DQvbzalKiil+xmZYTsaxq/hE59mXtFnsERGo7s07K12ahKPYpfzndVz09nGquGIgK
 lKtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QFvFA2IJ6GMOs1qc9Un2h+lh0ikAjobBmHDiymvmQ3w=;
 b=U/cUNgowfIuVU+hghTRQSYit2iCbIIHnwfCy5VNIQthj2UiwL2LHMa22z3T6EjX3rW
 PzOyxKoNhrBXUYzESep5qq4G6ddfLc/y7ZkMaKc4dhjcWXPnPLyQy3V4XpkDWR6v62Cc
 uI2TEoObg1p47u4Bg8jLiorC1nWZ58KodW28pInBd17vnXFpV6pto+6SH7weldB12s2+
 xSX1mYQM6ex14MFFGlN2aNOf0KOKVZl9od7rtl8hNtSXYlEpY2gVKDE0LokuJen0mWdc
 miRSyj2LJdZEeH4FSQEFW4R+BNzDyJPZlh5IcczrZ9YYGePc8e03ZK3YsJSJv6+FxKqr
 YCtQ==
X-Gm-Message-State: AGi0PuYnmEDBvykSNXjf3TDqOOX8tJmpvA5MqsIZuVAdiZU1eZvnsM9G
 0+hl3+Wjfj2/o5WhF+pXVdjR
X-Google-Smtp-Source: APiQypLLm5KyGBPD+P+I1MwgVVO4HjtoG199EluwR7ELVAdVJjIpbHP/Ux7R61j+vdMFXw+BcifxzQ==
X-Received: by 2002:a63:e44f:: with SMTP id i15mr20018471pgk.310.1586153066876; 
 Sun, 05 Apr 2020 23:04:26 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6e80:687d:9124:eff9:55e8:1727])
 by smtp.gmail.com with ESMTPSA id t186sm9963620pgd.43.2020.04.05.23.04.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 05 Apr 2020 23:04:25 -0700 (PDT)
Date: Mon, 6 Apr 2020 11:34:19 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V4 00/22] ARM: dts: stm32: Repair AV96 board
Message-ID: <20200406060419.GA2937@Mani-XPS-13-9360>
References: <20200401132237.60880-1-marex@denx.de>
 <20200405144305.GT8912@Mani-XPS-13-9360>
 <38dc1697-28e3-8680-4998-74e30339a2eb@denx.de>
 <20200405183729.GA9410@Mani-XPS-13-9360>
 <0faa0102-4504-d17b-fb7a-d710100cce2f@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0faa0102-4504-d17b-fb7a-d710100cce2f@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_230428_072008_2DB645DA 
X-CRM114-Status: GOOD (  23.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 05, 2020 at 10:01:54PM +0200, Marek Vasut wrote:
> On 4/5/20 8:37 PM, Manivannan Sadhasivam wrote:
> > On Sun, Apr 05, 2020 at 04:55:54PM +0200, Marek Vasut wrote:
> >> On 4/5/20 4:43 PM, Manivannan Sadhasivam wrote:
> >>> Hi Marek,
> >>
> >> Hi,
> >>
> >>> On Wed, Apr 01, 2020 at 03:22:15PM +0200, Marek Vasut wrote:
> >>>> The AV96 board device tree is completely broken and does not match the
> >>>> hardware. This series fixes it up.
> >>>>
> >>>
> >>> Can you please share a git tree with all these patches? These are not
> >>> applying cleanly on top of mainline/master or linux-next/master.
> >>
> >> Alex asked for them to be rebased on
> >> git://git.kernel.org/pub/scm/linux/kernel/git/atorgue/stm32.git
> >> branch
> >> stm32-next
> >>
> > 
> > Thanks, I'm able to build with your patches. Btw, I just found that the
> > current mainline versions of u-boot and Linux kernel are certainly broken
> > on old Avenger96 (588-100) as well.
> 
> Considering the difference between the prototype board and the 588-200
> production board, that's quite possible. Are you willing to test things
> on the 588-100 board ? If so, then we can try and support the 588-100 too.
> 

I can but looks like DH Electronics doesn't want to support 588-100. You
can check with them!

> > u-boot doesn't boot while linux kernel has MMC2 and Ethernet broken as you
> > reported. However, checking out the commit which added Avenger96 board support
> > in both projects works fine.
> 
> At least
> 35a54d41d9d4 ("ARM: dts: stm32mp1: sync device tree with v5.2-rc4")
> in U-Boot broke the old board.
> 
> But that should all be fixed for the upcoming U-Boot release in master
> already (for 588-200).
> 
> The rest is a lot of incorrect pinmux in both, fixed in U-Boot already,
> fixed by this set for Linux.
> 

Yeah. Let me have a look.

Thanks,
Mani

> > So this clearly tells that there is a regression which caused the board support
> > to be broken with mainline u-boot and kernel. I didn't try to find the offending
> > commit(s) as the support for STM32MP1 got matured in both the projects. But
> > we can go ahead with your patches.
> > 
> > I will review the remaining patches tomorrow

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
