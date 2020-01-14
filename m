Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D37E113A80B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 12:11:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1pSudYcKnaBBlsO+VJ5EcNpiHioIbzXyYJ2/Vp6dbGs=; b=lK5HfJ7X0Fh8L7
	KV+vpne26uaXUYCijflMa8Ba4eiQktFdg10US6r/rYMzVVhIc42DJ/JB0LUUB/Owy8xO2cwFkgud5
	suLCKpoJlYovrZZ+ZBJBPS6PQSPTb9p/NJF145q/029RnjJL6TtTlp7aquQJ55Lbi7CEGTnOp7ZDe
	4OKXwa7ZKObxnwEgK/BDhQ0RlmCi8KkOM7CxTZfUrJOjebqLWsio6not0qC7crt691XYfMQxkaN3f
	IwdB4bnD4vtYzsFT3mPSyu46iTd7xrgWLyhA9q+0Ug/itswXYqMJJt9ldJd+/WV5GTqsQR4wX/Jp3
	gs13wbphkvzQszsORnXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irK6a-0000sQ-3E; Tue, 14 Jan 2020 11:11:28 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irK6M-0000rV-7W
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 11:11:18 +0000
Received: by mail-pg1-x544.google.com with SMTP id q127so6248781pga.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 03:11:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=XBZrfX8lefbqoC00uqxUIqwNp5iGop4pPam/KdlVaFk=;
 b=MYlOh9JC9NAdMnXM2MBHckOrg9L7PtmZWQR1EHKqZTnAQkUW6ztN4gbv/7cjOS0rqh
 1obsqbOBRJmZNZVXi4CI54+9cSBw/VZoneiX1Zy+OFSNSywEJyW0svuLthCEaei/bXO7
 MKt34QBOOGpz8HBh5a7Kg934lWshPDyRqWrIUXt9FTeasQ6KnagCCDXvN/+6ne09FYqz
 jviGn+mkd04b2qwFGUzHXqnay+kK+hTZ2eLncKPqsdZu7k+Infp4/FPX1/DSOxuQxl00
 rDip6nMi0+8qfTYvf+41v0H/1Ok2L97+7ETuhXhj2lpuMJVu8R4wxAribW8Uso6Wk5BY
 wL5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XBZrfX8lefbqoC00uqxUIqwNp5iGop4pPam/KdlVaFk=;
 b=OHduplTcT2HlkVRdXV6XnS0tOBt+sQH/MeiTtkhLqB2gewv+SxW++rCSM2CKjtgYC2
 SxuuVjZuCsFBryMggaZ9LyR4P5sxIRrO16Hhsp/nAQVyz/sLXNLVSct1wUquPvQt09gC
 ygIEMzfkh9COwVNOG8o6pFacEHyFJHbvA/dh3/mYtmDP6YzfQWJmLx4aB1abah3AkoYW
 JiS8v+ugjJ6XeLvcRz/TuztyZElA/79D1KDAcQf42gXYHqrsGcSHNZXo920fFcSyU/Wv
 jKYLfOElVZyrgBTefEZe9GRlyOqX9iVctmbK18oRChbKw64Ew8Wl4CBF5/Kpn0Z57LU8
 cncA==
X-Gm-Message-State: APjAAAXSDq4To9c8raKADQcQdM6vSMUrc2I0AhhatNKiOdexUSyg7o7A
 6+Vf5E6GfnxWlLMVfARXmA5G/w==
X-Google-Smtp-Source: APXvYqx2MiRaW3twJGGHwRODGbxfq0eTPey+fYvLlQ3hvhqtZgptsPwym4I2ms5HfOar2j8f4QImhQ==
X-Received: by 2002:a62:e912:: with SMTP id j18mr24978532pfh.4.1579000273517; 
 Tue, 14 Jan 2020 03:11:13 -0800 (PST)
Received: from localhost ([122.172.140.51])
 by smtp.gmail.com with ESMTPSA id y203sm18478129pfb.65.2020.01.14.03.11.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 Jan 2020 03:11:12 -0800 (PST)
Date: Tue, 14 Jan 2020 16:41:10 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH V2] firmware: arm_scmi: Make scmi core independent of
 transport type
Message-ID: <20200114111110.jhkj2y47ncp5233r@vireshk-i7>
References: <3f5567ec928e20963d729350e6d674c4acb0c7a0.1578648530.git.viresh.kumar@linaro.org>
 <CAK8P3a1MLyP4ooyEDiBF1fE0BJGocgDmO1f5Qrvn_W5eqahz8g@mail.gmail.com>
 <20200113064156.lt3xxpzygattz3he@vireshk-i7>
 <CAK8P3a2u6s4MAM_9bOqSt5NwVc4XrXs9W36tp-7rWWTXx0+pRg@mail.gmail.com>
 <20200114092615.nvj6mkwkplub5ul7@vireshk-i7>
 <CAK8P3a0jXyJArzQFd+u68iRvXNnXb_oHbWF9-abvvFuqhpi-NA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a0jXyJArzQFd+u68iRvXNnXb_oHbWF9-abvvFuqhpi-NA@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_031114_273139_364C2303 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: peng.fan@nxp.com, Jassi Brar <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 cristian.marussi@arm.com, Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14-01-20, 10:56, Arnd Bergmann wrote:
> My point was that you cannot mix __iomem accesses with pointer
> accesses. As I understood it, the current version uses a pointer to a

The current version is stupid as I misunderstood the whole __iomem
thing and just dropped it :)

> hardware mailbox with structured data, so you have to use ioremap()
> to get a token you can pass into ioread(), but (some of) the new
> transport types would just be backed by regular RAM, on which this
> is not a well-defined operation and you have to use memremap()
> and memcpy() instead.

Okay, I think I understand that a bit now. So here are the things
which I may need to do now:

- Maybe move payload to struct scmi_mailbox structure, as that is the
  transport dependent structure..

- Do ioremap, etc in mailbox.c only instead of driver.c

- Provide more ops in struct scmi_transport_ops to provide read/write
  helpers to the payload and implement the ones based on
  ioread/iowrite in mailbox.c ..

Am I thinking in the right direction now ?

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
