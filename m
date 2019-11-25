Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2386109126
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 16:41:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U6HdyEo7+FPlU3vDrgwazxydzPS5JdxPf+R13pnDD6g=; b=cF4Nra7pNmbU+S
	Xf+OiA9kk/T1ll3DYhNogGq1cBRHpuQ67FI58q8ZbyxaVxppLYfd+aarDe24/7O0aPgr/SUFYgK6D
	yijlBsstY0zt4VwEnyzHI1uQ5lf39v2AOwzum8FntNR33AgzfguaxRQN3ou3AKN6UVH8BeoiePdUi
	4hINCI5Ghz5nzsqhH/NKVenyPggBGNqe9KiYfXCfXrnOrKw3PPCbl4EYFIHvchitPXYJO/60K4LFa
	kEInPyCTBTP3NiiWKBfJwl2Uk5wO8fOO8HQxB/qCaq176IKBjUpowtvFltqllNgvI8rYizRD3Z8Fe
	7cOqQt4Z6dNzSJZVm6yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZGTz-0002Lu-Ai; Mon, 25 Nov 2019 15:40:59 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZGTm-0002L9-K1
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 15:40:47 +0000
Received: by mail-lf1-x142.google.com with SMTP id l28so11425156lfj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 Nov 2019 07:40:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=G0fv0VfL01xMdWSP2VZWnjiUfIRToWX/SHHYSb7AWDE=;
 b=pDiykXcQZnwwnjSM8z/UXXc2cWhQ80Y2WQKFkZ2nQVOg48dSX/ZW1msmjEqM2jY4Tt
 zolSUv0OMlPQe2xaDG4hdM92VycEb3YcTAz65YvJpy71C4AFoB26Vzw/BcsdWawHgtlh
 CnJoTT2GzlWnWFjc0xhPUGjuzFV24NUjw890zTWHXAd02KYWRg9OYCzTRwQXpHO85SeI
 mvkS4PeJi8h3r4qdNkU0qwB+DwY6swy3C6KBuDsB8gsvyjDVQSDsvks0Pbeqy7+FQOER
 +130a6Vpi9juXS9ZRp+eOUApSsICBJDnNnVVdps5djaZp9pFdkY6nHDrvi7wWf2g93eZ
 CX5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=G0fv0VfL01xMdWSP2VZWnjiUfIRToWX/SHHYSb7AWDE=;
 b=CqVey0BBjtUPthqm/deNe178bsc2Rr3KmwJp6bgIFuS4VZYVjOaKSBnXadGEWIssx3
 +x8Dc9nQSY82KwGRqxQcScUJ5FANPalKUiizhbfb7nd8xvF/YHBfaPvrNLiCKrDSyToF
 BuQwKRl/8ABfJuvLF4wsD+rFf3xfYcMeujj6rU2eeSfkVCmzmjReKR2jFztfa5Hct8FP
 VL3s/XYLAx7YJfidQYqvzJytTGogzxL/UYFqv6dcD2eBPkfEXYJGf9k90bAWPON5NDkr
 93YxxGP+zq3N0YKkHXqMbG2FHrMHlma9HzC1qY9VSoD7o6keH3YwBlSlO0o2kWMIBMQ+
 xKsQ==
X-Gm-Message-State: APjAAAX34SZXPLQzO30ArD1mFVYWGLwsPkn50k+9l/aS9tcXzpSPgvG+
 McjweUXsgRI3tjYEQYSCh9xliuYhFMBchL21nZpplQ==
X-Google-Smtp-Source: APXvYqw91BdlGKEVy4ulicoxULZj24A25+7eXLx3jO76pVaXCfRubRgu+6uPho+861OVfUhMFk+EELc9kObLcEvMftE=
X-Received: by 2002:a19:f701:: with SMTP id z1mr15851906lfe.133.1574696442163; 
 Mon, 25 Nov 2019 07:40:42 -0800 (PST)
MIME-Version: 1.0
References: <20191125122256.53482-1-stephan@gerhold.net>
 <20191125122256.53482-4-stephan@gerhold.net>
In-Reply-To: <20191125122256.53482-4-stephan@gerhold.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 25 Nov 2019 16:40:29 +0100
Message-ID: <CACRpkdZ9=sZQ0+QxkKx-0GAAU0ot_nRgqgK4_wk3vGp9v+9DjQ@mail.gmail.com>
Subject: Re: [PATCH 4/5] ARM: dts: ux500: Add pin configs for UART1 CTS/RTS
 pins
To: Stephan Gerhold <stephan@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_074046_667404_03FF53E8 
X-CRM114-Status: UNSURE (   9.54  )
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 25, 2019 at 1:26 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> UART1 an be optionally used with additional CTS/RTS pins.
> The pinctrl driver has an extra "u1ctsrts_a_1" pin group for them.
>
> Add a new pin configuration to configure them correctly if needed.
>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Patch applied for v5.6 fixing up a spelling mistake in the process.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
