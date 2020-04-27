Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B960A1BACA3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 20:29:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JaOcZmu/5AlhUJdNR/05YC0GvAyZGYHB1NLWSQaicRg=; b=tOVCLxGQ7Sht6E
	iPq11SnEmE5fNBIh4752rHyg4DERplBHVUq5PXhk8ruRSRdhhmFj8ay967Mg8L5zwMrlu97gEqvum
	uVpH63bHAf0yX4fjDG6CmS/IVv3s0i/de7sCoYd3FyTOcKVQcnTtJVYxL+sDVssIcf75Ss6UbvbI5
	FM2ZeYn1D57T4ES0iCEK9lMFJW930HLB6fOhZ5Wg4VBdH6XVc3XkkTjsqzp4Vkj6p0xgr2DSkHE1y
	D+n0A30HNRs9nJ1afJNnAnUMgbUmPk1p6MlDhfGP2d6+DNC0LxaMp+dTQy1mWdlCSKvJnx9QemRSd
	uPcMjSSStQYLyNT1eryA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT8VC-0001Mg-J5; Mon, 27 Apr 2020 18:29:10 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT8V3-0001ML-8E
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 18:29:02 +0000
Received: by mail-wr1-x443.google.com with SMTP id i10so21707240wrv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 11:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=lHULapMa+BsXwsb7nFo4ngDpGWEQISNj1XIuagyOGJ4=;
 b=S4nPK50ggycLkdpsKEzm16DXDnDpUPNe4JP8XftG9GTRTK+xfH2TGDQFSNwNPozCih
 ROG2tV4mOoET9zFZxgHyO8sZNds7kijCfa1t80FBbbrnzf5+SAqv4Jt8nqIDrnLVYNTY
 Ok/bi2D18ftntyliblJnslVzyRoZiOTSOIEJEtu1swPu89TXasrNA4Bo54kfxwLl4PuT
 8Xjla6GUzeZxhXOChhfv+56LKNUsfAFdDCapz8x6jkmhoM63hZh++Kbr/RHtxDI8f2zb
 AQBq4JWVdYep6lykSzc1EsNTVLj3nGaYPMIuhOcbsGEf0fsNWcpCYCBxgYlpUjBCMBf/
 yXqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lHULapMa+BsXwsb7nFo4ngDpGWEQISNj1XIuagyOGJ4=;
 b=aV5OiL8ShO8xguxnry0GUQTP1FaT1DOJxFVWXwEcadPjPC0evZFhNc16dEdpuRkt8G
 Geg1tShevEv4C6noUnZNsOVlHrs02gjXOQhD+9FRYqpFwjdrKq6WhZpDjVlCaVnMgzra
 rR9poV91Kuj13HSi10UhAg1mrX4NSR5NLZzfqp6OTZf4GVGze4zlGvo7tTST6Z0m07+P
 GBj70tS8V6EIKUpyJfC1R5E5FMpOBq7LvgWVVAYnr3ekH0RVlooIe6iCT7S1g1Nssi09
 Zur6ajPpfmbArtnPTdjVmea/uj8tu35Uie+8UrrGaYbBLcWy8kbKipBAartWwrNs5WGO
 3ehw==
X-Gm-Message-State: AGi0PuZKgJ3th6NuNPixptJF4jdxaGlF+kXQ5zFL6jMoFjjZgBNj3Sqp
 pHrfcqfN+cEmHLicZt1lPCM=
X-Google-Smtp-Source: APiQypJOG6qtfSJj/AHws9ZDonzOzaRMFl/gRiPA694TiwonOAWWNZ4KP8h65Zy99Qla0QP2vjG+Dw==
X-Received: by 2002:a5d:6582:: with SMTP id q2mr28911267wru.343.1588012139464; 
 Mon, 27 Apr 2020 11:28:59 -0700 (PDT)
Received: from [10.69.79.32] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id h17sm13719wmm.6.2020.04.27.11.28.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Apr 2020 11:28:58 -0700 (PDT)
Subject: Re: [PATCH RFT] i2c: brcmstb: properly check NACK condition
To: Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-i2c@vger.kernel.org
References: <20200426081211.10876-1-wsa+renesas@sang-engineering.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <a94e4ec2-1fec-b567-dcde-6a7829f2af5a@gmail.com>
Date: Mon, 27 Apr 2020 11:28:55 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200426081211.10876-1-wsa+renesas@sang-engineering.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_112901_320889_AE2C4B18 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Wolfram Sang <wsa@the-dreams.de>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/26/2020 1:12 AM, Wolfram Sang wrote:
> From: Wolfram Sang <wsa@the-dreams.de>
> 
> cppcheck rightfully complains about:
> 
> drivers/i2c/busses/i2c-brcmstb.c:319:7: warning: Condition 'CMD_RD' is always true [knownConditionTrueFalse]
> drivers/i2c/busses/i2c-brcmstb.c:319:17: warning: Condition 'CMD_WR' is always false [knownConditionTrueFalse]
>  if ((CMD_RD || CMD_WR) &&
> 
> Compare the values to the 'cmd' variable.
> 
> Fixes: dd1aa2524bc5 ("i2c: brcmstb: Add Broadcom settop SoC i2c controller driver")
> Signed-off-by: Wolfram Sang <wsa@the-dreams.de>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
