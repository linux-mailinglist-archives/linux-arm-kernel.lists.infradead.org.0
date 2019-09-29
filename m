Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9137FC18F4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Sep 2019 20:22:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EstmjpjmaKKwHmhnVd1igGTJuA7ZeMZVEUF97hhsJHY=; b=QNH3IJrg5umtKR
	8VEbG9ygHTYCdM+a8+dzzX2jnmCk50Hffhf3MYCFlDFTI1gqXKmuPtLaKuCgBkPl760qhlqkVNZhG
	khCXjKRAb2UDtIYDQEl12oQ5rWKPuhJAklhQH/ik+i+xSZOH4X6EsZE6UfGE0FHHq50Ab2z/z+bO9
	fyOo+EOzekNN+L5F9L4a/zzK5xQhsv7pSS3JEKc/iPOvZTiUEFieUzLa+W7BWALn6hdwMZeHz41lg
	eNZInjs2DZTZnZ6u6aZERUYotfsBS7lfCPrDxbOFvQ47Bzf6YEK18FqcpeodFffvr4w9dzpNdHwFg
	dRFID8srVcOLky9hI4hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEdq7-0002vg-Fp; Sun, 29 Sep 2019 18:22:35 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEdpv-0002vC-9k
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Sep 2019 18:22:24 +0000
Received: by mail-lj1-x242.google.com with SMTP id b20so7131775ljj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Sep 2019 11:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=KDBZEYOkT3q2n3K7l27r/TBKYHbrsQpcTqoc/ht5OtM=;
 b=cJaNU3CpWEkIvLv8hbqW1IRp2KcEZR9qN2diLIPxcTeHeR7auC1X5Cvf6/uQk48wfZ
 lfNPKyh16eO5ZeCc4fZBcNZ5R2e+r22+4RzejpBtelI+OMc8Ef8+hYobYwKwg3CIFm2U
 oLPsqvJMPeuZVPK1lcqfCVDS7gMK+o4eu0lSrE89azYoLh9updbwRQTIm4tFtcYNmT84
 jMtCRxrxdNW67ZDSLNSf5mXmOouPmm1AGAUE5QHzyMziAIziVi78FMnIj4Js0vm3xdr6
 doBgVEsePaFWE3bNHEAyPEr3Nb5VEScn+WV7vTbYIi4dKcogLy/1BWhg43FrTrXIHGFO
 m80Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KDBZEYOkT3q2n3K7l27r/TBKYHbrsQpcTqoc/ht5OtM=;
 b=Y+0PwxhiV/3d7515IWnx6A5XAZLumGkHuR/lnyKD1MqLDisBfQ3vPjQnPh468fEus2
 Ye7kJC6HKWCevs4msA3R4k9KbJvC/Pg9KnK0+cAtQWJOr+VKZk7oEkKckRVYPZaJau8b
 xrOsL1eyM7QXrNmobKuNCSBHWGKJNYBF9NQjWJ0AwU4Js/z1RosWad03ZGg2YtIXV2og
 tctmK9Ma/vW0paBS43uN8xfeVvj5QicVDfQp4+Xjgo2fmzxKtUdJ8M66T3MGlqMACk8a
 tFc3RhY9XSzPZzNf+uW6+7tgHg0CTHY1sSFGaRJJoGXNg58xOUbSdbGmQkeKUuFZakNi
 X1Eg==
X-Gm-Message-State: APjAAAW8klWgtFeOQ09fU2jMqBK1v2wUj9uBOWRp2rHt28hUiVJwkGsD
 84yZevChvwMwPpflgIPtJPDPJQ==
X-Google-Smtp-Source: APXvYqzV7mG9YgDaLH0UU7gcg9erXMYy9E46ENzdMoFQgXFREqSwa0Sd2KwVo/eY0P5sWO1f4LQXaQ==
X-Received: by 2002:a2e:412:: with SMTP id 18mr9595880lje.96.1569781339826;
 Sun, 29 Sep 2019 11:22:19 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id 202sm2496137ljf.75.2019.09.29.11.22.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Sep 2019 11:22:18 -0700 (PDT)
Date: Sun, 29 Sep 2019 10:49:27 -0700
From: Olof Johansson <olof@lixom.net>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [GIT PULL] firmware: arm_scmi: fixes for scmi-updates-5.4
Message-ID: <20190929174927.zhgfmgnianr6pqko@localhost>
References: <20190918142139.GA4370@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918142139.GA4370@bogus>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_112223_400032_F468C4A2 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: SoC Team <soc@kernel.org>, ARM SoC Team <arm@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, ALKML <linux-arm-kernel@lists.infradead.org>,
 Kevin Hilman <khilman@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 03:21:39PM +0100, Sudeep Holla wrote:
> Hi ARM SoC Team,
> 
> Please pull ! The changes in reset driver has been acked by Philipp Zabel
> and agreed to be merged via ARM SoC tree.
> 
> Regards,
> Sudeep
> 
> -->8
> 
> The following changes since commit c8ae9c2da1cc5d18b6d51d10160508a3dc3436bf:
> 
>   reset: Add support for resets provided by SCMI (2019-08-12 12:23:02 +0100)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git tags/scmi-fixes-5.4
> 
> for you to fetch changes up to 61423712dbb86e02af4aa5de65b9041493c92cac:
> 
>   reset: reset-scmi: add missing handle initialisation (2019-09-18 13:42:44 +0100)

Thanks, merged.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
