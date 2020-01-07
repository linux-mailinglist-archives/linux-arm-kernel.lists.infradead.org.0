Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C98132278
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 10:34:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=glXnEQuQQMZTXec3t3oD3uG7SgFXFNnhi1vCAAG21Lw=; b=e8zwu/WVv+EA+MJzbK59FmNl1
	U706m4yacSfpjgaFbKDJ2AxsOPzu4SuDdurCB3qt1VbGZhq3+ePg4+d/LDYPb1z0rr99L5B2M1y+A
	ZrF+x6DUv8PZTKuAwB9qDfmYEf6Xl+cZXDEYKvoSUxpBv3YLcEK9YKoVGnY1pym5BYgYX2+zQObYr
	Nc1bVxA6Al1Cspyz6SUG6X96TGIqtQ15BepggaMY4VXKShXjS55Ta1GQAsEOcqdcqsWcORGIG4dd8
	T3f+u2Wmk+UcAfyWyumIWscYPkWyZ/Q4uFDyLDZM1YDQFBKdF2hp6xD8FYfcZnPnZoOaqbaEGgmQz
	82KPdfLrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iolFW-0002Bz-6w; Tue, 07 Jan 2020 09:34:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iolFN-0002BS-LH
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 09:33:58 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1D9B7206DB;
 Tue,  7 Jan 2020 09:33:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578389637;
 bh=0RwFzwAEmrIP5sG0tKGrxv2D/cxDWEkx4BvAxCF7YcY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=H4MhWpEv9OaFCgT3pOtwNa8691FoPe9u0TYSCg/+0HvXNb3xrg8Z0UMTp3WlgCN9V
 sZneQrxj1cZTzcdnNMP4HyRW3GUYvhQYxpSdzhrj9w+ugT+W+e09aturGqr6jVjdnQ
 EuPegGrp4+ChfhOaNGONnb4I074kMSLOP/LCXt6g=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1iolFL-000143-D1; Tue, 07 Jan 2020 09:33:55 +0000
MIME-Version: 1.0
Date: Tue, 07 Jan 2020 09:33:55 +0000
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: Re: [RFC PATCH v9 0/8] Enable ptp_kvm for arm64
In-Reply-To: <bf333cdc-3455-7c64-89c2-014639614904@redhat.com>
References: <20191210034026.45229-1-jianyong.wu@arm.com>
 <HE1PR0801MB1676CFC9A06B6CE800052A99F43C0@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <bf333cdc-3455-7c64-89c2-014639614904@redhat.com>
Message-ID: <7a589be6dc0d5562caf8c8f795b31efc@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, Jianyong.Wu@arm.com,
 netdev@vger.kernel.org, yangbo.lu@nxp.com, john.stultz@linaro.org,
 tglx@linutronix.de, sean.j.christopherson@intel.com, richardcochran@gmail.com,
 Mark.Rutland@arm.com, will@kernel.org, Suzuki.Poulose@arm.com,
 Steven.Price@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, Steve.Capper@arm.com, Kaly.Xin@arm.com, Justin.He@arm.com,
 nd@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_013357_726536_33ECA921 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Justin He <Justin.He@arm.com>,
 kvm@vger.kernel.org, Suzuki Poulose <Suzuki.Poulose@arm.com>,
 netdev@vger.kernel.org, richardcochran@gmail.com,
 Jianyong Wu <Jianyong.Wu@arm.com>, linux-kernel@vger.kernel.org,
 sean.j.christopherson@intel.com, Steven Price <Steven.Price@arm.com>,
 Kaly Xin <Kaly.Xin@arm.com>, john.stultz@linaro.org, yangbo.lu@nxp.com,
 tglx@linutronix.de, nd <nd@arm.com>, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 Steve Capper <Steve.Capper@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-07 08:15, Paolo Bonzini wrote:
> On 06/01/20 10:38, Jianyong Wu wrote:
>> Ping ...
>> Any comments to this patch set?
> 
> Marc, Will, can you ack it?  Since the sticky point was the detection 
> of
> the clocksource and it was solved by Thomas's patch, I don't have any
> more problems including it.

Boo. I had forgotten about this series. :-(

Going back to it, there is a few ugly points in the arm-specific code
(I'm OK with the generic changes though).

Another thing is that the whole series depends on three patches that 
have
never been posted to any list, hence never reviewed.

Jianyong: Please repost this series *with* the dependencies so that they
can be reviewed, once you've addressed my comments on two of the 
patches.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
