Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8C25CE48
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 13:21:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cR/IYUB3rcf/YnjvqhobACLMMsE3caqKEXVCFxil4gU=; b=DsF49G2AAc+bQ4
	zlko4/TGacLWZaHXSSefiJQbgct8C5Czz29V50yXsGE2U5bjBon2Vu4BsDdUtMm9DeE0LhnncKlJY
	vujrvuB/Mbi0lV7Pcg4y21gigwAWemNvwgQHNw3VMBeY2gK8MLats880p6ILrcMWxJFT3AkfjI7Ok
	2d4t3/+FvvZDdNqAR2MPtoAU6fSYSpcW8Hop7w8sfLEykm7YKYvKif/1rXyrL0QUErtAolTpgV3wb
	ebhhsOrM9z0IVjydHHVYC0Q30o5D+cslxXwEuvn3GYR1WRR/XSbsLoqLeS+1Aa5Smdqulkbf5OQjf
	DrfL7ArKeR0OWIBTP4/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiGqY-0005XZ-GG; Tue, 02 Jul 2019 11:21:14 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiGqM-0005XD-V0
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 11:21:04 +0000
Received: by mail-io1-xd41.google.com with SMTP id e3so36020352ioc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 04:21:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=SWyq779/RJxz//9FsVhMFPivZnrtvx7eZyUyfwAdDXY=;
 b=PTUdqlZqJ9AUdPgOFSXY8kPC0YhjibrXxkZ2YdPjiev9XKUi5vpwYUOD7wJiGIRZ4G
 KGOz2C8TBbpmtON1S6Oc8lVi3HRsM6TfhA9qINLISuP8Y6dck/VNu6hIKMtieEoKkJ2x
 v5HMmAuQGj8su13BMTWrnmmgVW8IfpzVm6q03dpmTM7U1uXpOQqMjvgbZe3mT1hDh2Zx
 F1LCGr8GaROydu5ZsQSWaxJPaXH+pquFjU7vP0Z1XLIaqeXJVuRPGP8YdXPgWCrS7rva
 1qwxbKTqC4InDMM+6GeBZl+jOYFXF6QHtPdzXn3Mfm4Scm4NZbL5rVOwhfwlACKTrr1H
 URvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=SWyq779/RJxz//9FsVhMFPivZnrtvx7eZyUyfwAdDXY=;
 b=ejQ8uXO+k4OmrFnMqciHJ+eh+Kggrjh/bZvqSRtXmfqO39ryglHCmylSSs4I14Hlqj
 O0iYgxalIK1YR/VradJdDC2UqoIEPpVr2M9KYDo2zDh2hN887IBr8SlUkknNrSX8Ww5g
 Z/eeNy5qdrmTP28pm/2OO0Jvl7XvNRx+Tib1Js0xul3b+Ys4Ao/hI1OCkm74teK8Uf0u
 HxodR+taY/iqWnCpJAmDLyzBlcxZGS0g7vy57WvmhFk/J1b9Na6Z8ulAphScrKNjaiIF
 sX4jWgJUPKfkb0dcLrxetnN9pE5/HMwO0FWPof2Zi9quH8Pkc7GP7xbnVexD09ShmS5O
 myoA==
X-Gm-Message-State: APjAAAWW/3sLI4GRV2UI/XxrNimTuFc6FtuL9QDMuRd1JUQBI4rV7Lbr
 pC+Qp2UoCZGeLSDfkilrTFXC6Bsh8U2/IT2KKQ==
X-Google-Smtp-Source: APXvYqy+Wg/jPo33TpqGxqxZfqir7nrBba55XY69+1Y0u7tYAuEjMvTCgUFHSBL/LbG5eCRubtZvZQcInbCi6+PuoqY=
X-Received: by 2002:a02:b914:: with SMTP id v20mr34663761jan.83.1562066461826; 
 Tue, 02 Jul 2019 04:21:01 -0700 (PDT)
MIME-Version: 1.0
From: Avi Fishman <avifishman70@gmail.com>
Date: Tue, 2 Jul 2019 14:20:18 +0300
Message-ID: <CAKKbWA6SFgy=4+L4xXz7dy8OKFxtgZnqchzVuuq1XHXpC=2MnQ@mail.gmail.com>
Subject: support for aarch64 + gic v2
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_042103_002734_60EFA7E8 
X-CRM114-Status: UNSURE (   4.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (avifishman70[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (avifishman70[at]gmail.com)
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
Cc: uri.trichter@nuvoton.com, Marc Zyngier <marc.zyngier@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, eyal.cohen@nuvoton.com,
 Avi Fishman <avifishman70@gmail.com>, yoel.hayon@nuvoton.com,
 Tomer Maimon <tomer.maimon@nuvoton.com>, ofer.eilon@nuvoton.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin & Will,

I approch you as maintainers of arch/arm64/include/asm/arch_gicv3.h
We have an architecture of Cortex-A35 (v8) and GIC400 (GIC v2) in development.
1. Do you think there will be in the near future also arch_gicv2.h?
2. If not, can we use GIC v2 with arch_gicv3.h (maybe with some
CONFIG_ selection)?
3. Any other solution?

-- 
Regards,
Avi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
