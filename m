Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4FD2D0AA4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 11:13:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b/2XDfenliAkZEqPypjlxMk6dvbxR+Gf+kqO7UlEWsw=; b=AL3h6A6jTjXK+l
	SroDbc3e/p7xGrl4xY+EeJdiCh0P89/fEyeudH2eDWbRcxYKL8/o/6T5edN91veqnTgxZzGdwG+vc
	xUvm9+06m/d2ezMkU6J6i2zgVoIrJSI9hUu9gxkQjRnQDslTsIAM7Kd6U7LR29hbZ7Y8ObqdgK/sx
	O1EHzB7TpdPBw41bTz0TGgueiHNrs/WcE0OjwwE/1UYirnPLbhUC/kYwUUS73z9WAwOW/RpZe3vMz
	qzRHxYTt3fmmaNOVwO+HY1zOnuPV6Wp1vxsMFMjgHyJcAGEE9w++IAnPollGSCCoMzWRxe0bpL61g
	2nTJAp80KJcMXovEDJWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI821-0001i1-SP; Wed, 09 Oct 2019 09:13:17 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI81g-0001Wa-Ho
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 09:12:57 +0000
Received: by mail-ua1-x943.google.com with SMTP id l13so533816uap.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 02:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=p1GmngvaE0ei9mnU0CMOs2O9a2/80q1j0u6r2u5SeZc=;
 b=BccNwjKJUEGqADR82Dz9D/6hW+muC5tovZ4TZzhwUcNnNClOKsj/TwIl0wYjsBc6x/
 k1jtHRsZBJkB5XEBmk3c3UjCkpbbJEm71c44rBeHs/1RinFqBdS/F2PzyJWDllL97ZWq
 R36grS6Yw8KUikd970xY+zw1tW0efxzzxuwQj++jIOgnM40NPOcZT1j0GIHNir/gUb9D
 SsbIN4DTBuySQXcqwM56bQmkLUurSE8OGIOQjpx5TF3imZWJgl5h8U/i/wbheVJOR3uU
 XV1QEGFlVmSwqtsGm4UUlvuHWl+RqT5TEvnUXoXnM54OWXZ+iKW12DFa69CWmIskhgBS
 w/Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=p1GmngvaE0ei9mnU0CMOs2O9a2/80q1j0u6r2u5SeZc=;
 b=UPBZtFUX0E2Nfb/+SzXqx/ivjdp9oe/ID0ZSCu6gJWBp2EiIXpFzOz67Po4vQTFJsN
 6kIsCUDmeVdQsuhoZ5VoTjBu8KV/hH8Zjdh+CxDYNerh1YNvWH5zEuiOG/qE/droPSS/
 w/p3gNb0CasFSyhIIu82Zi94EV2rieX159TiRIzM1OF/W1MQBgGUGpGHLpjmuZHQVbat
 cMRIvE+T59pFKfVWAGRG+QCYlPIgzQC1NkjU/hXSXskASIrCJxpzUnHBA8YypdyTkqKi
 qhYDTkm3zIUZNl4FUkmZom9bIbWFyNjOlqIuvG0EEeMuSEMI5d5CCMzBDdaGNm505R0U
 mcQg==
X-Gm-Message-State: APjAAAUvJ0GMK/hL7LIVQgdfO380+t6kjEGHVhE4oq+yGJ38xsl9Jc7i
 FBh/lgu/Vo4RcE5Y9Mwc7rYk6GKbK3NsbAU8Yzr21Q==
X-Google-Smtp-Source: APXvYqzHUvKtG9TlAFWzdGLKFE3B3LLPRPS/NhDVFx+CEadl3quKcUNTlMODJCYW2p+AVM5OUZYunx3BcWwMwDCc9Ds=
X-Received: by 2002:ab0:331a:: with SMTP id r26mr1234478uao.104.1570612375253; 
 Wed, 09 Oct 2019 02:12:55 -0700 (PDT)
MIME-Version: 1.0
References: <20191009012818.32763-1-vadivel.muruganx.ramuthevar@linux.intel.com>
In-Reply-To: <20191009012818.32763-1-vadivel.muruganx.ramuthevar@linux.intel.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 9 Oct 2019 11:12:19 +0200
Message-ID: <CAPDyKFqDB_aOikZYSDEvQKF3PsD=AXq0PZJTj8AUAH0XaGj8Eg@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] mmc: sdhci-of-arasan: Add Support for Intel LGM
 SDXC
To: "Ramuthevar,
 Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_021256_589249_5493F0CF 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: cheol.yong.kim@intel.com, DTML <devicetree@vger.kernel.org>,
 qi-ming.wu@intel.com, "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Michal Simek <michal.simek@xilinx.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 9 Oct 2019 at 03:28, Ramuthevar,Vadivel MuruganX
<vadivel.muruganx.ramuthevar@linux.intel.com> wrote:
>
> The current arasan sdhci PHY configuration isn't compatible
> with the PHY on Intel's LGM(Lightning Mountain) SoC devices.
>
> Therefore, add a new compatible, to adapt the Intel's LGM
> SDXC PHY with arasan-sdhc controller to configure the PHY.
>
> Linux code base : V5.4-rc1
>
> Ramuthevar Vadivel Murugan (2):
>   dt-bindings: mmc: sdhci-of-arasan: Add new compatible for Intel LGM
>     SDXC
>   mmc: sdhci-of-arasan: Add Support for Intel LGM SDXC
>
> changes from v1:
>  -  commit message updated
>  -  Acked-by tag added
>
>  Documentation/devicetree/bindings/mmc/arasan,sdhci.txt | 17 +++++++++++++++++
>  drivers/mmc/host/sdhci-of-arasan.c                     | 15 +++++++++++++++
>  2 files changed, 32 insertions(+)

Applied for next, thanks!

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
