Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 215A31C7E5B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 02:11:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DvoW/UrYrB0UCuLWGijGYAZcH0+U+ZDL7ssgUTvUDZ4=; b=tBYUV2Uny9ZOH1
	o0d9o32Ugtno0pgZa6faYV8pnioHDGC9Wfc+iDvhBMCE+cRPtSEC0ebsaCOk0LGoJgmO7qXK46vVa
	RlmIpCs7FohXVy44yU1HZrbe4yzoN7U2S4SLLwqWlxrWZk3Zd4zsMsA0/euBxLVSkRjTUx9GzJUlM
	FpLObfgcRCrT+UMF0c0moWx0L7inys7jpx65NS7Ntawjqrn02eAg5FhPltaoPJU614XUTXRM/t6vW
	cRSDB4Oayjp9jUAg5q5x8KpcYqChHcwIIL4D0fFPZqNDl4BnowEqnEbtXrlkGHaVMPNTA0V3An8bG
	a53uI+ffpnGNC+j7+6FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWU87-0004O5-Hy; Thu, 07 May 2020 00:11:11 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWU80-0004NY-0I
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 00:11:05 +0000
Received: by mail-vk1-xa42.google.com with SMTP id b14so1027523vkk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 17:11:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GqsJ4w8SiNdYvs9i1O1oWTJDswwPt7gmDaN1Zm1BZ0o=;
 b=IirgN5uPNEkXVYW+TZDoNzKiLHCgEcf/Gvpo4Jq41Gwh+NhrB/yfrnGR3HodSUIUhd
 QZKBk14ylHtCo38AykpM4c/IUhnD2P4qVASnG0qtJtZwgUG2jSKcxJ7k5fsG4OSchZbg
 PKxQo8IGYwFPa5xgd73MGzlBnay+Myfz0dQKY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GqsJ4w8SiNdYvs9i1O1oWTJDswwPt7gmDaN1Zm1BZ0o=;
 b=PSUpKS0/DYrhU0ntlT5/g1XwODYbhWDoK3jderh1Snwtw8s7MIuynyxgcPjFwknMcP
 rMWy5yh/TqWI7dcBH6QgYVNH/mcSeGiHNAaKIE972H3eHLgVPJ4OrEZ5sWTZlZ6RzeRp
 ghlIYCfEWlOMm8N61KwCGcumw3uIdEsz3IRlsUt38wJMlSwMwvpEG+1bp1FXOZ+pxIp8
 QKZDP8b2EoBJth6eW+k6bGPBixIDncBVrYOabwEdhlupzPTlTwvWSBL1CT3Kqw93yPnq
 zieXjv8g43+z+8lcUrOSX6Xj+8W8uQs706l+z+x4YKF1zohJUmLPkhfbYigMrbrp+SIb
 FS6Q==
X-Gm-Message-State: AGi0PubvjPy04J5V24BE7e/U7Phjy5TtA18356CioX6AeKaxRiOKGub/
 60CY2fKLVKxuSZH1XVpgT+b8vVDDUv8=
X-Google-Smtp-Source: APiQypKLfnm1cULdUnMrU3FgFTCSIEkHZ97J9cSYHTCCOK/bGL+486c7pXkfUsPZ85rAwBwFZkRIyw==
X-Received: by 2002:a1f:2010:: with SMTP id g16mr9606525vkg.50.1588810261770; 
 Wed, 06 May 2020 17:11:01 -0700 (PDT)
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com.
 [209.85.221.182])
 by smtp.gmail.com with ESMTPSA id b204sm1811357vkb.17.2020.05.06.17.11.00
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 May 2020 17:11:00 -0700 (PDT)
Received: by mail-vk1-f182.google.com with SMTP id v192so1166921vkd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 17:11:00 -0700 (PDT)
X-Received: by 2002:a1f:9605:: with SMTP id y5mr9318997vkd.75.1588810260347;
 Wed, 06 May 2020 17:11:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200423095531.9868-1-saiprakash.ranjan@codeaurora.org>
 <CAD=FV=W=d=KrTwgMOO-ukFc7ZhkE92qGYumUEDrtjmhQOpdWbg@mail.gmail.com>
In-Reply-To: <CAD=FV=W=d=KrTwgMOO-ukFc7ZhkE92qGYumUEDrtjmhQOpdWbg@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 6 May 2020 17:10:49 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U0Hhae3D1-P8kbcZafHeuqng11BNAbOb2YWPx+M7X5Gw@mail.gmail.com>
Message-ID: <CAD=FV=U0Hhae3D1-P8kbcZafHeuqng11BNAbOb2YWPx+M7X5Gw@mail.gmail.com>
Subject: Re: [PATCHv2] iommu/arm-smmu: Make remove callback message more
 informative
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_171104_073670_855BF799 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, Apr 23, 2020 at 7:35 AM Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Thu, Apr 23, 2020 at 2:55 AM Sai Prakash Ranjan
> <saiprakash.ranjan@codeaurora.org> wrote:
> >
> > Currently on reboot/shutdown, the following messages are
> > displayed on the console as error messages before the
> > system reboots/shutdown as part of remove callback.
> >
> > On SC7180:
> >
> >   arm-smmu 15000000.iommu: removing device with active domains!
> >   arm-smmu 5040000.iommu: removing device with active domains!
> >
> > Make this error message more informative and less scary.
> >
> > Reported-by: Douglas Anderson <dianders@chromium.org>
> > Suggested-by: Robin Murphy <robin.murphy@arm.com>
> > Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> > ---
> >  drivers/iommu/arm-smmu.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>

Is this patch waiting on anything in particular now?  Do we need
reviews from Robin and/or Will?

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
