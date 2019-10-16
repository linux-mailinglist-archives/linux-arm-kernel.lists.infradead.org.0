Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9163AD9143
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 14:45:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wYkTyjiH//LqSVcPV+drwcDIgWnm9BMwNPbHfRlv53w=; b=RvHxo/z+xHawAc
	e9Jtewv859Yih2B+WVVqHzfMgb56KEOo3G7sEThPlzBZphBHxMwofKAyiMyCCUR2V+rPCSYTDxl0o
	23iP5NQ4Hl8aZsZskAu3HeIVOfMgQhVhnmvAKgXj/qpClIf4Xu9DyZAliOLzFN9gSr+ZbDIhhXpV2
	f3HliRJjTkMt33I4QX0WBHVRIBY8udwouhsEdCYIUCECdgmcoLQCJYJfG2trGfKQ3mE2XTDgFUa6B
	A5ABEZ3q4mPZGdcXClsuxPOY8ep2kILGWLPGChnd7dZNx9+IRv0W/b7TdBX3J+EeopUEWDJTKpOcb
	40+ImGDiElTgXYRiio6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKifi-0003OO-Tu; Wed, 16 Oct 2019 12:44:58 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKifZ-0003Na-US
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 12:44:51 +0000
Received: by mail-qk1-x742.google.com with SMTP id p4so2022138qkf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 05:44:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4K7B+uLfKEBGyGYLI2L9ifLhMu932uDK9Ftu5vsTLNM=;
 b=TdEFBc1a1GhmOYAW2VtSm1o1gnQZkZwCc844SMM9XvDj5O96l/doIHiYscKqhjxk8c
 uunW6zvZyzSv90+FN0ByJ81MsiIQ+EdX1idYLnIEfIH29ecKHXYSLlWeO0rSBlRw30zJ
 xk43RxIDcXygry3uhKq1xbOt6FK7sHVII7pGy//MlKP4rMGy9xMxxjEdj/9VUV4RZPZx
 Yr/uPni/tyEG2zRjgof177N3oFQ4bX8meJn/QWXrdELUf0J8ypfwOa3ne05f1/BWGGMg
 WgQHfe13moWhf+DxVSs2o4pqtcK49LvS5YhXM0ILQv39atV1VQ088PQtUKIm821tofwL
 yYZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4K7B+uLfKEBGyGYLI2L9ifLhMu932uDK9Ftu5vsTLNM=;
 b=RLDDMyEo4HqdrPTK31xRAdxTD+Gh8TqT/2Hv2xu/zJWGX5+XMWIukFtJcsEqnS9Yeu
 +fvse2kR4CewTVwBMHzsAGB3mqZmuW6ov6ktdfnIASkG9gKcKNYWP/eo/K/SEYzjeMjI
 yPVRvr4yz2m5X7p4BI7Z3QpGGEkSIJYRS6vlG5y4N8/doETJQcohwDZhGopwwKEo9x+Q
 5Wi01rMrSQ7RMBmXrMJLT1thADBqaDls7w/iO0JqxPLfn7aM52SDOxtJEQU9nuDAIFnU
 0IPXirm51P8WC9KbPt1srH30WFQG9kglcTVb7Ut4WWdRlrVmYxH3eYf/io+ntCuWMKDs
 TSsg==
X-Gm-Message-State: APjAAAWVjKwDLJ04Klqryjc6xktSNNh5/B+y4+58FnC+NpMKrJFC8SlH
 Dr5pNILiA1gMLno74K20SXKs7rl4jyzrjtcKV+7NuA==
X-Google-Smtp-Source: APXvYqwTM8BkVjUwYymUoCEI4D83P7/A66wqA+dK+mNJipK7M/FV7PxzP6J1Gjw69MjqnyvjKRuCo11TD2KiTz+ravM=
X-Received: by 2002:a37:bf02:: with SMTP id p2mr41057686qkf.42.1571229889157; 
 Wed, 16 Oct 2019 05:44:49 -0700 (PDT)
MIME-Version: 1.0
References: <20191015091708.7934-1-jay.xu@rock-chips.com>
 <20191015091708.7934-2-jay.xu@rock-chips.com>
In-Reply-To: <20191015091708.7934-2-jay.xu@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 16 Oct 2019 14:44:37 +0200
Message-ID: <CACRpkda+gVxBHU=UZTqfgasOYKpGJ4QSp07-TH-QrTQ7Urm5DA@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: pinctrl: rockchip: add rk3308 SoC
 support
To: Jianqun Xu <jay.xu@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_054450_010906_FAEC7C6F 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 15, 2019 at 11:17 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:

> Add rk3308 SoC support to rockchip pinctrl.
>
> Acked-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
