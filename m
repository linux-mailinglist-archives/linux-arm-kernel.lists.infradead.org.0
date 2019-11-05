Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C58B8EF88B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 10:22:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fv7oazKjLSvlAEiqoU4SDwfWU0GFiey99nKCbgM0eHo=; b=eBgsz+lgeI/RI3
	lTI+abFlUNHxzu+Dg+DYHhOeJUL8ObMKexjXurVH5GVqJfwQBRkcRWk2F84xSdKpjz8qqltx0DsMn
	vRpOVK3/fnVSAJkZAelZ1mZkN1gtiGAHm5SiEnaMd/f5xktWe4NTGQ3UtFG4I5RHVpRUlAFsy44/o
	xpZXcAaZKVvFbsxL2dWAnOoyZIdrSJ1FC9N7QEibDjPqlt3EzgMY6iDJnBeynbAGs4IfCm8qYk4w/
	vAkfOsL2+5x9zJb3RZkijdLQ9QX68PPW3W5bQybmAtHHgrHQ5yzWj7yrmeL7+VyznW0VHe96n/T0m
	0UJg98jerF/TE0uwdwww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRv2h-0007uV-Bc; Tue, 05 Nov 2019 09:22:27 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRv2a-0007u0-Hx
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 09:22:21 +0000
Received: by mail-lf1-x144.google.com with SMTP id 195so14514294lfj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 01:22:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zT+1Y7p9/KJc9h5D2GRF7qfZtVnGufdHVpBg/W0NqHo=;
 b=ZwkOtNt5VUl11C77Q+z56zLs2I+csPAQAsgRQjB47zGyNSCR0Kg6cRabic9UhhWEwA
 N0Gv7FmAv/516sORohvg4vdXZFunZZarxm8ZdPsc50kbb31tvdjv4Vj6woz+w9YnntMz
 B0Qdzkx08jMesl1R2NO8wOct84UjT0XGvNHWJGi52lgYp5wjPBFiJ8KiaSDJ4pEXZH2R
 G05DJFV6PDy7slo60/TCchbTZvPcTuIwKkfMqfsyCPdSMf9a2ETL3CQLbPHez+AyIHdK
 3m4lBve1nyb78ScgbOCRuwcW/1kOcpLp8yP81uetBqFoJCgyMdTuJSsHrniPMAgAio+V
 UALw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zT+1Y7p9/KJc9h5D2GRF7qfZtVnGufdHVpBg/W0NqHo=;
 b=mIDkGEQSQukfEb3N9fePGoCxrDjKcpHEBVj2HmfOeJeeciKlOlMGigKnVqRet7cdKa
 nIovvKgrh1MrwGYsMJvWgezGD4BlgqLhURaCLXRP9jfog3+FAn8f+1KFUfuN7JR1S0a5
 As2xOQzFfBu+zHbZuMDvBE3XgbXOs6wvS16qZTu5JTgD1juJdRZSXiVX+M/aCq55uF0x
 Nh8mBF32OAKJSxsGFC8mSJTqxyYJSqtX2vZqfLiGg4TNVBc8hg98gRVkAysDc2bb0nsH
 HZXhC/hSwL+0eLhVoAPL8yuThFvu8bIKSMIz5DSYIi36Gzllk1d9AoEzbC2dnfg5/KnF
 oZrw==
X-Gm-Message-State: APjAAAV0htICpDX5QuBX3mFDdsFlE9ct3vAPx/RyULxsrgasilqBmWkM
 YehPnvXAK7J4WUig4wgval6Cn+xyRy8rBCOjwuXv+g==
X-Google-Smtp-Source: APXvYqzpYAIITTHyBlX7CRUeDoZEPf4WEShwX/ix+K2/HWFa8VXeIGqJrHDlKgc52PfZ9txl+qufupLsU//qO5Q8CZQ=
X-Received: by 2002:a19:6a0d:: with SMTP id u13mr11068219lfu.86.1572945738652; 
 Tue, 05 Nov 2019 01:22:18 -0800 (PST)
MIME-Version: 1.0
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-23-arnd@arndb.de>
In-Reply-To: <20191018154201.1276638-23-arnd@arndb.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 5 Nov 2019 10:22:07 +0100
Message-ID: <CACRpkdb8FQ8qqkSJic-7S5nA8c_fzNruYMrTC=dWwTridxygAg@mail.gmail.com>
Subject: Re: [PATCH 23/46] ARM: pxa: z2: use gpio lookup for audio device
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_012220_590292_3A29725D 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..."
 <alsa-devel@alsa-project.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Mark Brown <broonie@kernel.org>,
 Daniel Mack <daniel@zonque.org>, Robert Jarzmik <robert.jarzmik@free.fr>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 5:43 PM Arnd Bergmann <arnd@arndb.de> wrote:

> The audio device is allocated by the audio driver, and it uses a gpio
> number from the mach/z2.h header file.
>
> Change it to use a gpio lookup table for the device allocated by the
> driver to keep the header file local to the machine.
>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: alsa-devel@alsa-project.org
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
