Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9781BBE2C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 14:50:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o/Sq2TGDfOQyq2+JpB93wE3f/qk7DaXTH9Ndt+viZc4=; b=T2ImR7ma5Np2Vi
	Tht4CqA8uSLzOwJhDZjcJ1oJ9dtjn/FqOEEOoBYwOYuy+tRImbXWnzL+Sr+Jk20G6d9j375WOj7ap
	6Bh11b2yh/vlE8OYV5weeohdnVdbvgdBG9lZyFeFczY9GrVhx3MJHi0RchnKVYhJW/U67S1XHFTmR
	cntFMAybnm9hfL65R3m51BajpZrcrPofhjMM9IQ8OWbj5+8plTK+M2oLH2HTFfj6Tq8xgLY5vZP76
	hXivM/0TkNIPxeRvnX6V3CCGzFFm/ZCmdGDdKtwwCgzK78ErMmL95vnRQSGcRIaqzHueSVNccKOFS
	GdCXFvvEm52bc0Kq+OaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTPhA-0001EA-As; Tue, 28 Apr 2020 12:50:40 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTPgM-000145-Ld
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 12:49:52 +0000
Received: by mail-lf1-x142.google.com with SMTP id f8so16794795lfe.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 05:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UL/TVs62faF1qHVs/iiuWvqOrsmLsKHyIOog76Ui4vY=;
 b=VVzJkCiuPUgRSo5KUL+WQU5C4r/qwXnkA0/rH3dMnEHBm1e4tgddRH1V/HnB6F5iGK
 6ib22DEAlDbVPG7vXaKfYvHPpXUXg82m/Jl5PNK6yT1oufMeKGeZFqkHKGUG+OQes4IP
 agBRex/tDRgpxy4wUHqJpz1gj+GMHf093SEeP83nm1BXRcMi6+dHfhlG0KcAGHG5r7A/
 wTcuVPeQX1gFZ1n/iZb2/PqbErlG8zUwuEvEKct2LiiC99fi947KLNDpuypP+2ZWrz0m
 NLqhkYR/CKdvqtvHlxp7gVzsJ5fRCBYFmBwEjITSas4Z3RbVgfHXBUykZr4mT9O7fFTd
 7M/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UL/TVs62faF1qHVs/iiuWvqOrsmLsKHyIOog76Ui4vY=;
 b=sXRD1YfPnzE1dK3aP3lFOBf5WNHWRXKIxzQqSkhoc7HbBabaoZmhNFe1Gxz15R3SB/
 zWArTTN64dJ5a30vvczQTzNS2uUueVgHDqGJYQdrtMIoEW2JOvWQlH7cjBaiqKmMuV0t
 k66OyFD/moig1sdCFV3hHlB+l98LlhgNsAjU01PWctK9Azsj5oHBAPNafGcEEBRLEYXZ
 Op88mfmlm2lkxluEDgdYcJExa0+rQmRsfR8GdDeUxkGwCL2A4uFvKkw+p3zd5cUhx60E
 XVNeLNJBHbQ2v8sR4musbdeIvgLU5AiyauRDqxBdqJqq528g0Rlju2NuuNJk2Kf8OAm7
 evCA==
X-Gm-Message-State: AGi0Puaag77hBManUiEseIg5Js5WB+VaM3irQ5tRhihT72auGUbYDBtA
 5/klBwHy47SdRiWYNTTxECD3JU4HsAEN2+4LKvksYw4S
X-Google-Smtp-Source: APiQypJYIQJ85qOD1cwJ8t3Ko6n/QlAkuFT5C5YrkLuzUTtDUSKQTsPmMdAaXkYcqBPYL//zz5+kD6YQtD4IfGvW0B4=
X-Received: by 2002:a05:6512:685:: with SMTP id
 t5mr19029129lfe.47.1588078188674; 
 Tue, 28 Apr 2020 05:49:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200422072513.8352-1-amelie.delaunay@st.com>
In-Reply-To: <20200422072513.8352-1-amelie.delaunay@st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 Apr 2020 14:49:37 +0200
Message-ID: <CACRpkdaG8PPA13gMXMS62Fow7De5vDaG=gZ+HAEx6yhpOH0sTw@mail.gmail.com>
Subject: Re: [PATCH 1/1] pinctrl: stmfx: stmfx_pinconf_set doesn't require to
 get direction anymore
To: Amelie Delaunay <amelie.delaunay@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_054950_743827_938448AB 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 22, 2020 at 9:26 AM Amelie Delaunay <amelie.delaunay@st.com> wrote:

> Pin direction is not used to set pin configuration.
>
> Fixes: a502b343ebd0 ("pinctrl: stmfx: update pinconf settings")
> Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
