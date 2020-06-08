Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 514121F1C54
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 17:42:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vXkxRFz33WeVf+B4xUoWGyD24m4cXBMTUx4AoZkiLvA=; b=egAfodxzPToa/jGEudtD5N2IG
	EwBSAMZTDo3hw3dFc3MSOZI3+AOKvqnuhYxq+VQEAftkRQZ3tjC/V+/2dpjruhsHglbw1F1loJ4Nc
	9jsxZrnSBVTQTf6vII1egYVIlwJ2qqY0nrwSsnp+OUSC0i1eZeCrPFGdcIAhM/CvgBByjE6RXgL8q
	YfKf6NviDiXYD2yVKXy7HtJqbQPmn0Ip70a9P+aYIvGOe/W+32St7EfcQEQlgDJ3u6aWGTO0SQ4gT
	Lzi2bOn1xsA6trANjMq5OmkGj8nV1qL4AZQz0wqYOIbktPPc2g9hOadZ+aH7W6Ns0FFFu9DiNOybl
	yDXcgKXIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiJvJ-0006vU-Sb; Mon, 08 Jun 2020 15:42:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiJvB-0006uv-32
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 15:42:46 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 95938206C3;
 Mon,  8 Jun 2020 15:42:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591630964;
 bh=CcGUQFrKPbxqqYBdQSn7aunL0vzndo8c/yOQ5BBHLhQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=gBsMPDJNjtGVl/jmnBcUHW9bDu1wu5RUrfh/1SfTLUiFY9kxCvC5tQUVcjiqdrRRg
 zGGKnhrKBC457xtfkyzZ/VmOelipN92/chg1ZHo2VW/x7+ZbYKfv8HrPuPDRxrpVi2
 DYRPtJFy+eJEeof/DFhqUmsnS7BqRQ8/XLbheQjI=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jiJv9-001A5n-3f; Mon, 08 Jun 2020 16:42:43 +0100
MIME-Version: 1.0
Date: Mon, 08 Jun 2020 16:42:42 +0100
From: Marc Zyngier <maz@kernel.org>
To: Andrew Scull <ascull@google.com>
Subject: Re: [PATCH v2] KVM: arm64: Remove host_cpu_context member from vcpu
 structure
In-Reply-To: <20200608145145.GA96714@google.com>
References: <20200608085657.1405730-1-maz@kernel.org>
 <20200608145145.GA96714@google.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <1a00887a4af019fa83380b68afd43a29@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: ascull@google.com, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 mark.rutland@arm.com, kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_084245_148947_1574D350 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, kernel-team@android.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On 2020-06-08 15:51, Andrew Scull wrote:
> On Mon, Jun 08, 2020 at 09:56:57AM +0100, Marc Zyngier wrote:
>> For very long, we have kept this pointer back to the per-cpu
>> host state, despite having working per-cpu accessors at EL2
>> for some time now.
>> 
>> Recent investigations have shown that this pointer is easy
>> to abuse in preemptible context, which is a sure sign that
>> it would better be gone. Not to mention that a per-cpu
>> pointer is faster to access at all times.
> 
> Helps to make the references to `kvm_host_data` clearer with there now
> being just one way to get to it and shows that it is scoped to the
> current CPU. A good change IMO!

Thanks! Can I take this as a Reviewed-by or Acked-by tag? Just let me 
know.

Cheers,

          M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
