Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 233C218ECC0
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 22:45:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rQYyGzcrL81h9h5eSXwllkF7w1S1eTPuuVNSnBBql0I=; b=ExsEo7hucPo34q+l6buhUrubEf
	FVZ0/uSwMydexlL7vO7CsnWdfaiFsQl0uJIARBsUvvMOf7mLFFcDLa5ZBJZL5ViykTZQMyjSdRvRb
	Qp3r5HRjxwa19shZtLffPMoFBr3UTZcwtQ14vj0ZIoxGqyTgxhyuIDLhLKijvoLKTW3QFANKzQJHh
	O3GQBXDNsREbEQKNh7ZO/OjEM3NHKrMITdzNpi6m69A//y7b9aEyj3PjGH9JwsAkUcrlkzGttAW7x
	JVE7LSBUHqrD7b3g6+fbLXadL71YL1gDwAV/aiuLuD+r19XTh+dLTo5cThA8MIjzQYyUxN+CZgVQV
	RJylXnkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG8Pd-0000CD-TZ; Sun, 22 Mar 2020 21:45:41 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG8PU-0000Av-OI; Sun, 22 Mar 2020 21:45:34 +0000
Received: by mail-wm1-x344.google.com with SMTP id d198so6786786wmd.0;
 Sun, 22 Mar 2020 14:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OpdeFZCvMQp27xwp2Tkj2mPcsWQWcBhE0TOwloVk27k=;
 b=pMFzl4FIIFKiwlVVKkDpcAvi8Xr7ebjsyJ+45EvVDwTCHq8aoQ04FgVF525A4U58gp
 O8EIQ7jOgrBRP18W7AEDefhIUu5HHflIjR45LODjEVsx94S3yvBLMPcOUq5Zc3dNAl4G
 w7puYOBv6jqNCXyPUwkPuiT8xb1zA9XkpwOHgNCZ3BDyCnBd6PY2IVQH1ZYU7Z4HYXzV
 21yI8L1SCyLJrGXwSlYc1A8ykHC6ZjaDWWpRGpiy6hsnEFGiQ4nA0tNeIxo2XD++yfMa
 nn5T/VKtrC270jorEaA52HVS0tiWOdV6c4lJoVsznpKsP/Wz0pkNAqBvh03wTlUuSfbt
 iqIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=OpdeFZCvMQp27xwp2Tkj2mPcsWQWcBhE0TOwloVk27k=;
 b=D5lEpCOjpWncuYOMQZjbnCWY5aXuFIYLhUy6x1Vknzkf7O+yFsFow7LOLHrdvGpRtT
 tAnO9JoOpuc4zihDW/cn9ASQhrrr7NMuEXOuHG5C20hY8hwLDUhMJNMqRxBKwKsmc0ro
 Sq1auznnRmU4CKTPE1o8goNp2NnCSGXOcB0h7Rwwj5/HFU2dQVnOllkWzoiqtyNCRpBo
 ZhGUwyZwTSdRtm1I2CFMfR+b7szaDLZ1Qw9lsd+yaFAhIzCKIwPtKJvj6y28Pxg3MYmP
 o2fHgsSVOEa8mM840fYAAanrNOLOmpgJqMBWgeP5/20ce2OO/36Vp1W0Gi8obVpQxzpD
 4oIw==
X-Gm-Message-State: ANhLgQ39unVfqU3eWAUvJSL8NaszFNc5pGpJk4QyHHtzX6PGw8smah0l
 vXu5uOmd3ZOS+BaJV5tTLYQ=
X-Google-Smtp-Source: ADFU+vtbH3TS1f00itgIsqg+Hkz9E+q5Sr+819jdZ6V7TxoKXnzXioWQwjVy/j5R9ehKLP4aPXBPBA==
X-Received: by 2002:a7b:c208:: with SMTP id x8mr8561213wmi.177.1584913529649; 
 Sun, 22 Mar 2020 14:45:29 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id 9sm1310226wmm.6.2020.03.22.14.45.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Mar 2020 14:45:29 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, Eric Anholt <eric@anholt.net>,
 Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH] ARM: dts: bcm283x: Fix vc4's firmware bus DMA limitations
Date: Sun, 22 Mar 2020 14:45:24 -0700
Message-Id: <20200322214524.19940-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200319190013.21377-1-nsaenzjulienne@suse.de>
References: <20200319190013.21377-1-nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_144532_793225_A1869D28 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 19 Mar 2020 20:00:13 +0100, Nicolas Saenz Julienne <nsaenzjulienne@suse.de> wrote:
> The bus is virtual and devices have to inherit their DMA constraints
> from the underlying interconnect. So add an empty dma-ranges property to
> the bus node, implying the firmware bus' DMA constraints are identical to
> its parent's.
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
