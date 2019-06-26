Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D356556B43
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 15:51:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YlNHV28hOWEwZyUzZ9IeryScEELTTG/nSbD//CAUWmI=; b=lT75h42Qnh7X35
	6J7tmc70z7G9rZu9eOefbFhPy9LCdM41b1o8sOaWFhp0WEOlooutY74giRwBBW5IVLxHHuwvKmU9g
	9AcZ6gZ4/FDVddezU1zVyg4DSDkcDuG/eki31Kd+RzA0VJ2WSS5BnC52owvZ0p3Zz+CwHQCw9ZusJ
	2d+98h1gJKhOrMib1zPuOcAURv4s/QZrWKfuI5AohtCqlnLkSlZr6DD2Ozpmhi4KzhMwzHl3DlG8n
	f6RdxEPrLLrRLa9BRPWlI1XEpMnXEaPQlHZw/lxQY4B2xEnm6y5ZTV/1kzuHxuQGQ4k7xiVPKfrYu
	Bnd/2G3K7k3rg8IhinXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg8KX-0004pj-Ue; Wed, 26 Jun 2019 13:51:22 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg8KH-0004oz-GH
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 13:51:06 +0000
Received: by mail-io1-xd41.google.com with SMTP id h6so3502977ioh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 06:51:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=qhiniuMba/JWZz4DtFdVyzygq/a6ifqx5axR5It0RV0=;
 b=dLE5440HlC3TTuDBSwEG78wHGjrHRqtO5Eko0Iz+zvSod51w0BiJ3Rmo/9TSrfqlfX
 L14L00JtFnYMz6Sqc11zCuvdgYAQc2oka2/2ApEb1wCtJao0yiiCROnCmzNRqXhtDx/2
 ACB8KAp3R2LJcPov5FkXzqBWnzBgcSL1+Cb5SEzUp2F1DHc3fmbEexu4WpZys9PqNIFJ
 RvpplLPDwvQb/wmJsaTiX1xZcx23HwvjLzRi2PpzhijQ/3SHMTMNh1Sb9AwDd6JTk1nj
 d3v7u3rGQ4cjlLm1S6QSGPgf+uLZCTSSm/JArvuSgbUA9nyVj2AvTHIl+1YIJJl8RiOA
 a8eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qhiniuMba/JWZz4DtFdVyzygq/a6ifqx5axR5It0RV0=;
 b=EJAWVuO9GT7ESVR3UYncHiHYCPL9hfAAnaMDk3VK87WtPxMv7K3feC3IzVncxj8AOb
 mRjhG9W+xPe4T1+xPBR7RxH8wXcyteeC2LUrW2OxvLpE4zeHQXN0Y1Qivsp8+uuzzfEA
 GKL6uAxC7q5MBw26GtolOBv/Mln30aFZWBW52cFQvrp+vWIwOSvawmFT71BxJY+/aFIq
 sgLvjSgxhxYdKXCLfNqGW4Bl2RtuhTvlco3gwt7MaEZxanFl3wCxxRy/XgqmjDaVzgnK
 EnywiRFPGGTfzqj2U8PBTcSPuKFOWGd1nNb1gjPcSSjlbb5OIAXpqiwd5Gd3fMdmP+RZ
 Jk+w==
X-Gm-Message-State: APjAAAXqE0/71E8DzJQ8zzJi1RtwHQIyx5iiAjI6n65oGjrdUM27cI+t
 I2qTiw11UJwMnsXazKUt2TQNrg==
X-Google-Smtp-Source: APXvYqxnbvSw1FOj/CRECKm1NLwNrHD2AF6HsUr3uwNyBiLIRP0SF418WWmgo0Oqg5IvVF9PpTRmsw==
X-Received: by 2002:a02:b68f:: with SMTP id i15mr4922765jam.107.1561557064470; 
 Wed, 26 Jun 2019 06:51:04 -0700 (PDT)
Received: from [172.22.22.26] (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.googlemail.com with ESMTPSA id e22sm25713339iob.66.2019.06.26.06.51.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 06:51:03 -0700 (PDT)
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
To: Arnd Bergmann <arnd@arndb.de>
References: <380a6185-7ad1-6be0-060b-e6e5d4126917@linaro.org>
 <a94676381a5ca662c848f7a725562f721c43ce76.camel@sipsolutions.net>
 <CAK8P3a0kV-i7BJJ2X6C=5n65rSGfo8fUiC4J_G-+M8EctYKbkg@mail.gmail.com>
 <fc0d08912bc10ad089eb74034726308375279130.camel@redhat.com>
 <36bca57c999f611353fd9741c55bb2a7@codeaurora.org>
 <153fafb91267147cf22e2bf102dd822933ec823a.camel@redhat.com>
 <CAK8P3a2Y+tcL1-V57dtypWHndNT3eDJdcKj29c_v+k8o1HHQig@mail.gmail.com>
 <f4249aa5f5acdd90275eda35aa16f3cfb29d29be.camel@redhat.com>
 <CAK8P3a2nzZKtshYfomOOSYkqx5HdU15Wr9b+3va0B1euNhFOAg@mail.gmail.com>
 <dbb32f185d2c3a654083ee0a7188379e1f88d899.camel@sipsolutions.net>
 <d533b708-c97a-710d-1138-3ae79107f209@linaro.org>
 <abdfc6b3a9981bcdef40f85f5442a425ce109010.camel@sipsolutions.net>
 <db34aa39-6cf1-4844-1bfe-528e391c3729@linaro.org>
 <CAK8P3a1ixL9ZjYz=pWTxvMfeD89S6QxSeHt9ZCL9dkCNV5pMHQ@mail.gmail.com>
From: Alex Elder <elder@linaro.org>
Message-ID: <2d40bbcc-1d29-3aa7-e8cb-b0bc5835b8dc@linaro.org>
Date: Wed, 26 Jun 2019 08:51:02 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <CAK8P3a1ixL9ZjYz=pWTxvMfeD89S6QxSeHt9ZCL9dkCNV5pMHQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_065105_545200_6CBF3E02 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: DTML <devicetree@vger.kernel.org>, syadagir@codeaurora.org,
 Eric Caruso <ejcaruso@google.com>, David Miller <davem@davemloft.net>,
 Dan Williams <dcbw@redhat.com>, linux-arm-msm@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, evgreen@chromium.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Networking <netdev@vger.kernel.org>,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 Johannes Berg <johannes@sipsolutions.net>, linux-soc@vger.kernel.org,
 abhishek.esse@gmail.com, cpratapa@codeaurora.org,
 Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/24/19 11:40 AM, Arnd Bergmann wrote:
> On Mon, Jun 24, 2019 at 6:21 PM Alex Elder <elder@linaro.org> wrote:
>> On 6/18/19 2:03 PM, Johannes Berg wrote:
>>
>>> Really there are two possible ways (and they intersect to some extent).

. . .

>>> The other is something like IPA or the Intel modem driver, where the
>>> device is actually a single (e.g. PCIe) device and just has a single
>>> driver, but that single driver offers different channels.
>>
>> What I don't like about this is that it's more monolithic.  It
>> seems better to have the low-level IPA or Intel modem driver (or
>> any other driver that can support communication between the AP
>> and WWAN device) present communication paths that other function-
>> specific drivers can attach to and use.
> 
> I did not understand Johannes description as two competing models
> for the same code, but rather two kinds of existing hardware that
> a new driver system would have to deal with.

Based on my understanding of what he said in a message I just
responded to, I think you are exactly right.

. . .

> What we should try to avoid though is a way to add driver private
> interfaces that risk having multiple drivers create similar functionality
> in incompatible ways.

Agreed.

					-Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
