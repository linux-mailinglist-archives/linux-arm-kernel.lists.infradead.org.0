Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A059E1F1484
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 10:31:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=R+eQwewQLclGK/kGhlQN/GgFOCZykO/jqVppcdxCLXA=; b=Zm5
	d2CUl4tE59x/7XoEWdWwBku7AxLiDfkiSG82mPyaDarIl8njUWSjS0p7KFFekltcMvtTaZXzyrgk8
	90xVsOStnQEW5OAhLnWz0OqX7p93UG0/Ny+XEU4XMIRl/wBYwSbwWLwxSBsS38UrwzFZOEpfr+qO9
	1M5D6R3wtVo3jab8RIL1TZ0x7NiWnX1g5DMNgwL3nPU2wveAofnJMsmlIJJshAzb6sIXR9J2ZnBoG
	ixF32fuO717O7I+Ng93x3llvGwPy6kMe64utYIkSEFEj72BbsVuMzUvwRVK4B7uyyG1TrQJcI/SF7
	XtHMXGXD6d6EZztzZmQ+4sq1HdHnr7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiDBF-0003cE-Hf; Mon, 08 Jun 2020 08:30:53 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiDB6-0003bD-8z
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 08:30:45 +0000
Received: by mail-pj1-x1041.google.com with SMTP id s88so5703872pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 01:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=G7NT+IIMlEpev8mMIld6zg2khxnR9LKx4QWnMSa761g=;
 b=YmELALbkitxP2ggbooUEURujMSINXmryqerQhxXRvVK6hlFggjqe6vjydN5E/hscIs
 ew1S4hSJF0H5QNibJbvP5ZZQVzfbxfT6ZWE2VGHUwUZ/5r2MjtsMn4Wi9gD0v5zWBYjX
 /BRG23DsNHZGYdn4ji4uba2IFP66yOE+UuP5whqQn3I5qHMBV5AUdtWXtQsXfBUl+DYw
 myfg/t3rN2flP3HLisi5oI0ljM/WBOisQVl5L7VqbL8HJIEnnwrRlll0TC4R+avIrDOL
 cP7JQa3ERxtbpid31OYGSdlRGxXXvm6sjzsquzBA1ywHqLWwcE4V8rPbMKBPITJ1gVN3
 o6bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=G7NT+IIMlEpev8mMIld6zg2khxnR9LKx4QWnMSa761g=;
 b=sV89+xiZegNolM2OnY7tSA7quW4QKELgK205LAooyFfN0JNZ5HS8wyR4AAF6dBlA8K
 67IkCrfzAYOpmSL4K1R2Enk5as/GnGcglqsi9O9g4wQeu8VK3NVNruu1LPHsK6atjYhE
 I7eQ1lu51XuNecKTT56f/snSLEEA9PXmg7gSLtqKdqA+nQP508IY9pf00nULHE9Tl7To
 VdF7i38kEZvNE7F4bpedhrFq8uptWLKE/FLHEwR7JtVNqTHrULcGGOM37PuOnM1yiHhc
 8tf3LcvGmODE25i5kLCvB8qh/l3Kua6Yd+QLEddjZNwXz7HCW0ZiExJgnc+mckK8MjxQ
 vf2Q==
X-Gm-Message-State: AOAM532izyQa22S1rZqBXE7jGBk8S3r0QT2HiG1IM8NLQb/4uNiNTKAw
 0hhQl6K6UliQxARi5N4EhY8=
X-Google-Smtp-Source: ABdhPJxObPDhvUNU2fgGSyXqPnus/jX1jjU6Fcb/mjYz/7uwefMtlM+VUAjOyTj6a7++QyGKeDXCqQ==
X-Received: by 2002:a17:90a:886:: with SMTP id
 v6mr15165288pjc.161.1591605043466; 
 Mon, 08 Jun 2020 01:30:43 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.191.42])
 by smtp.gmail.com with ESMTPSA id 27sm1210829pjg.19.2020.06.08.01.30.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Jun 2020 01:30:43 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 linux@armlinux.org.uk, vladimir.murzin@arm.com,
 kstewart@linuxfoundation.org, allison@lohutok.net, info@metux.net,
 tglx@linutronix.de
Subject: [PATCH 0/2] Use 'arm_nommu_dma_ops' to handle dma memroy if device
 offer consistent dma memory region
Date: Mon,  8 Jun 2020 16:30:36 +0800
Message-Id: <1591605038-8682-1-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_013044_321038_CEE1B081 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, dillon min <dillon.minfei@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

when do mmap on /dev/fb0, we will get -6 error on cortex-m3/m4 or armv7m
platform without cache support, this is caused by following reason:

on armv7m platform, if no cache support, we will use dma direct mapping,
but, this is not support on !MMU hardware, just return '-ENXIO' error

so, add use_reserved_mem() for these armv7m hardware but no-cache support.
eg, stm32f429/stm32f469.

verified on stm32f469-disco board, mmap frambuffer to userspace.

dillon min (2):
  ARM: dts: stm32: Setup 4M bytes reserved memory for mmap
  arm-nommu: Add use_reserved_mem() to check if device support reserved
    memory

 arch/arm/boot/dts/stm32f469-disco.dts | 14 ++++++++++++++
 arch/arm/mm/dma-mapping-nommu.c       | 28 +++++++++++++++++++++++++++-
 2 files changed, 41 insertions(+), 1 deletion(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
