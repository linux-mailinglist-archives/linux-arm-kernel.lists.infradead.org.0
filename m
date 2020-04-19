Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8957E1AFBCD
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 17:52:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fM3cFYUEGu88kH6MJVmLur5up/SfR+3itRDX/sg2Tb4=; b=ks9OsWhiXItKTB
	b2GACuZwO20Pl5pVvWF61kkXhyckiwfdTXp6rcL61Bh7ZThYo9pVCFnDx3EmBo7xpaup90wUsvgnW
	u2uGWkVmxjy2vyyRvvavF1GWE/Zil2ubZl0Bcb3jBHcGhPSmFXJ5zUXqP/TZfS/OeTabxqnxqDdDu
	2g49xkOtMGtow9qMBW15unffzfYeAiWd31+W/I1KEvhEfYCEvCzYI0grtUSBRfVgTReDa0MqFH1tf
	qV5L9sjFsYyJ37yNwIK+SqJ2ib/PSwBp6ba07Na763YcvbV0rLKzxlBwN7G4i5tanGOBwPtIygW+u
	Yvz3pntdB2O+qJ2eJvEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQCF1-000538-6e; Sun, 19 Apr 2020 15:52:19 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQCEr-000525-LC
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 15:52:12 +0000
Received: by mail-lf1-x142.google.com with SMTP id w145so5813933lff.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 08:52:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=puq4LGaJLu91tsP0EOV/aht8/LoEw9dhNvgkrrgI0M0=;
 b=kmEUSvyMZy3pWlmfBj6ph9+yTJxIicCoTZ2oHWv22uPHShhrD6dXB3nFdSVSQ9UKIH
 X01wDHoO0o3SD9U8nkBwKk6WZIDmluNtrFFPXTkmLLyEe0f+4uK8ugdiQSG9t2xSurz6
 EXZw5KnLHhgHjIVub6meTCWW44m+827f4GjD4iHMj07dOmVdf7BkblrI5b8Eshm0qOr7
 hZYZ3RK3rdu0rTi3+E/4xotGRwYv6RmXJCNx3AXwKU04DNuHgUoQHVowT99KEA1om/xC
 993dUnXPWRO5bdVcMJNqG+DFM6AjpM51c6yfVVcV5Ef7oe1ujo0nIyFMz/T3Uwz9Q1Hi
 0L9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=puq4LGaJLu91tsP0EOV/aht8/LoEw9dhNvgkrrgI0M0=;
 b=bQ1Iu1M5uByRkCXg/motFJaRWwc6bSHBZOH3Ukp+sI5zTRgdmJt4aKJ8tzFD/fjUA1
 tguxfK1xzqOGfX2PLUerNxQpfDu3cX54BwbyiasbcFxS5oaIxD6I3tVyZwS415QnRk9J
 kzss9xlQVq8sVw+/Bxe50j3ORZska5lRmDxl58Lc5LCIwMZCVnk6Amh38rBOhFmmCyXc
 TNPwog/AdPpWNNrUXEZnnUb1Zv3znVmQ2eEinli+zEqp6b9vcFy64617/1U5w22+lbxg
 QOCUbUNSKC6pnhkrLoQDwHVyNJwqKKwdYfreO/WfFAAoqrn2THXwhwyPc68/sV6elKiO
 gQnw==
X-Gm-Message-State: AGi0PuY/2g4jJ7bEnlA90SkGlu/A4f+PP5kZ/evHXHP8GzkiIfwk3SEo
 AOOGGOjdlUwyX3p5o0ZoIpEP5fy0ytJATfuleG/W6w==
X-Google-Smtp-Source: APiQypIxAPipFGPF2SN+XT1jDXJXTJdHsgQn2AhHXb63BfvDD9HsotRIaefG6KlobjMHGAGZARFRi1m53SGunpj7bv4=
X-Received: by 2002:a05:6512:405:: with SMTP id
 u5mr7642643lfk.192.1587311525570; 
 Sun, 19 Apr 2020 08:52:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200419150530.20508-1-etienne.carriere@linaro.org>
 <20200419150530.20508-2-etienne.carriere@linaro.org>
In-Reply-To: <20200419150530.20508-2-etienne.carriere@linaro.org>
From: Etienne Carriere <etienne.carriere@linaro.org>
Date: Sun, 19 Apr 2020 17:51:54 +0200
Message-ID: <CAN5uoS_h1T4hw7zpmqzLjTBN8_16JRgXnWGzVmaZ7ohhV6DfdQ@mail.gmail.com>
Subject: Re: [RFC PATCH 1/6] firmware: helper functions for SMCCC v1.0
 invocation conduit
To: linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_085210_664133_FFFC9DF2 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, lorenzo.pieralisi@arm.com,
 michal.simek@xilinx.com, tee-dev@lists.linaro.org, james.morse@arm.com,
 Sudeep Holla <sudeep.holla@arm.com>, richard.gong@linux.intel.com,
 Jens Wiklander <jens.wiklander@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 19 Apr 2020 at 17:05, Etienne Carriere
<etienne.carriere@linaro.org> wrote:
>
> +#define arm_smccc_1_0_invoke(...) ({                                   \
> +               enum arm_smccc_conduit conduit = arm_smccc_1_0_get_conduit(); \
> +               switch (conduit) {                                      \
> +               case SMCCC_CONDUIT_HVC:                                 \
> +                       arm_smccc_hvc(__VA_ARGS__);                     \
> +                       break;                                          \
> +               case SMCCC_CONDUIT_SMC:                                 \
> +                       arm_smccc_smc(__VA_ARGS__);                     \
> +                       break;                                          \
> +               default:                                                \
> +                       __fail_smccc_1_0(__VA_ARGS__);                  \
> +                       conduit = SMCCC_CONDUIT_NONE;                   \
> +               }                                                       \
> +               conduit;                                                \
> +       })

Checkpatch complains here (traces below) but I think this is a false positive
due to the line breaks in the macro definition.

WARNING: Possible switch case/default not preceded by break or
fallthrough comment
#231: FILE: include/linux/arm-smccc.h:415:
+ case SMCCC_CONDUIT_SMC: \

WARNING: Possible switch case/default not preceded by break or
fallthrough comment
#234: FILE: include/linux/arm-smccc.h:418:
+ default: \

Regards,
Etienne

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
