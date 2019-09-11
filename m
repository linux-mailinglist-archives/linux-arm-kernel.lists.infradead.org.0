Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F8BAF9A7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 11:58:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QheM4fkOIzVTCg90ApCoacyeDRCa9iavO5pIjKncNlM=; b=mLd8KuS2F2hL8y
	7oAB2gCS9ccuBih2JB0xc7OwFpccLmdYNPIUdpDuEr/2rJECbbMNb/qBnQu/z3o3FHcyCE6fWZoCo
	hzg6gOH2mADtx6nr2g1IDSAcMmgiuTdU3V3gEc+VOOxiK0cFOCp619xkMHJOrBv3UbMPm0hZq4rsL
	o6AH0w13hbrtVISf7aO4V8eIZqnEd5RUYIW//TyeTdAU004cAcPmEwHHBcBrvmRUaX0FcgpC1g7d3
	9YYyYadgWnySEKdP2khULADNz+Gs9GXY+Er20eDtio3KStK/4Y5z3KoYS1CG05mz82v4gyApds42V
	Bas9crVTG4GIqdWMQAlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7zOM-00070x-EL; Wed, 11 Sep 2019 09:58:26 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7zO8-00070c-I0
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 09:58:13 +0000
Received: by mail-lj1-x242.google.com with SMTP id a4so19358748ljk.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 02:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k4dGhcxp6T6gSoKIxWokryHsNaeknVwfT4UnRhjgn/A=;
 b=tkDWR58vwuKS0da2FWu9u/M/Xn/DyAr+ZUrx/+cJp27zqKvp/xBOMk/VGYXwWTSTla
 RUGyo5mKpJkCSH4kikwfH+5eo9+R6rZIayBLRSf+XRHifxKTcmqIQ4gwFxUtB1L1mNNv
 C+y6q8VDxxIv11W0mSPewJcrRxVLCXfhy/zrVENzffiPUZWT19SmmXpXLxeHXmrBsWUW
 Z+acs/RypO6knajkSEc5Qz/wJsF/2ZvG/Tnm6Rf1dhTLkszi/Ebc+DrhWG1iSvuJcAmU
 OvMWljKcMJ9mFuT5LckIuewLzRHNMNjiVhbyaXyBbavOplfSxkteHCHD9wi0oaIvuhN+
 RE7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k4dGhcxp6T6gSoKIxWokryHsNaeknVwfT4UnRhjgn/A=;
 b=NJtUR/jtMnmtCTw8hf1i4gIuvd57PYIVoGgadP+wPo+uQlZn/6/UqXNw6f51dC/rQh
 PQcGue3YBFAg+wX9nrvDdarJ+pBSzXg7ahXC8E22bPxTSGkEEL9CjSLx5yNgFN3ylnRh
 xSBidyle7ETncbq2Ud8f1gZcLDG3Db05vJKBf9ezIh5+x0TEo0grMOHGRsl8CoHfGlre
 MWQ/PZAeaqvbKhYY0EqO7fHP3vM/0BiXGxCP/oxFSmDbFbA8fCfq9mVkHe44Jy5WZ46T
 NWuc7Gj2YO5SzCEZpakhAIA7Dmdiz/nPmopZzT/lJIYf3FqF+fT4TiDA/VPJoCrk+5Jc
 73kw==
X-Gm-Message-State: APjAAAW6LVc4vuXgSq+q5NclbNweBMczZ92LLzKgCCjrDt3g4e9ARKX8
 i3JFWmWHmgFjLDjAPUSSJuWfJm5YFUc810rQiORu/w==
X-Google-Smtp-Source: APXvYqwbLg5jGI86j9e4EMl792llsAjTOPkGlSGFa4C8Xlkdq8JvUyl4zObZNLLqt7Sar4h37ifM08D33QB5mKjQPek=
X-Received: by 2002:a2e:8056:: with SMTP id p22mr17584388ljg.69.1568195890794; 
 Wed, 11 Sep 2019 02:58:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190905140919.29283-1-colin.king@canonical.com>
In-Reply-To: <20190905140919.29283-1-colin.king@canonical.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 11 Sep 2019 10:57:59 +0100
Message-ID: <CACRpkdbYKjKPAT=V8K_JtP49teq5q9GELkK-vc+mQEdwcU781w@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: bcm: remove redundant assignment to pointer log
To: Colin King <colin.king@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_025812_622711_E0012B81 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 kernel-janitors@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 5, 2019 at 3:09 PM Colin King <colin.king@canonical.com> wrote:

> From: Colin Ian King <colin.king@canonical.com>
>
> The pointer log is being initialized with a value that is never read
> and is being re-assigned a little later on. The assignment is
> redundant and hence can be removed.
>
> Addresses-Coverity: ("Unused value")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
