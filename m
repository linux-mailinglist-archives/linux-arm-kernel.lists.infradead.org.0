Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1461CEBC40
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 04:09:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cHdXIVChUVcxvS/58vg9Dt1++JUNe9EKrB8+iMngoKE=; b=XnPHjVUoXrqSd9
	8mifI09nIIVioMHUZliffybhE2Cxyi27g70/J1m5cAB8f2CjllbHoRaO+zzG2Ks1J5ZG8IMFZabcK
	QwBLSAfChoU2snYXtOgQqwKNQYasmW+FM0XCuRs4ZLuNRE7kx1u5Ovbvb2G86eFL+j6eNXKRqgyJd
	Q+P1erK69zseWDlQsMI7a6BK57flVPOpEiSjXVvneKRJHXSyWzNzIWyLAoVb+JtSgwhKv3MWsZlZd
	sElrg6IbKuXYXY39t56nHX6F/jVuvpgaRqIfkCsVDBxt7jOJMt/Z68CiuUtEKDrsRxdGZPaaeGpwK
	61ZLLc9R91ClXEItqcjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQNJa-0006Y9-CW; Fri, 01 Nov 2019 03:09:30 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQNJP-0006Xm-0S
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 03:09:20 +0000
Received: by mail-wr1-x443.google.com with SMTP id n1so8362981wra.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 20:09:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=MilvW8KF1q1GBDWNa38zLUbdbpUmypfuUOJIrybukug=;
 b=i1vdbmthHHL/BD//a+Lc4IWp0ufRC1HSfc+xoViJcNxseK8PgLdkpo23OB131Oonci
 u6rzC9GICpbfyzeWs+LS4PV7whOmAXAwVFThc4JZTt3EGpxiu6Oy8TrGHtp/5z5sxKUG
 /jjH+cMRhUmo25sp11d5vTnyvsUddHZG6VqYa9uGv6CMRMO2cZo8SXdnmHivTiLaPpOZ
 xa9pjxLrMZgp319+bjpZKm1r5iHtDfHbWqXcqdhcAGT8M5sOhKd2xkeU0W1s3I7oofM8
 uMkP4s+6Htf1VMcp5fgJ7NzetLpKgcGHIq88q11eSHRypKglYUoceaoGb50yPph7qoqz
 Ai4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=MilvW8KF1q1GBDWNa38zLUbdbpUmypfuUOJIrybukug=;
 b=FY91jygcwr/PSLFL7e/rOjvs3+5uMiKlafX7pLU+tMFByhKsKuYPEk7oLQVBYg8bRX
 WwUD+NZNt6q7EJkqnhluv+xX48ruwpFtE9ikDidjfSFLa01pXIWIYpDBne3no1ENgRO3
 3csoLu5o+T00v6hGXcBfCSvvIbPslf4QA1ZD/1sgTVvJKcygrcEHTBnzvgTWMtoZLqve
 XUKz7tnPpDTcnmJafkzTD6YExJpjnQBxEdEgRGvAm0YHgZMV0lt9iNe/I++A/IqZiQoU
 QMPViUK9YmQl//SWod3bwaMqbDZt9BRYsoNfAYO1YpKuyjDJgvjRCaDAb10x4ufmH42G
 fcIw==
X-Gm-Message-State: APjAAAW/mjS8FIyp6j3DuX1OJ3uXAxL4i/6DxfUNyeKS3pA8VD4qWH5b
 BZIsj7uvC/Q0wynRipKMO2o=
X-Google-Smtp-Source: APXvYqxOq8uZUxxuLNBzeC5oJfEwK0DGyj8pTKhYtDY1N4Yuug8YgW27P1o874r9SV8ZDTA4Z3kJiw==
X-Received: by 2002:adf:fec3:: with SMTP id q3mr8604105wrs.343.1572577757353; 
 Thu, 31 Oct 2019 20:09:17 -0700 (PDT)
Received: from [10.230.29.119] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id n17sm5484967wrt.25.2019.10.31.20.09.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 31 Oct 2019 20:09:16 -0700 (PDT)
Subject: Re: [PATCH] reset: brcmstb: Fix resource checks
To: linux-arm-kernel@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>
References: <20191101030616.27372-1-f.fainelli@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <0f0c6be8-0e3c-7294-75aa-58c3b33d621e@gmail.com>
Date: Thu, 31 Oct 2019 20:09:13 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20191101030616.27372-1-f.fainelli@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_200919_052676_4D4AE147 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/31/2019 8:06 PM, Florian Fainelli wrote:
> The use of IS_ALIGNED() is incorrect, the typical resource we pass looks
> like this: start: 0x8404318, size: 0x30. When using IS_ALIGNED() we will
> get the following 0x8404318 & (0x18 - 1) = 0x10 which is definitively
> not equal to 0.
> 
> Replace this with an appropriate check on the start address and the
> resource size to be a multiple of SW_INIT_BANK_SIZE.
> 
> Fixes: 77750bc089e4 ("reset: Add Broadcom STB SW_INIT reset controller driver")
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>

Sorry this fails building on 32-bit because it triggers a 64-bit
division let me go back and fix this...
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
