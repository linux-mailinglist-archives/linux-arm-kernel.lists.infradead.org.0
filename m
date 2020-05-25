Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0C41E1210
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 17:49:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l62fSPSBtOqnLCa5FB0i8lQ9cWH8Bx2zILf8aDEPiw0=; b=aM8XaTTOXoeWkZ
	0B6DfW3ZSDV4tM/M+hR+3Sm5oPJ8I43kwNvMb18YzkzzARG6P6lBoUoETOv/pNqRqEq3QOKAH6W+y
	vBopjwjpPCNwRvCToF9HqFynydivuDNOWTMEHBnCH9OWe/PICmhKM/HHLlBXkTSMPQxibW2lnsJCE
	NF3GsJf09qVryaTYYM64oFZVX/ZrJvEmMUgNJLSAFoss3SAM3GRDt969UkaWJxTmwJfCTOmkKO0qM
	eFkmQwY2xdnf/xgqC5dO7Rt+a5t/Ua72e2ZMzzzwarnDO6U+h1fkOa5N+WTuot0rEvMuTddv98WXn
	ncjl/jN4OfvPd/UULn5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdFLR-0001HL-QV; Mon, 25 May 2020 15:48:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdFKv-00014Z-Co
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 15:48:22 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0271C207D8;
 Mon, 25 May 2020 15:48:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590421701;
 bh=N64AAieCFNKsupOv15QMm5WksqcdlYTBULH/wOivY3w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tTcXyzee8xvOIAzI1WDooZ0r8m41ecZFYxpKyNiZCAx0DTGhGOLphpJNU2rsSpMaO
 huIbYmZGchpA8yS4dd5XpkeK3YLzdObE4kkqv1lk1u8AprxmA8Tr3RFcryRVCmNR9p
 BjN9grh7za0o+INyqftI7YYmxaZV/Ip66TamIX0A=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jdFKt-00FCJb-Ep; Mon, 25 May 2020 16:48:19 +0100
From: Marc Zyngier <maz@kernel.org>
To: David Brazdil <dbrazdil@google.com>
Subject: Re: [PATCH] arm64: kvm: Fix incorrect comment on kvm_get_hyp_vector()
Date: Mon, 25 May 2020 16:48:14 +0100
Message-Id: <159042163819.423883.8265784934325308577.b4-ty@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200515152550.83810-1-dbrazdil@google.com>
References: <20200515152550.83810-1-dbrazdil@google.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: dbrazdil@google.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_084821_454764_6BBD5073 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 15 May 2020 16:25:50 +0100, David Brazdil wrote:
> The comment used to say that kvm_get_hyp_vector is only called on VHE systems.
> In fact, it is also called from the nVHE init function cpu_init_hyp_mode().
> Fix the comment to stop confusing devs.
> 
> Signed-off-by: David Brazdil <dbrazdil@google.com>
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> Link: https://lore.kernel.org/r/20200515152550.83810-1-dbrazdil@google.com
> 
> [...]

Applied to kvmarm-master/next, thanks!

[1/1] KVM: arm64: Fix incorrect comment on kvm_get_hyp_vector()
      commit: 438f711ce1d889632467be80779c8f5762b107d7

Cheers,

	M.
-- 
Without deviation from the norm, progress is not possible.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
