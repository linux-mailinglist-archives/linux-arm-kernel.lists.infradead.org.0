Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E816FC6A1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 13:54:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rKFq3ujkHw3XujYWm/6plaWQtgj3DAG+Fj4K7QLFKUU=; b=HZzP9roXQw5h8b
	GDSQiypUlrugV3OyWEFpEzxHfy2RwwkJEI/5jURPMil1FxkPWwxi3iOMCF/E7vU4nK6darzgvZ9zf
	Z/81+h0OlhrFOhlNxFUCTLFj2lA9GmJT7R4zODpvpAUrrz0ZB8hBiukpdZ0UuVBOgDgXZYIx9aecK
	CN9H2flYQf6sNJPTkiC7aMYEh6kH03leulf8xJ9z8vAVX82At4SXOCk4CmuRtYWkfTBgSLh/QMkAm
	gMhwuW13rCcLYzmFqqpV3WUXWkhylC0BMRSM9orj9I86WJTy+r2OzJqI/4vDxI5zDU+VRuCLM1pCW
	8wLgRxd6fuhykPvdSlpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVEdn-00022t-4S; Thu, 14 Nov 2019 12:54:27 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVEdT-0001ss-A8
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 12:54:08 +0000
Received: by mail-ua1-x942.google.com with SMTP id r22so1811386uam.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 04:54:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4TabhCeemnbt5YWJd9CPxReqJBi1D8pdx95Mgt8aSEw=;
 b=CB5Yu2xuaym93+UTMULc25a86wS48QqpxftBXsTLQdXzTUA0toqFuXQyvSaBG1ePNW
 BoPd/uQG44ly2FV0t2Vxpg3zksylWpO/0dVJyu46UIvYM9aOoyzbocACIM1QxzaNDsj6
 eDkqhqLy6my9dbZRpzQieGFrFS4vkno4wSRePgCV7+QoDzx+TC8J0sDIipQUz6Avo2zq
 XvA/wZ5ALcek7yD+OMsBbr/0EEEjOaP8vGkeq6dz9TrRxu8kVzcuzPN7pKLSWCG6LvSV
 ktnYHh0pbFCizUl7ZUEV5JSGOJzbCB+Ru1WZ8Fe4ZWNsjLMJLhsB1rIoGBKvokNKP0bU
 ++NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4TabhCeemnbt5YWJd9CPxReqJBi1D8pdx95Mgt8aSEw=;
 b=Elj1YFt5kgIz+5Q1wYGTv4q2svZxRBEL1z1r5dvPdQjIii0nIp/9QwVRo8XahG/1T/
 e0XYb2+T0a/30E3KKAI3gPx6OLnvW9p9HrGVIGz2YTHELg8Edsugd1n/ocAFom6N5plo
 DC86dG7kerBUNQhDk94fNbSry5YiWqDKUb5zkGOLdKF1YrjuPPJrdUurnPWGoBmZHTQN
 tv/nWxo6m8Afs4nhUz4SCImjONrn60FPy/VjciPDJj7KKE/22cfmbWg7YR09J2/vvT0A
 bNv8OkUOfPHaWsg9pzuPZ61IcD/S0DUd5APQy2rBK/Nfc44+nn5ByPrmElAiWkopP7uW
 LOwA==
X-Gm-Message-State: APjAAAXZKlinKtiYGBm2pXiPlIe1I1mZsMGeGskE82hmP6UX2MAST8tM
 91ZlJFVFpmBKMfiqd1Gh6d9AXK/gucrR6qpBZDdWvw==
X-Google-Smtp-Source: APXvYqwA+J0UCOgnwqppP3NKFyifvH6MtwSxKN//hr4/ukqNE2SPBmLZyMZVnkJC9I1HKis7De+7tL7O3dYz+TSI3W4=
X-Received: by 2002:ab0:3399:: with SMTP id y25mr5316646uap.100.1573736046067; 
 Thu, 14 Nov 2019 04:54:06 -0800 (PST)
MIME-Version: 1.0
References: <20191113093616.32474-1-peter.ujfalusi@ti.com>
In-Reply-To: <20191113093616.32474-1-peter.ujfalusi@ti.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 14 Nov 2019 13:53:30 +0100
Message-ID: <CAPDyKFp15ZMq1f_xwrPSRbhU4M4SXhRzigA9-QMNBGSZj-YtJA@mail.gmail.com>
Subject: Re: [PATCH 0/2] mms: Use dma_request_chan() directly for channel
 request
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_045407_376435_F422764E 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: vkoul@kernel.org, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 13 Nov 2019 at 10:35, Peter Ujfalusi <peter.ujfalusi@ti.com> wrote:
>
> Hi,
>
> I'm going through the tree to remove dma_request_slave_channel_reason() as it
> is just:
> #define dma_request_slave_channel_reason(dev, name) \
>         dma_request_chan(dev, name)
>
> Regards,
> Peter
> ---
> Peter Ujfalusi (2):
>   mmc: atmel-mci: Use dma_request_chan() directly for channel request
>   mmc: moxart: Use dma_request_chan() directly for channel request
>
>  drivers/mmc/host/atmel-mci.c  | 3 +--
>  drivers/mmc/host/moxart-mmc.c | 4 ++--
>  2 files changed, 3 insertions(+), 4 deletions(-)

Applied for next, thanks!

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
