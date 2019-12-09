Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9DE61173E4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 19:17:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2s8tP4sqAEHy56O3mzlouitjnVVQfGegNDOCqjkp6WQ=; b=MEo4nIwjqeoX21lwC+L8vx/I6q
	Pcb2N6EBYybkJjAB57xOfI7w6uIrUA5LRWqu3CcShP27Tj3MUosQgrvXk+hjFR9FwnnPi5y7R2j1G
	yqVTTmUu8TC9koBuEVbBa0DI1P6oRn1wVLXHOkpvwLYD33xqelstcZQPygATD96HdUcYKGgLTG2x2
	Ekn1oN60blpV5ZGhkyEqL5tyin9xynC527E4qVZ5Cs2VYm287YW0NYKcz3I2sG+gOOknOQMeGfEku
	lrxnVd+ZgLa9c71vecvawNJQD1PvQvd0RnTGvqWzJn1E4cyd+xO7F3U/y3I/CWABXew4YKSzGP1RN
	x7OgRqHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieNaw-0002MG-1N; Mon, 09 Dec 2019 18:17:18 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieNWo-0005dP-ET; Mon, 09 Dec 2019 18:13:03 +0000
Received: by mail-wr1-x443.google.com with SMTP id t2so17326093wrr.1;
 Mon, 09 Dec 2019 10:13:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/Lzf1hIoDU/ZjVff0Ob50B/u4dz41ExonvLP+obnOrY=;
 b=veU94l/2yneEs2+AYnPRfypLrEwv/lHOSPvX2FqK4ks4WOdsJkkhAm4704nkBZ/6Mi
 lazIXl2B9ITEC8ee2XmyffCUC6U1UxH6gR89nd73H2hk9MND/KGz0gFcIDaoU59+mrNe
 s4vvhZNA0EcQumdairxyFg8FSbETavWj4ki9o6CcpeoxWnWox79TQtPOcnpnJQek4G1R
 WrFcNF+8ArAqMgIYmMiIF6YjptIwS/YnvFwU64wa67dKt4UvGQNRP3Oc1V+GG1r37M1p
 dlLjbhoiVa8aQS2KZXvMnQga8nB+XqTaw/IdkyHaxjVt5G6qK6/Im8JtyYoUxV5L2iZm
 YoqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/Lzf1hIoDU/ZjVff0Ob50B/u4dz41ExonvLP+obnOrY=;
 b=bGUvmK2C59GzjqTWlqxTSFEysZZa35+W1U8SF5++xUlIMyp7ac2vy0h+bQ22V68PJg
 gKr+SweIBEBQXN0TGh1M+6fMrfq0PwclNRyz/STPdb052fcHw5UNH9YRu4K9ykAjPI3u
 PQBweYM5yDsJwyuIrrij9eaQK6c5/+ofU4XYngqRqYEHB6xak3BC+ruOuRGexSZvNuDW
 EjymqAjwJe5vcQ3TjcdrEH4RKq5dyU3nt8mt5uI4CP5/DhfZH0c6qXZHvukOOjfZxCH5
 GBYZpBLBAEZZDex+NEzLnCc5L89CVR8xZkeMCu566+c9wMtJPDioNzlsvn+TnWXhiK+P
 GohQ==
X-Gm-Message-State: APjAAAWi7TewHXZ3+qO5RYIFTV46tlGy0h3a2pP6iA8N0ir+s/hRUXcb
 On6UK52Y4afee601++Gu4zE=
X-Google-Smtp-Source: APXvYqz09GH7IbLXL1n86qn2SJ7Z7dx3lAnu4LcZ3gQ+++4bhQhZLSjmbqLnsv9mnd/KlGDUZHcj5A==
X-Received: by 2002:a5d:5308:: with SMTP id e8mr3599909wrv.77.1575915181066;
 Mon, 09 Dec 2019 10:13:01 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id g21sm219800wmh.17.2019.12.09.10.12.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 10:13:00 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH] ARM: dts: bcm2711: fix soc's node dma-ranges
Date: Mon,  9 Dec 2019 10:12:56 -0800
Message-Id: <20191209181256.5854-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191204125633.27696-1-nsaenzjulienne@suse.de>
References: <20191204125633.27696-1-nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_101302_567072_902F488F 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, mbrugger@suse.com, phil@raspberrypi.org,
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  4 Dec 2019 13:56:33 +0100, Nicolas Saenz Julienne <nsaenzjulienne@suse.de> wrote:
> Raspberry Pi's firmware has a feature to select how much memory to
> reserve for its GPU called 'gpu_mem'. The possible values go from 16MB
> to 944MB, with a default of 64MB. This memory resides in the topmost
> part of the lower 1GB memory area and grows bigger expanding towards the
> begging of memory.
> 
> It turns out that with low 'gpu_mem' values (16MB and 32MB) the size of
> the memory available to the system in the lower 1GB area can outgrow the
> interconnect's dma-range as its size was selected based on the maximum
> system memory available given the default gpu_mem configuration. This
> makes that memory slice unavailable for DMA. And may cause nasty kernel
> warnings if CMA happens to include it.
> 
> Change soc's dma-ranges to really reflect it's HW limitation, which is
> being able to only DMA to the lower 1GB area.
> 
> Fixes: 7dbe8c62ceeb ("ARM: dts: Add minimal Raspberry Pi 4 support")
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---

Applied to devicetree/fixes, thanks!
--
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
