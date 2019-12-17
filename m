Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D481223F4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 06:41:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0pJWCNE4rYtg+dxwP+eg/ssGZqsrD/fR5yOMGDI3FBY=; b=AJRIFoR7Z91Kvz
	Oz0wkvClP1HONyDm+LpUUBYKURPXwNhe1p1pw5tjJqJ1EZWLonMODyOfKID8722MjVQp2Poe1vE8j
	xuLhdeKBtyYd0u7dDV6nODvDCTdLj6OCgZFW5JD4f5Puzfm3m0FpH0xE5VuhofTi8MbR0tVdzaCsj
	vUdIOiITK99GcykNP9bFvnlb4Pfq7l3dAp5uuz10Vwmtv7zKght0Yn7fP10djs3+hZdNxb5pcEgab
	XQc+D3plO0PgpgD44G/O7fTKvTu2kpSj6+PgEwne7PqellQwJl1q61oUGNIQnljcmM77t0HyjHIYV
	uGbGSNs1TB7PiM4s3GkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih5cG-0005RQ-GD; Tue, 17 Dec 2019 05:41:52 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih5c9-0005Qv-6m
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 05:41:46 +0000
Received: by mail-ed1-x541.google.com with SMTP id l8so7077296edw.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 21:41:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pBEQ27rUPB5Ji325yzVtRJwNpSWsHvdv/pG0UUzVVvw=;
 b=HM3fZp9vKp8JOjdG7QdxKZHs4JSAhtiaJkhlgOcs9mpn2hYmjqt77ZlIPjUFVwWiK8
 Xiae6uCwAzFbblPtokhp3F/KbrJaFM0TNkBYS7JEFWjn0QLKktPm4UbxUiaVnr4EtQmS
 Wm0whp4IkaZCbpeW6GHMRjmPx5/em1qSXtusA42o7mQn2dl3cXqDuNFAr/jI5ePoJjg8
 lh6lk2jdjCL4jmpd6oA/w6oPU2Hl7kkZoDGMrJ3VfM0JrJa70vTwjHavvDmNtwAxKsZx
 sS/VDzq5C3F2rJ/XFT+eVaJDzyoHDYxmiVaO72iElog8S+6BCrwK3m/kfhl9/5SKdsDj
 h+5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pBEQ27rUPB5Ji325yzVtRJwNpSWsHvdv/pG0UUzVVvw=;
 b=pVXO/xyTvZX1z9lkSQadJPmZSV8UyoXFHMB8bvqiIC8Ko+OUXMz5hBPGXAm/8/S5QW
 3nfhoD6L/rfKi1thhgUtFbQ+s/7mOE4vc72iTpnytcgS/QpLbQ7BY3hl8tOv1g4AZiyX
 MG4BpFBbob1Fb9kLfpvv98binMj0VYFhi4s0PzEfmil/jLgBJPXFEW2hXCUOH+rijos5
 LDL1IqMWQFyo6Pkfy9xR58vKRdINNo6tGZ2yh83zOX5TwJhkpW2QoX4Z3s/VzKXa4W/4
 ExOzJ+9qkgu5BQNc2OpjmZeGf2RWp+uFUed5bP7053Q355ZDLtJkkKUHArl6iAr/CoiQ
 BnAQ==
X-Gm-Message-State: APjAAAV7BJB4QGjD4nzlJq7bBkoIxgJ2vVe5zSolcmvum+fuqxqckQEz
 2HzWKSXk2OKaYlAM8DmgZfLHPUcweepvRt1k8XI=
X-Google-Smtp-Source: APXvYqwMoMibDqrnBBLdFBlqoyXkIi7+yhcQYvKuMjQ+wFwuyvc8Nq0/66W5ZtGzMS61ync+lWEAT2pRvycydfZ6uFg=
X-Received: by 2002:a17:906:a394:: with SMTP id
 k20mr3089647ejz.216.1576561303142; 
 Mon, 16 Dec 2019 21:41:43 -0800 (PST)
MIME-Version: 1.0
References: <20180416012248.25891-1-amworsley@gmail.com>
 <20180416012248.25891-2-amworsley@gmail.com>
In-Reply-To: <20180416012248.25891-2-amworsley@gmail.com>
From: Shubhrajyoti Datta <shubhrajyoti.datta@gmail.com>
Date: Tue, 17 Dec 2019 11:11:31 +0530
Message-ID: <CAKfKVtFmGmef1AwK9XKccZDP0f+gCjNfmAhFpPcCObeuKvbU+w@mail.gmail.com>
Subject: Re: [PATCH] Further cadence i2c buffer overrun fixes
To: Andrew Worsley <amworsley@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_214145_272449_2FC5164F 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (shubhrajyoti.datta[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, harinik@xilinx.com,
 APANDEY@xilinx.com, asarkar@xilinx.com, linux-i2c <linux-i2c@vger.kernel.org>,
 =?UTF-8?Q?S=C3=B6ren_Brinkmann?= <soren.brinkmann@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On Mon, Apr 16, 2018 at 6:55 AM Andrew Worsley <amworsley@gmail.com> wrote:
>
> After this set of changes ran over 2 days 17 hours with no i2c failures
> at 200kHz.
Can you explain this speed why you need it.
why not the standard ones.

>  Previously would lock up with BA (Bus Active) bit set
> continously with in a few hours
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
