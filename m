Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2602517DC95
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 10:39:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gAf2oJfVxTJl3Wu9lnEgNdI2LOHrsDyoLaDULvZYmMk=; b=KukGYGZ8iFnXzS
	AtVGZRZ/DOeWKD3EwTZ/lL1Z3GNG0ydeHS/FQbU8dmHQcEITNKiEn6QCpRt0kE6/dkwytA8jssSbR
	kcf0UZzda946vna04hC/X7N17ciRRyMhsDW+2AMYUySNtgGtibaY6YRm2SIzmPwqhMifT0j2nYND2
	tDfvgiemhT2/vIVDak4ORlsF5FlHgFVtbhNeGSC0zcdtxwlHZh9n3utN7KQNQgILO/PJNnxmANcMk
	/cLPIwQAcmgRTm2wGkbHWrXmrWtLOd+gAmJWgxh5+2MUMwVihx3Si2WU06hfU26Z1dCoBgb5Evt93
	opGCHiKd1OeB0ds3CvDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBEsj-00048L-N2; Mon, 09 Mar 2020 09:39:29 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBEsd-000481-Fr
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 09:39:24 +0000
Received: by mail-lj1-x243.google.com with SMTP id 19so6337679ljj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 02:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GWafhgkHqGjhRe8y+m1pE0quFmlowBtOnAE/oPWGyN0=;
 b=vXkFRFdzlpOZtT+31ydgd9FX6Z1Zvo7ZtEaYUUUUW+uBV0RVnItMZc3YcFbcE7StgI
 vFAu7B5k5ORVKbJJlmV5EaSIhBSm06bToQPWxW2sw0hcVM+qy6K+yhMcZaQzIacJvJnk
 me07kNBcAGV55Bm1xfEIxflpbzWiBrTxe/u04FpXKoHPfK+iddC/bwDnFI2tr0SQIOyd
 iElasMAdPOJOJjbiD8Df9etU+Xl/hIVTSSAN4OFehXJBCj5AukvJdc+mEHgduzN6ckSU
 pA9oabtckEopSKnlebbTUOLNLAse71uhJXUJks5a8jE7XQC1qt36yei5GNrrB10bz5C7
 UIvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GWafhgkHqGjhRe8y+m1pE0quFmlowBtOnAE/oPWGyN0=;
 b=O86W4tKnQYZXm3Kw4df4HjDzfYPhnj5lg5K6mcQ4mxKZii6iHlYLYWmVFtJpP4gXFq
 Dt1KoHg8KkXnpfe/mXfgo8LSUher0Bbjd/CtWeuV1iIs7TpeUYDjrOkSIDw18Robz4dI
 xC0CV32NTuWxtxhT9NzzaJIVjMhK/ZkZFrbVbnQVZFIBlSccGmj9Fv95RB6rcJ9IKK71
 b7ZcBfG2SUuID74GceRNFIndcd7ots63ORJOwUTq7S+jWO+8+CqHSx89AOvqcMUKkv3i
 Rru3ob4Q3Jy1UNmUEsNXS1OAJb4zqxLLSo7aVQ6CCcxaW7YOGzIP4m7ZV0bQUtMU5JY9
 kjfw==
X-Gm-Message-State: ANhLgQ207Hqy6KaVTBOZipGi6XXgh7eOmXGqqx7umYji3rXdETYdfpjl
 bHhN5QtsFkmGJH8Svx2H1cIMBFG9kIQiZbBD9y5MuQ==
X-Google-Smtp-Source: ADFU+vu6HqaH4j3SJuv247SDzYUyvCKTi4MauowZ3Ck69fFNO8x9HHykET10xqulLd8bodNOiiPts9wgXPa49Wa6eH0=
X-Received: by 2002:a2e:894d:: with SMTP id b13mr8156479ljk.99.1583746761788; 
 Mon, 09 Mar 2020 02:39:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200306010101.39517-1-alexandre.belloni@bootlin.com>
In-Reply-To: <20200306010101.39517-1-alexandre.belloni@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 9 Mar 2020 10:39:10 +0100
Message-ID: <CACRpkdZ_GdA=37mng6OBA=9JAVGxesAJF2_DeYBOzJy3Y1UvDg@mail.gmail.com>
Subject: Re: [PATCH] rtc: ab8500: switch to rtc_time64_to_tm/rtc_tm_to_time64
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_023923_531913_DFE0A8D5 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 6, 2020 at 2:01 AM Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:

> Call the 64bit versions of rtc_tm time conversion.
>
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
