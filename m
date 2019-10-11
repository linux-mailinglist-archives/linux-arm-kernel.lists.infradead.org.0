Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC56D415F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 15:34:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xLoz5UTpxlrtUUqJM6e4SukcFlWkY0BROrchHemrD44=; b=XcTxFXeNE71ADJThzBOHtyPww
	OOtdmf1foMw33tpCx7fSSfJLTDzpz5D/h4LPkG/ZHn5KC5QbG3JUlkDBamfYZMrQWXocKHHp8Upv6
	7jSOXwx5N6Nk2SPMb4bcmzfL4ALoV5aLosnlDnY8MtvaMFPlutavaJIehmjXTsgrvRj36OgODLXtb
	JjNxwnUh/5Sg5/ogv3bDRLPex++hNopF1mT+pCkSVBBR1v9PMNCb45XpBr7t1E8IBzKv5s92hF26Z
	6Qn9AbSSq+JMaLh20NTnqfkC9ATZOVZxXQk5aQmpWHfkK5RtxEgn8iw5tooPtf5ucPYOzyRqjXEhX
	zc+jZW35Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIv3h-0004yE-NO; Fri, 11 Oct 2019 13:34:17 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIv3V-0004vz-BX; Fri, 11 Oct 2019 13:34:06 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 5C9CE611BF; Fri, 11 Oct 2019 13:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570800844;
 bh=qV7mshgmsk+PA+0O8tFTuDWkquelMqFFIB66c0mtXvw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=dbIlhjcv6KxYGpqa29K92bYNsnKxAHwOBp0XO9RQchrEs3WDNesdKXRuLJIE8lVd/
 FvtNPf7HJLbZj+0EM8HG4Uv4KIducbN01O9CNS359iN2o5vBskJXi83LKuaL9uVStG
 66P8+Jw5tvfffhxNGbfo42qyxodS9XVYsdRJQAxU=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 16D1261197;
 Fri, 11 Oct 2019 13:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570800839;
 bh=qV7mshgmsk+PA+0O8tFTuDWkquelMqFFIB66c0mtXvw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=DTe4ww8/Rj9UiVNqQ42aZF8hpaoSQgx/h5/neY7Ej2tjWAudV7pUqcK+NbO4M8q7f
 SvRvgGK+f2en3oE67UQ81aAsMgvJlvRB8AE4x3DdFbh0j6Vw6w0DGAXRxmuJyxaw2o
 zOL10H3tgjCyZkjlAazwa0jLMwumpydq57bekATE=
MIME-Version: 1.0
Date: Fri, 11 Oct 2019 19:03:58 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: Relax CPU features sanity checking on heterogeneous architectures
In-Reply-To: <a86e9be2-fc82-afea-5e94-b15d7eef1b84@free.fr>
References: <b3606e76af42f7ecf65b1bfc2a5ed30a@codeaurora.org>
 <20191011105010.GA29364@lakrids.cambridge.arm.com>
 <a86e9be2-fc82-afea-5e94-b15d7eef1b84@free.fr>
X-Priority: 1 (Highest)
Message-ID: <8fb6dce8dcda42a14c1347295a812a0f@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_063405_413651_B0B8C201 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 MSM <linux-arm-msm@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel-bounces@lists.infradead.org>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-11 16:39, Marc Gonzalez wrote:
> On 11/10/2019 12:50, Mark Rutland wrote:
> 
>> Before we make any changes, we need to check whether we do actually
>> handle this variation in a safe way, and we need to consider what this
>> means w.r.t. late CPU hotplug.
>> 
>> Even if we can handle variation at boot time, once we've determined 
>> the
>> set of system-wide features we cannot allow those to regress, and I
>> believe we'll need new code to enforce that. I don't think it's
>> sufficient to mark these as NONSTRICT, though we might do that with
>> other changes.
>> 
>> We shouldn't look at the part number at all here. We care about
>> variation across CPUs regardless of whether this is big.LITTLE or some
>> variation in tie-offs, etc.
> 
> See also the "Unexpected variation in SYS_ID_AA64MMFR0_EL1" thread
> from a year ago: (that was on msm8998)
> 
> 	https://www.spinics.net/lists/arm-kernel/msg691242.html
> 

I think, it was fixed by commit: 5717fe5ab38f ("arm64: cpufeature: Don't 
treat granule sizes as strict")

Thanks,
Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
