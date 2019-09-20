Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC80EB8BC3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 09:48:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rzpBjJVLYLmUBF1pg+ZxRRLc5BOKtMAHFF9Zw6O8gz8=; b=Wnxrh9laXny/Is
	BLZqYXPBINCduhY2mOmOAuEgRuRn4ebz2B9An/Ja7gvIijwTgPvfZWKzQlyf3uwZiQ7dVTya+i5UM
	eLgl5jw1PFQUFxy18W54KxOHEI9kZK3TH1XwYeGO3Q25NkyBTG1x3fX0wFEeWAWDqZoRk43BX0Ccv
	0O/kv4nBdEP6jUXio8/OA8YcFb8JG5scHhLoZh9XrA5ukH4iQ3W+5c/11edz8vqrpBk/OjATX4zLq
	ul0cjOPfjcx3NDt7+zhOR7PHC3KSeJF8GxYx7slMaZRLL6IZEdIC/rkwBKigUYX41APViI2SU9XjK
	V1YS/z0EOzXMipwysBfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBDe8-0005vi-Ff; Fri, 20 Sep 2019 07:48:04 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBDdq-0005v2-7k
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 07:47:47 +0000
Received: by mail-ua1-x941.google.com with SMTP id f9so1936317uaj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Sep 2019 00:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fxglbnyqNsy9IrMeX1phK/aGWuTchg+w3X2HNfK/9CM=;
 b=mRkPMjzvPBVfAeCHVbJTYmrEh8uq38ZKVM8E8AFU6NzBMCkin/nd1eIBhx73UcvIPj
 hZ9cLZl7VRnRHz0r9b+vw/tUY5l1L8pgCBGOVyccwzB3loxNIAfhw8f57iYt1IVFHmMG
 3ihqT7adb8ixIuRyXLY28hq5ZvJnUjZr99BB8J0MuUtrXiFlrJAhlWPEp5EDSLnkwd6j
 gjJUOVRjbfeyDNz7/rz7jmEHiaLot6qL149wtDhUGZaREGUjVZZCucZTaTlcf93XPL/+
 tkpHNvmoPXhsNOFXcMyryFbNn/lRqf4ubcSr7Nk6ZF/pyAtrNhtGObkvcyf+0/vSpDDJ
 xc4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fxglbnyqNsy9IrMeX1phK/aGWuTchg+w3X2HNfK/9CM=;
 b=D/UKs7zsF7KNhxkXCwjcyEf4WHR/d/wIyaTgvqIOLJHB5GNCiFx3jWPBCG8HmkjNrx
 kIR/MTF/j3LNmbesZt9YGBulLurg7aS2OQj77RUNcwFP0ztRbpefO47JkLUkqcZCTujc
 TBig2vq0dPRr7f9qmKSk2e+k8WUPxEdsp1mAesX3xSLX1fSconM3ytOJd43IXA2Bx4BD
 4tesPHTlKMAVFoFgUq5ONy1xAT+05pviCW+zSpfJQkVxI/iTZvKJgYyO1Jlsd/HzC5QY
 HwrQRt7zaFlx1tmvX8ZjMQMIwsq0GG+i+b9hLs8XMio7pwNSb1/Zkj2pIBREExWu/zdj
 tVBw==
X-Gm-Message-State: APjAAAUzBuXH4t/REAi5lXlfGfUuAoZdrRXo5cLMj6+WWbuw0PFh6ubZ
 qpVCCLpCEFbca4gtSGPrSoanyX1HzIsLcWF/jIFWig==
X-Google-Smtp-Source: APXvYqyIPD8otiC6oiySJICKUArdhKAFf1jxKg7NkboCvLV7vKR9MnpHuTM4AuE9NqL9JQuhAM9Efy4otC84oobLXJw=
X-Received: by 2002:ab0:1856:: with SMTP id j22mr8516177uag.19.1568965664676; 
 Fri, 20 Sep 2019 00:47:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190905122112.29672-1-ludovic.Barre@st.com>
 <940e3ce8-1a4f-7e03-dfec-25330051ea5f@st.com>
In-Reply-To: <940e3ce8-1a4f-7e03-dfec-25330051ea5f@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 20 Sep 2019 09:47:07 +0200
Message-ID: <CAPDyKFoha6q1CmhLXREz8OAzd4UiBDKpHo46J1PLGMkf8CStpg@mail.gmail.com>
Subject: Re: [PATCH V6 0/3] mmc: mmci: add busy detect for stm32 sdmmc variant
To: Ludovic BARRE <ludovic.barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_004746_308429_A55A33F7 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: DTML <devicetree@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 18 Sep 2019 at 11:33, Ludovic BARRE <ludovic.barre@st.com> wrote:
>
> hi Ulf
>
> Just a "gentleman ping" about this series and
> https://lkml.org/lkml/2019/9/4/747

Thanks for pinging, I will come to this as soon as I can. September
has been a busy month, being on the road most of the time.

Apologize for the delays!

[...]

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
