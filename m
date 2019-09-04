Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCBAA8368
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 15:13:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SfrzM88mn3RHmR+ncwj9vfrpBrBrZDw6k30CymW+e+E=; b=jiXvGWDiV9g5wq
	4C7Qya30A3FHtobwouiw3yBQDCLc1iSo7v+OxN6tY6Hjzpm5U5fP25moFYKnHEqH01IbJZlW+KPnj
	HMAhLwG7NwysUc/Gy4FRUUmMBW5WE10o/JJKy8fYScxpxeKhDjsp71JB2IT3ewteILfX5KPTNU6ds
	r+OGvIs7/ZoMbu2MWHDruqJCvh4QmcLNQFvy3sMnFpVCV2NH/qvxMNWguKBv/GHcOGCmHcRU7bne4
	Znwhu4cBl4Mi/MZg97oIm7bYhUdcz7wyAH7cPl3k0SsKUwrZnTQPChDoGUEfhN65aOXfC42FmfLuU
	IWgr79a9bT4RAnurL1WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5V6J-0007In-3d; Wed, 04 Sep 2019 13:13:31 +0000
Received: from mail-qk1-f181.google.com ([209.85.222.181])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5V69-0007I3-L1
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 13:13:22 +0000
Received: by mail-qk1-f181.google.com with SMTP id o11so114670qkg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 06:13:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QqGOMSkNe8N9ujaKSarLnUIsNh3MsCa5d0oIcsW2/9g=;
 b=rCZLxXJ43ADFnI3oWSD4HQpAbr1DRXP0CPvUK18S6NFqJVfx3iOw93qJQvm0uB4u82
 Nqn3SMQIssSsqJ3Fon4SA8DhQfGDqQ3mL6d/6/K+TqqDSqpJfwlDERuX7HAR1nN3Im2m
 pfYe74xk6Zy4dVXq/AY5OhffJjWH1ZEGl6SMvWCeTiuCUrRCcQAlGGzy2AmN6sJMF0lH
 RTEGbZt95WyQqrpO/6vhRP7/B+TImEcl+TF3kgXKQWqakFaEdDrUbJBU8d5vW8uplnnr
 eNWBVb69+V7xg6Hx+h3ehKYLgogtkie/tBcsEstJhH2Px/j2nnz0ZiSZZayb/9wDBIvx
 Bt/g==
X-Gm-Message-State: APjAAAX+sdnDVzbxBDmBIKDqZnJap9zmy9uatgrmzl9m4H2zPwC4+v02
 7z7i4gsHfoNcFb06OjY6iA5JBJQyGOSPTaV6wOE=
X-Google-Smtp-Source: APXvYqzO3PFcH/vIwUuhw6gtlDDcL1WT1bcATeUsqqRnxIZTcHH+Qyaju8NPPRLENbew+gTdSZtLJAy6m62D8usUly4=
X-Received: by 2002:a37:4051:: with SMTP id n78mr37746223qka.138.1567602799917; 
 Wed, 04 Sep 2019 06:13:19 -0700 (PDT)
MIME-Version: 1.0
References: <1566875507-8067-1-git-send-email-santosh.shilimkar@oracle.com>
In-Reply-To: <1566875507-8067-1-git-send-email-santosh.shilimkar@oracle.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 4 Sep 2019 15:13:03 +0200
Message-ID: <CAK8P3a3_NWWBFrpNpbPH9+47Segi_EaYx2jx5jvPhYJJqR+a7A@mail.gmail.com>
Subject: Re: [GIT PULL] SOC: TI soc updates for 5.4
To: Santosh Shilimkar <santosh.shilimkar@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_061321_690940_EEA11083 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.181 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Olof Johansson <olof@lixom.net>, arm-soc <arm@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kevin Hilman <khilman@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 5:12 AM Santosh Shilimkar
<santosh.shilimkar@oracle.com> wrote:

> ----------------------------------------------------------------
> soc: TI soc updates for 5.4
>
>  -  Update firmware to support PM domain shared and exclusive support
>  -  Update driver and dt binding docs for the same.
>
> ----------------------------------------------------------------
>
> Lokesh Vutla (3):
>   firmware: ti_sci: Allow for device shared and exclusive requests
>   dt-bindings: ti_sci_pm_domains: Add support for exclusive and shared
>     access
>   soc: ti: ti_sci_pm_domains: Add support for exclusive and shared
>     access

Hi Santosh,

I noticed that your branch is based on top of v5.3-rc2, while my
arm/drivers branch started out from -rc1.

Do you have any dependencies on -rc2 in your changes? If not,
could you please resubmit after rebasing? I can also just
cherry-pick those three commits if that's easier.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
