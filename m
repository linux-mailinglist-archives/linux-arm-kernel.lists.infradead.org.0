Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0584B1F4B60
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 04:25:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X1Op9Zhhbj5IyTM1TbipBDrE/ANIj2xIfJJqe7UABQo=; b=A4nGRgD1McePaH
	jCVWgcpahWzfQBQ1YKWryTBCgC0L5dRMCT3rkF5oxHFrdTwOM31Vha6zkm5IG6Tihsvn46W7EwUcJ
	9D/IYo+34jZANm+q/3yNMlMDhOr/thZTXIVtH0CTwZiLfA62sfPXCn0AKawU9Y8bT5ThlH6LekX/J
	nLvro/kuLuyEWVvP839ZY7wOFvEuJvcV1KCXiDFPuhW3NPUjggBGFJb1i1OpclfDAuU6urBKe97rQ
	dueuWV+hcuk+7UA23mVP+KylNfv3sWWP63zG5jz+KSgd7TUGQP79bCea+sv2ljYIb/4zH/V9nuhb8
	e4pkKer8GY4GVEeqcjrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiqQE-0001kn-IU; Wed, 10 Jun 2020 02:24:58 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiqQ5-0001kJ-Hz
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 02:24:50 +0000
Received: by mail-io1-xd44.google.com with SMTP id o5so459392iow.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 19:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WL9w6hwM5zwERLskxjbOw8ThwKl4nB9IVsOxgE1aSfw=;
 b=b2Pg1DmQL9P+qQbJmBlRhO8NtpM4v3VMQ3hqoRVe0OUmgjuHXJJ+Rr5F39s5GpmdXk
 +wjMGJrBl414GoAbQN8cMUvAROoa42COk6SQXHMt7bm95zIzlwAmmBM0p+oiPgdZLVuK
 /hTQPh5DyFQpc1aeP0cmN2YWXrywKrrWLCVXJh8Vp8+3v5FbKoZzJB0T9f3Gx7ONVfxy
 nU5kt9sin5zr/8zBfNCCHUJD3Oh2QS1+XXm6HTliGLMG5L1UHz34nH2/c3CuyT07mkd3
 kSbk1lSZN++4YQN866MC4lXH53k8czjtdWiFvCzeA/XmsxY9xZk0T7sER6W+Hy6Z5itS
 eEsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WL9w6hwM5zwERLskxjbOw8ThwKl4nB9IVsOxgE1aSfw=;
 b=bzKCXWmAq3VSR1PrXcJubVWIGcIxBELgEFQ+C1q9A0N7Bl8KsHujoXnpnnHjmjiwer
 PQyoVZCvi/dtSrsKy2YWZtRtWvokRE96qoocDtcAaOP6xfeTILM5zwVI44rZAnbrQXMS
 Cy/7t1USu1QqdVzbApB1/ITUrTv95uKGVbVnv1thqdDxiJL3Xcjp0YbjWsSoc12gDZPB
 hH/B3yFDnxkduuWkBjYPZLhhuQHt26F5XxuXN90eWFTzXx7rAwC6BxtMQw17Y8H7BXe3
 rNSZWTuSvPx3xLXy5aRlZPlbIOmSRjNS7HkNJvSgUIG9sV0FRazV4NxYAnfIhMHmR7JS
 X90w==
X-Gm-Message-State: AOAM5318cXFScEciGG6wwoApSBrM9aWOwPaUlmhP2OKzqa42isl9ssVk
 vg7DAGU21qXwwlFiJC1zrx/OUUR25KFRjlM5Y34=
X-Google-Smtp-Source: ABdhPJzJL0VW4ZqrcmeuZtWCByNYhsDAOHjCX0d7VNmCxG+zN5Y4+GfRIxYqtLeW9H5uN1evIqiHkRYY0zBAWwV8mZQ=
X-Received: by 2002:a05:6602:2431:: with SMTP id
 g17mr1167430iob.3.1591755888469; 
 Tue, 09 Jun 2020 19:24:48 -0700 (PDT)
MIME-Version: 1.0
References: <1591605038-8682-1-git-send-email-dillon.minfei@gmail.com>
 <1591605038-8682-3-git-send-email-dillon.minfei@gmail.com>
 <90df5646-e0c4-fcac-d934-4cc922230dd2@arm.com>
 <CAL9mu0+__0Z3R3TcSrj9-kPxsyQHKS9WqK1u58P0dEZ+Jd-wbQ@mail.gmail.com>
 <20200609153646.GA17969@lst.de> <031034fb-b109-7410-3ff8-e78cd12a5552@arm.com>
 <b0c85637-4646-614b-d406-49aa72ce52e1@arm.com> <20200609173455.GA25467@lst.de>
In-Reply-To: <20200609173455.GA25467@lst.de>
From: dillon min <dillon.minfei@gmail.com>
Date: Wed, 10 Jun 2020 10:24:10 +0800
Message-ID: <CAL9mu0KejK9JRrJg5tFb5xKGjaEYr=XRpvGB2nuBfnhLeBMdng@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm-nommu: Add use_reserved_mem() to check if device
 support reserved memory
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_192449_613797_0BD2D117 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Vladimir Murzin <vladimir.murzin@arm.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux@armlinux.org.uk,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, tglx@linutronix.de,
 info@metux.net, linux-stm32@st-md-mailman.stormreply.com, allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vladimir,

I tested your changes, it's working fine on stm32f429-disco(armv7m,
without cache) board.
you can submit a separate patch for dma-direct support on non-mmu
platform, i will drop mine.

thanks.

best regards.

Dillon,
On Wed, Jun 10, 2020 at 1:34 AM Christoph Hellwig <hch@lst.de> wrote:
>
> On Tue, Jun 09, 2020 at 05:25:04PM +0100, Vladimir Murzin wrote:
> > Even though commit mentions ARM, I do not see how mmap would continue
> > to work for NOMMU with dma-direct. ARM NOMMU needs it's own DMA operations
> > only in cases where caches are implemented or active, in other cases it
> > fully relies on dma-direct.
>
> > It looks to me that we either should provide NOMMU variant for mmap in
> > dma/direct or (carefully) fix dma/mapping.
>
> I think dma-direct is the right place, the common helpers in
> dma/mapping.c are basically the red headed stepchilds for misc
> IOMMU drivers not covered by dma-iommu only.

Yes, thanks Christoph's input.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
