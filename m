Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D8E8CF01
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 11:06:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dqsnSauVHo+qu739x6d86KTJV4DhX+t1WEBUW/rNHuU=; b=dSMvYYR3VYcROS
	aze02r04IIlPjx33Ba5Mon2RJEz6bznxGa4TAC/kfJepVv0sL/Y87Gg4AiBvpM7xmPBJibb+is+un
	u+CBanUN81Nv137JpM/53qad9Cre4gayKYFztzaQFJmtxoFuPjyGeBuN01TOdjYz4j2scoSj9ns1P
	ZEKjH/wzAX1UUq9GYfmx2lpQCX/2aAhat8F1tlapC7L+PDhKUINdFrA7SBe8nFmh6BLYCa8+I2+1+
	ko3KhVJm9w2gQkGPMPpP0S/WYUrsoER9MjKbfJ4Ex/lSRGulk16FA6UAxLCPj1vJl5sM+3JOZBz1C
	+aSGY/NvjazWF81LP6xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxpEW-0002lo-Qz; Wed, 14 Aug 2019 09:06:17 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxpE9-0002lQ-Ee
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 09:05:54 +0000
Received: by mail-lj1-x230.google.com with SMTP id t14so1849011lji.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 02:05:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3wLwyTgtoBgYvIrQ8gsxnj78fzkSX2CZZELLBusxXEM=;
 b=JAe6TrHk4+nqVIJbQOWhA97UwD49CWEyfy+L02Vnn1hJWIKe15fir1Mlx94JidlPnV
 vXPdJQc4JoSjnMW70YJqRjHCTuQsZD8PIeDpQaf9xV4fpEFuv8PWi+xYOGJQXtfPBrmW
 I6gYYgjSkJALCsHQoGqZxbxsfTfSYUO9Ifj/gDSgAW1QjkFK12RdEWks4a2HCs4L/0KN
 Sd1ZA4k6mzQ3wXtJhKhGSf81FdJCG6aeK2e0LDXpWzt3b/mADtu/nW/mvS2bvLyyJcnZ
 0fx2Qpczkr0A4CKjKq2pnK/9KvivqXkhp4TU7sUi8YeX5tNnfgJloI/UhYnHSp5vloW5
 zrjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3wLwyTgtoBgYvIrQ8gsxnj78fzkSX2CZZELLBusxXEM=;
 b=BLPyyfJ9mW6z5GODAdgkUGyCE3WS0vGubdsq6eE4oMr/CEgtCjJOfRc6I1JmM2c6dL
 xSvr8EzxVrMPSQaqWBoygRR05GDuv6tDxjxy1PkRQXPgGNVNMKV6a7+gxmnC5pqYBzfr
 9+KcONHWuBkeIcmwDyTlqM1ucpHGTa1kTOj6/hclKdQdohv3KUcKbG3XW/CKlQdZrH8B
 YvhW5BVwoGfxuhwlpbKRJZJ3AsBVw4JUp2vyOIqyzk7cv8ob/TZMzqCpcVQVpK0m4GEC
 j7tRbd4uKSJ2iQHKbADI0x8jFbLieHDkVJ3Q1lgq9Agp7UbnCIBJApdfE62WgCdJOMec
 vrsw==
X-Gm-Message-State: APjAAAUyrgvyJ3fvUGyNgcOhVh1N+YhY4LDyMA3HMBme3/6MIOJvSsGl
 DQrjnoo1Jk0BDhm3jW8Dvj7zx7Gyl/t/uboNTH6SJg==
X-Google-Smtp-Source: APXvYqwLa6sOoV68JpOOb/TLt4GN6l6A9EcW0U/D+D7nOCBLUl1ETQ0F3VhNSrzBOGjWXvIp1oNgSAgzChdvrFZFdsQ=
X-Received: by 2002:a2e:3a0e:: with SMTP id h14mr7495547lja.180.1565773551679; 
 Wed, 14 Aug 2019 02:05:51 -0700 (PDT)
MIME-Version: 1.0
References: <5d403574.1c69fb81.14163.65d3@mx.google.com>
 <20190730134115.GE4264@sirena.org.uk>
 <CACRpkdYevQiwW8iED8_qBo5yCcj5yCGrM76Lu3MyrU6Vy4HoNg@mail.gmail.com>
 <5d41b01a.1c69fb81.84578.a0bc@mx.google.com>
 <cbbe381e-a154-ced1-fbcb-9db2135e4e5b@codeaurora.org>
 <e974aa7e-98d4-1594-755b-6f57ab852cd7@kernel.org>
 <CACRpkdZ7TCvF-EE0Bvjz5Upi_e+CMHqhrkyxn2An8jJKj_g6cw@mail.gmail.com>
 <0afc2e55-5346-9925-8e4d-d4485f1d3898@codeaurora.org>
In-Reply-To: <0afc2e55-5346-9925-8e4d-d4485f1d3898@codeaurora.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 14 Aug 2019 11:05:40 +0200
Message-ID: <CACRpkdZh1bP7emrZPr0xG5mOjvZZ0ODQ_b-bES=NRDn63-6NNg@mail.gmail.com>
Subject: Re: next/master boot: 265 boots: 17 failed, 184 passed with 64
 offline (next-20190730)
To: Jeffrey Hugo <jhugo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_020553_492289_E688A424 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:230 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Timur Tabi <timur@kernel.org>,
 Kernel Build Reports Mailman List <kernel-build-reports@lists.linaro.org>,
 Lina Iyer <ilina@codeaurora.org>, Stephen Boyd <swboyd@chromium.org>,
 Mark Brown <broonie@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Lee Jones <lee.jones@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 4:08 PM Jeffrey Hugo <jhugo@codeaurora.org> wrote:
> On 8/3/2019 2:42 AM, Linus Walleij wrote:

> > Sboyd hacked up a patch to that effect and I applied it.
> >
> > I haven't heard if QDF2400 is working again but I'd love to know!
> >
>
> Sorry, was on vacation.  Per kernelci[1], looks like things are working.
>
> [1] https://kernelci.org/boot/qcom-qdf2400/

Awesome, thanks!

Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
