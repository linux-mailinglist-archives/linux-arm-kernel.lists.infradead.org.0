Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 656AC13A66
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 15:36:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E6wRQk8qv+50hGKz8SiHwtr/uRP6eyA3uKo/y0cWl50=; b=pZpwEjZaTH/kwn
	UGxAxrayhhEppH2MjT29p1Ds9sj5vKSuZYx3pQWhWvcFuNBfdJGU4Ww9xvSqFRB6NIgvPohPKk7zf
	fXyOkU3Ioy/63jMEEGuZaE00qYGFKvQVw2eeT9jmaKEcrvHzKkRwNYQG3cUdaraKfQ9uh4ZxRQMOr
	3nzJOnA5fX2eqkpZ7StMlhRhr2F3VhP7IpstN0+WoCZS+u0Mf3uuGH3bWE6CaXt70hU8yW+zN7ZdN
	rOD6S4jbNEqdunx/Cmny6lwRZkxt9yO3u5gS0dy5is6gWx3PSW5vQQ93F2EKSjKWooaPVjjHBkmb1
	F0nBJhABKLfnBqnJi41w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMups-0004Ai-Q5; Sat, 04 May 2019 13:36:16 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMupm-0004AD-9z
 for linux-arm-kernel@lists.infradead.org; Sat, 04 May 2019 13:36:11 +0000
Received: by mail-wr1-x444.google.com with SMTP id s15so11247040wra.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 May 2019 06:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OwPfwZcZ52bpY4HX+FooZLavaLrComJSJs44yQK5qbw=;
 b=fESV9dGYWNxFNa6dJB2+Ehn96BhGmG1wnDc5BenilN4ZVg7L8+B2WHtK4rrxlcHtXP
 UlIvr9nMCoyv/EW6caEYRdwiEqMbM1Unf220dsMKHyb63GbwUsyaol/yqbt/xq51v2u7
 SuAtAbxR07UxDUwLG3dJbX1RUYZ9HD00iZLMk/c1OumqUZCzolBX3I8T+BEq0aLLy3gl
 E4ifvYWvLCHsAIWBGXsGK+q16cjnR9zuE0ixlaaSI5LMYpScvee3HCeVo0MP4HeMJ/Ce
 sAGMfz0Ofe0YL+hr3w07ESkYuMnCmsGzOJ7dDzvls68+pLu1hzBcWbw2EQdG5UuCYuXs
 yf7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OwPfwZcZ52bpY4HX+FooZLavaLrComJSJs44yQK5qbw=;
 b=VRn+KuQcZaK/lYAIe/j9fU9f466xDsmNEZb3OVuUN2mb/k4iq6llSuCtfFXH/FSByW
 7JV8jmFTh/mLcxHkhqAeSD74x+/Fg3B6XLj8aHC3959Yg/rrUsbU4FN++UM8Hbg+ploB
 /MQzkv70xSiZMlCsujzJe43WTPODnOY2/Qg0USf9PurWCD98ny+MVMLi1Szf18vhr2RY
 YMsJHk/lTQhpNNIM3wus/g541eJrOb7gIbiBF/q2PGHlDucXoX1PbNDMAUIp9/i0/XI5
 G852rlwwMcC60qRBqOJF84xMbtbA7Pi+emVbmwDIs8jAeeRgjVaFWuwu9mzDjVtXpIab
 9tBQ==
X-Gm-Message-State: APjAAAXyVye9khPE2/Pl+4/LzFBqe7TXZPqANFIUU2Nav4nYfLI6iUpH
 eeOdQnAMYJFWBXdGetiy2TeDoPU0QZyEKxfpfQo=
X-Google-Smtp-Source: APXvYqwcWU8I2xbCxqwdC2UH740B6IsSWcaA6w+XGk8cI5AgVgHLgHGYE0gIdXNtlpvdbsx2JXyB8sGkRJ1iLBxrJJk=
X-Received: by 2002:adf:9cc8:: with SMTP id h8mr5650848wre.308.1556976967596; 
 Sat, 04 May 2019 06:36:07 -0700 (PDT)
MIME-Version: 1.0
References: <68b71c15f32341468a868f6418e4fcb375bc49ba.camel@gmail.com>
 <20190211105755.GB30880@fuggles.cambridge.arm.com>
 <38d8965a-cd41-17cf-1b95-8dd58c079be4@arm.com>
 <874c702b8af760aa8fae38d478c79e3ecba00515.camel@gmail.com>
 <235d20ef-3054-69d9-975d-25aebf32aad3@arm.com>
 <20190223181254.GC572@tuxbook-pro>
 <86zhqm8i6d.wl-marc.zyngier@arm.com> <20190224035356.GD572@tuxbook-pro>
 <33d765b5-1807-fa6c-1ceb-99f09f7c8d5a@free.fr>
 <8eb4f446-6152-ffb6-9529-77fb0bcc307f@arm.com>
 <7b5e8bb1-d339-07f7-66f6-7f09df2107c4@free.fr>
 <3757fc2d-0587-be46-8f75-6d79906be8bd@arm.com>
 <5b83a4c2-1f0e-337f-a78d-f7d84fe01ab3@free.fr>
 <a6f89d1a-e7bb-bae9-6666-f4d5b263b835@free.fr>
 <b7a3c9d1-6bbc-1f14-956f-ee4dd3bce175@arm.com>
 <bd3d23ed-1e4c-861b-35e6-08c2f7e4a47c@free.fr>
In-Reply-To: <bd3d23ed-1e4c-861b-35e6-08c2f7e4a47c@free.fr>
From: AngeloGioacchino Del Regno <kholk11@gmail.com>
Date: Sat, 4 May 2019 15:35:56 +0200
Message-ID: <CAK7fi1b5PP+ToK5fS6xEvGaNF=43=OtA8=5KhypTcFeryWSr9Q@mail.gmail.com>
Subject: Re: [PATCH] arm64/io: Don't use WZR in writel
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_063610_375002_AAB4C7C4 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (kholk11[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kholk11[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 MSM <linux-arm-msm@vger.kernel.org>, Will Deacon <will.deacon@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jeffrey Hugo <jhugo@codeaurora.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sorry, I've replied yesterday but I just realized that I did click on the wrong
button and the email got sent only to Bjorn. My bad.
Resending to all... this is the original text:

For me, the [1] solution is working fine on qcom SDM630 (Xperia XA2),
MSM8998 (Xperia XZ Premium) and MSM8996 (Xperia X Performance).
I couldn't test on others that I have for time reasons, but I think that it's
not even needed.

By the way, I suggest to clearly document the fact that (from what I
understand, at least) we can write whatever value we want to that
register, as the change as it is may confuse some developers around.

In any case... if you want, you can also include my:

Tested-by: AngeloGioacchino Del Regno <kholk11@gmail.com>

Il giorno ven 3 mag 2019 alle ore 15:07 Marc Gonzalez
<marc.w.gonzalez@free.fr> ha scritto:
>
> On 03/05/2019 14:48, Robin Murphy wrote:
>
> > Anyway, I'll clean up my patch and post it properly - thanks to you and
> > Bjorn for testing.
>
> Cool. Thanks!
>
> AngeloGioacchino, are you still monitoring this thread?
>
> On which qcom platform(s) did you run into the issue?
> (Robin's work-around has been tested on msm8996 and msm8998.)
>
> Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
