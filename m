Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9ED1D4C30
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 13:12:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fb5ZD/ZeaVbm+sjvkxCaISZvXzR7v47cE9M9LWohrp8=; b=C8BRsl6u44fKm2
	iS57VMmTvnzTJxh6rUtPilhm5DZcc1ZDmFjwTsz4KZRqDpHwNO14pGlXrmgi+YROGY00QNs8nHp4R
	xRtmeHx2mC9ovdwj0+JQrOzOASvh3LdHEt25sbJKRl6036gzW8PrRgfOcE0SP4LtwVw7buLYzEPr4
	UmsvsVUz8EdlCIlKE3+INmRjsVIhOroVxu64zO5LaV/AQqGExKSbC+fTLq9yoYP+L9vGxO5H18UlM
	ZQm3xrEUbMTQWHPdPv15KZJOgdAzSygytvTiLKIUbuKTcOuFYgTSCAWLCFv+H9M4RU3EA1l8qHEUL
	3UqnTqEXgfTx54mlB2Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZYGL-00017T-LF; Fri, 15 May 2020 11:12:21 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZYGB-00015o-MU; Fri, 15 May 2020 11:12:15 +0000
Received: by mail-ej1-x644.google.com with SMTP id e2so1844979eje.13;
 Fri, 15 May 2020 04:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mDPmX+zBOB1FOVcPGDXxtVKn0gcZ1qfhCRVWeTxq8uE=;
 b=r/XGnEaxt/IlcucOMaN3sI+Tptdk5KSSK1jNiq+OfqytAfLNuieRI02BKpUT4ym3Yc
 p20kSvAg85TX+qcGEM68nG5NKC272BkkbstQ1O8TIIpjGvCGY/B6VLRi9pp4RXb9Iftl
 zlpUX0mf5VBou3CNPJTs12nQMkm4i06fCn6oDehO0iSrYbQhxxBn50S/zxtJdVYBKvAf
 fXFFmnd4uhJEOuE3rtfbWyOOL45K77nvUjzc9X7T1CpXnUDIw7aob1QLXz6qJyXS6feQ
 luSgeSW6SwA6/jM8VgYlXqJXamPw1XMJWWsfEMvhZNCehu/+bpz45c+HVdp6lpZa+kMz
 oyEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mDPmX+zBOB1FOVcPGDXxtVKn0gcZ1qfhCRVWeTxq8uE=;
 b=jXr9jNXh+THwAZzq9kWuVmVaj5qsEug4JPNQ/FbseJamxmNY/9UxxkQlbFiUemD8Ui
 9PbZN5MIGNcAcOHMvhbHW5mEBupGnqdW1YSOjQmZrAivcg+MKIBHlekxI+27AmjfLNkA
 mgdX71BCzP7o08a6F3GLaX1eoDzHGvhxAy31xxXKx94PmHcd/EPSnSda+BxnZbwmpLbE
 ok4G90kMauq5tSeo6nduv2izrv5Mv1EYBz103QR54hHOrA4ozsvrHAYPvbh7JC8swDtD
 sVxS8YzSzUAmW7uGzGm766NXXgNh7kfM0WrEbyOP1AuMqd3BrFuS4LMY191j3B1OD/qA
 MceA==
X-Gm-Message-State: AOAM533txf3m2vJWrzoh6Mjd0Ap0K6gDQlEEV5LOWzdK0NuZjLviNDxp
 w/GQwh8QnKGqh1aRmjdW6HbyGJBXqBGHm8GnZq8=
X-Google-Smtp-Source: ABdhPJyhR5Qi/o52NNgorqHZojlWgNxoKOe4vSX9Z7H8DNlGfH8Y07x1O5/FkONXwvRt6pldVQ0otaZTj0aHFftlGdU=
X-Received: by 2002:a17:906:d8c1:: with SMTP id
 re1mr2275220ejb.184.1589541129907; 
 Fri, 15 May 2020 04:12:09 -0700 (PDT)
MIME-Version: 1.0
References: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
 <1589472657-3930-2-git-send-email-amittomer25@gmail.com>
 <20200514182750.GJ14092@vkoul-mobl>
 <CABHD4K8F_sk3Xsevu4pMtR1jEanh5-dSATLYySPKW-nDY9fAvA@mail.gmail.com>
 <20200515065827.GL333670@vkoul-mobl>
 <CABHD4K92yySOJs9heBienGBieu6N+ALj7NKcAPvThQGXMWfOdA@mail.gmail.com>
In-Reply-To: <CABHD4K92yySOJs9heBienGBieu6N+ALj7NKcAPvThQGXMWfOdA@mail.gmail.com>
From: Amit Tomer <amittomer25@gmail.com>
Date: Fri, 15 May 2020 16:41:33 +0530
Message-ID: <CABHD4K-njmpbJQ3XR+qfgTK0QCOF819o6JCaSJcEn05-jqTNCw@mail.gmail.com>
Subject: Re: [PATCH v1 1/9] dmaengine: Actions: get rid of bit fields from dma
 descriptor
To: Vinod Koul <vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_041211_736305_D77FC655 
X-CRM114-Status: UNSURE (   6.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andre Przywara <andre.przywara@arm.com>, linux-actions@lists.infradead.org,
 cristian.ciocaltea@gmail.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

> I do have a cover letter for this series , But CCed only to Actions
> Semi SoC maintainers
> and mailing list.

and following is the link to cover letter for v1:

http://lists.infradead.org/pipermail/linux-arm-kernel/2020-May/732075.html

Thanks
-Amit

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
