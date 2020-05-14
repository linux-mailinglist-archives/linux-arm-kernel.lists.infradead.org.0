Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 142D91D346D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 17:06:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d+Fyp0OwHDIlNsC+r+/BGgjFNa/LlzrTFvfTWSyBXvQ=; b=BOXUpC4ocNu9Cz
	jwxWXzl0CbxBiNJsDHcAfj4rGQbcwGYzM6GQ8zWbvx6S7COQ72I9mneMPsm9cxcmtbcEHiuAeErda
	KoA37On+dcisBAmQxf7Q4ynpXqji/23EUEu/ZhAUYGIrYWnGwk+SQsX0KZEIIulhvgSLvZsGbAXi+
	g68LUBXuSSj0lCcHDEewAstYD4rXYe6ESVe7/ikVKTbl58he43mPkyHeSgaAdlPOQTJPQoNAKDx/k
	mqTFnTIsnwgSPJho8HMcJCPwH/0E3kvpM/S44DA/8MI9N7UB0qg5ct8s2B0V4+yWtz6LqIzSuGKGj
	N2sbdJ0fCJWqKlkOtb6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZFRe-0003Xj-Ea; Thu, 14 May 2020 15:06:46 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZFRU-0003X1-VS
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 15:06:40 +0000
Received: by mail-lf1-x142.google.com with SMTP id 188so2901922lfa.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 08:06:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=s6pQpCMudujfiAjUNY0Vi1g8QyE9NzQJQONui0Wm3WM=;
 b=g3T9H3oQ9lDSC9YebE/7R2v3osY77/Pvq5h3Wqau24cmSPvO8DbK7aRZttXnHrOUAo
 VgkpMqcGLtWerb2QFx7QQ9bsLAO/PsZ8b/NQdQzfdqcLuResZab+7dn9USjGOFiPfjHO
 9qkXYVl5DG/Jlkz6BRXkoiflzpMfd6LIoSR3dHOfgemCqpFgk09SxHd9UNG/5JC5Wfpk
 ZNoP976TJEgSYLuStmsORP9g9l4OIczXeTeC3/eJRsVPMFu8pO7Pwl8b3YjkD74QCdrO
 h41HBq2Hc4Td01KebCaExCtL0L55rrSUYwgtM8dETqStj3A3LI+Jz0S4RFNpUAeebMtz
 /7Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s6pQpCMudujfiAjUNY0Vi1g8QyE9NzQJQONui0Wm3WM=;
 b=M0eo8Uve9b4F+sRNql9pUvu2oLOdxw9TLWRaZ2UwQVnL0n1MBX+jSTwU70XsCJPuDY
 T31s0Esd7R7DEban53L+KVj89/XPsf/5OX8J1V6xbEaHzrtRoG0N4GUoKs9K0LpBsk8n
 tsGsKbkhvYa+pUg40JdMPCrcsQ71zjTd6KP7wSpLQN1Xb49qyvBcT++K+QCW12Ur1nus
 YJr29oU2LuhCnz2LiTvulNTSlIAeRvNzBuVr46gI9aO1ujxO4F1M36aM5eHqtxZ9hu4y
 oTtOxTG614IjAjI0MszW3tRFaKYD5Wsm0Ze1Gm2L5J8xLCj/ftD749wtIeaXFinSDxhM
 /N8Q==
X-Gm-Message-State: AOAM531BzY7dLfCGwhNAq7ANZXDqj+qbJxnuacyHlmn/mKipYcN+tZSS
 7DjYLLl+6GwBsVW0DDSsTgYdHoQjrk7qg83whwkKbw==
X-Google-Smtp-Source: ABdhPJyqNOeUwCze7pjStc+fCzjwPaJVk4A8NthXF4Ocusde3ddlkvHcyH91UjYcAtdf2Q05SfUOpl++RL/M/PRWzX4=
X-Received: by 2002:ac2:5212:: with SMTP id a18mr3603745lfl.83.1589468793160; 
 Thu, 14 May 2020 08:06:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200514082428.27864-1-etienne.carriere@linaro.org>
 <20200514142924.GC23401@bogus>
In-Reply-To: <20200514142924.GC23401@bogus>
From: Etienne Carriere <etienne.carriere@linaro.org>
Date: Thu, 14 May 2020 17:06:22 +0200
Message-ID: <CAN5uoS_bimZsFqwaODRRWeCe15JMepQa2z9J0+dq7qNfwxRsug@mail.gmail.com>
Subject: Re: [PATCH] firmware: arm_scmi: fix SMCCC_RET_NOT_SUPPORTED management
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_080637_040816_5C24A87C 
X-CRM114-Status: GOOD (  18.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 14 May 2020 at 16:29, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Thu, May 14, 2020 at 10:24:28AM +0200, Etienne Carriere wrote:
> > Fix management of argument a0 output value of arm_smccc_1_1_invoke() that
> > should consider only SMCCC_RET_NOT_SUPPORTED as reporting an unsupported
> > function ID as correctly stated in the inline comment.
> >
>
> I agree on the comment part, but ...
>
> > Signed-off-by: Etienne Carriere <etienne.carriere@linaro.org>
> > ---
> >  drivers/firmware/arm_scmi/smc.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/firmware/arm_scmi/smc.c b/drivers/firmware/arm_scmi/smc.c
> > index 49bc4b0e8428..637ad439545f 100644
> > --- a/drivers/firmware/arm_scmi/smc.c
> > +++ b/drivers/firmware/arm_scmi/smc.c
> > @@ -115,7 +115,7 @@ static int smc_send_message(struct scmi_chan_info *cinfo,
> >       mutex_unlock(&scmi_info->shmem_lock);
> >
> >       /* Only SMCCC_RET_NOT_SUPPORTED is valid error code */
> > -     if (res.a0)
> > +     if (res.a0 == SMCCC_RET_NOT_SUPPORTED)
> >               return -EOPNOTSUPP;
>
> Now this will return 0 for all values other than SMCCC_RET_NOT_SUPPORTED.
> Is that what we need ? Or do you see non-zero res.a0 for a success case ?
> If later, we need some fixing, otherwise it is safer to leave it as is
> IMO.

Firmware following SMCCC v1.x for some OEM/SiP invocation may simply
not modify invocation register argument a0 on invocation with a
SCMI-SMC transport function ID.
Resulting in res.a0 == scmi_info->func_id here. Which is, by SMCCC
v1.x not an error.

From SMCCC v1.x only SMCCC_RET_NOT_SUPPORTED (-1 signed extended is a
reserved ) is a generic return error whatever function ID value.

Or consider part of the SCMI-SMC transport API that output arg a0
shall be 0 on success,
SMCCC_RET_NOT_SUPPORTED if function ID is not supported
and any non-zero value for non-generic **error** codes.

etienne

>
> --
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
