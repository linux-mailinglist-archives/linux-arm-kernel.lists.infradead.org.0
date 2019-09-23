Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96710BBBE8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 20:57:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=p8Ls/hxKbTeOI34oBwn9icCgwjCbUE/it03GZxmrp9I=; b=HtE4V74JQB0flvB8gpIcD6KgYK
	2zUXCydwBIZu5rCLmPe7mbv8UoLVxI3HiQZ8kZasxUHyd57Mdkl7HoQmvpVlfjreDum5SocoZ0bGh
	FAosZf9xrVw54mkCnzFaTgJPU5J9CP1p5KJUlaJIi+gflKOLaIKIi6OuqRc8whTLkrhDKdFPEGMSj
	aGsz65gIuxC6Hy8h8GNmRi2dDQs4TVD3UDpoN6x5kQ7VORmq5KNuw2EBiMxK9Rko/yeGsdxvEofuI
	NUQc4ofypblOcSMfO/XWyxPzbRjvB8rjNPOVrkEsiV2Qe2ibLsdQrd2IEWJlVlDEFic6B2nnoRfph
	l4M6gbGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCTWs-0004ql-3N; Mon, 23 Sep 2019 18:57:46 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCTWO-0004oo-Lk
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 18:57:18 +0000
Received: by mail-pg1-x544.google.com with SMTP id g3so6913816pgs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 11:57:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OK8Q6Fv5E9exA0W6rEAF+rQRxvrPBArKPlAyapVyA1I=;
 b=jFxwr6QglJliwuL0t//D8b7r69UEH0S9DZGuxCQDctOFBN9jSm9QoInW67/ni3ShUZ
 TVSAzMgHschiw1mX60RMwK5owp4VsP3Ioq8CDhUW3w4teGTljqgzAYB8Bztnk8TLnsbh
 g7RH9iLNbmv/8lehTDGmcpP5GS/cs8ZuUOQ49rdqancQQURhzhkhKrhGQ5uaiRNr1XEG
 BL5BF08UKW6+o0RobcSst1JTs7NM39BC1ousv8J+9K8hHJeZ3Vj2KChJ1Mr0yXcBN4rY
 tdQlrZcb/FWfMsLnctAzTJGI23SdBU4X9DcJHVA9XI1MT69kH9jPmGMe8Q0/+tr0OovF
 0eUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=OK8Q6Fv5E9exA0W6rEAF+rQRxvrPBArKPlAyapVyA1I=;
 b=nVxFBLSOBRq6wz83SUMhcn7OxssMDY+9KRQi0aifySmmCZDkDlK95CbPvBJhI2SHax
 N3zCUXAjwizTHdgbbB5qLOijqJYJk+hpP1xXJ0Uz1U3m8U9QG3S2fde570ZO44XXcYQF
 XqCtzAH7n8t2YPDXNXMM4Ewc51FnlvdQhiJWZG+LeezI/1RmQEUBmAVvQOZtUNcEGx6V
 Fw/rh0p0eTtyHMcRaE1aApltUZclF69eHmTYHuHqlKkdTbIiU1tlFXPWJPCtvPnYbTcD
 4nYZRhZ0ZV5IKkrzHeByja6ZZXw2hxbgTcjEDlpFLytCro8qAMdg9h9+87kaC00A2NhX
 m00w==
X-Gm-Message-State: APjAAAV5XSUhwopPhB29bEJ2coR61YNMgaMoA3g1QusNypUaj8Ho9HGh
 hjhGsHVS0alVc14K6d7a+iw=
X-Google-Smtp-Source: APXvYqzrmHkrPYGjRu9slI3MZSlgPKbjKNK02+/PpMk6TsOtWgPIyWQ4gI8FBjvf3qm04aS5pIKhSA==
X-Received: by 2002:a63:5807:: with SMTP id m7mr1337886pgb.371.1569265035913; 
 Mon, 23 Sep 2019 11:57:15 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id v4sm13566064pff.181.2019.09.23.11.57.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 11:57:15 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 Eric Anholt <eric@anholt.net>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: Re: [PATCH] ARM: dts: bcm2835-rpi-zero-w: Fix bus-width of sdhci
Date: Mon, 23 Sep 2019 11:57:14 -0700
Message-Id: <20190923185714.26473-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <1569262882-9955-1-git-send-email-wahrenst@gmx.net>
References: <1569262882-9955-1-git-send-email-wahrenst@gmx.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_115717_409168_040BB266 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 23 Sep 2019 20:21:22 +0200, Stefan Wahren <wahrenst@gmx.net> wrote:
> The commit e7774049ff25 ("ARM: dts: bcm283x: Define MMC interfaces at
> board level") accidently dropped the bus width for the sdhci on the
> RPi Zero W, because the board file was relying on the defaults
> from bcm2835-rpi.dtsi. So fix this performance regression by adding
> the bus width to the board file.
> 
> Fixes: e7774049ff25 ("ARM: dts: bcm283x: Define MMC interfaces at board level")
> Reported-by: Phil Elwell <phil@raspberrypi.org>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> ---

Applied to devicetree/fixes, thanks!
--
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
