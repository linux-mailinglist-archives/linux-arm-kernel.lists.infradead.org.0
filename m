Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5742713560D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 10:46:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4e+4EEkm7CDHa7gfAWoypBLWkMPpBz/Jxf545YbmMeA=; b=UPUBlc7iKA465yLzUl52Wbxs7
	igESzCT9lI/+0f+tgu2FxJzKB0H8OpsmRjysebxhQ1/cUxA2HNdXfp+/7y+tSdAJSjYPhI1jFMZC1
	CPQpLPEG1sQjLjIiOuSWnPOLHG2UEX/yHYCon77n3YlQ11foo0okz8A8tuDamv/jALv2RSqLsXAE0
	Pk15tJhCD/3StRMXIqb9D2tySJZpo22fYVmcvWZ6XurBmt8EO38Okq2Oy1Lup3n+VvHXvGj9vS10h
	0b2L3lC/bxTc9gAC3ScAipr8AXuOqXxYiS7Vp/RqQuXYUqo857CF5cgHAJpVgWpgsc0srNXOmFcwX
	saqK+xxGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipUOX-000123-2T; Thu, 09 Jan 2020 09:46:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipUOP-00011i-Er
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 09:46:18 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8ED0920678;
 Thu,  9 Jan 2020 09:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578563176;
 bh=NHHel1PVO2HlRqINTAayeLOlQXHvdSb0MKXB6GwG2Xo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Lv9mjO62CPa1so1ZNZc7FENfSViFFVsdY2DTNxbyY0LlNLpor7G78cti04LiXbtAQ
 i1UplCiDuC04AomjvqZIGN5V5p177tJ+wuJY8hHksssGF7ld7YsHQULYsaCu+Rzqoe
 SJjCc7PRPQRTg+7rJf13faQFdPYCd31nGKHrR8L8=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1ipUOM-0002fn-Nv; Thu, 09 Jan 2020 09:46:14 +0000
MIME-Version: 1.0
Date: Thu, 09 Jan 2020 09:46:14 +0000
From: Marc Zyngier <maz@kernel.org>
To: Jianyong Wu <Jianyong.Wu@arm.com>
Subject: Re: [RFC PATCH v9 7/8] ptp: arm64: Enable ptp_kvm for arm64
In-Reply-To: <ee801dacbf4143e8d41807d5bfad1409@kernel.org>
References: <20191210034026.45229-1-jianyong.wu@arm.com>
 <20191210034026.45229-8-jianyong.wu@arm.com>
 <ca162efb3a0de530e119f5237c006515@kernel.org>
 <HE1PR0801MB1676EE12CF0DB7C5BB8CC62DF4390@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <ee801dacbf4143e8d41807d5bfad1409@kernel.org>
Message-ID: <a5f5fc5bf913c9a22923d1a556f511e6@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: Jianyong.Wu@arm.com, netdev@vger.kernel.org,
 yangbo.lu@nxp.com, john.stultz@linaro.org, tglx@linutronix.de,
 pbonzini@redhat.com, sean.j.christopherson@intel.com, richardcochran@gmail.com,
 Mark.Rutland@arm.com, will@kernel.org, Suzuki.Poulose@arm.com,
 Steven.Price@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, Steve.Capper@arm.com, Kaly.Xin@arm.com, Justin.He@arm.com,
 nd@arm.com, kvm-owner@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_014617_520584_B4593CAE 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 kvm-owner@vger.kernel.org, kvm@vger.kernel.org,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, netdev@vger.kernel.org,
 richardcochran@gmail.com, Steve Capper <Steve.Capper@arm.com>,
 linux-kernel@vger.kernel.org, sean.j.christopherson@intel.com,
 Steven Price <Steven.Price@arm.com>, Kaly Xin <Kaly.Xin@arm.com>,
 john.stultz@linaro.org, yangbo.lu@nxp.com, pbonzini@redhat.com,
 tglx@linutronix.de, nd <nd@arm.com>, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-09 09:24, Marc Zyngier wrote:
> On 2020-01-09 05:59, Jianyong Wu wrote:

[...]

>> So we focus it on arm64. Also I have never tested it on arm32 machine
>> ( we lack of arm32 machine)
> 
> I'm sure your employer can provide you with such a box. I can probably
> even tell you which cupboard they are stored in... ;-)
> 
>> Do you think it's necessary to enable ptp_kvm on arm32? If so, I can 
>> do that.
> 
> I can't see why we wouldn't, given that it should be a zero effort task
> (none of the code here is arch specific).

To be clear, what I'm after is support for 32bit *guests*. I don't 
expect any
issue with a 32bit host (it's all common code), but you should be able 
to test
32bit guests pretty easily (most ARMv8.0 CPUs support 32bit EL1).

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
