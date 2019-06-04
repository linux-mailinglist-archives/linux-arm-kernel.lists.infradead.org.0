Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC86A34B84
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 17:05:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xn5i2YHrxZ7MBOkPJq1bH7BLLqMm/iXEsaIaIO+0TAc=; b=Qt+ZBFfztfnSbO
	HqGSgrsSIjJ2fIQegKtQZy0LhvagtNn7rzarROFoG6VepEiksoBhv1P4d2Hxr1OvqrAmT2ASWhkhK
	5NCgEgmA+l/Fq+dFTMDo1rD3B7ENvy+bvQGuI45bDDUjwq6+uFTrjP6BDG+SAaQ2nPfyrknn4E+5C
	3A4H2cb8q3V09lbX/X69mm7gyOrOLpmtKKCZSUCSwItn/krpDhva2NVpbYMIVjNP6/OmUbHrob4HX
	JkNA0E22Q0kWiRxPH65+vTkPIR3TEJji0GEsh1JBKMOI8l4nxkCVrxvTziQe6aSVq6EhUq8kWjA+F
	4rkC6ECm8v5KuByIaB9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYAzv-00059u-Tt; Tue, 04 Jun 2019 15:05:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYAzl-0004VS-Ff
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 15:05:03 +0000
Received: from oasis.local.home (unknown [146.247.46.6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5147B24059;
 Tue,  4 Jun 2019 15:04:59 +0000 (UTC)
Date: Tue, 4 Jun 2019 11:04:54 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: KVM Arm Device passthrough and linux-rt
Message-ID: <20190604110454.2b99ee6e@oasis.local.home>
In-Reply-To: <f2fbc06b-373f-ee2a-b111-ea40848dc1c5@arm.com>
References: <26832850-37ee-ae07-08ca-cc3e90978867@arm.com>
 <20190604091607.2e87eb36@oasis.local.home>
 <f2fbc06b-373f-ee2a-b111-ea40848dc1c5@arm.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_080501_935321_F8ADB313 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-rt-users <linux-rt-users@vger.kernel.org>, julia@ni.com,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Julien Grall <julien.grall@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 4 Jun 2019 14:53:26 +0100
Marc Zyngier <marc.zyngier@arm.com> wrote:

> That's to prevent the injection of an interrupt firing on the same CPU
> while we're saving the corresponding vcpu interrupt context, among other
> things (the whole guest exit path runs with interrupt disabled in order
> to avoid this kind of thing).

Can't we use a per_cpu local lock for this?

-- Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
