Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDD2ED071
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 20:44:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4DEn///wwZHxFq25ngExyY6utfby/IlANOCGGYtQKz0=; b=QYgHomtmeKUXDs
	Guzgq11gWX27r3RKK9dMFvtYEpx4Jekaf2ozDvH5rzTdp799tP/gwlJlazV9R6tpeBM1vzSW3oL77
	u1AwDPDU09mdRxgx1H/ZqAJvxKGAzHNm9/MsZ8LGylm7F1tbEMIo4T281gSwevcTUUm8/lrJqLWpg
	50iQUYoqyMQP5Sv5a2TVtXX+TiL4NifBXynqTBdOqKJdAEsgLbXfCS8nApZA579x8IE6yGhOduqa6
	/BSQwTsw9MFcOOX0YajHEhbWoc/M1QXG17i7qzXgxUbyYDfLOEA1AM8thchSRq8lWKq5MgG+mr3jf
	ER9dl5fbRCGbsg6wR3Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQzJl-0003Fu-H7; Sat, 02 Nov 2019 19:44:13 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQzJd-0003FD-Un
 for linux-arm-kernel@lists.infradead.org; Sat, 02 Nov 2019 19:44:07 +0000
Received: by mail-wr1-x441.google.com with SMTP id l10so12886793wrb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 02 Nov 2019 12:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Q64tKioGmpkjSreRumgw4MSoiU3wjKcQNA0vySWNXwQ=;
 b=KDG+q0LEI77ysrarY2JEy3B+BuPN7srgGheiF2udQjsYPcW5U0C5Cb/Wfls+u3c0/q
 gQE5lgNnOueyou2FTe1em7yKeJBLg2X86w0ciTGphY4xmf2vFD5qImjKlsb3NxiRR81s
 nSsWR8e1eBFHldoqTtYVnkmJUzoJAV94mhtgc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=Q64tKioGmpkjSreRumgw4MSoiU3wjKcQNA0vySWNXwQ=;
 b=Kn1Wbn5+9NGVJqKD7Cze/pq1fzAzLUxOrvmsQBOXauYgdnKqTl4bQq4EWd3WWP3CWA
 nK6L34Dp2I84B+XIe5/+UMKiIlmD5ccczYQijrkPfdeW5eyM7HZzi3pDe40mbmYSMQAk
 UmZ8eqNqi9nyBTAXuN3zNJTNpNh0ofwCzMAu2yOVVQLI5CZqNWDpdsOHsgPfJioOGzm8
 KlREkEjl5f4y1NmOB/gNuWzDI0lNDPo1IjGK1rb1l7DSqxO0LEUlAltiOcPE2vDp6P6F
 IYELHTegDvVQBuXyV8ck6yPYDWwpMpPJH3WCouL7X/VgqYrfvUHlbp8zQC3gzf0ehcew
 ae/w==
X-Gm-Message-State: APjAAAW1VkYpLFjJdQcxHUzfFJkese07MrsMbJOHSNK9st525Jx5Neu4
 XPeoKPuypHQGkaKuUwsyWphJwRwVoWsPExQYd6/kaUnO0zOErD3J9xj6X+uOVG735NnaVpmx3ro
 FLky097rsvE7b3tO/X35a3dXdTYHEBipG6XWCeOZIr0zyC0NqH2F0L1538avPLaukReAGJVdf1Q
 AX7eY7x1YqUK9M9RGAdl4Y
X-Google-Smtp-Source: APXvYqz5EW77O7b0uNJfIts2HXXU5adk63GWkN8uiEbz/dFrVppROEYu7TFtMPoCqq5Jpz0yEzP39w==
X-Received: by 2002:adf:ea07:: with SMTP id q7mr16643148wrm.78.1572723840083; 
 Sat, 02 Nov 2019 12:44:00 -0700 (PDT)
Received: from [10.230.29.119] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id h205sm12263876wmf.35.2019.11.02.12.43.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 02 Nov 2019 12:43:59 -0700 (PDT)
Subject: Re: [PATCH RFC V2 1/6] net: bcmgenet: Fix error handling on IRQ
 retrieval
To: Stefan Wahren <wahrenst@gmx.net>,
 Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>, "David S . Miller"
 <davem@davemloft.net>, Florian Fainelli <f.fainelli@gmail.com>
References: <1572702093-18261-1-git-send-email-wahrenst@gmx.net>
 <1572702093-18261-2-git-send-email-wahrenst@gmx.net>
From: Florian Fainelli <florian.fainelli@broadcom.com>
Autocrypt: addr=florian.fainelli@broadcom.com; keydata=
 mQENBFPAG8ABCAC3EO02urEwipgbUNJ1r6oI2Vr/+uE389lSEShN2PmL3MVnzhViSAtrYxeT
 M0Txqn1tOWoIc4QUl6Ggqf5KP6FoRkCrgMMTnUAINsINYXK+3OLe7HjP10h2jDRX4Ajs4Ghs
 JrZOBru6rH0YrgAhr6O5gG7NE1jhly+EsOa2MpwOiXO4DE/YKZGuVe6Bh87WqmILs9KvnNrQ
 PcycQnYKTVpqE95d4M824M5cuRB6D1GrYovCsjA9uxo22kPdOoQRAu5gBBn3AdtALFyQj9DQ
 KQuc39/i/Kt6XLZ/RsBc6qLs+p+JnEuPJngTSfWvzGjpx0nkwCMi4yBb+xk7Hki4kEslABEB
 AAG0MEZsb3JpYW4gRmFpbmVsbGkgPGZsb3JpYW4uZmFpbmVsbGlAYnJvYWRjb20uY29tPokB
 xAQQAQIArgUCW382iBcKAAG/SMv+fS3xUQWa0NryPuoRGjsA3SAUAAAAAAAWAAFrZXktdXNh
 Z2UtbWFza0BwZ3AuY29tjjAUgAAAAAAgAAdwcmVmZXJyZWQtZW1haWwtZW5jb2RpbmdAcGdw
 LmNvbXBncG1pbWUICwkIBwMCAQoFF4AAAAAZGGxkYXA6Ly9rZXlzLmJyb2FkY29tLmNvbQUb
 AwAAAAMWAgEFHgEAAAAEFQgJCgAKCRCBMbXEKbxmoFYGB/9qN5VL6f/88+qtDaDhUKvwBgF8
 koryGCH/gw6FBW5h5hwW0m6946WnsBnqKnZ8OYr8qsCgeJewCh0BEN9rIg8SC5oU7WdcmNg5
 KTv4/V1CmBo6dQaSHA8yQoeHsrw0gQ9HK4EYjhAU60RYXxX7/LFAy0rJMLf0qGKdWW2f5EkN
 dS5GwWOrTp477WL2g+R0khhP57qpejxlMN+Mtvin52UjbAcr1PAx8Zt2rXpFIZsXVWADpZDd
 qIb6PZPdcP/lD1v5it4sTN7D27FgjvbvAgj/D3NmyOjIUsbN9ZDJDfgv431RsJ9LOd6ySaNr
 yuje7L0dbiYrcOi3CN6S+zE1UJsLuQENBFPAG8EBCACsa+9aKnvtPjGAnO1mn1hHKUBxVML2
 C3HQaDp5iT8Q8A0ab1OS4akj75P8iXYfZOMVA0Lt65taiFtiPT7pOZ/yc/5WbKhsPE9dwysr
 vHjHL2gP4q5vZV/RJduwzx8v9KrMZsVZlKbvcvUvgZmjG9gjPSLssTFhJfa7lhUtowFof0fA
 q3Zy+vsy5OtEe1xs5kiahdPb2DZSegXW7DFg15GFlj+VG9WSRjSUOKk+4PCDdKl8cy0LJs+r
 W4CzBB2ARsfNGwRfAJHU4Xeki4a3gje1ISEf+TVxqqLQGWqNsZQ6SS7jjELaB/VlTbrsUEGR
 1XfIn/sqeskSeQwJiFLeQgj3ABEBAAGJAkEEGAECASsFAlPAG8IFGwwAAADAXSAEGQEIAAYF
 AlPAG8EACgkQk2AGqJgvD1UNFQgAlpN5/qGxQARKeUYOkL7KYvZFl3MAnH2VeNTiGFoVzKHO
 e7LIwmp3eZ6GYvGyoNG8cOKrIPvXDYGdzzfwxVnDSnAE92dv+H05yanSUv/2HBIZa/LhrPmV
 hXKgD27XhQjOHRg0a7qOvSKx38skBsderAnBZazfLw9OukSnrxXqW/5pe3mBHTeUkQC8hHUD
 Cngkn95nnLXaBAhKnRfzFqX1iGENYRH3Zgtis7ZvodzZLfWUC6nN8LDyWZmw/U9HPUaYX8qY
 MP0n039vwh6GFZCqsFCMyOfYrZeS83vkecAwcoVh8dlHdke0rnZk/VytXtMe1u2uc9dUOr68
 7hA+Z0L5IQAKCRCBMbXEKbxmoLoHCACXeRGHuijOmOkbyOk7x6fkIG1OXcb46kokr2ptDLN0
 Ky4nQrWp7XBk9ls/9j5W2apKCcTEHONK2312uMUEryWI9BlqWnawyVL1LtyxLLpwwsXVq5m5
 sBkSqma2ldqBu2BHXZg6jntF5vzcXkqG3DCJZ2hOldFPH+czRwe2OOsiY42E/w7NUyaN6b8H
 rw1j77+q3QXldOw/bON361EusWHdbhcRwu3WWFiY2ZslH+Xr69VtYAoMC1xtDxIvZ96ps9ZX
 pUPJUqHJr8QSrTG1/zioQH7j/4iMJ07MMPeQNkmj4kGQOdTcsFfDhYLDdCE5dj5WeE6fYRxE
 Q3up0ArDSP1L
Message-ID: <2201753d-69ce-de12-e0c5-45ac6504caa5@broadcom.com>
Date: Sat, 2 Nov 2019 12:43:55 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <1572702093-18261-2-git-send-email-wahrenst@gmx.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_124405_995227_CA0E3755 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Doug Berger <opendmb@gmail.com>, netdev@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 11/2/2019 6:41 AM, Stefan Wahren wrote:
> This fixes the error handling for the mandatory IRQs. There is no need
> for the error message anymore, this is now handled by platform_get_irq.
> 
> Fixes: 1c1008c793fa ("net: bcmgenet: add main driver file")
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>

Not sure if the Fixes tag is necessary here, this is kind of an
exceptional case anyway since you should be specifying valid interrupt
resources to begin with.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
