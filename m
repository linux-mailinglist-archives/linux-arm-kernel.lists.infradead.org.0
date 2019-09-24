Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B92C5BC056
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 04:48:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eQpUHRmdDmoY7xyPQ1/ye/iaTWYMxzYrypZZY1n2k7E=; b=nzAesDV1XZFQy/
	EL947+rzkklSnr0n1eXfr9uX8FG+3K4S3ZQoVeun5CkJZIxkD0C0GfpNqHoJ52riPfi2IBM15v6H1
	wlXJoCUnIhih2Ws1KpIBdiBTp9OIm2epyuLBN6Pqmp2h2g8MunUUCVfmWTCYRInv5v+gMMpWTaRQU
	nmXkzupV+jFixJGUX+/4iFg8fS8QQuRjFZJydXBarOd1Az80Oa9f6rVhXYw3HVtz+Ibm1ouUEsJT8
	JqshqvNAj/RjnCDCbHL3BnVsUKjEhqzqgPQUg2QqWi1/R5fRGmq0TOgx8cBAC3AdiXf8Q/IQhkh5W
	OR9MHoAtMad1fIoUG3fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCasZ-0003Jk-Q5; Tue, 24 Sep 2019 02:48:39 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCasQ-0003J0-QE
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 02:48:32 +0000
Received: by mail-pl1-x644.google.com with SMTP id d3so286318plr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 19:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=deTOHyUuNbmlHO4aRp949wtOhcFU4gVUPh8sJQJUCQ4=;
 b=acEtyVqI1ptDNYGn6laviDUrBylL5GoPdDcuHygbZ+r0EG6dJgy3UhfejSjbj/MxY/
 pJo+0Pl8XVXXJsj7QoI6/Qng9qMCYChNMpBE5TfxDx8EMI29QMb1oOFKu75IjTwYNUA1
 GW9CIg+GUJAbOsi+aTfiA/a4NGmVsdPtl95NR6j0a3zMoa091keyiT2mQyvQyjIzawaT
 CErq+02tdfxO/i4eBlVu0q5HPQpSBDn98Ww9nDI8ztlF8C5w6fUPqtfDhvXNs2OXIO2r
 R9toIqwVwxXpPBXywaSEZhoOfbX/JM+pF+9/3x3Nh44napQ0D/vXSRvRstOt3bOQa0xA
 piWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=deTOHyUuNbmlHO4aRp949wtOhcFU4gVUPh8sJQJUCQ4=;
 b=hIB0Q2MR99w9irpcCOOQ9GHOXGM5pOWateoi5BuEG6+jvQiCnp1qz6qHXEOuFZ/3mk
 6/3AkfWDVSQry6k2z1tGFESXoU1tLRXOe0HZ5H06mQ+pb35yudXQzQrRjRCY9M9hH3JP
 ljaj6txQye+zEZfF3eBycQg5bkGBWtNZXuccX5cnc3Yn/528Votmgdzl2DTIgL3mXjef
 a/M1dse1Eq3SyvapzdtctTMuy/PAO7ytq9xf+/a9FxMsJa0fcX/V7bTulqmlZ+Uhd4YY
 BuFg82W92f53kX+Q9cHbo9wOqlEZPGtTWggNRAVl/17G2UEh6uYTMXWH9brWW7DisU9v
 /58g==
X-Gm-Message-State: APjAAAWf0ksNfLiNms3WJU5M3bS60prUFIjYPaMyj+vV//MAfevesyDw
 1YI1cmjhU7j9oweAHfkaX2A=
X-Google-Smtp-Source: APXvYqwod2IWhSzAzWT7j2NclyNInJfApNQQnV0sqhYQNVBP35uINV509q2WmEDB4J1pRDnwm0n1fQ==
X-Received: by 2002:a17:902:5a44:: with SMTP id f4mr442688plm.31.1569293309631; 
 Mon, 23 Sep 2019 19:48:29 -0700 (PDT)
Received: from [10.230.28.130] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a17sm150278pfi.178.2019.09.23.19.48.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Sep 2019 19:48:28 -0700 (PDT)
Subject: Re: [PATCH V8 2/2] mailbox: introduce ARM SMC based mailbox
To: Peng Fan <peng.fan@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>
References: <1569287538-10854-1-git-send-email-peng.fan@nxp.com>
 <1569287538-10854-3-git-send-email-peng.fan@nxp.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <1f01ea8e-8953-82ae-933c-721385dc0c13@gmail.com>
Date: Mon, 23 Sep 2019 19:48:27 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <1569287538-10854-3-git-send-email-peng.fan@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_194830_872679_C05AF763 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peng,

On 9/23/2019 6:14 PM, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> This mailbox driver implements a mailbox which signals transmitted data
> via an ARM smc (secure monitor call) instruction. The mailbox receiver
> is implemented in firmware and can synchronously return data when it
> returns execution to the non-secure world again.
> An asynchronous receive path is not implemented.
> This allows the usage of a mailbox to trigger firmware actions on SoCs
> which either don't have a separate management processor or on which such
> a core is not available. A user of this mailbox could be the SCP
> interface.
> 
> Modified from Andre Przywara's v2 patch
> https://lore.kernel.org/patchwork/patch/812999/
> 
> Cc: Andre Przywara <andre.przywara@arm.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---

[snip]

> +typedef unsigned long (smc_mbox_fn)(unsigned int, unsigned long,
> +				    unsigned long, unsigned long,
> +				    unsigned long, unsigned long,
> +				    unsigned long);
> +static smc_mbox_fn *invoke_smc_mbox_fn;

Sorry for spotting this so late, the only thing that concerns me here
with this singleton is if we happen to have both an arm,smc-mbox and
arm,hvc-mbox configured in the system, this would not work. I do not
believe this could be a functional use case, but we should probably
guard against that or better yet, move that into the arm_smc_chan_data
private structure?
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
