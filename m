Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F6912658A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 16:19:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GYKtPFZm4ouReW/o+CB8sSTFabRuSYQWARjoIoGAx+c=; b=XWfEGBPghHGqsi
	TWFtlG/lJ7ob8myK0PKzzCYQq5o+BO7shJ5SamVmACjrYMPVMQjjUhy4PmSO221a9GdRx5gfvi/r9
	SXSG1IKYmXO8McK1pp75hmFwDEksh4j52XVkzQ14LtB4BpJ65oENcC4vL24BOIleHG5FBLkReHzC2
	r1hzbAFxu9yE6bVq0glJ+jOXN8/nP66yK+NHbmZ0fqRgjTGK7PiFAnYk/WxoDELoDcS5B//I7ucpM
	AtUg6x/GrrpZg+y/EUesDbPHNayziVaWeCWRxYgyTpxI/7alEcdtrW4/v5n2AU94Kfp1unB/mUj9S
	B/DuQ+RUs06hfsfrBxcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihxaI-0005DC-T7; Thu, 19 Dec 2019 15:19:26 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihxaA-0005Ck-AD
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 15:19:19 +0000
Received: by mail-ed1-f66.google.com with SMTP id f8so5236050edv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 07:19:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YLEztrg1heI9taLQYZJkGcpbp9Oqq9+6ksTS34fIBG0=;
 b=k7OAWeoLwc/70hVyg6ftwkT0euXMy/44nR4B4l09F8z0MVLXUxWwqXpXE2ea++xNWu
 spS22veIIcVYnEaktGEQx/sEr9sCrgTJn23OzTsOXDVdXNp/xzbkllBUfozBOlymPyIN
 Hz2OP41Z6Np4xsuxMgfVoN2cacPZLzTJjQ56r/x3IJLh/c7p24fAF9/+h4pNvjAtO+Sz
 dwA+TUYN7a7BLCkkTRHhU8X/v4RedtsU0jC4c3WF2IS4R8ixWPcyE5qKMqvX7rg/Onnh
 GLO+qwVo/EwbvWFMyYidowboOXs2jf3tvdwtQqTv6RP9dyD6vL6NFCda/BAGIuvZtw09
 4YIg==
X-Gm-Message-State: APjAAAUqlV2JAwsI19r6WH1O/cI9Pr1vpuFLKfh/aZPD6iKaxIou3FTI
 vBAIUDnGe5dJiKUrR+++BUGIk5Glk8U=
X-Google-Smtp-Source: APXvYqzcQOHgTUDysY1nZm4kWW5y32eWoGOsF/XQAMS0pZQMzQE4qMcvciSKa+52ns8gHzuHO8rYlg==
X-Received: by 2002:a50:875c:: with SMTP id 28mr9763348edv.271.1576768756779; 
 Thu, 19 Dec 2019 07:19:16 -0800 (PST)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com.
 [209.85.221.46])
 by smtp.gmail.com with ESMTPSA id p6sm568031eja.63.2019.12.19.07.19.16
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Dec 2019 07:19:16 -0800 (PST)
Received: by mail-wr1-f46.google.com with SMTP id y11so6363701wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 07:19:16 -0800 (PST)
X-Received: by 2002:adf:81e3:: with SMTP id 90mr9913916wra.23.1576768756443;
 Thu, 19 Dec 2019 07:19:16 -0800 (PST)
MIME-Version: 1.0
References: <20191219091539.948530-1-maxime@cerno.tech>
 <20191219091539.948530-3-maxime@cerno.tech>
In-Reply-To: <20191219091539.948530-3-maxime@cerno.tech>
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 19 Dec 2019 23:19:04 +0800
X-Gmail-Original-Message-ID: <CAGb2v662Vizy1-VTzNgJeFuELvG1TPOhuPkZVXfLQJbHK1gr0g@mail.gmail.com>
Message-ID: <CAGb2v662Vizy1-VTzNgJeFuELvG1TPOhuPkZVXfLQJbHK1gr0g@mail.gmail.com>
Subject: Re: [PATCH 3/5] ARM: dts: sunxi: Add missing dmas properties to TCON
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_071918_354973_7983FAF8 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Maxime Ripard <mripard@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 5:15 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> The TCON binding mandates a dmas phandle to the DMAengine channel used for
> that controller. However, since it's not used in the driver, some device
> trees have been missing it. Let's add it.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
