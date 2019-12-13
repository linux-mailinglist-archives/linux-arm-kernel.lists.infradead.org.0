Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 188EF11ECBB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 22:19:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AndJ82q/+FQ8p2AIObQoGpvHdF1Fdzrklur6qtAYvYY=; b=iXSMPdr3/QkR8j
	uMWLRlBOylyuScUYBG+BSrCHhklO5yS5Hde/c6hsvBbLoy5bPAbkRoyfi3zqUIrov9+waApBk02ZQ
	BrYEPUOVCz5L+ycwcdWh1dyjUj2ga+ic+qvLhoryaFQExRdvGm/XwLmyxZKHzoTQj3hUpDWPBpcuT
	QVqNU+nMdt3P1u+JkCW2clpPbTUGzynWUhmmCXxpSe92o3YX4F5+3h1bcT/xRUqKuIedw/PmiTQ44
	hWSi+vNmYbvlkdNRJUpUYqhJ2Z9KVw4pcTr7Qt0EL8/XHz333UJT9kIg+R0eNU+Klmo+W8GDFE0vZ
	txwNTEbQ29x3HLBslYKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifsLX-000338-LC; Fri, 13 Dec 2019 21:19:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifsLP-00032i-6P
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 21:19:28 +0000
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com
 [209.85.219.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D27A420663
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 21:19:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576271966;
 bh=jai15Z72z/o94nuRP3eB2l8cBu8i1br/bUFA9Yx9HFk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Qc4XggrhPLzyc2WbZ/5DxhPc1XTPobtUZFnS4ELYK7CyEHh4W39kPEKwZTnAgJp7B
 E+fxk3fX0IOT6QiHrVoNqXIsmA3BwwUl1fSzzYH1a4qLw5GNBiIVUyOFvK334rGRWV
 6ycmlqI0njA3A2NCryBh88KdOhuklQG++7DO04qM=
Received: by mail-qv1-f54.google.com with SMTP id t5so327625qvs.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 13:19:26 -0800 (PST)
X-Gm-Message-State: APjAAAVOIYp9T+LoF5p5tGeWrwNlfMyFEpJePXZHCIX1Fhir0DAwduVk
 VaV/psdWA4yLBpV5HatXGL/jhK7FT6MN1+Z74q0=
X-Google-Smtp-Source: APXvYqzL/zuv9na7RTUnc+WEI76bRQtaD2KXswqsZ3zbI4Xp1HjAVlOa2s6VJL4ANENtayAjVtUyjbjvvj97VcJA6V0=
X-Received: by 2002:ad4:4dc3:: with SMTP id cw3mr14415205qvb.130.1576257310506; 
 Fri, 13 Dec 2019 09:15:10 -0800 (PST)
MIME-Version: 1.0
References: <06448242d336c3bd1dda8ca0a5aa232e@codeaurora.org>
In-Reply-To: <06448242d336c3bd1dda8ca0a5aa232e@codeaurora.org>
From: Josh Boyer <jwboyer@kernel.org>
Date: Fri, 13 Dec 2019 12:14:59 -0500
X-Gmail-Original-Message-ID: <CA+5PVA4roUT3YF7wV4peQRCfGefsZCsrwD9J_SWpDoMy+sz4GQ@mail.gmail.com>
Message-ID: <CA+5PVA4roUT3YF7wV4peQRCfGefsZCsrwD9J_SWpDoMy+sz4GQ@mail.gmail.com>
Subject: Re: qcom: add firmware file for Venus on SC7180
To: dikshita@codeaurora.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_131927_256281_7ECC7DE3 
X-CRM114-Status: GOOD (  18.72  )
X-Spam-Score: -4.1 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Stanimir Varbanov <stanimir.varbanov@linaro.org>,
 Linux Firmware <linux-firmware@kernel.org>,
 Mauro Carvalho Chehab <mchehab@infradead.org>,
 linux-media-owner@vger.kernel.org, Alexandre Courbot <acourbot@google.com>,
 linux-arm-kernel@lists.infradead.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 3:37 AM <dikshita@codeaurora.org> wrote:
>
>
> This pull request adds firmware files for Venus h/w codec found on the
> Qualcomm SC7180 Chipset
>
> The following changes since commit
> e8a0f4c9314754d8b2cbe9840357d88a861c438a:
>
>    rtl_nic: add firmware rtl8168fp-3 (2019-11-18 16:16:01 -0500)
>
> are available in the git repository at:
>
>    https://github.com/dikshitaagarwal/video_firmware_5.4.git master
>
> for you to fetch changes up to e10ed2126e33582c6c9c5896ca7c16907980784c:
>
>    qcom: update venus firmware files for v5.4 (2019-12-11 13:53:22 +0530)
>
> ----------------------------------------------------------------
> Dikshita Agarwal (1):
>        qcom: update venus firmware files for v5.4
>
>   WHENCE                   |  10 ++++++++++
>   qcom/venus-5.4/venus.b00 | Bin 0 -> 212 bytes
>   qcom/venus-5.4/venus.b01 | Bin 0 -> 6808 bytes
>   qcom/venus-5.4/venus.b02 | Bin 0 -> 870812 bytes
>   qcom/venus-5.4/venus.b03 | Bin 0 -> 33792 bytes
>   qcom/venus-5.4/venus.b04 |   1 +
>   qcom/venus-5.4/venus.mbn | Bin 0 -> 916924 bytes
>   qcom/venus-5.4/venus.mdt | Bin 0 -> 7020 bytes
>   8 files changed, 11 insertions(+)
>   create mode 100644 qcom/venus-5.4/venus.b00
>   create mode 100644 qcom/venus-5.4/venus.b01
>   create mode 100644 qcom/venus-5.4/venus.b02
>   create mode 100644 qcom/venus-5.4/venus.b03
>   create mode 100644 qcom/venus-5.4/venus.b04
>   create mode 100644 qcom/venus-5.4/venus.mbn
>   create mode 100644 qcom/venus-5.4/venus.mdt

Pulled.  kernel.org is down right now but I'll push it out when it's back up.

josh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
