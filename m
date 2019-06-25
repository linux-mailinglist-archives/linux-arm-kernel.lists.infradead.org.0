Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BFF54E7C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:12:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xS2pa6LWddieHNok2KAJZo45fgf4XGiM8Va3XqXOVzQ=; b=b66FNsUIjDomi+
	ua1vSdja6A7mnHFcRO494RrnN1zV3voFsd7QhHVHfTzLWMTIyiABm8KzwP9DW1Aioa2wjLinVqpGN
	/bxI1h20bH4H0YgKwwlWh2OwPzYX6k7vHs8eVerv1+5wfzLo4vEy1oGTFNH5gXTS2A3+gkCvqxCSU
	CerJG8eAzUZ3ik24crKx71KvtUyZq6uHPF2toKdUQx4idEM0Rn3T2Zsb9CFA45lTPNA40OQK7i3Fo
	Vgk6tVjArGztYsDanL80WFOZRaXGkPEOrPJclet7Jd+mxRx++2coVFQkStgk9N0ws6csvfqRF6XJR
	RMBlJrSS3yQEI1rGyeXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkJF-0006pr-S2; Tue, 25 Jun 2019 12:12:25 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkC7-0000FS-FX
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:05:07 +0000
Received: by mail-lj1-x243.google.com with SMTP id r9so15972693ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:05:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lsjU0B8w1/+TpKQdDJy9G6QTMNvy3R6oaTVgf9gLKTI=;
 b=YGZqAawjNi+O0OEeqgV3sT+/NTAdycURx0SRbs8tzQNu0LXZG8x41BHUCf3IsTrPNA
 664FQ6qJO20/czGzXwXiffHlASar3gNw0echevNxNar18hS4OgS5vyhRPfuKUxlwAvdU
 +Fd4ooUaJKoterQj9hplpATgO+IBNX0l5immsqSrQP9cMEebmetx11tOnBSyeUIs65Az
 cm9gx0l41a+IZoRuJ5UeJUjh04vzmxiq4D06QK+xHC84cSKPkQJNBW3qkYeM2/Bf/4MJ
 m8nwLj2bFwPPJvrFIvU8RnH3xWNRz0CO9rgLgYL185384j6BAClKFW77o4gVLz0K47x4
 xLTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lsjU0B8w1/+TpKQdDJy9G6QTMNvy3R6oaTVgf9gLKTI=;
 b=qGTCMlxo/mCHV51RyvbCTo0QHOwUxl2EEM5CcjhXyWIkO0eT7AzvJJ6kghISFgqbaK
 tH2I0ftwfSnMM82XdKXP4HCOcXEoHkS7L9LlHQvlXSrhYKP2XkXSsyP3J6PAiZQd/TJ/
 1UorzfCv8XvwrPxQ23OKhng9Pak8VxAfqnwT0gnw7atQOrrLvGliaSviJv9bOnGXV16F
 eO3kdcwHXdVQiYlOCbutSbokaSbaOjjRN9X8YXuGIA7cX5emdGJyjQA2ZMBDXobUDShS
 9v7x3ssd2JQZ8f08Hpxhcay8dtkN0p3YPXwVKcrMIZpwjWB7DkcH/F75n1olZ08/D64q
 ZJoA==
X-Gm-Message-State: APjAAAUGaW49tBgDw8gCaZfZHpJd/Uy6t19pTpHc7WQd09Wci4FGXvLh
 LT8o3mjis03JlXqLw/3eRKedwA==
X-Google-Smtp-Source: APXvYqwE8XgUYst/0iqT8fyftfT0HKnJwEnsCZdN6X1ziSQJ8TbqkT1lLI2Apr9jO2NSt/LQUdXgsQ==
X-Received: by 2002:a2e:12c8:: with SMTP id 69mr73238941ljs.189.1561464301164; 
 Tue, 25 Jun 2019 05:05:01 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id 2sm2202333lju.52.2019.06.25.05.04.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 05:05:00 -0700 (PDT)
Date: Tue, 25 Jun 2019 04:46:42 -0700
From: Olof Johansson <olof@lixom.net>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [GIT PULL] ARM: mvebu: dt for v5.3 (#1)
Message-ID: <20190625114642.2wdzg2gsrubsdnqh@localhost>
References: <87fto3mc3y.fsf@FE-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87fto3mc3y.fsf@FE-laptop>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_050503_783609_9ACA4F2E 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Arnd Bergmann <arnd@arndb.de>, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 01:06:25PM +0200, Gregory CLEMENT wrote:
> Hi,
> 
> Here is the first pull request for dt for mvebu for v5.3.
> 
> Gregory
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.infradead.org/linux-mvebu.git tags/mvebu-dt-5.3-1
> 
> for you to fetch changes up to 0e5447626bed837604b21adf3e5cd903db78321e:
> 
>   ARM: dts: armada: netgear-rn104: Add LCD to RN104 dts. (2019-06-03 16:03:38 +0200)
> 
> ----------------------------------------------------------------
> mvebu dt for 5.3 (part 1)
> 
> Add LCD support on Netgear RN104

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
