Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B09CD12CFC3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 12:54:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DKilk0B6mh5qdFAjY+7jwYvMMTR4x97fg0Fbob03YeI=; b=jdfCO5x0jRpY0+
	sqpJvD4jv2WE54oT9svIa6asmUEDPEJt/fjXlFcQW0/80241rfMY3Swvdg6T3t54U5CbXYZazvJ8J
	kU9HtUaenE1Zu8K7fiFq6h7rFnex45/lqZfBp0sq7UQHWYhevdbn7p8dhELoiK0GW9O1aJ7Abca9d
	uxgV+HAtG0l3mCijRnv8QpMYGKVCcrvrOTRru6lal0vivuaTfm3CEvAGyIPjNU4nWSlrlTOryJbNb
	COiIWu9JbWgqa/XdSQFxvrmJYYahw6Sf+Bd2Md5gOV/0U9mwEmuw3uJMeMusTRaOF+xBAUUPEFPEl
	iGyv8sFNewUkRgLBpncg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iltcl-0002qx-Bw; Mon, 30 Dec 2019 11:54:15 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iltcb-0002qE-Qy
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 11:54:07 +0000
Received: by mail-pl1-x641.google.com with SMTP id x17so14545919pln.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 03:54:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=mwGLfXIphyD7phRk7lEEjBgr1Dix57gKwz3I4i+jkF4=;
 b=P7B7HhtFgmHeFrNyqTqrTnThBQZxfb2GNCMQ/4ecLOVc7DPk2eoU1YfvZswojacSrV
 fWPs9OfIIBvQQS7U0U4kmbgZTZgP6d77qKfTp49ZdPBfrR5YO+2BG74SAAs0WcXtr4UL
 Sk8rLSqK990JPTr3Z6lIjJMaUvIz9E9pIj7yglsUQkqJesp7Qs4pbgR0hMwWzoZXb+Px
 0ffDqa3uzayU8RSvVxzpbgqZ9t6Lo6xs3BX2kpzLvBk4VmIVJoVoMWjeK6Wm8eNnN0uY
 AB6lUvk30xg+QfKpD4KcHmF59E2ZCDwkGXt5GWlLC3PzgFNNvuRFrtXZ2pLhm0DfkoTK
 v3mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=mwGLfXIphyD7phRk7lEEjBgr1Dix57gKwz3I4i+jkF4=;
 b=Ru2IHPtGzmxg5mf5aN0CYZgaz11Gcy2G2feRyqilRZ9FqeZnUnNX8iqz5mfF8mDYr8
 kW3dgHhfwBacGKaBle0z7O29ytAIOkzR+DFuR8IKLizHWdkwzkuWGIKfdzDgvU1Tbh+J
 hL6Pw/NOXw56GaARF0P//lm6IBSt0b7Fv/33EfTA/yhPV3NjtTeyXh42s3SlLERl6sBc
 GTTmDNhVnD8a/8NVNbHTm7SuwAg/HGrq4ZqJHeBqpk3PEtGsbdye6a6X6IAHpl3ogxYK
 AxALX4Mbg3y/Xdnb7QXXU+JpF+gtqb3r6QAGspC9zKrR0LLRJsL1J2JETa9kwSUy/0mE
 nQdA==
X-Gm-Message-State: APjAAAUcNpT6gp/GJRWKd3rTnjufuTKHZBCbjXdlRWdjrIjwgT6LAqiY
 VfR6lKMfCGExVTv2DfnUxF0cuxO6
X-Google-Smtp-Source: APXvYqxdH1nCcHK5bh5D+i4nvE9uZw4uLavnwDMLXtIoPWroXM53f2kWPGymJ5AnGjNQ55B6UlsC2g==
X-Received: by 2002:a17:902:74c5:: with SMTP id
 f5mr65114786plt.229.1577706844772; 
 Mon, 30 Dec 2019 03:54:04 -0800 (PST)
Received: from localhost ([49.207.54.121])
 by smtp.gmail.com with ESMTPSA id t23sm53866525pfq.106.2019.12.30.03.54.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Dec 2019 03:54:04 -0800 (PST)
Date: Mon, 30 Dec 2019 17:24:02 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Russell King <linux@armlinux.org.uk>
Subject: [RFC PATCH 0/2] ARM: !MMU v7 Cortex-M preemption support
Message-ID: <cover.1577705829.git.afzal.mohd.ma@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_035406_065095_003F4084 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (afzal.mohd.ma[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vladimir Murzin <vladimir.murzin@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Greg Ungerer <gerg@linux-m68k.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

[ cc'ing those who added long back !MMU support & Cortex-M support as
   well, though some not working anymore on these ]

An attempt to add preemption support to the !MMU, ARM Cortex-M platform.
With these changes, there is some effect, but not enough to make it
usable.

Though as of now i don't have much clue on what the issue could be, it
is being debugged. Meanwhile sending the series as RFC, to get feedback
on what could be missing or whether there is anything inherent in !MMU
and/or Cortex-M platforms that could prevent supporting preemption, etc.

Details on the problems, the way it was tested etc. are mentioned in
2/2. 1/2 is just a change made so as to have a clear diff for easy
review of the preemption support changes.

Regards
afzal

afzal mohammed (2):
  ARM: !MMU: v7-M: prepare preemption support
  ARM: !MMU: v7-M: preemption support

 arch/arm/kernel/entry-v7m.S | 22 +++++++++++++++++++---
 1 file changed, 19 insertions(+), 3 deletions(-)


base-commit: fd6988496e79a6a4bdb514a4655d2920209eb85d
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
