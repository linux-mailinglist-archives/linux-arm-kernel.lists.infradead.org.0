Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D94D91AB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 14:56:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ADQjmIHSBKJOmtiTurR64uleSdhDEwsji5IOmcrGnyU=; b=iTB5pBRCCHaFnC
	Fr5/pxZiTtEWQzo5HDFDBr0MCoyjFdAisRM9Qt/3b9tA0XxU6GiP60mP3KoUADfSZuN9+sujVf5g2
	mQ41N3ouWORvtFpK6HfIyquV/jRwO65VNlk9ah0FtWTDgQ6FpNR9jO6Hf1md2cMKMCFl3KV3a4Z+3
	5aHr9esF87tp9550QsI7L/nZ2Xf5xnJlKg6YGYtmvn25zoM6vWZU5LZKaXPsekqudygS9PAp++YYG
	sEDwk4ArG+891/M4uKw4r3KYdANA45MFTYTo8tqmJaahgP3MhTXh0zDyWdOF/ryoouXc0+6xK/pKG
	SBMfljz9b7Qqg6W1RAug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKiqg-0002yi-RJ; Wed, 16 Oct 2019 12:56:18 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKiqE-0002bm-AS
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 12:55:51 +0000
Received: by mail-qt1-x843.google.com with SMTP id o12so35925480qtf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 05:55:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hqxICMW7ss0cJCpXCjJH78wnrlmcwqNrZ/uPiVhGkkM=;
 b=IxEjiKnpR3EAwPoByfW/OZrLpd19bspT+gTUCGnUW80EeuuPdpZRqreDbDpZch6gjh
 2UsT5c44kBgXtYD0yyrrLUBcME6KZ9UAnsIGSS63oAoCPC4JQ8YNVtxKOXCLrMCCA73/
 1uQIrb1Vu1i9W6DwGSI+b+rsQVP1DUrcyk/H0UyUx/1OpKVxCq6ozQE7t+pqdDkUL0sn
 EY3w6X34DDQGKzfHwdSWRQ71+nCXj4FycpczO6kiDghGZfj/sJ+8EwzYRxAizI958o4R
 HynQBp/BM/5tdTJgd+8CJzjA8auJ0h0fkSpoVTv7l/6JzFKR0UBivDwzUwBNh1q7l8cd
 CKEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hqxICMW7ss0cJCpXCjJH78wnrlmcwqNrZ/uPiVhGkkM=;
 b=t3IE9XdP2lsFlo+r7ME4tb3EvrN5wjAwp0zOH6psZ2vYzjI50sTzl/Khuh7EfesDqo
 J25RAPQk6Sw6mEkr32C8KewxSW4YMsh6Ut8KVtHBVBJrZ5gFv0Hr0vGLZ7RQbY5nSv+K
 /M2YE4NNGHI/N753XSwUu32fJPua0Qp8aZTqx/sYED+CT8av9dutpI7YjwNB+maIxDhc
 HMwyG/mFPv2zBmTmc7zYBrJKG6/Y53KULmLC3iEBhTLpCkHG70VyJ2fb+q/+nOik8+no
 Br/dumrkVRRm1A0jk6j6mGn7x2vc3JrVmpiK5Vvf+6QYtsqS6kehYkA98lHDSwcovIfl
 Nk4A==
X-Gm-Message-State: APjAAAUveUT1ipb7uPL+5jz9+vquI8VNbytkcrEA+7418eL0MECi5kir
 Eil/8eoquwvEFbBq4TflzuIY8L7njTQFPgUgMgxE91IB
X-Google-Smtp-Source: APXvYqwsdZLOyx+1BewFpuZzO2wCBhNDd8cI1RDl+5ftGeKkSjmdr0lrNVyGucGuzJalkmgT4E+Zi8XEFdHBdIzSqJg=
X-Received: by 2002:ac8:2f9b:: with SMTP id l27mr43783932qta.218.1571230549447; 
 Wed, 16 Oct 2019 05:55:49 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1571036463.git.baolin.wang@linaro.org>
 <45600b3601cbfe3685f4c9e088be9a30ae3eb8f2.1571036463.git.baolin.wang@linaro.org>
In-Reply-To: <45600b3601cbfe3685f4c9e088be9a30ae3eb8f2.1571036463.git.baolin.wang@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 16 Oct 2019 14:55:38 +0200
Message-ID: <CACRpkda6hT5Nma-vrtd3oxQ64QppwkmP75DJch2kMUUGpzDzZQ@mail.gmail.com>
Subject: Re: [PATCH 4/4] hwspinlock: u8500_hsem: Remove redundant PM runtime
 implementation
To: Baolin Wang <baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_055550_409057_D06B4AC5 
X-CRM114-Status: UNSURE (   7.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Lyra Zhang <zhang.lyra@gmail.com>,
 linux-remoteproc@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Orson Zhai <orsonzhai@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 9:08 AM Baolin Wang <baolin.wang@linaro.org> wrote:

> Since the hwspinlock core has changed the PM runtime to be optional, thus
> remove the redundant PM runtime implementation in the u8500 HWSEM driver.
>
> Signed-off-by: Baolin Wang <baolin.wang@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
