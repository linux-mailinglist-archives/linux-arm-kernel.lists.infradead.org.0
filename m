Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD591F1B7A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 16:52:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wYs63bODVXcjHDzeiFVgnC63yVoevK4ItgqCqAuD+Wg=; b=IeNPqB+jUrIQp3
	B6JQf7KRBT05/IUhkjEBeV9DPuK71KwE+EAdpRc+apZTO3KUg8YSPr4glQLE8Ou1iTYui/RydN2VA
	hm0mmP01scfyU91VWvpn4rnTUQVsRd8ECAdGFiSCbI4HGpbUOjiPnBuzY03M0lnckrLBTzezIbjuc
	1uaWosXf26ctigXlSILWkmEknxRsOZ2aGmHeoyVIeP34Ln7G3F0Za+MVQodBREZfqoZFhDicsibTG
	PB1+y6rvIYsdxY3/PkLV/D3PbfiKyIT4VMyFoH7tiqAg/SXz/rVA7lJeQUuSuw5ZFRaNEbq1OsY3H
	YD9MRQz64HUCrldcUhHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiJ8E-0007bM-Ek; Mon, 08 Jun 2020 14:52:10 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiJ7y-0007Yt-NG
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 14:51:58 +0000
Received: by mail-wr1-x444.google.com with SMTP id j10so17726380wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 07:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=09t4vJAEJNOcAKbjc/XrD7rKiwG3r51o8wQyvTLcyH8=;
 b=H0W6Kxn1tWB0Gd5mhqe5+76N1JoRrfQBzuFyeHyKdKuKr3c0mxvi1yAFcfLLIJyh55
 0k8dOPOj9CmK+GRAegeskyYIv+TKDj2iQeUXFmB0nzECSIxyFfzhVJWU9aWVBdTEchFP
 GlzcpS27DdL03xE79FQZzpNvHLcxsYPNwzcAPR76BqA9jTXdUk/YUdxlqW4FAdbBRwNf
 larkyRCJnjdssMA6KHO2gAUNviKrbJ7XhB3sWo/Wp1musUseGP2k62qvdmy2yuoLieci
 tP3J5viTXpUZQyvmoWug1BfYa6vn0NDeWQAQ07YD0Y4SXO0NCVrrvhcExX8dj7+yQfL9
 PSSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=09t4vJAEJNOcAKbjc/XrD7rKiwG3r51o8wQyvTLcyH8=;
 b=QMSjm4BNIKl4vzhgYJzGGbOd9PqMLqbtemVelf8Ln7fGGMXFxZ374VgOl8u/Us83G4
 25LpvhFxbP6cDgE+z4prN+QszdCYcu4AT1zlfLez+B3yZgulBqLg8eINRWd2xErAHJ8M
 terh9oWGQfWRPZhXuCOaE6EO9wKHZpVyiRBUDsNaJzRuEzSJ5vlLPqLgdEQBqpZUQczu
 wajbqFsFboBKNMjk6GPF5hh4jTH8PL1CmKlly54DHnWs2zGz+H8qwJmCGsErOe5kySUB
 B7s6phl8tmQ3GW1i8O536jvCycpryVrnheslVhIx8mgAwrP8PyXXK59NAVEfIEzFrUt+
 I5BQ==
X-Gm-Message-State: AOAM530PeoKT179UI8JoOMKtEkzprkixCejrl+slOIUlI/a5EH02UFBY
 iMc0uFhw+ubJnPEfpHTWwzwapg==
X-Google-Smtp-Source: ABdhPJw/eKBztQ3a9E6WKUS5WsHzaQqYg5KTtA62h7WxrR2Vb+QDhRKkaSCaXQP78CvwMVocDYT20A==
X-Received: by 2002:a5d:558a:: with SMTP id i10mr25577401wrv.207.1591627910886; 
 Mon, 08 Jun 2020 07:51:50 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:109:355c:447d:ad3d:ac5c])
 by smtp.gmail.com with ESMTPSA id c5sm19131623wma.20.2020.06.08.07.51.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 07:51:50 -0700 (PDT)
Date: Mon, 8 Jun 2020 15:51:45 +0100
From: Andrew Scull <ascull@google.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2] KVM: arm64: Remove host_cpu_context member from vcpu
 structure
Message-ID: <20200608145145.GA96714@google.com>
References: <20200608085657.1405730-1-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200608085657.1405730-1-maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_075154_785944_9D6AEA72 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

On Mon, Jun 08, 2020 at 09:56:57AM +0100, Marc Zyngier wrote:
> For very long, we have kept this pointer back to the per-cpu
> host state, despite having working per-cpu accessors at EL2
> for some time now.
> 
> Recent investigations have shown that this pointer is easy
> to abuse in preemptible context, which is a sure sign that
> it would better be gone. Not to mention that a per-cpu
> pointer is faster to access at all times.

Helps to make the references to `kvm_host_data` clearer with there now
being just one way to get to it and shows that it is scoped to the
current CPU. A good change IMO!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
