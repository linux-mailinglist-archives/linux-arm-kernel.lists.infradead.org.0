Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1915711FB1B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 21:35:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=54k1Aew5SAvnjDRple0aSzcQc25HrtORIGg8sEMCp80=; b=TAbE7UfZoYrSeo
	kPeyJCAqrQIKcsvLj5G/JzQ7075Qr5tbnA6nVTqf+wa+FXuBZmv+c2qP2kzHBrWApDqtX3S0kCBlL
	UyPuY0ZK7jR6AfNRXCbCk0Tk5Z8GKXU9GVi+MkU7EOJOYQ3sofU2k/CTtmSixLnpQdb9344LI4zP8
	THK0jfL7PYDLS4pxTJ2LtqZv6pevpNe89PGTcOJ0LvWXLUvCMkBFZOnE+Evt3kkL2jvaqBYXSummF
	mFGOIr80BB9WZ6BZH41Sp26SZ8e8Syxporc9ziWo3zW1f0/FiwP1vdPqzGYV1TQZgtrCUgo1iDoB0
	5g2A01H+m60HtGT5Sgfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igabm-00083e-NP; Sun, 15 Dec 2019 20:35:18 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igabe-0007d4-9i; Sun, 15 Dec 2019 20:35:11 +0000
Received: by mail-ot1-x341.google.com with SMTP id 66so6242094otd.9;
 Sun, 15 Dec 2019 12:35:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zbZi4+r1yCXEc/CpcpD0dVQFYFaG6+F9udODBceajHk=;
 b=vIlTcnG35CEORdkR5yB86tv9FbzKRT1W+ELh/GPd3BpXHeuW8hjKrTqgctfag462oH
 tvfUB51YRb9A/TG5liti5EZHwg/9+OS5yC8PuRGNPEeapPi4sOUp9Io45pruYZoz9Qbn
 LeXhxCVCfXq0XTtKbxZd5wmrm6WUeA2iYP2vAyTZVJg6o1uNzecFZ45dUIV+MRK5WuGn
 bFvS0kfl1TPY3ncwhZGaXWeZADtgNNKu73hiqaC10wq+vGJ+/TwEPTbPthyMPJAH9KhL
 ZZcTsK6naGV/rZFj6eZEafwoE9ShfCrsA43y71duQATJaCbLgJfoJ+Ae/E8ayuEvJC5g
 v/Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zbZi4+r1yCXEc/CpcpD0dVQFYFaG6+F9udODBceajHk=;
 b=eP+Uy4TMV8a5CJTfR46T10fF0prZ9Wc0UHp7O71R2+0k4afbbqD644JEHAQY/tuEGp
 s319C3cnm9JFC7HL8N8GP3NmvdQaD5qpzmXUTMkIR3/rkHVhs3KYN3HWWwQxdtQK4lY3
 fVh3c/Wt9pkBN7wLFeQWzhd3sSw2ZNpK2skle6S8uFKlQYFzade3A1s5GQpQbRKwHvzz
 7sDzTf1pI0Y9MeSuS/Gi9upIRVrS/QsER9V+w+k/QuKtBj4m0VKdvIfQtxRAkKgqDxKM
 OMhPVTXrhCLqgqlHuWYDyjrSOeapJFIhAfyMg/9plVP8YlNY/gIeApS+bT1cbsfJwETz
 wJ5w==
X-Gm-Message-State: APjAAAWbLbrSokKlp5XT2tXtIrZIwHsIxQ4XvwmQSYt7gCDA1yo1Nbx9
 XKgOKaZuO2ixeLZ+E1KhaSYlbWH2jNkTYbCiSLg=
X-Google-Smtp-Source: APXvYqxIwAW1/JmFMVUr2AzvIDmU4NWd/3e3k+sCn/MyW7UxkkzglVYwDhPDH6T/yFg/ReNTT/nmp+LIKw+NRnoEAGs=
X-Received: by 2002:a9d:7342:: with SMTP id l2mr28007361otk.98.1576442106640; 
 Sun, 15 Dec 2019 12:35:06 -0800 (PST)
MIME-Version: 1.0
References: <20191215114705.24401-1-repk@triplefau.lt>
In-Reply-To: <20191215114705.24401-1-repk@triplefau.lt>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sun, 15 Dec 2019 21:34:55 +0100
Message-ID: <CAFBinCAsoE3zFEKbS1Tag=Y_honnpfin625u=N+7QMv4cPy2Wg@mail.gmail.com>
Subject: Re: [PATCH v2] clk: meson: pll: Fix by 0 division in
 __pll_params_to_rate()
To: Remi Pommarel <repk@triplefau.lt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_123510_364022_0D2E8D9B 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Dec 15, 2019 at 12:39 PM Remi Pommarel <repk@triplefau.lt> wrote:
>
> Some meson pll registers can be initialized with 0 as N value, introducing
> the following division by 0 when computing rate :
>
>   UBSAN: Undefined behaviour in drivers/clk/meson/clk-pll.c:75:9
>   division by zero
>   CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.4.0-rc3-608075-g86c9af8630e1-dirty #400
>   Call trace:
>    dump_backtrace+0x0/0x1c0
>    show_stack+0x14/0x20
>    dump_stack+0xc4/0x100
>    ubsan_epilogue+0x14/0x68
>    __ubsan_handle_divrem_overflow+0x98/0xb8
>    __pll_params_to_rate+0xdc/0x140
>    meson_clk_pll_recalc_rate+0x278/0x3a0
>    __clk_register+0x7c8/0xbb0
>    devm_clk_hw_register+0x54/0xc0
>    meson_eeclkc_probe+0xf4/0x1a0
>    platform_drv_probe+0x54/0xd8
>    really_probe+0x16c/0x438
>    driver_probe_device+0xb0/0xf0
>    device_driver_attach+0x94/0xa0
>    __driver_attach+0x70/0x108
>    bus_for_each_dev+0xd8/0x128
>    driver_attach+0x30/0x40
>    bus_add_driver+0x1b0/0x2d8
>    driver_register+0xbc/0x1d0
>    __platform_driver_register+0x78/0x88
>    axg_driver_init+0x18/0x20
>    do_one_initcall+0xc8/0x24c
>    kernel_init_freeable+0x2b0/0x344
>    kernel_init+0x10/0x128
>    ret_from_fork+0x10/0x18
>
> This checks if N is null before doing the division.
>
> Fixes: 7a29a869434e ("clk: meson: Add support for Meson clock controller")
> Signed-off-by: Remi Pommarel <repk@triplefau.lt>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

thank you for the patch Remi!


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
