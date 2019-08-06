Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 304BD8399C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 21:25:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BIuxSIWPi/YiuyPKxKQBXKQVNwNVPGh0Dce8Z92DyxM=; b=LaHIU99OR4842U
	rpT44dIY5RmBPU2X5lW5xFdiO6IF/KPckl1shOE3Ac/o1AU/5n1xuUL46MKHiPV9lxxDJrbVzijJp
	JogSte4YKdiscNDPxkutueNM8FLszvSNMbPuCK1OQZXrtN0w2n+HHayeRhuFezSS5vKkSjGC3Ena6
	dKbb6vUqDP8am11pRxLBmIc3S773w7VJl8BVWM3bDSS3xAWoIT51pIeuM3143WaSgCa/1Ny41HuHs
	78NcIIjFFOBMZSNRtxmvMNhQZaVdxctsOZb6m4qLueqXQ2XTkjwZg+oMjrGzr+4jgx/4SXduu5Tfq
	JKtRYGHg0MzC7Q5X/fkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv556-0000YR-VH; Tue, 06 Aug 2019 19:25:12 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv54y-0008F9-25; Tue, 06 Aug 2019 19:25:05 +0000
Received: by mail-oi1-x241.google.com with SMTP id m206so68298522oib.12;
 Tue, 06 Aug 2019 12:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=r400Du+BdhcnVb2kJzBt3FbA/D2Jmeeyq4b8DmzoTuE=;
 b=DqFxHRGxeE89aj7Qk9S9u07itMR2N59xYxVR0F+sAU1LmSLFrJiN5HAHMwrNQ7ct/K
 v/Ol7T2q+hmaYWo/v48u89lPjO0+affKUKx9WKGXAZC24PwmbvsLZoIya7p5fbOLAJ2n
 Vfjh1pYQtqFV9bPQZV3NzTUSWkyGQVqTuN/t+aTTX0L110+DIMg7MCDXx9aODVslSRu7
 RW336Yu4K8W4yAjoSIY798FPBJ/9yYeSQE+nmNFR0dvGLms4arFI7cI6CtDcv084cWgN
 B6PicJp3uO+PPhozN3GtrB4EvahPkew5AqhRv9De+Lo6PYBRI1Ey2lR7vitHuRFnrFXf
 jWlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r400Du+BdhcnVb2kJzBt3FbA/D2Jmeeyq4b8DmzoTuE=;
 b=RjpT5WcaPJ//ps0K2NhlbKaSXNw7sjjn7jYFfJbIy4f6vDMoJHN6uakOeXP0ltRpKx
 FlODDfeDcEl05nccyllI6lU3UQpQZo0yqViBNcWT/XMlK30iVowtyCch1UyigB4kyuRu
 IBjYNXTCjj13v/wau1+MpDi2MGdlkWQyzTtTXjrsBRtTb/ZY2elHrkftcWnwYPRyTnQd
 uAxTK2BMYEeqZRizSA131mSH+51bJHOOI0tprGflF8i2ABAZN/pI8PVZXMnHBDu/RWrJ
 FWUgSG0+LpSrFTaaWcIZ5V91BPJKPIBng8pUrcKHYCKKsLwpupUEH5EdV9Vx/2kk+B2v
 NlRw==
X-Gm-Message-State: APjAAAWU7dYis5CQNu/CaCLAHidBUPf0WofVIY/71u9Kjk2L0OkyyYL1
 ip8FVLGSFwPMZCFgAXiqMpIhKNiLSXwQuHb/ulA=
X-Google-Smtp-Source: APXvYqwewYkUVdiv1FBOEZMeibK2YzRko0jtbtspzjUrql75NVp+buCLmwAHPvJS6h0/N8GPAo9FKa2th99cIPmU6t8=
X-Received: by 2002:aca:4306:: with SMTP id q6mr3731470oia.39.1565119502665;
 Tue, 06 Aug 2019 12:25:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190806130506.8753-1-glaroque@baylibre.com>
 <20190806130506.8753-5-glaroque@baylibre.com>
In-Reply-To: <20190806130506.8753-5-glaroque@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 6 Aug 2019 21:24:51 +0200
Message-ID: <CAFBinCBMk=OZH3L0mWL=Wk95MeGey2O+xXD19T1PbYXz2CmuWw@mail.gmail.com>
Subject: Re: [PATCH v3 4/6] arm64: dts: meson: sei510: Add minimal thermal zone
To: Guillaume La Roque <glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_122504_133946_1DA65967 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org, khilman@baylibre.com,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 6, 2019 at 3:06 PM Guillaume La Roque <glaroque@baylibre.com> wrote:
>
> Add minimal thermal zone for two temperature sensor
> One is located close to the DDR and the other one is
> located close to the PLLs (between the CPU and GPU)
>
> Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
I'm not familiar with the thermal subsystem but this looks sane so:
Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
