Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 013EB1F1E2A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 19:09:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oCWXMMQDD3L/Rohzgr9/OaK/nv0jiXSYVpkUhKM74JI=; b=NebtJA2hyy95Ez
	vHtev7DFioMSvpSIFwHy/aPscKlxgtyl+oN4GtpnmyMM5LyAsUU8PGI+O18oblLDYfcUJWnqt4Bpm
	TCceNGk5uqzV1mQk6dQh5/TkArPZz47F934KXj87LorU3gMuvdvZSeRQ1anCwfNt/KVY9n4R/OtfG
	4OSC/T6GAD6hWr1rFDbIPGuUUEmVHOsOjmPj26O46jpcaVG3/zlNPcRPqKtrgDgiMhcd8hHibOAWI
	Q0SQNccUCeGPIWTuW0Uc8VnMNsXOYNYtHsEU8i2CCGxR9Cqvz8kl8c22Mok0sluyZgCWV02TJGIm6
	mggkA6UXdqQKTZQR2Pfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiLHF-0002u7-5Y; Mon, 08 Jun 2020 17:09:37 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiLH5-0002tl-Kv
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 17:09:28 +0000
Received: by mail-wm1-x341.google.com with SMTP id u26so450330wmn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 10:09:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=O5kyIIzxsOCQ0wtFJtMJAdBIg3y6KuYFhCf9iMzgFJQ=;
 b=p1wdQUodkbKA53RU829/S14bgNwXUZk4oaZTZITlLvC1R/7pCLt8Qec1xAGFhamIuc
 6GF1n0XpMYAVGZKMywm22h1ALDMPKC6G/E5cO+DrxJ5qCSzcWyrUHMqFumgbHdUB4PKI
 NXGPYjtcPBb58hKLeEFKZhEW3c+c7gfIsbHDkzXKT86fv2c6LRGCjIStT6NFcC/RFCUV
 Cd6FPlkFGwdFBPcY9Gu+WoR99u+T8tOtU2rKJ8OttEpNZZcKTZiS/TQdIyt7UoWh0mnL
 jSWwEg9ye92wgPswhOn2ZJsE21UwfoMC1vNYT56fDTeseRBdlyb87eNnOHq3gueSJbtm
 +Z4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=O5kyIIzxsOCQ0wtFJtMJAdBIg3y6KuYFhCf9iMzgFJQ=;
 b=L4YVfQyYOyVA7tQ2nrFf/DXR4Q34NUJkWSCpjw2Nizg0K5SkDQQxiM89hbMKPhppWQ
 5nX1M6lLyFlb7GB2ki/2f1DYg4pZkFEMG4RIBt5lRZjK3zzq3TZR51s4plwO+wo3bRLz
 QWHqmShvzKuH9mQkYUinu4RoAIlFn/1SX6hDcINSr0CYvWMV+AERLUkKVeJCRF6gV+qp
 EpQ44sW2sYDWGBMbDin/TSVTWhuaYX+zBP69aQFnJFOI2ISNNol13kcqYkVKWpg3TRIo
 iamGxol29Ij0l1O7LCJUoMd0VfismCOdwRAb6J/44POPVwfCkJwn/iFhskFJKQQwDm8z
 F9lA==
X-Gm-Message-State: AOAM532vwJL5tT9H91Jydid//fEiN5/PoJ09XAHsDx1AXUhiM3KGmbkG
 hj/E6NCF3EuKWtyl81z+g7y3BA==
X-Google-Smtp-Source: ABdhPJxZEDJueTXgTcDW9U9iUaISMszgUVW6R1TTHIBvERHVRmV8seKAaqqSKuvHuMRooFnwn0NlQQ==
X-Received: by 2002:a7b:cc08:: with SMTP id f8mr350455wmh.106.1591636165854;
 Mon, 08 Jun 2020 10:09:25 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:109:355c:447d:ad3d:ac5c])
 by smtp.gmail.com with ESMTPSA id z8sm357180wru.33.2020.06.08.10.09.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 10:09:25 -0700 (PDT)
Date: Mon, 8 Jun 2020 18:09:20 +0100
From: Andrew Scull <ascull@google.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2] KVM: arm64: Remove host_cpu_context member from vcpu
 structure
Message-ID: <20200608170920.GC96714@google.com>
References: <20200608085657.1405730-1-maz@kernel.org>
 <20200608145145.GA96714@google.com>
 <1a00887a4af019fa83380b68afd43a29@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1a00887a4af019fa83380b68afd43a29@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_100927_709040_766087A6 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, kernel-team@android.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 08, 2020 at 04:42:42PM +0100, Marc Zyngier wrote:
> Hi Andrew,
> 
> On 2020-06-08 15:51, Andrew Scull wrote:
> > On Mon, Jun 08, 2020 at 09:56:57AM +0100, Marc Zyngier wrote:
> > > For very long, we have kept this pointer back to the per-cpu
> > > host state, despite having working per-cpu accessors at EL2
> > > for some time now.
> > > 
> > > Recent investigations have shown that this pointer is easy
> > > to abuse in preemptible context, which is a sure sign that
> > > it would better be gone. Not to mention that a per-cpu
> > > pointer is faster to access at all times.
> > 
> > Helps to make the references to `kvm_host_data` clearer with there now
> > being just one way to get to it and shows that it is scoped to the
> > current CPU. A good change IMO!
> 
> Thanks! Can I take this as a Reviewed-by or Acked-by tag? Just let me know.

Build and booted your kvm-arm64/ptrauth-fixes branch contianing this
patch with VHE and nVHE on qemu. Booted a VM within each with kvmtool.

Reviewed-by: Andrew Scull <ascull@google.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
