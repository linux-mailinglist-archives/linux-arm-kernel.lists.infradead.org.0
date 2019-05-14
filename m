Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B561C83D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 14:11:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d0DiPxhO322jYvRflv9aooTX5Hzmn1fKRmbaACesmas=; b=SZhXoDbpgns9c1
	EDcu/bFEkh9VzcqkKtmGRKL3xL4t3ok54qPDdhHu9kr4HCXC3pnSkpvik7hcgJsxEGns+L3yBnafM
	rSnlr6P5Uqsz8Wy3Fsyby/rI6qGa8c0L6GJQ6q55GefitRa50q+jg4gMscXKrfLpP4XPT/Bw3jfr9
	Lc69+DFbEEEt8iJaE2Kb9Fae9J4onACQXgoXGp1VTlfqTAmjC7o454LIwedcuQUEjVDLgsEo64QVE
	+vL+m6C+73T8ObGJWyWwbLpdH+VB/JowEFNQ1tRiWQ86Foe3rEvkeHR15LS3n3r2r3gqcNaEz+39/
	csvmdjK6QhZZ5f+G4lTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQWHI-0003jR-9E; Tue, 14 May 2019 12:11:28 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQWHA-0003j4-2u
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 12:11:21 +0000
Received: by mail-lj1-x241.google.com with SMTP id w1so11507618ljw.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 05:11:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xwOS1hzgbCLV88HRNfIXCZXPk8aRseYYJHwjVmpku60=;
 b=WLGAGYI/lsh3qlNbXp6ZFi2+tVp/nQaV8BtS3JbUZfScc+SEBHqZuPJxi3xzXeRMa6
 R4EKhKOA30OrwduY8JyC3vnauUcCETO3hwTMveZgkSJfK4vM0tE7JJAA/U0+tOuoRlqb
 T4o4n7scg2xPsBlsSEthBzktGJyIsDssNVnqk0Kg9xkWSvn58MOmu0yKHOeD/GsvnFhw
 DpJ2c+e2p0es0luLIQZ8H8GTlt99BojMW2KbOdbre39xgAsA6VpXYfnE9D1ESFPtG2iF
 OVZ/o4Rr6TbWr/dqekLBU/L+uyiS7j+w3/6X2w9zJVOvtshAwaQD/41veCgltkqsE8dr
 aaNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xwOS1hzgbCLV88HRNfIXCZXPk8aRseYYJHwjVmpku60=;
 b=dZNRaeJQq/GYea+ad2XYssjaC2JzBV5Ny9KeHs5oMXBRDo3Z5sextL3kz8rxCCUJH6
 OHao24B13Bt+bcZupcyt7X5Fcz0YP2nb6Bhdgg89xt60Qz578c4lwr1wRUhdDXmzRs64
 hzl4jlFxlztXes740cu9GNKHpHKoXu0IeWAiAald9BF1U0z5rKnoA5iFn9RG80wgGBDw
 AUEhcQqGZ/XKuVGK02s0iFyl7wbncM9B7sARCdPlqgp+s7nJWYbfWVCgQVFmVqsYOzfr
 89IVoIJiFPRnaoVL1IZ9b8CxJB0gLd2kMSz0R0SwPmUN4fZu9HjTtMFKISZQbsi30KRz
 p3uA==
X-Gm-Message-State: APjAAAVtXQd3GaBIOPCHka6DCm4ke2V0FbUIlgR3aXXkjRvQZPTlNzMz
 VDJIP4ZK7jPUf8TxKiUcVyI2KdKcbDnsV1pXjSo=
X-Google-Smtp-Source: APXvYqz922Pjth6m9YPMDJaRHS9rKrGlawZltoDw+Zqi3FXHg5u+1GpSm19dPKxGsL27UQjrAOKLjEWA4a83bwYn96I=
X-Received: by 2002:a2e:9b46:: with SMTP id o6mr15663026ljj.76.1557835877288; 
 Tue, 14 May 2019 05:11:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190513140259.17525-1-festevam@gmail.com>
 <1557756459.3997.4.camel@pengutronix.de>
In-Reply-To: <1557756459.3997.4.camel@pengutronix.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 14 May 2019 09:11:14 -0300
Message-ID: <CAOMZO5BEq6gRvUCWtfn2MN9bRx8Dzm4311Q+Ak7-wiBj9fwo+A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mq-zii-ultra: Operate I2C at 100kHz
To: Lucas Stach <l.stach@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_051120_155855_678E74A4 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Sascha Hauer <kernel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Chris Healy <cphealy@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lucas,

On Mon, May 13, 2019 at 11:07 AM Lucas Stach <l.stach@pengutronix.de> wrote:

> Does this fix a real bug? The same issue is present with the i.MX6 I2C

Not really, just trying to be on the safe side.

> controllers, but we are still running a lot of i2c busses on i.MX6
> based boards at 400kHz, with no issues whatsoever.

Ok, so let's keep it at 400kHz then.

Regards,

Fabio Estevam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
