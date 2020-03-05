Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 238EB17AD98
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 18:53:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9O4kvpWoP3IYwqLV+Vb4PMtGxLTfg1Qg7Bu3l2tDo14=; b=kiI0rrVUlxdDyh+YwDrvPr3S1
	v1jb1zSaPTw8StcIBVs6dmZFD1IMZYfP7dZLzR8D+jJyBp+UV85HpA7KuU1Y2W/1WXu4kxYIhTm8K
	2xC74b/K/ZfYWC4xjLSPEn7eb0KCB9rL4SQQPstv8bkyRjJEucN6woT6SuTTO+cLPUbWaoeKmO9oR
	hAWO53a16+sz2wz3IU7n5gSvIFx4yBbiqYcx5t1AQz2cD7y9xiyVO+FQbHMwQVFIYIvjxpupYrtBo
	21T0BCF0V+07/ebn/RUPBCA4YMTcvTGZk2rKON5D0ZXJXdSep5iBXWq+U+GCGf5EwQ5m8s/lrnpwp
	pcnosaQOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9ug5-0002AO-71; Thu, 05 Mar 2020 17:52:57 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9ufy-00029I-Oo
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 17:52:52 +0000
Received: by mail-wr1-x442.google.com with SMTP id r7so8136697wro.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 09:52:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=KKlI4DeAEp5pv8YazXy5gr7JP+Ho6TalAmxr1k++h2E=;
 b=QfWd/9BzJII9/qo5WnkdjRKuOWQo15xjx9Cqq5bHumjZCc8tXKXrxnbdP/Mvwshj9X
 j2Y1q+PmDE8gZ4plzBTs2gcVJCoeTh/9fQwKEQwdsoJAeV8rIhwrK9vTtzEOXcO5GJxZ
 GaEXvryNPxht9wY5urXLqQXuDpm+wq/phxvBx16hoa2ecUV5su9z77VPWup34bFwIXye
 JpX+SVpkvYOa9gbj7gRodAnkh3f5lGri9u7jh1aEYwy5KleU3Qbv1ZCEQepk52xeU2tW
 k2n4ihyJqMR+ggmUEBPHIy/DcchZqGrwte+jtwg7/Fci3+Y+TnQNMO1KSVIDjHpuFyTE
 Zl4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KKlI4DeAEp5pv8YazXy5gr7JP+Ho6TalAmxr1k++h2E=;
 b=BBVAJ+aQI7y4+4OpEfxjytX/1ymtx1MkjiqaCQI/QLTa5DLHigK6Upk02IaVZsBp9P
 1KLgwT/xpQVKjcpWhaBTDvmJWPnkRz16RKRYy5OHd0qXme+WCNU+0vVtiB88l9WoDJue
 zM2GI/9hfOs5Ox2RZTqxUHuVlLDtKvjyzff/S3Y3BUM4PjjmQvQ+/uYGItUlh3g+mWi8
 oopdQti4IrgX3yVW6kUFKpjOGKCSkgL43NUlZOTjzelhCvhWa+gFXB4hp1UMVgh2FdXr
 SRQcnml7zaKLjyrf2U4r3RntVvk6YgFuDaK5L8gLTXomGxxGLn1CILkqyB82VX12L36t
 8OAQ==
X-Gm-Message-State: ANhLgQ136XZXrpCaosCOqNOcJHQinZ5G9rwieMKXExT2NvwdW16AGJAL
 h+eaGAhMbzcYdn+ebDkz//Dxkw==
X-Google-Smtp-Source: ADFU+vsjY7vSv7aQngTiJFUNNqCNlMiQG1Q/oGLAEFjA2gwTj2/IFGvwnyfmLQ5qXYfEeijYNbA50Q==
X-Received: by 2002:adf:9cd2:: with SMTP id h18mr63430wre.339.1583430764059;
 Thu, 05 Mar 2020 09:52:44 -0800 (PST)
Received: from [192.168.86.34]
 (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
 by smtp.googlemail.com with ESMTPSA id j15sm5716878wrp.85.2020.03.05.09.52.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Mar 2020 09:52:42 -0800 (PST)
Subject: Re: [PATCH] nvmem: imx-ocotp: Drop unnecessary initializations
To: Anson Huang <Anson.Huang@nxp.com>, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1582694533-18870-1-git-send-email-Anson.Huang@nxp.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <1e43bdb2-c9e4-2fbd-0f4d-0ab2e94403c8@linaro.org>
Date: Thu, 5 Mar 2020 17:52:42 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1582694533-18870-1-git-send-email-Anson.Huang@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_095250_810815_A3CB43FC 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
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
Cc: Linux-imx@nxp.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 26/02/2020 05:22, Anson Huang wrote:
> Drop unnecessary initialization of variable 'clk_rate' and 'timing'.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied thanks,
--srini

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
