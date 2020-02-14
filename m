Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A94315D558
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 11:17:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O79Oot5mcT4t9+uvKMnq1SW/PJlc7iHJxPtRHJaybiU=; b=Pgab+J/oz+vqFY
	E5ofSMrBslUf80TEscRjTOFNXDUPfoZRqJsSRn9PhYaP6xZBLouACU/TmzLb2WTrexFa19TNY2qlb
	V2mluN9THvALJF8XHIefCMDKIoE5yasoOD1IpmRWifZ/6Z6seLVZtmB7k82x8qEcNTtJEKlr6dbeQ
	s7OGMrLLCYCMFrBAaZABw/SwIZyXWH1ICQomJi3yjqCkQaFXdtpAYzh77bwKUvAdV47njjLi4WiIp
	Mibvc2LibALCFeB0xWA2sAVm1JiJfDSKWXWYDnRhT74TeEJKQ4og4e43OC6VisQJbeDgAJ1evYxSM
	jjiKDJ8Xjv474PUquBCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Y1u-0000tg-7x; Fri, 14 Feb 2020 10:17:02 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Y1j-0000t9-7H
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 10:16:52 +0000
Received: by mail-lf1-x144.google.com with SMTP id 203so6372312lfa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 02:16:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vmPFCYNd1b2Z269i3yTjn10KuJ/1yAN0FqONO4h3pYM=;
 b=C7y7H4jylEuEqMnGjgmT+H0M+h+femEJMIBzMgfB7vWd7xinxGtIWg5hjzVf97k5By
 81ichhlUxUcuE+gpzED+ObhW/gJUHJCXo9IIp0boG22bOraAX3BiBoHIYn9P8GpiYb8Y
 QRQCmU1ymbZCh4V933PSIeteImHsjiS8L3DcSHjmaCO869J2GUR2ocJ3uJW3Vy0CZvjo
 /SYd2V8GNZmLcti0/RWd8v9JbipZczwBq2DRNBnUskpwoxjESHOuZtbINP1ZI+8y/1XW
 kLzA7hV1HtTwhzhSMGIt+CelSr4UakLg/+G+0mSoxzCNAUYw2DrXYG8T4gXZjRjCKV+S
 m9MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vmPFCYNd1b2Z269i3yTjn10KuJ/1yAN0FqONO4h3pYM=;
 b=C+YTAoVYaCPxNoJre48v5BWymrbcBhbKY9R+hASzZbmEzvKBNuzM3ZwxFJBsJ4TZP3
 juNc3ssmElnqOqehz9Kwo8eXL2UJzTNhMWzl4TNZ7n7aoHp1fpDVFHAK0uDhWhT4La21
 6BmPKR+nCab2mcCIivZAg5TDWaZshe72U0u98kFEHQPkSoj3oetY7AwBBpiroGdYQxo5
 MzNHvYMU6g6zkNnUwjXkRMY9JlLG0Cmmyp7hNtDAReVP7ddfmdgzPHxFZ7dMSb1pKef8
 r/PtWg9EaZTvQKDVLsCEFJFBtFWpCJyVSvm1MATbxKvaNN1nmA1QiYC66ThgTMcaFKdn
 110g==
X-Gm-Message-State: APjAAAVr1C4K2cMxRqkktSVb5EnkHenW1r74q/xEKp0gc9o02pnrNnRl
 GGU/g0NOKAIcu4bYoY4zUfQTdrI9AR+8dPh/ODmxV63FXi4=
X-Google-Smtp-Source: APXvYqy3A2UvE/PunEwc9b95paj1uRKlANgXjihOMn+iQGFlsaa0yHC/L21T4dFZZ7k9amkC+MY+YUVX95o0/o8skaU=
X-Received: by 2002:a19:dc14:: with SMTP id t20mr1309882lfg.47.1581675408867; 
 Fri, 14 Feb 2020 02:16:48 -0800 (PST)
MIME-Version: 1.0
References: <1579439601-14810-1-git-send-email-sricharan@codeaurora.org>
 <1579439601-14810-2-git-send-email-sricharan@codeaurora.org>
In-Reply-To: <1579439601-14810-2-git-send-email-sricharan@codeaurora.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 14 Feb 2020 11:16:37 +0100
Message-ID: <CACRpkda8XLZxqH9CROHUYpaq8z+z2zsdg8pyzqQ9DfavGMy6QQ@mail.gmail.com>
Subject: Re: [PATCH V6 1/5] dt-bindings: pinctrl: qcom: Add ipq6018 pinctrl
 bindings
To: Sricharan R <sricharan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_021651_267492_BA4D5C53 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rajkumar Ayyasamy <arajkuma@codeaurora.org>,
 MSM <linux-arm-msm@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Andy Gross <agross@kernel.org>,
 Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>,
 sivaprak@codeaurora.org,
 "open list:ARM/QUALCOMM SUPPORT" <linux-soc@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jan 19, 2020 at 2:13 PM Sricharan R <sricharan@codeaurora.org> wrote:

> Add device tree binding Documentation details for ipq6018
> pinctrl driver.
>
> Co-developed-by: Rajkumar Ayyasamy <arajkuma@codeaurora.org>
> Signed-off-by: Rajkumar Ayyasamy <arajkuma@codeaurora.org>
> Co-developed-by: Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>
> Signed-off-by: Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>
> Co-developed-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
> Signed-off-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
> Signed-off-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
> ---
> [V6]

Patch applied  for v5.7 with Rob's Review tag.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
