Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 308271044D1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 21:16:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n1g9Nf20E236lgFnsX9AfrDb2OtOrtc9ZyneF6VQI5A=; b=NHDl7P8kxzP2BX
	k0tv1ncyDwA7B0Qon8UBJl/IH9kQNupGkxcEI+AAeHr55Md+/u8PrtSFZbrhjHZfYf0Bg+6AzaJ7/
	iVH5nheDdpADEcf4fF7AjpeRVs0q0dGzNlYCa1Wq5j+qlev7ApXpsLB1AqJyqEY8OGMlM/4rfY/cd
	2SBSTld4KFA0+X7joBDryWh4YdeX0O868u/RXzZchwKFCWZPbd6iaNa4bnm+pNgmOcQ9aLGJlSQUD
	/P8s9sLlCCgp1Z8kmAkvELlcywwpuBMvN+oO4iQOeB6xSR9w0iBQsRh1aKhrcHSGrG4iEaQXyDNlw
	4IaCqbcQ+iT2MTISSjZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXWPC-0006qp-NH; Wed, 20 Nov 2019 20:16:50 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXWP3-0006pN-Pg
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 20:16:43 +0000
Received: by mail-lj1-x242.google.com with SMTP id y23so536415ljh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 12:16:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=As7pKQ0itiBPr+JVzJNRbGflXyWEUqoGImZXztf0jEU=;
 b=XEy7WaGq7tnXJWeHZWtz0DwTyLPI5ZIDiFBhpBU/p+enAkw3f0UID6GJcKUKKhDXwB
 3zAy7hyjoieIeZcKpDx5M3kdNUoMZqzFs5gZNm984sQbeIYqSq7ZFmRck6P7s4qJdPIS
 nydKNUoBsu2hVpIyERlo9YIrafC2SWqeJ9p0rTQXTSwsYU1flWI/42RRYkdlpdArN0Ab
 4lwJX/mndLLYBbj3ixlqdttpycoL7TjF1Ybm1R4TIC41cf0FFFHeBY84qDEZDHRTGW6k
 FglI8GhQAHWQFfVHDlFVgZyzB0zeTIwYjGzscfkYOoeEOlupu3J52a6Ah6QWfY/vJ25e
 A8ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=As7pKQ0itiBPr+JVzJNRbGflXyWEUqoGImZXztf0jEU=;
 b=ZwWBHJNG8gw2K3AdaB5O3i2/Ua47XlJyyRmop3KYzjcF6CEr6JDNabTn09dqUPoaMi
 sa0aTYhhsA9nAZq6HHW12bsMNDFlD3qAa+1azDrj16OfiPTwddO+bwAHuAfHDtviPliD
 498AHjN2OmW6HwXafQP3DsNuZzrkLVA5UEm1oQ3D2U/WWqD40WxkoH+38sJTd4AdodZK
 skgGV4oYeCc9XwCfO4vsVpoUURq8Mr5vAuiROHxclwcIRPYszFWhAZ8sRxJty83g8UKN
 ERGDT+QwWciCWKvAH2cqZ0K0HK+GllgFLRLwN/OxZUDDDJ+iCnbEbkV1R9tdYZ1lHj5m
 0y6w==
X-Gm-Message-State: APjAAAUO1nLx/S4y3OzQYwxGjls6SyYgWYeNJV19pFkmk9Hu2eP8q6Tk
 dEt4va0Ws1HrGcZAMUNXqOx2JhbMiwgfUTToMqqPww==
X-Google-Smtp-Source: APXvYqx+bECbdnOoxTCki5xJSDVYs7EMIZ2Q1kvVZaDKVhZI1elr6NsjrHwr5uD2qsoUC1YJ0MgiOfh8fbu78lxOV2k=
X-Received: by 2002:a2e:8597:: with SMTP id b23mr4421824lji.218.1574280992576; 
 Wed, 20 Nov 2019 12:16:32 -0800 (PST)
MIME-Version: 1.0
References: <20191117221053.278415-1-stephan@gerhold.net>
In-Reply-To: <20191117221053.278415-1-stephan@gerhold.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 20 Nov 2019 21:16:20 +0100
Message-ID: <CACRpkdYoq0E3HEmo4QBOWaAkQN8Ti=cm2OL+gjBORynsJ7D8jw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: mfd: ab8500: Document AB8505 bindings
To: Stephan Gerhold <stephan@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_121641_843879_B2D0435F 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Lee Jones <lee.jones@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Nov 17, 2019 at 11:14 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> AB8505 can now be configured from the device tree.
> The configuration is almost identical to AB8500, so just add a note
> for the nodes/compatibles that differ between the two revisions.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
