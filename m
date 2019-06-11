Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 687A64173C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 23:54:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ep5URXRYh+bGbLkAGjv7J4ujOrVx3KGqTNzpOTE9Wkc=; b=u9zW/l+8gMdVmilBI0MqqEgUQQ
	fKStVJ30lCW1TQjms+ijM8LZ2UZx+++6jB4JoT3/WNAtF+ZnZ2mP29LsPEuUTvZrV7Gngr4kmAaKq
	4Xf48K1uQ/joWAGT/tWE/H1iZJ786tX6CzJVtwU5GEs0CIVDwEQr+CHV8wMOPvOSbklxqtQQJgK2W
	LATglYsgo8/VGGsOp6yoWOX8qDw4dWmewkxplk07nU8tX5y9BrYTy3ApvY2b+kb13FNTNY67otjZ+
	4jTsU7l7crHMNyeZG+0fdrwFDN58sCXHxlT7Af1m1P2XtSMLo1oJXjFxc/RW8hzk0FEI0GTAsuj1t
	f8VvQrfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haoiZ-00005R-83; Tue, 11 Jun 2019 21:54:11 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haoiO-0008WS-K5
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 21:54:02 +0000
Received: by mail-ed1-x541.google.com with SMTP id a14so20436053edv.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 14:53:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=enVQQiD0qEvE81kIlPzU4UOe7eV8T+/6nHsnl/OSqaE=;
 b=uPqJo+I+2gRZvEgFHAxSICGCcvMalPcwnaQOwTZ2l/Fgcp2WFfbnz9pzM1VPxUu18L
 PPvvbUqqkPcmpZHvBlm2qbBsdg/dcMGiS3apoX+CdZx81jm9K5RXZj2EAQCVth8/0n4k
 nf2qPmN0hw9mKbPPDnRyyTxQ/MW9ksJqGoQlML5gUq8yIEBprrAFbiNv3CK0GJj5x34f
 BlSKG5NOi9RAIZf7jCmYiUhP6jwGD0Uu8I7yb8ZrluH885HhqpsoQ0CVgcEpUE6VHGwP
 4FKmBTX9sNDPMaRmPhBRmiG5+KMDjJrwiO3uLSLn3lhgjs/Iv32+MbgYroUDrv16JjbW
 2XUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=enVQQiD0qEvE81kIlPzU4UOe7eV8T+/6nHsnl/OSqaE=;
 b=Jr95ZsDOGaZgSW2QDvJC9TEhpyv4FYJNYfcsjV+EZrsqkbtB2YTnTgoTwwKytDu3O0
 E438aqdY/8wK+/mlZwKx4DA32CgtFlJqxVsYXXsC09J7Tj/VsRlN4RQyzdmBAgA8Key7
 AO46OVJXi3745kauH2vd15PE4B0+Vo6XSWoXzusYzJ7AEIdIHG5qpS9xcGt4x2kduapz
 XTPGt6z3ND7YMwQFFO0wm6AAnWYVZfton+zlzb4fMtEqp8r5X4B880pBRQgim0Tym62A
 DyP7cULHaPP2+LIhTrWnaLJ/m2uD/P3PL6+E6b5AkKJvGW/GjfTqQzvCZOikVsbAUBlM
 zPog==
X-Gm-Message-State: APjAAAXHYlJcXU1PjD5PTzolJC0+FwMrAPKsb4ok6upWJCtMRk6KpJA0
 U36fKAwhoNhPgEtZFZWb7qE=
X-Google-Smtp-Source: APXvYqxz2kDWi7DBQi+Y4uLa+i8+0Gq0mwrASzfFnHiXgKzerihODElkUUuJm7ZITNSJi1M7b/T2KA==
X-Received: by 2002:a50:eb8b:: with SMTP id y11mr17934715edr.154.1560290038648; 
 Tue, 11 Jun 2019 14:53:58 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id o21sm790246edr.12.2019.06.11.14.53.55
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 14:53:57 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/7] ARM: dts: Fix BCM7445 DTC warnings
Date: Tue, 11 Jun 2019 14:53:48 -0700
Message-Id: <20190611215348.9994-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190528230134.27007-2-f.fainelli@gmail.com>
References: <20190528230134.27007-1-f.fainelli@gmail.com>
 <20190528230134.27007-2-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_145400_687787_AD5B7F3E 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 <devicetree@vger.kernel.org>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>,
 =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Gregory Fong <gregory.0xf0@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Brian Norris <computersforpeace@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 May 2019 16:01:28 -0700, Florian Fainelli <f.fainelli@gmail.com> wrote:
> Fixes a number of unit_address_vs_reg warnings:
> 
>   DTC     arch/arm/boot/dts/bcm7445-bcm97445svmb.dtb
> arch/arm/boot/dts/bcm7445.dtsi:66.6-225.4: Warning (unit_address_vs_reg): /rdb: node has a reg or ranges property, but no unit name
> arch/arm/boot/dts/bcm7445.dtsi:227.21-298.4: Warning (unit_address_vs_reg): /memory_controllers: node has a reg or ranges property, but no unit name
> arch/arm/boot/dts/bcm7445-bcm97445svmb.dts:9.9-14.4: Warning (unit_address_vs_reg): /memory: node has a reg or ranges property, but no unit name
> arch/arm/boot/dts/bcm7445.dtsi:255.10-275.5: Warning (simple_bus_reg): /memory_controllers/memc@1: simple-bus unit address format error, expected "80000"
> arch/arm/boot/dts/bcm7445.dtsi:277.10-297.5: Warning (simple_bus_reg): /memory_controllers/memc@2: simple-bus unit address format error, expected "100000"
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---

Applied to devicetree/next, thanks!
--
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
