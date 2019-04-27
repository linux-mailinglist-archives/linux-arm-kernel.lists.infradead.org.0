Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 730D6B483
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 22:29:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0JPXvflYkKvS/Z14XSUxTWOSw1Ks187Tlg5yeW8c+4Y=; b=g1UHLj4yIC+4ft
	9N1tKAzIAWJx55FpEQ9fGAiyrcv3QD4HMw9zNPnlTGfHhAKHjmw3/mYk3qlyJ0V6vIjoSRVWxHFLA
	VYqUX9X3PYOpKgfNmMOvR/RK2YtX1LBtjHDS3Qhk9eYx3AeWpyFPq3Br19+E1/Bl6UQ8uS76OkWje
	PvdRIOuqPTow4sUs+wkR4k8dtWjHRQp4dzYdjZfOUZRyCqNjmbfVal64l/y76wd9dPYuyqR8nlsup
	7ujK7895TkzY1UGP0kD/fNPfMxF5qF0K+JGTAnzIvcISq+bWR3VEarljZiKNjaLUAzfD6h0p3ESfN
	k720MKC0CaKm8nnp9xoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKTwb-0004af-ES; Sat, 27 Apr 2019 20:29:09 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKTwR-0004ZL-TX; Sat, 27 Apr 2019 20:29:01 +0000
Received: by mail-ot1-x341.google.com with SMTP id g24so928763otq.2;
 Sat, 27 Apr 2019 13:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1I/Om5aYGl76EBPQH6xJKuHTrTxYjP1lSZQ1eei4PnQ=;
 b=oZt/Gnkc+JToAFtKFJv1xZmlYzkiWRGIOyqmO8G+34CGuYKdi4NWz8fdSSkNVEEb+c
 PfyUjCXRBE34YNs5xgGNjJvWCgpvGJcr3hckspV9eKrbxGLtovbs8yX7BKZ6cIcCSB/F
 Gf0z2NeqiV3UoH5896Pa1Tz+EMgMMV0hM6rcQkb993GVp9LdNcspdjkzcXpSxAKwSpmB
 mCwxPEpDxJ6cfb7j2eBlrXpuwSftsW885V0vkz4rWZhz+44QoNoFKIV6c871cFdgP/tx
 sTRWZF1GCKCSvJ9plNIPU3VKh3FReJ8jmXx2u3YaGGaYIuXVdTCLcnxoCYofiXm+iS5T
 81dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1I/Om5aYGl76EBPQH6xJKuHTrTxYjP1lSZQ1eei4PnQ=;
 b=HnmqLNUiPAfhm9AGljrt/Q9GSYoxGhaEQPYKMD7LFq7Thn6SDGQ7BLHHerumRxp3zl
 G0x6Soi+XLlJ7ZAomkxetMy376U6ymZtaN0yMfTUugdHRgWEWYoUvu0mqTZFgIEyzd0T
 /G5w5idE+mdK+X3lrsxPryvrIK8P/FdljSG8FRxIegj0SudlUqDO3Kk0Wkfw8hdr21Ot
 eWhDJsX+qB6a3/0Qsofe3Ltzv4+87gFFkLuLTc3F6WCrSabBM459I+/MIJ7RZDVW5YDY
 jrZFXFJ84IAXRyQhnWWGxDXIzphQ9J6q1MJkXyxTwmv3Df0tKg69/lu6lGuxaXXfGDZ9
 6+rw==
X-Gm-Message-State: APjAAAVl3CgLJLIo6/l7OT9A+zm77XqmVavVaQ9VmjuMhFcYIY0URBxJ
 PvJQsF3xbtXKb3yoxCmG74jNqBmKfI2hyQUa0PE=
X-Google-Smtp-Source: APXvYqy9mase1ZnVcKmBnICOyv3t+KT6WikFCXT/0YPXUrGRlfZICYalsHFMC6sfA6xprYjrwUMx37FrmRKsqaItP8E=
X-Received: by 2002:a9d:7443:: with SMTP id p3mr11906227otk.148.1556396938787; 
 Sat, 27 Apr 2019 13:28:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190423133646.5705-1-narmstrong@baylibre.com>
 <20190423133646.5705-2-narmstrong@baylibre.com>
In-Reply-To: <20190423133646.5705-2-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 27 Apr 2019 22:28:47 +0200
Message-ID: <CAFBinCC2XpRab2Hqb+begpMYFuo5KhWfwemQ6C_1LqxJbBjYxg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: pwm: Update bindings for the Meson
 G12A Family
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_132859_954920_131F309A 
X-CRM114-Status: UNSURE (   7.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-pwm@vger.kernel.org,
 baylibre-upstreaming@groups.io, linux-kernel@vger.kernel.org,
 thierry.reding@gmail.com, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 23, 2019 at 3:37 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Update the doc to explicitly support Meson G12A Family.
> The 2 first (A & B) AO PWM uses different clock source than the last 2
> (C & D) AO PWM modules, thus we need to differentiate them.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
