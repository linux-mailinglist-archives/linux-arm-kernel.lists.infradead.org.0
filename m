Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93000EAFD2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 13:09:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=skjqLSkL6/vvXf50EFRahvQFhmPtk/jwFLUsQ4CfMoo=; b=O2ELOv/Ngmof8+
	sKTaVLItmaHSb4HwnIO3dw3CdOGW23fFme5EGfZFioJaizYwZmPwflTxdkx8KMEAddjSap2zBNNaB
	6U8hA6n3w8qtlXUWei0O4JJGyFGVALdCdyFNHWc4iCVwM/p7fbzFAWlw8JXeUh8uTEg3Su/FZOMpu
	CCmpxLNzhCQcHVJEd7Kj+VgZEZZCS+YwM/W98fq4n+XKnzmKA+p2X2zqPmzjwc0O6+nywv3+bkvwz
	ICyiqReiAXw+uzjzLb5Qg/SguFqoTJkowjCzILgAKx0EPSzGUxjY4mFdzNgAY/jgJ+EaagcM36Ow7
	VBISrdqIY+An8+pd5zpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ9GX-0006ap-Hz; Thu, 31 Oct 2019 12:09:25 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ9GL-0006aS-5T
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 12:09:14 +0000
Received: by mail-lf1-x142.google.com with SMTP id j5so4447714lfh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 05:09:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MM8p4D9tb2q7mG4877MY6R6xnh9uakrw6zADFmTTks4=;
 b=OPCqsC6VoU5JERR4Cw0CfReLN6eQqnM9iRJ8CH+KWnBn0jcB4gCsE49jFqANG9ZrFm
 Gg8B+QwvYfXHEPUHLleelZfQxiiZlTgjHgozQOBxZlgqNFXrUDA1VYpr3UvWhKkuSFs4
 wtslteQ3K0G+y8JgTmVNm7he27ntG62voXmO7Fl8z5l0d0zvRcvqcGciMjVeyBIrS5ZP
 MV+aGcCFg88yhnXL2BGiWjacFOQCb/BXgrf4X+CuYOWn1Av8//Y2CAINO1DwfuAIWZIl
 y8K8RyxzwZ+wdaEW6IlYMMy/pZ78EQteNAV5pEOfrq9YIovzMVoY2AgHeU1Tz4Ih6S5p
 tGAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MM8p4D9tb2q7mG4877MY6R6xnh9uakrw6zADFmTTks4=;
 b=AYkSoJtN5abDLqCgFzyvAgaFQkTqaqZ3YrPW8VcC7mMP2VRBbVh/IEqQQCXIKhq53R
 MFJxqyWZ5WGF/2BSP4+pjj5PvdvrEOr7JIhxRtI4inVbVRorlvww+E6EMa2eFCX+/wFT
 OVqomt+ctbo9Cvgkr9OQCHUJ65jCO4TMMASFUqZ/FEChHi7mtDYZTZo45BlM72WWwDaB
 utDPNJdOx6Ms4byvlS/+DhP8L1FA8ScrrOYPtFK1oMt/Twu72ElyWvevryh4YQJ0IAcC
 f+moNW9OP8KUiY+nUOc5X4ZpDACg2wU//D2x6vhbxHRff67z2s9Dwsty6FitzIecSaoA
 0R9Q==
X-Gm-Message-State: APjAAAUcu1S0LMtrAxT7k/T8c+udEU2WglFfPHTxG7tjDoYqK5Ymdjn9
 ZjTtdbOXEe6Entfe0/1lZW10QBnwEc77V5TRf9c=
X-Google-Smtp-Source: APXvYqwkYSRy9WIGL9SPdl9jeCJJ+BOIZ4Zza5PJfCxqy+TrdFNJETJc7MR5x1D+zSUZe3bjDByCvJLy8a/43ChjJu8=
X-Received: by 2002:a19:6759:: with SMTP id e25mr3136789lfj.80.1572523751272; 
 Thu, 31 Oct 2019 05:09:11 -0700 (PDT)
MIME-Version: 1.0
References: <1572515888-3385-1-git-send-email-peng.fan@nxp.com>
 <1572515888-3385-2-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1572515888-3385-2-git-send-email-peng.fan@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 31 Oct 2019 09:09:20 -0300
Message-ID: <CAOMZO5C6kRvsGv_vR=r+5WesGDdLRUab4ri2P1V97-=juXcLQQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm: dts: imx7s: ccm: add assigned-clocks
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_050913_211854_F4A3C0FF 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peng,

On Thu, Oct 31, 2019 at 7:01 AM Peng Fan <peng.fan@nxp.com> wrote:
>
> From: Peng Fan <peng.fan@nxp.com>
>
> Add assigned-clocks and assigned-clock-parents, then
> we could remove the clk_set_parent code in clk-imx7d.c.

Change itself looks good, but please do not mention the clock driver
in the commit log.

Devicetree should be OS agnostic.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
