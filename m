Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8FF7B40F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 22:12:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zia8y8s2jPppi+JmjubkQXBv4Y4sGdqZv73cAAEmnpw=; b=FZ1e/0qpGQ1pS/
	ijNFRsnIKm5zDuiej4RnUL90docG37AuJEWRskXVIuANhQmrNnVXy0Qrns5GImmZQL2ZsSfp2F8du
	1J2EyFh6fg9DdGAMWDeMx6YoDIyxUMQKn0ERb9kcoh3NuhtCddxe8mM4qZfl6JHpokI4guQzU/lQ8
	tp+hu3WdXJy1YQgjs9YnSL/b/fxUWfRb3EZr7u203vM9/0KC9q9ejz7Xx5pUo6xzOhDp9ImBqrB1m
	3ZOoY8awdB3SYTJwdm6tPdL9PkmVVdeOJvumt7Q6/F2YD8oWYBwoDRbZ7C286Vt6Mwch2ba5uvJXL
	5nY4PaaB/o0a9IxkxM0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsYU4-0002Ox-74; Tue, 30 Jul 2019 20:12:32 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsYTw-0002Oc-9M
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 20:12:25 +0000
Received: by mail-pg1-x543.google.com with SMTP id o13so30605847pgp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 13:12:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=oPJWN9yuldkstYmPG6/8Jz97tQSfFxLhhdBy0z1UbyM=;
 b=xpfrl4Qy1k+1YG6uU2enEVUmwK0jq5twSEUqrnJaEVFaBc6n9y/V7wfBm4hS/MDv0n
 01DgxDqrf4+Tbx8KPLmXo7uo0qwaPA8xAJDdIrQqjY9SgnPsERtNDCNMGpkBaJSaLWnQ
 OH4x+KNDD2gA69ee9LH6nThN6oYkLUkujLIhPDuhtmooDPyeb0woAavpWz2aY/tvpA9H
 t7i17o7fCgThPOV8K0lfW17Wilnru86HJBxEUVFjyEWcJLjrl+hHYJ7NrLiKPZDrxB1b
 IQLMGpS3pJseXfArM/lhs4esNv0PhVVpnB9Ki9n8/bOPEBHGHe+m9OvWe+ac8hxWirHJ
 vTNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oPJWN9yuldkstYmPG6/8Jz97tQSfFxLhhdBy0z1UbyM=;
 b=Kne3GKpXHb4LlpEv07xT1JWQt0ELJyJ8A8CEpdweP7g9h0k6O0IWDu9lTeLnlBRcGb
 AHSpAkoAiHrLVx4jCkVg49VsDUey3UIXvwqsqqZG0TzY1t28HC74PcwxrBiGPfL/CbHc
 /qw9fyeBSrIS6oK2OCrDWIqWzQmbKPbuS1Vf6zzjBNv2CGdjRO0z79rFPC+RA7EHSADU
 CSfVFMRWPveRSWlDgHdpUVmuAnuGfLqplc4juSYv/ytYwPaHLUCoC2aGD9BoOcLfgsKo
 4CXNIij6kWVP+DnN+Ck0jZI3EezmSuOluC6o1ccQtI3PuZBbzCWDuDSk5AA9DFGS3cN6
 W2kA==
X-Gm-Message-State: APjAAAWIRckRO8Dh5b3kQPiG3hQGstiM/4oVLH3kmve7UhdwSxoII2gv
 TQQja4Z+OKYcYGOExsNR1ldVNA==
X-Google-Smtp-Source: APXvYqypSW+jjU/phGos2uYd9dvJDJArM9+zxwkPNY+Ac0WdCgbQJs6kWMPWa6h2Ih8ttKqQWEWihg==
X-Received: by 2002:a17:90a:c588:: with SMTP id
 l8mr117162828pjt.16.1564517543540; 
 Tue, 30 Jul 2019 13:12:23 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id q198sm69195766pfq.155.2019.07.30.13.12.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 30 Jul 2019 13:12:23 -0700 (PDT)
Date: Tue, 30 Jul 2019 14:12:20 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v4 0/6] coresight: etm4x: save/restore ETMv4 context
 across CPU low power states
Message-ID: <20190730201220.GA4878@xps15>
References: <20190730125157.884-1-andrew.murray@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730125157.884-1-andrew.murray@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_131224_334952_D90DC8D5 
X-CRM114-Status: GOOD (  25.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Al.Grant@arm.com, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 coresight@lists.linaro.org, Sudeep Holla <sudeep.holla@arm.com>,
 Leo Yan <leo.yan@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On Tue, Jul 30, 2019 at 01:51:51PM +0100, Andrew Murray wrote:
> Some hardware will ignore bit TRCPDCR.PU which is used to signal
> to hardware that power should not be removed from the trace unit.
> Let's mitigate against this by conditionally saving and restoring
> the trace unit state when the CPU enters low power states.
> 
> This patchset introduces a firmware property named
> 'arm,coresight-needs-save-restore' - when this is present the
> hardware state will be conditionally saved and restored.
> 
> A module parameter 'pm_save_enable' is also introduced which can
> be configured to override the firmware property.
> 
> The hardware state is only ever saved and restored when a self-hosted
> coresight is in use.
> 
> Changes since v3:
> 
>  - Only save/restore when self-hosted is being used and detect this
>    without relying on the coresight registers (which may not be
>    available)
> 
>  - Only allocate memory for etmv4_save_state at probe time when
>    configuration indicates it may be used
> 
>  - Set pm_save_enable param to 0444 such that it is static after
>    boot
> 
>  - Save/restore TRCPDCR
> 
>  - Add missing comments to struct etm4_drvdata documentation
> 
>  - Rebased onto coresight/next (8f1f9857)
> 
> Changes since v2:
> 
>  - Move the PM notifier block from drvdata to file static
> 
>  - Add section names to document references
> 
>  - Add additional information to commit messages
> 
>  - Remove trcdvcvr and trcdvcmr from saved state and add a comment to
>    describe why
> 
>  - Ensure TRCPDCR_PU is set after restore and add a comment to explain
>    why we bother toggling TRCPDCR_PU on save/restore
> 
>  - Reword the pm_save_enable options and add comments
> 
>  - Miscellaneous style changes
> 
>  - Move device tree binding documentation to its own patch
> 
> Changes since v1:
> 
>  - Rebased onto coresight/next
> 
>  - Correcly pass bit number rather than BIT macro to coresight_timeout
> 
>  - Abort saving state if a timeout occurs
> 
>  - Fix completely broken pm_notify handling and unregister handler on error
> 
>  - Use state_needs_restore to ensure state is restored only once
> 
>  - Add module parameter description to existing boot_enable parameter
>    and use module_param instead of module_param_named
> 
>  - Add firmware bindings for coresight-needs-save-restore
> 
>  - Rename 'disable_pm_save' to 'pm_save_enable' which allows for
>    disabled, enabled or firmware
> 
>  - Update comment on etm4_os_lock, it incorrectly indicated that
>    the code unlocks the trace registers
> 
>  - Add comments to explain use of OS lock during save/restore
> 
>  - Fix incorrect error description whilst waiting for PM stable
> 
>  - Add WARN_ON_ONCE when cpu isn't as expected during save/restore
> 
>  - Various updates to commit messages
> 
> 
> Andrew Murray (6):
>   coresight: etm4x: remove superfluous setting of os_unlock
>   coresight: etm4x: use explicit barriers on enable/disable
>   coresight: etm4x: use module_param instead of module_param_named
>   coresight: etm4x: improve clarity of etm4_os_unlock comment

I have picked up the first 4 patches, so no need to send them with your next
revision.  Note that for patch 2/6 I have removed the "stable" tag as the patch
doesn't apply to any of the stable tree.  Since I have another one like that in
my tree I will rework both patches and send them directly to Greg for stable
consideration.

Thanks,
Mathieu


>   coresight: etm4x: save/restore state across CPU low power states
>   dt-bindings: arm: coresight: Add support for
>     coresight-needs-save-restore
> 
>  .../devicetree/bindings/arm/coresight.txt     |   3 +
>  drivers/hwtracing/coresight/coresight-etm4x.c | 346 +++++++++++++++++-
>  drivers/hwtracing/coresight/coresight-etm4x.h |  64 ++++
>  3 files changed, 406 insertions(+), 7 deletions(-)
> 
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
