Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55940F2888
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 08:56:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UQKtCsPu28EJ2qv3KCgewXDlXEYmbKDdbsS5qTpRcBQ=; b=ZD+Vhjyc7c21Zo
	eCTzLvQDD1rm96HTirMz1UvG0BL3yTPVa0wS1CNNaHlffNnVvU0bvi2SkYZXMGYj/IR1dH2bNdbUB
	HhuswOe5/Lp/x3rGsUcHSIln5ymkC5eWSNtqE6V1/D/wv+/Gs5Pslx0rp0+nMLyN5d+6mb3VGlG/V
	l4MzGPDvyN8ZcPhqyCTOqvFHAYNuhCJPJuOkChVGn+bGrpKFNW/MsColLe2LOiV+qVKQ0HwIDBDfV
	SoZDGNv7+Z616hMKox51Y36ZJDM2/Gt3DKNQ8uGsYJFZMWd+r/pJAqzvEuq1jbJHuiEmxPTsuBeqU
	/pqF00WhyjcCqYkDA27w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSceU-000652-9m; Thu, 07 Nov 2019 07:56:22 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSceG-0005vd-QE
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 07:56:10 +0000
Received: from p5b06da22.dip0.t-ipconnect.de ([91.6.218.34] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1iSce3-0000dt-Uf; Thu, 07 Nov 2019 08:55:56 +0100
Date: Thu, 7 Nov 2019 08:55:54 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Jianyong Wu <jianyong.wu@arm.com>
Subject: Re: [RFC PATCH v6 4/7] time: Add mechanism to recognize clocksource
 in time_get_snapshot
In-Reply-To: <20191024110209.21328-5-jianyong.wu@arm.com>
Message-ID: <alpine.DEB.2.21.1911070852551.1869@nanos.tec.linutronix.de>
References: <20191024110209.21328-1-jianyong.wu@arm.com>
 <20191024110209.21328-5-jianyong.wu@arm.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_235609_015327_3D883860 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark.Rutland@arm.com, justin.he@arm.com, kvm@vger.kernel.org,
 suzuki.poulose@arm.com, maz@kernel.org, richardcochran@gmail.com,
 yangbo.lu@nxp.com, linux-kernel@vger.kernel.org,
 sean.j.christopherson@intel.com, Kaly.Xin@arm.com, john.stultz@linaro.org,
 netdev@vger.kernel.org, pbonzini@redhat.com, nd@arm.com, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 Steve.Capper@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 24 Oct 2019, Jianyong Wu wrote:
> From: Thomas Gleixner <tglx@linutronix.de>
>
> In some scenario like return device time to ptp_kvm guest,
> we need identify the current clocksource outside core time code.
>
> This patch add a mechanism to recognize the current clocksource
> by export clocksource id in time_get_snapshot.

Please check Documentation/process/submitting-patches.rst and search for
'This patch'.

> diff --git a/include/linux/clocksource.h b/include/linux/clocksource.h
> index b21db536fd52..ac8016b22734 100644
> --- a/include/linux/clocksource.h
> +++ b/include/linux/clocksource.h
> @@ -19,6 +19,7 @@
>  #include <linux/of.h>
>  #include <asm/div64.h>
>  #include <asm/io.h>
> +#include <linux/clocksource_ids.h>

Please place that include to the other linux includes. You might notice
that there is ordering here.

But where is that include? It's not part of that series, so how is this
supposed to compile?

Thanks,

	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
