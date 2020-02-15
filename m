Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C8415FC20
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 02:40:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=goysm6LtNVCnaKsYwbJuR9r9DXAblR1unNNUUApejhY=; b=OBX3LcS5SfBnf+
	jDAY2DmNPEhzAJy84yuSNmT8q460Sl0mC1iNEc/w9Dead+0YwVXrZ/NjUcdB+LO1FARmY8eZwodJS
	BYzLJzZI8m0g3nosW0TMHr/Wa/P1j+NQvCryg/7Cdb1lSO2ECFuwLJTyhW6zJME326hRjQJx4Bsn0
	XFCHBhpF/s+gjAOcPj8qWCukCqYhyO4Gx32YR/buq1cPJ822YtgNXGtBrvhLdPpFDBabGdqbLCl5r
	EjCIsdLTAqmLhfiBjgw72E0SNcoFIMMNPjunWx9HnZaYvvEaUBwhxEYW/HP3BYPZKCaSSrkkMnCl3
	G07cBogJTWAvIVX1SwWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2mRH-0007RG-V2; Sat, 15 Feb 2020 01:40:11 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2mQw-0007Pe-Am
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 01:39:56 +0000
Received: by mail-ua1-x943.google.com with SMTP id c7so4267522uaf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 17:39:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kMs0i+uoo9dEPE33t+AXfXB1++1njbxKLeTu5JqtYr0=;
 b=fXNn7AqPrZ5ZwcZLjbkNrdxYZMTjnSacepUQ1h0/QR7892FFCnDn7C47Us/bBOetFQ
 X01EKp+TRXzsQl9vd1FlE3GKII5nj2LbiJppR9s/S2uzzT4zkgje6NSiNxGdoxERSlWK
 X5PypfkyXAc9TEycom6L8cgdPWAn8V93M3Y/ZexYz+o/TvKMLwHxv0cPaTDSTuVjESNE
 WoUDTfsgE/FIneJ49vWD5j8PvgRKWutgdNraTDfzQZSQazElkfpYxqL8Jyg+Fjxjt76D
 U0Nsmg15IT6ho38kecVo+Dr3/Y0NwKk68sqs5mDih8NUxyFnczcsucgY/Go1UUTmJTes
 dM3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kMs0i+uoo9dEPE33t+AXfXB1++1njbxKLeTu5JqtYr0=;
 b=nvu/oryn/wqUTcGW0eQGFBYj+j41YHlFEUw5avAX1WcfMWHWmU5BbMB098v1L0le/K
 jLMQh6N6NpC3sBd4+Ycf2Xe1e1QZHUggPPNJobXZ3xR2QEcxNOqR7CJUtoRRjmFJRM0W
 bPdDJ8mvJFHiA94AjlY20GBLBhMTtA75fT0SXbTmkLGNFv38vW3uwvepNngIYYl6/XO6
 QYM4M+kZzQcspyoa8NytRSqps3gZF60j1OV6ofC5Tok7ym8avN0hH3K5xzhuTn8SCAIg
 Koe4XhM0fyh5Cy/x2Qfjwbk6nHoOzuzJnPVAs9reRQS/v8zTdG8mtsXbHjasLXtCSqyo
 Gilg==
X-Gm-Message-State: APjAAAXnBAN3U4lRSta+KXwNYnsQ0jKYATx2W32wqRaSrKI9yhWownBy
 7gmKn5119T5mD4OMSij2p+cScn6T58u/dvvV+z6WUw==
X-Google-Smtp-Source: APXvYqyRF8/JMZJhylgjcPF+Qhj2QxTzBoJcSQm2A3xYu1dpgHXvJA+yiR3FUgFfdj8dXU/4MSre36eYYR9XKPHdYUk=
X-Received: by 2002:ab0:2006:: with SMTP id v6mr2955494uak.22.1581730786453;
 Fri, 14 Feb 2020 17:39:46 -0800 (PST)
MIME-Version: 1.0
References: <20200214062637.216209-1-evanbenn@chromium.org>
 <20200214172512.2.I7c8247c29891a538f258cb47828d58acf22c95a2@changeid>
 <804d3cc5-688d-7025-cb87-10b9616f4d9b@roeck-us.net>
 <CAODwPW-d_PpV4Jhg2CC+7Tfyrrh=gh6hRfcEKFb4gj+LB6vrWw@mail.gmail.com>
In-Reply-To: <CAODwPW-d_PpV4Jhg2CC+7Tfyrrh=gh6hRfcEKFb4gj+LB6vrWw@mail.gmail.com>
From: Evan Benn <evanbenn@google.com>
Date: Sat, 15 Feb 2020 12:39:22 +1100
Message-ID: <CAKz_xw3NH7saKUda3o0uz3qf4rSc63Yn6E0KrHW=ncxVsk78ZQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] watchdog: Add new arm_smc_wdt watchdog driver
To: Julius Werner <jwerner@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_173950_404888_F5C7517E 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Rob Herring <robh@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-watchdog@vger.kernel.org, Anson Huang <Anson.Huang@nxp.com>,
 Dinh Nguyen <dinguyen@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 LKML <linux-kernel@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Olof Johansson <olof@lixom.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Evan Benn <evanbenn@chromium.org>, linux-arm-kernel@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > As written, one would assume this to work on all systems implementing
> > ARM secure firmware, which is not the case. Please select a different
> > name, and provide information about the systems where this is actually
> > supported.

> Back when I wrote this I was hoping it could be something that other
> platforms can pick up if they want to, but that hasn't happened yet
> and the code on the Trusted Firmware side is still MediaTek-specific.

Thanks, I will re-word as mediatek,mt8173-smc-wdt, and address other comments.
In the event this does become a standard arm watchdog interface, I assume
but do not know that it will be straightforward to change the name here.

I am not sure how to proceed with modifying Julius' authored patch in
kernel preferred way.
I can add myself as co-authored-by and modify patch 2, or add a patch
3 to make preferred changes.

I will use approach 2 for now unless otherwise advised.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
