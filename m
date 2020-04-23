Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43CD71B5DEC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 16:36:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TxmwB/gXphrK4py8sQYAY+Tm3/Og75c9RcRdnh5c9s4=; b=MENpvQIWudZL7E
	LE7r1sawV7B7/ph5CpCYBdLbb9elJgVlc6/Q05nE3VIrm2KS2lsgPGVXjoZK3ANUEjy+QdsiLlO74
	nSrSmX+KwAmLXMPYvjEow1P7gCVb2GiauWObKOepA80zjYjkfC2G61gXur15P3noNLZZcF+e2JwiI
	YakbB7df2EDP7DUgMvNZJDLDjaZRtKFpgs28eZPv2Cs0N6Dx38ik5kKZpK2msaEVHrDUmXQ/4jHsy
	v7257gG7KLcw79g0h6m6tPSvro/1KlXYD9vGLlL1/yRp/czQxHaSUMw+j6bi1DDK8Vqvo6PLQwfoc
	ODMJLwqx3bKAXGQPsU5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRcxK-0004u6-TC; Thu, 23 Apr 2020 14:35:58 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRcx9-0004sK-OG
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 14:35:49 +0000
Received: by mail-ua1-x944.google.com with SMTP id g10so5881321uae.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 07:35:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=txoUP4TZL/kX6wzTvIyyPM8Tw98hlNv8TkS19LKzzNo=;
 b=Wkr0bymDg39KvhwGQedoiURyuP/SArfM/9lbpXIi1kmydOSd5DW7q2QV6F+YHrIzDQ
 JTwKM1kQFW1Ecz6bwK0sChfkdhZMNRukeEymx9JDsupFdDqi7m2c9kbHgwU1rbDm7JyF
 RDOjDH5tbRA+5Rrd8iV3L/pXJmss/r1qVJCMM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=txoUP4TZL/kX6wzTvIyyPM8Tw98hlNv8TkS19LKzzNo=;
 b=r0u/yI5ph7Ns5TlEikzscJIM8CJqIVA32YUb7mSHiwcdJidV1o1BBZaTNltqyGw+o9
 uceARztkfx1Yp2tneq96XS4uf3lepUtDz7O3HDi9KhdpWCoTkILzv8EGoVBuhHWLLkGW
 n7x8smG/0cDLd2lRApFBxia5xEtB/z7YX4vkmLIXSkst7kRAEprSjqdAdX307Utnt1di
 4JDHuINzZntera+jvYZQDPMmRcOVZTbAvvxkJhdDSuqGeDBHn/L7+lesEwrbSR9WCK7k
 OvtIuJ8E8279evxE91qjHKtZSeDxKftJXMsJ99qCTYY4aYMTRHLxiiAjrBI5zowwl1AR
 2bAQ==
X-Gm-Message-State: AGi0PuZyB/ZXrEklbdzdg5wZ/bleDR0vcmKowvxrAZWjmpm1GpXaXDrP
 8JYgwzTciZ3k2hJ57G2FL22dIhwivO0=
X-Google-Smtp-Source: APiQypJOAVZI78hN1oaoub0Bw0KHhtRb6NqogXbeRc6EUZtFPpHXhs3ssWmZsba3RkRKLxN73ZtAww==
X-Received: by 2002:ab0:1d97:: with SMTP id l23mr3297866uak.107.1587652546203; 
 Thu, 23 Apr 2020 07:35:46 -0700 (PDT)
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com.
 [209.85.222.46])
 by smtp.gmail.com with ESMTPSA id q6sm677934vsh.25.2020.04.23.07.35.44
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Apr 2020 07:35:45 -0700 (PDT)
Received: by mail-ua1-f46.google.com with SMTP id t8so5877390uap.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 07:35:44 -0700 (PDT)
X-Received: by 2002:a67:f5d6:: with SMTP id t22mr1333288vso.73.1587652544353; 
 Thu, 23 Apr 2020 07:35:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200423095531.9868-1-saiprakash.ranjan@codeaurora.org>
In-Reply-To: <20200423095531.9868-1-saiprakash.ranjan@codeaurora.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 23 Apr 2020 07:35:32 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W=d=KrTwgMOO-ukFc7ZhkE92qGYumUEDrtjmhQOpdWbg@mail.gmail.com>
Message-ID: <CAD=FV=W=d=KrTwgMOO-ukFc7ZhkE92qGYumUEDrtjmhQOpdWbg@mail.gmail.com>
Subject: Re: [PATCHv2] iommu/arm-smmu: Make remove callback message more
 informative
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_073547_811496_1DECF99A 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Thu, Apr 23, 2020 at 2:55 AM Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> Currently on reboot/shutdown, the following messages are
> displayed on the console as error messages before the
> system reboots/shutdown as part of remove callback.
>
> On SC7180:
>
>   arm-smmu 15000000.iommu: removing device with active domains!
>   arm-smmu 5040000.iommu: removing device with active domains!
>
> Make this error message more informative and less scary.
>
> Reported-by: Douglas Anderson <dianders@chromium.org>
> Suggested-by: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>  drivers/iommu/arm-smmu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
