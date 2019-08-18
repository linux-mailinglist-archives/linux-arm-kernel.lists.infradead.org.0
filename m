Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2B3915F2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 18 Aug 2019 11:35:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vtLL4DSyf2UbIZKtupr+87y0hsYqirA7BmqFC5GG5tU=; b=eZw5FpO8+Q7v/ZV8coHlQZT9g
	aWkEJkCyt4Bp4u8SxCji8xDJaZ6FxeLVQAfcioVGN1TZfPPASdZNbSbEZTMlfpk+D+B1iMZtbgt2a
	sYGrrXlm0RQl3PT+PXd7KQcDN+rHqRELnxOU5bONF5LZUjYrAKbfgdaTC3O9w2t9/XGa1w5YtHnH+
	kyrKyJW6c3FDB1j219ZHvM45Obt2Ih/mG7qm9nSH9mB2HhtM42eaU1lNw7RMrLvDJl/Iz9X83I4Lt
	chiB7PpytpRowCxekJTrShpavyUhvjU8gcpVFEWSKBTvNsD4e3Os2eKOZda+2S+uxmgDV+n9RIy0G
	I8iIB9x7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzHae-0000ll-7T; Sun, 18 Aug 2019 09:35:08 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzHaK-0000ki-AO
 for linux-arm-kernel@lists.infradead.org; Sun, 18 Aug 2019 09:34:49 +0000
Received: by mail-wr1-x443.google.com with SMTP id t16so5627302wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 18 Aug 2019 02:34:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+t3LQMBsSqNtOgurGKhZ9wHHLkH0/0oqZfvSxZFI7Kc=;
 b=uttML3RCJoDZnRkarpGajlROiOjlCgdBRarQ0F5FMFCaZ0D2ZSDeoe6m89e45/9Cd3
 M3wPcFpgIvwV3Y/fuC9wfjXctxXie2swARrs+EXYcJhI8rcpY4H0QlqaTdzkwf4KnHP+
 eQ0AFmJLrnT3WXl4twdhFDNubbJfvJVg/vY0WASgHxqLAmtPtB4xbBqQHJmHYsWXg8nU
 3jghdnYoY1SziexIR5V4wckMT+1Fzc1PLKt4KiNQd3h5Yf14I+Ta6fUWk3DumKdZ8nIr
 WHM32qDx5MQzVr6Ewizcv+SAO9qRdlt3EDZNUo2gWYZyC1odC3LXL1D0TVmPHA6Trv77
 tuSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+t3LQMBsSqNtOgurGKhZ9wHHLkH0/0oqZfvSxZFI7Kc=;
 b=WM5vvT9Fdko/5kZyofnZW+IK/7shs7SwE06XQZz/vSybcEL/6CBptoviCnJNPjlaDh
 OB9KHve970zLVJbBhvarD/0XDdV0/BERIFg5po5j5vjOelfZmWzLuGDYqw2BwwAtr6zJ
 7XMLD2YqkEZhwbpeigk1rYSH+6BxKySTukriTDETqDlN5z1ieAwwT/1r8lXIrJ8H8uXG
 KtvPxDzdDJJC+c0OsUc4UQn6ij2nuxJjWuyf+BTyol5iWn5Jwc1QHKALixt0rtPDbPHP
 +siSIK9HtmtKN8Ho27lfJNJzD+Pc8UfpuTtUy4tx4gB0CgpUpUxNVvyc4cTtq+uVIJHW
 +BkA==
X-Gm-Message-State: APjAAAULqyhoVOnSCNTtCJB5ndBaF2xzE/Woxn7Xmxw2midYtc4/FpUS
 Gee33sIL+DY7DcQSNUR3CnoepR01E9s=
X-Google-Smtp-Source: APXvYqyDJPoBROgH3mSWPPQRVi3n6qSDQYx/A8Z/krsdoVGn3+rKHtb0XvRz2rf/n5uAvUz1nVx4NQ==
X-Received: by 2002:a05:6000:12c3:: with SMTP id
 l3mr20161009wrx.100.1566120885734; 
 Sun, 18 Aug 2019 02:34:45 -0700 (PDT)
Received: from [192.168.86.34]
 (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
 by smtp.googlemail.com with ESMTPSA id g26sm8352268wmh.32.2019.08.18.02.34.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 18 Aug 2019 02:34:45 -0700 (PDT)
Subject: Re: [PATCH nvmem v2 0/2] nvmem: imx: add i.MX8QM platform support
To: fugang.duan@nxp.com
References: <20190807040320.1760-1-fugang.duan@nxp.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <5c7e5ff3-f453-c765-8795-c392434c7663@linaro.org>
Date: Sun, 18 Aug 2019 10:34:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190807040320.1760-1-fugang.duan@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_023448_365708_C14DD491 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, robh@kernel.org, festevam@gmail.com,
 devicetree@vger.kernel.org, gregkh@linuxfoundation.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 07/08/2019 05:03, fugang.duan@nxp.com wrote:
> From: Fugang Duan <fugang.duan@nxp.com>
> 
> The patch set is to add i.MX8QM platform support for i.MX8 SCU
> OCOTP driver due to i.MX8QM efuse table has some difference with
> i.MX8QXP platform.
> 
> V2:
> - Add dt-bindings for the new compatible string support.
> 
> Fugang Duan (2):
>    nvmem: imx: add i.MX8QM platform support
>    dt-bindings: fsl: scu: add new compatible string for ocotp
> 

Applied thanks.

--srini
>   Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt | 4 +++-
>   drivers/nvmem/imx-ocotp-scu.c                               | 7 +++++++
>   2 files changed, 10 insertions(+), 1 deletion(-)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
