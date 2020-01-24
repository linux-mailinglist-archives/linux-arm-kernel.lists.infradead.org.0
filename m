Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ACE6147A5C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 10:25:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VMro2HeilWcqfSpWcWVt9xKdHaf4N2/XiF7cxP+Tv8w=; b=gUYqjRwEhQuzWczFbAhRRVIvp
	hPVh5z30HYNRqsf3gjctklvb59QbrRiuhC+Rm8UUJQfbDJSuaXUXBa+HbfnIwxoTmXPBWnI9HCYMy
	Cz3dM1dV5XdFOt9vMgVyti2LC8BCH4zLw/ogJ/D+lZGE580Qbob4Ru4aJrV7XSsvrQnWlKjOr05qt
	+aQJ9k8VPpTgWSUORPyAb5yagUxHfe6bu2k1FRhxdDevJ/qtD0Zs6HlMUruSpv1AkcDUKTJQGeTX/
	YVcOG+CaznepGgDBDcjsETUNLx5frXOtyruhqMXVCR4fLJd5MV0ceugK3PMbuJA15oykHN8H86dql
	/84MGSBbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuvD7-0006p7-7s; Fri, 24 Jan 2020 09:25:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuvCx-0006oj-Gx
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 09:24:56 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DD47F20838;
 Fri, 24 Jan 2020 09:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579857895;
 bh=KAQIFs6u9SBGFnCamms5w0xzDzQWfopkjaUvvNlAAHE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=lEeIpAUTF7HgSMbNvTsm053c2RkRuunrm0fhiPRMDvd81FTrDrMl1+M6QAF4pGjMx
 NXuyLJNVm6ncBLT4zyLNfPO3CrmttWgKa7g/KcoAjwYJiuzpbLf8un1aFzix4KfPvD
 iG05KoHrVuFEQAB0nsEIdRH4mkE+kbxK0CfkkX3o=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1iuvCv-00168F-3Z; Fri, 24 Jan 2020 09:24:53 +0000
MIME-Version: 1.0
Date: Fri, 24 Jan 2020 09:24:53 +0000
From: Marc Zyngier <maz@kernel.org>
To: Alexandre Torgue <alexandre.torgue@st.com>
Subject: Re: STM32MP1 level triggered interrupts
In-Reply-To: <f9d98afc-6cb8-ef7b-cff7-a04e14dba4c8@st.com>
References: <20bb72d0-8258-abc0-e729-4d3d5a75c41c@denx.de>
 <d6e02817-2464-51b9-246a-7720b607b8d6@st.com>
 <65a1c5b2-c1b9-322f-338c-e6ff6379d8d1@denx.de>
 <129d04a0-c846-506d-5726-4a1024d977a6@st.com>
 <80db762c-3b3d-f007-2f9b-dadbffd95782@denx.de>
 <360b1adc-32f1-7993-c463-e52c7a5a8a67@st.com>
 <c4f08f59acd31951527ef1d6e9409e6f@kernel.org>
 <20200123101225.nscpc5t4nmlarbw2@pengutronix.de>
 <03fd1cb7b5985b3221f66c6b0058adc8@kernel.org>
 <20200123105214.ru4j76xbisjtbtgw@pengutronix.de>
 <cf98f4fd257ba4f34c75fe1656bd341b@kernel.org>
 <e1fffd57-4814-ec36-68b4-4207e3d4ae5d@denx.de>
 <f9d98afc-6cb8-ef7b-cff7-a04e14dba4c8@st.com>
Message-ID: <7e0ce712f7e34b38c8f541644026c52e@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: alexandre.torgue@st.com, marex@denx.de,
 u.kleine-koenig@pengutronix.de, patrick.delaunay@st.com,
 mcoquelin.stm32@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_012455_583226_BF11E8FE 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Marek Vasut <marex@denx.de>, Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-24 09:17, Alexandre Torgue wrote:
> On 1/23/20 11:21 PM, Marek Vasut wrote:

[...]

>> But I still wonder, what is the purpose of the EXTImux in that SoC?
>> Shouldn't that permit routing GPIOs directly into GIC SPIs, which 
>> would
>> then permit detecting at least level-high interrupts ?
>> 
> 
> For this SoC, EXTI block detects external line edges and rises a GIC
> SPI interrupt. This EXTi block is mainly used to handle HW events like
> buttons, clocks ... So first issue seems more to be a design issue
> (your design doesn't fit with MP1 datasheet).
> 
> Now, let's find a solution. I'll have a look on your proposition:
> "check the line in EOI callback and retrig".
> 
> Marc, this kind a solution could be acceptable on your side ?

It will depend on the nature of the hack you will have to put in there.
If it is 100% reliable, why not? Anything short of that, probably not.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
