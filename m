Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 591621F6C7A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 18:56:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QsYqOksJv3/+FaR8c33uMvIhjYT+AvE2ZMiajhfCGUs=; b=DuzOHEh030b1qo
	OaGNW3oRpXEHtG/l/A3Fp/kxlRUf6P2v/8CqS5soHguJccBO7P23PL3/uvfSty3M2BqvmGy5ZYjQ3
	tHFtu4PHLDHL6kF87lUGL5qMOUm++GpxG/aNwVHMZjN4KrCRNKD+HHyiq4Krpd6xY6xEN64wtfSRQ
	soUG/tsqy3tjIKYNw11Xo7RSROpQvzH66jBBB1xEu+SaA2ds8/YA/Gn/KHkkm6m3rUUG5xm12Xmsb
	HapvwAtQIPOlQtGr8rV0ic/U+NyqrIyGg4q01Mcf+4hbNJC4qKuW/XoWFaFo7V1dY7s8vdIWJwGXu
	P6zLegg5bi1oDrTNfsUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjQV5-0004Cu-1u; Thu, 11 Jun 2020 16:56:23 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjQUy-0004CQ-72
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 16:56:17 +0000
Received: by mail-il1-f194.google.com with SMTP id a13so6110505ilh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 09:56:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=EWbECKAlHMMk14Dear354OHlygSb2J3osFMxc7H4JbQ=;
 b=a0LZ5fpP+qA7UKnAVeRqtti+/H2Z91KvS+Mjbtjc80rpvhDzaIRZrdFytJTQcvqTgS
 lHpH+RiC2FSXSM17IoHKWuelE7HRTrrRzOOrYSLnotCEdRL5Zda8wYXABdgNOeSFP8q9
 OFTcLq69bq/7ETCauzNYwbIAU2jMScjFGmcUSZltbPDIewot5agwBX/P8feNYTr9Ch38
 D2kivD/YY7gufLH+nGZFevft4n/dDdKP3CjLJT8V8c7GNX3S/2LlY20AXuXc8I9+MGT5
 ZIHE8ZckWX7tdwNiUYhozAdz4N0IHybAxj6pQjsBvPTLoINUt6WGX5MYJ3NypmrIbrxm
 h+qw==
X-Gm-Message-State: AOAM530ADIx7TEt2gkiHkV9I3oDBG+29+5yBcXcn/0KaFByG6DfSzAQV
 z6SiAnxZP/4r6LIEJ+LNjA==
X-Google-Smtp-Source: ABdhPJyGgSYN2ZnZzRTdtQTWnbN8lGZ32fmmu0RjOoxO+lL2vx3+ihSjt3DtsRPpuJ2mSdWbVIlv3g==
X-Received: by 2002:a92:6b05:: with SMTP id g5mr8622812ilc.120.1591894575334; 
 Thu, 11 Jun 2020 09:56:15 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id o12sm1687739iob.6.2020.06.11.09.56.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2020 09:56:14 -0700 (PDT)
Received: (nullmailer pid 1230958 invoked by uid 1000);
 Thu, 11 Jun 2020 16:56:12 -0000
Date: Thu, 11 Jun 2020 10:56:12 -0600
From: Rob Herring <robh@kernel.org>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: Re: [GIT PULL] Mailbox changes for v5.8
Message-ID: <20200611165612.GA1225679@bogus>
References: <CABb+yY1q3fTJkF0zOBJ6y8u-707-tVax9Vn_TR=vgq35=7j83Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABb+yY1q3fTJkF0zOBJ6y8u-707-tVax9Vn_TR=vgq35=7j83Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_095616_250110_F35E0A08 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
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
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 11:10:56PM -0500, Jassi Brar wrote:
> Hi Linus,
> 
> The following changes since commit ffeb595d84811dde16a28b33d8a7cf26d51d51b3:
> 
>   Merge tag 'powerpc-5.7-6' of
> git://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux
> (2020-05-30 12:28:44 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.linaro.org/landing-teams/working/fujitsu/integration.git
> tags/mailbox-v5.8
> 
> for you to fetch changes up to e9f901dc05c09c4f89183cadcb2d93177f3100cb:
> 
>   mailbox: qcom: Add ipq6018 apcs compatible (2020-06-10 22:43:57 -0500)
> 
> ----------------------------------------------------------------
> - qcom :
>      new controller driver for IPCC
>      reorg the of_device data
>      add support for ipq6018 platform
> - spreadtrum:
>      new sprd controller driver
> - imx:
>      implement suspend/resume PM support
> - Misc :
>      make pcc driver struct as static
>      fix return value in imx_mu_scu
>      disable clock before bailout in imx probe
>      remove duplicate error mssg in zynqmp probe
>      fix header size in imx.scu
>      check for null instead of is-err in zynqmp
> 
> ----------------------------------------------------------------
> Anson Huang (3):
>       mailbox: imx: Support runtime PM
>       mailbox: imx: Add runtime PM callback to handle MU clocks
>       mailbox: imx: ONLY IPC MU needs IRQF_NO_SUSPEND flag
> 
> Baolin Wang (2):
>       dt-bindings: mailbox: Add the Spreadtrum mailbox documentation
>       mailbox: sprd: Add Spreadtrum mailbox driver
> 
> Dan Carpenter (1):
>       mailbox: imx: Fix return in imx_mu_scu_xlate()
> 
> Dong Aisheng (1):
>       mailbox: imx: Add context save/restore for suspend/resume
> 
> Fabio Estevam (1):
>       mailbox: imx: Disable the clock on devm_mbox_controller_register() failure
> 
> Jason Yan (1):
>       mailbox: pcc: make pcc_mbox_driver static
> 
> Manivannan Sadhasivam (3):
>       dt-bindings: mailbox: Add devicetree binding for Qcom IPCC
>       mailbox: Add support for Qualcomm IPCC
>       MAINTAINERS: Add entry for Qualcomm IPCC driver
> 
> Markus Elfring (1):
>       mailbox: ZynqMP IPI: Delete an error message in zynqmp_ipi_probe()
> 
> Peng Fan (1):
>       mailbox: imx-mailbox: fix scu msg header size check
> 
> Sivaprakash Murugesan (3):
>       dt-bindings: mailbox: Add YAML schemas for QCOM APCS global block
>       mailbox: qcom: Add clock driver name in apcs mailbox driver data
>       mailbox: qcom: Add ipq6018 apcs compatible

You've dropped the binding change that breaks 'make dt_binding_check' 
from this PR, but do you intend to drop it from linux-next because it's 
still in today's next? 

And really the above commit should not be applied until the binding 
change is, but fine.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
