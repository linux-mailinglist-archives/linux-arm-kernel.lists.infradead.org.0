Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCBF78164
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 22:09:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QT7/JvpWu66KbFwGuSn2Cf1Bgab02DilZtZqhDKPWXE=; b=n5ar6YdGpknNeb
	D3tMaM6X91mtsdrVuAtKUiNfO7nhsDnpF76I4m5qSsV+pvCjssLbyv4joZrWoWUJcIY3+YMrX7aay
	vkXdIaZodBxOjtR3DzAp+xre2oJTjuVf3/GpPPNZwZTIYuf/nYJcaqFck9iU37UfYwal0ovsB+ZhN
	H7fw28f6rj7GweA/1Qq7QoUVxp3uXr6AU72Za0TgPzEbE7tXNeBgHl/JAsnLLHAn/TyH2GO4x26NH
	bD5AqntOz14/dzD2j9NEApxt2vGPKCraFX26r9Osl1MC85YFwvqdSK05YsgXKrzyU1AuZaci+CDT8
	lLH61rkwy5niOrAw5BNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrpTT-000693-Mh; Sun, 28 Jul 2019 20:08:55 +0000
Received: from mail-lj1-f175.google.com ([209.85.208.175])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrpTI-00068P-UZ
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 20:08:46 +0000
Received: by mail-lj1-f175.google.com with SMTP id m23so56379604lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 13:08:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=8Ehe9L15ikwLaOegvSbffqJNAvcSP5VfCjBEA7JSyTc=;
 b=f0KVZLBbCH2e1VAWQICarOsdbjIv4kG2cj8rlXF6zxuOiu974zhgT7CwXWpaTI7APg
 7DAhFF0zakRTmD23Ygj1fq/U3lYDykHCHhEdSIITyXD6R55wcatPamUPbaQ4m/h7yupT
 ErbSu0ipQU0krtC87CGhwOX6yhMj8lHenzVAjp0fN5FfHrRVfMIab2POKRB4ZAjDrBVD
 GAii1dJKoTfUw+iUmeLpzA7tlpAma0rDMgdOWKBEvOAbIAqWVIabgtaOpq71iXA0xJ5I
 EAeY4AjKTAevQkzBI/IV5rJt6KcxjWHuic1lwLx6AEjGljM1Ub2ESRrXRvOt7k007dyC
 V2gQ==
X-Gm-Message-State: APjAAAWdCRoT3x045K1Bb2T68QgEnLb5rENvTNYutglceXrxpzM1bVJR
 nPBWSCYhtyXLvrz3D+SKOE3csqu66VrZ79dKQ16UtA==
X-Google-Smtp-Source: APXvYqzMDT7jLYyQwW9rgotscZ5/OzUxcCpfRFZVxxEtiiDmgFqSMegnW8RjxzWH+5JfETP9r/+o5SYBwlzM8A7wA8U=
X-Received: by 2002:a2e:9643:: with SMTP id z3mr56707238ljh.43.1564344522278; 
 Sun, 28 Jul 2019 13:08:42 -0700 (PDT)
MIME-Version: 1.0
From: Matteo Croce <mcroce@redhat.com>
Date: Sun, 28 Jul 2019 22:08:06 +0200
Message-ID: <CAGnkfhySwXY7YwuQezyx6cEpemZW4Hox1_4fQJm3-5hvM3G6gw@mail.gmail.com>
Subject: build error
To: LKML <linux-kernel@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_130844_986919_6849A363 
X-CRM114-Status: UNSURE (   4.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.175 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I get this build error with 5.3-rc2"

# make
arch/arm64/Makefile:58: gcc not found, check CROSS_COMPILE_COMPAT.  Stop.

I didn't bisect the tree, but I guess that this kconfig can be related

# grep CROSS_COMPILE_COMPAT .config
CONFIG_CROSS_COMPILE_COMPAT_VDSO=""

Does someone have any idea? Am I missing something?

Thanks,
-- 
Matteo Croce
per aspera ad upstream

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
