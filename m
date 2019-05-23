Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B202848D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 19:09:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mR/JojzZD7LMBSDEniMqQPSJ/p/ULKLSzTE7OxHTRJs=; b=mszpZXh4zCzQBv
	U51mkv75II2UzL0ydodRO5CGxmOerL54XZZUQBL/mNgvewGbrxhKRjfYt8HDn94Ku3iJQ56SvWg7E
	aSyWNQW4lWk3ajLS2kVfivVpLUKssqzqJnPbrYYDqXobeqXG5sg6jfL9uzNGLTWWngvMryjJbkMd0
	vRwtDk9wSGYVZnVZW+NwCh2r/4ALU+Ef7oEtl/XJHd6ZvNODPIUVIaiG1suOx4RfiZrt6d+HDMc3W
	LeHnByj0b/rlRLPtetf2B29uJldvqpiqzK4IVhOlzr2eY83RChUzsz2nhc+LYkxmED/2P5nV+xjNr
	kbhzX+YL86skDQNTlwpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTrDx-0007N5-Vv; Thu, 23 May 2019 17:09:49 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTrDr-0007Mi-DZ
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 17:09:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 78FFE374;
 Thu, 23 May 2019 10:09:42 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 223273F5AF;
 Thu, 23 May 2019 10:09:40 -0700 (PDT)
Date: Thu, 23 May 2019 18:09:38 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Volodymyr Babchuk <Volodymyr_Babchuk@epam.com>
Subject: Re: [PATCH] dt-bindings: arm: fix the document ID for SCMI protocol
 documentation
Message-ID: <20190523170938.GC4224@e107155-lin>
References: <20190523112312.24529-1-volodymyr_babchuk@epam.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523112312.24529-1-volodymyr_babchuk@epam.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_100943_459577_3772743C 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "trivial@kernel.org" <trivial@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 11:23:35AM +0000, Volodymyr Babchuk wrote:
> From: Volodymyr Babchuk <volodymyr_babchuk@epam.com
>
> arm,scmi.txt used the wrong document identifier. "ARM DUI 0922B" is
> the "ARM Compute Subsystem SCP, Message Interface Protocols". What we
> need is the ARM DEN 0056A - "ARM System Control and Management
> Interface Platform Design Document".
>

Indeed, it's most stupid copy-paste mistake. Thanks for fixing this.
Applied now.

---
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
