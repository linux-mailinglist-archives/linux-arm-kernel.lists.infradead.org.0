Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F403C1DC375
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 02:16:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3a3e02AaPsCzdhQDmqUb0KcdRkxKYpvzEMCNnj+VQkU=; b=VMAsipYi1LSGly
	Zdbh3f4JXwDEyDVCnBACy+WRE5Kp88dPE8FV6kTY3QtZLiD8dM/W8IyPCRcA7j9PW0/j05MaW0U8S
	MP5iehbDs4rmmzdFa03IiLAG6jlS1MPhmrkmF+tX9Il1MQy/Qh0eLtiMhp97GKUDo3LQhNOZaVI1Y
	nvrL1Zi+44lt94kcp67Og/WAybpbfXjXjXmXFYsGAFiIXkivtdVY8vb/rAG+ZV9AAI6JDS+xNKN2O
	SPcWUR6nNHKGUlOUjGOeNUEQnuMpreFNzv+hXuh4pDNW+2nwxwczd7gQ/ptlAGXML10fcm5+F0ywz
	/1Q5ggWuhiDlYQ9aCqzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbYsz-0003d3-KW; Thu, 21 May 2020 00:16:33 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbYsq-0003cG-8F
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 00:16:25 +0000
Received: by mail-pl1-x636.google.com with SMTP id b12so2050039plz.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 17:16:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=CKY4Oy0szHs+SXs3qF7IEEqqnuvplQ8KwCGvnU/bQpo=;
 b=U0MXHmlAfP5P0MqzM52RDzGO5Mc0i+3XvbBbg9U6S24BmvWfGRenxhKSTnLNNDGuTe
 FjFq+eNeILeu1kr4TJcES8XpSkxwcMYv+OEVCdySiWlbjhysk9Lj71KOX/jRvj3aHP9U
 DiA1rTvm8ZKkZE318umsJUVscdZYFN3T7uWBheP3YiX8J6EOhcFotN0Y5Ge2yoiwjTTi
 TKeYzilmALmWGYD0ij+b2uC2Jp4wwqpcChFGSTwOQ+0J40Fqt/dIkYXetwcOhvICuTgo
 afbuIdobI5mq2VjloKbonmTdwOLgDYX4BkKtcx+sFAtqmWBwThuGF7f0y8pKPNG3xzhB
 DG3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CKY4Oy0szHs+SXs3qF7IEEqqnuvplQ8KwCGvnU/bQpo=;
 b=Si+IR+rgWJVUzqWsU3KTKJNEfam7QoREXsAxhehYIR8y+STMsgwN474y6o9Bv3CIDG
 eA4s8otuuT4gUvI4bFfUgvyklFR0tUMqLDoe+RXyJCEqmz6ql/x6l62vw//U8IbHsPgK
 bez0TQDj4ZECqzyHCeELJMHMWRcS2qnjQv4y0BIdzc4cC7Qm8UYT7ABiHUZfau/mk3Gb
 7nKgtxmBoQJveFEJmJSX3D7LzNq/31gdr4lqYVetZmB2KHzVBFNHrMGAB85M9AxPjM5V
 KDckbANRMAjwuZ6BRuqAb8NS2WviwLkp79vKymZUydS03bCsNr0gDXBdUTlGpdUWG8HN
 Y4+A==
X-Gm-Message-State: AOAM530gQbEP03AWgW5o5XvUtATy+r7wESwpUSfAOjQToI8g6Xn7Z4fX
 pmqiMNlRxMECEFf0qQiFN3daKqpD
X-Google-Smtp-Source: ABdhPJxi36xznhpVJ6XOVpnfYkK6ARWMDgwnxhExFJhhPjgXaNjA9xT+s+E+k1/yoGttFPYrMAhh4w==
X-Received: by 2002:a17:90a:a401:: with SMTP id
 y1mr2385842pjp.204.1590020181621; 
 Wed, 20 May 2020 17:16:21 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id l1sm2598255pgj.48.2020.05.20.17.16.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 20 May 2020 17:16:20 -0700 (PDT)
Subject: Re: [PATCH] ARM: dts: bcm: HR2: Fix PPI interrupt types
To: Hamish Martin <hamish.martin@alliedtelesis.co.nz>, robh+dt@kernel.org,
 rjui@broadcom.com, sbranden@broadcom.com
References: <20200520043042.7281-1-hamish.martin@alliedtelesis.co.nz>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <5ce77bf5-b61c-397d-feaf-29e9f80875bd@gmail.com>
Date: Wed, 20 May 2020 17:16:19 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200520043042.7281-1-hamish.martin@alliedtelesis.co.nz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_171624_292589_8D694FA6 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:636 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/19/2020 9:30 PM, Hamish Martin wrote:
> These error messages are output when booting on a BCM HR2 system:
>     GIC: PPI11 is secure or misconfigured
>     GIC: PPI13 is secure or misconfigured
> 
> Per ARM documentation these interrupts are triggered on a rising edge.
> See ARM Cortex A-9 MPCore Technical Reference Manual, Revision r4p1,
> Section 3.3.8 Interrupt Configuration Registers.
> 
> The same issue was resolved for NSP systems in commit 5f1aa51c7a1e
> ("ARM: dts: NSP: Fix PPI interrupt types").
> 
> Signed-off-by: Hamish Martin <hamish.martin@alliedtelesis.co.nz>
> ---

Applied to devicetree/fixes, please copy
bcm-kernel-feedback-list@broadcom.com so we can have our CI pick up this
patch. Thanks!
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
