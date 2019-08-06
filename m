Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5538782F24
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 11:58:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OMytlGoqWG1D2QEIq750qYyi7hyGEP7iKYCCnenNuVw=; b=apa9tvhtB91ZX98lShSMtkFfc
	6ueqUYtnn+z4cjyQsGMA1NVfsZMP3prKPrlxO2J7pFDgCw2QfkIUiZCj9lD5k3rJ0EDAw4bLO1I2c
	nBevb5ufRinr8Re68VZupNzzMA0ObEg9HQVIW4Vf3RUfzSR5DvW9aHGA/yNvTTSKTTlD4dYnMF826
	no+a1PF7hA+8AH38wOFAXpJfovoKoxPVFaauMfLtSawYP0jEsd297yPKvHfTiG8rRn7omk11SYbU3
	OgKXIoBmo1qsisCVMTP2DbRfjfwPmrWQWgh0HKUuxnv1naFJhavVD8eoOk7wc7glt/UbYtvroqP6u
	N/ggBOvRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huwE7-0000qM-9M; Tue, 06 Aug 2019 09:57:55 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huwDi-0000pL-4o
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 09:57:32 +0000
Received: by mail-wm1-x344.google.com with SMTP id x15so77563799wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 02:57:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=/Maji2RwwwtxnwYgjI3ukUF6tl3xJMB8QIi+/hRkUJQ=;
 b=dUYdusquMTgi5sgAluvwU2oAnGLw7yeqBk3Zk9kvngMNEoMzLJpIc68D8q1pnBYzQA
 83bOfrGeXhqCp32Z9bFRfDjLqlutiKwYP26XXcol9haByP/hIpD7F7/tVenwSgvacIc1
 7HHglIcSmnf6h3aiU2ROKUa5pRNzWVCREgVKwh1QVC6eKt1yE8ZdPagdrqez4WFva5ZE
 jK2wrNbgAZAkIQoVqlBqzNG4oUCrWJAnH2eYs6C9NzczpyPKMieySGg+QXA3PbAulN+v
 b9tRw+8Z4NTGdt/ZC70NTnxsFdB8qFFrfU1S7h1GBmkTCTd3aSTDSAYkFA/3jkOFgHAz
 W6Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/Maji2RwwwtxnwYgjI3ukUF6tl3xJMB8QIi+/hRkUJQ=;
 b=ZxSuAs8IDuPAObUaIxA7ZXaMe02WRWepFuLrt932lTdchjcIBxqKANBdLmd6vzkR1e
 v+AJPOsJpDE5ro6xOyrLl6CrZJQ0+SouXItQEI2AF0uyNjm9a7Q71JMWsdivODNUVrMn
 317jPbB+mfTgferY/P0GsHcOVGOlrqSo54WDH7z9tfOlVNx61myH3Nmy35u951lZ+wHj
 +QkF3OUImaiEULdeowRXbnBucaJ0NUPwP3aHffvSNhnM4/MKfemVhscD2t4m3mVz5ATB
 AMhPrILsN1XT1dL+bTVtKp2mEmMqDMpj6tW+7CE+vtg/f7nmDHIublE+V/kgdAEg42qh
 pt8A==
X-Gm-Message-State: APjAAAXpdl7Mf0RyYR0q3x9z4elVZ7w11PqwlaeVN2XFkpkIPIiBK6bX
 DZZ9Et0i769zACspuzbH0dmiJImUD+s=
X-Google-Smtp-Source: APXvYqybHKczGO4ZhHJ8e7xW0i7iRDztl518SonFt/A7ij3dDpkl+aNGTA0/Cpvgp1ssSTDtuzAJfA==
X-Received: by 2002:a1c:a481:: with SMTP id n123mr3542235wme.123.1565085446511; 
 Tue, 06 Aug 2019 02:57:26 -0700 (PDT)
Received: from [192.168.86.34]
 (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
 by smtp.googlemail.com with ESMTPSA id
 q18sm107898732wrw.36.2019.08.06.02.57.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 06 Aug 2019 02:57:25 -0700 (PDT)
Subject: Re: [PATCH 2/2] nvmem: imx-ocotp: Support multiple word writes
To: Trent Piepho <tpiepho@impinj.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20190709183016.4789-1-tpiepho@impinj.com>
 <20190709183016.4789-2-tpiepho@impinj.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <c74bed07-9a67-8ff8-2a6d-0fe98f5a6193@linaro.org>
Date: Tue, 6 Aug 2019 10:57:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190709183016.4789-2-tpiepho@impinj.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_025730_441545_3B643471 
X-CRM114-Status: GOOD (  16.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, NXP Linux Team <linux-imx@nxp.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 09/07/2019 19:30, Trent Piepho wrote:
> All the other nvmem drivers here support multiple words being read, and
> for writable memory, written in one call.  This driver appears to be the
> only one with a single word write restriction.  It makes the driver fail
> with generic userspace nvmem tools.
> 
> It's easy to support multiple words to write so do that.
> 
> The nvmem core verifies the write length against the word size, so that
> can be removed from the driver.  But offset still needs to be checked.
> 
> Also simplify the bank write code for imx7 to avoid a lot of
> duplication.
> 
> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Signed-off-by: Trent Piepho <tpiepho@impinj.com>


Any Acks or Tested-by before I can push this would be really appreciated.

--srini


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
