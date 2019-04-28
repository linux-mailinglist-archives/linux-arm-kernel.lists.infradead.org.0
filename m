Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE787B69F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:26:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DRqlNPK1+ojCr/ex42CyiUiwPtuJGW833RfYad52XUE=; b=XnrKNebLJxs3vK
	VGWBqWImVKbBHz5vVM4ThGgGNJQklbvuJRCGkPnSUN7MVYfirDpeYqY+LE59+QySAngVSnK1z4yoo
	1qdNHe3YbFypQRFqAHU+huwV5/yLcokHL58pCz+XirwsAEyg3NDLB04SaMD4ewLLv1EwF39BzIbQW
	hgtdB63iKcxXJqEvoVWHbRg8Ndl/AHv8QpUfYGTs+wd6CPi7ALEsOs2XrX3bs467ADnV9wGJmmCf4
	8Tzom0EGGekQakU0ICOFRkAsj8goSZArAZ2yUlm7W+CLT13EKLvmFr4e9dLtm7hlfOxsXQXMynXuz
	H5vO0Yc4mKajKQGh2VhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqNR-00014i-FG; Sun, 28 Apr 2019 20:26:21 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqHZ-0008Ms-He
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:20:19 +0000
Received: by mail-lj1-x242.google.com with SMTP id k8so7462301lja.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=tOu3RHysy9HPo8vfrU8cJ05AYZkroxnF7RtKYMTXknw=;
 b=rQtqEBjkqCCI5LvTfrDBCCkr97j8UEq/EnHKeeEhyWKJPQ95xpmw7cWXlhcWz/dz9V
 ncpXd3d/v+bNDLHtwhavil8kPir0SRXhwMTPRpcvGiBTgHf6irAns8r78SOC1ddwWdcn
 VtZTvZBATryC7eSOkuy21QsBeqy1qFfy4nuwaFK0CDfZwhtDKD5ntw2GmYjIqe7V++OT
 ZlXh3fAWtJcaOboPJHOLDU8KcTOglvz+IvRzmhZsVOMJ2dQhVQjxLXij373bqvQz5+U5
 n6PqvaRxJQCXXflh82k9xbRn5NgVWb4OtGpb1ayYIWrKL/S7gDpCyibU8xji8qhnIGp1
 Pq4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tOu3RHysy9HPo8vfrU8cJ05AYZkroxnF7RtKYMTXknw=;
 b=uZ0/tRWmxoiqMhxIfnPFy6Yr7mblaK/heXOhRHYSKTVoGrXERkYvvFtDsVmep5psLZ
 6S3BJZZ50BDgcF4Upi7Ki+KVig8q5u2i8pt2ObMOiaWkSR7N+mqejUFdbanQDJLZQoqm
 gQODUV12+ZF+ejHSmzXsxqVRraWk0Y7LYdNO6IW87ZkQ5Eabd9SgrW5nSIty9i1qtv0K
 DrG+oBVLECafdX5MQypfj/UtfwVhe4BTexdOGpgxKxX9ZXm8DEYatLsRWG1SMj+WO2xD
 bGAdmYtq1zDNnslRUyFPrI5jlstfjgHL7KKJltYpKwjfUKbpT5VZtA0o5dT6/cWp3nnD
 OVWw==
X-Gm-Message-State: APjAAAUZMB1271Kz8L9aBSkpipxpmDYvbWLKcXfvLcFQW1eGFXEpllbM
 oTqCHN0f1qqVSPTIRr93INgDww==
X-Google-Smtp-Source: APXvYqyUSRO1BEZ4chO4j9+tz8dgFKVz0inl3kwdzdiXax0moJ3reJxlx/qS/uds1Y2jfCU6CkhxyA==
X-Received: by 2002:a2e:9283:: with SMTP id d3mr11652319ljh.8.1556482816022;
 Sun, 28 Apr 2019 13:20:16 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id m14sm3791180ljj.75.2019.04.28.13.20.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:20:14 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:53:03 -0700
From: Olof Johansson <olof@lixom.net>
To: Ludovic Desroches <ludovic.desroches@microchip.com>
Subject: Re: [GIT PULL] ARM: at91: DT for 5.2
Message-ID: <20190428195303.55a4kb3pu3idiui3@localhost>
References: <20190423062426.27623-1-ludovic.desroches@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190423062426.27623-1-ludovic.desroches@microchip.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_132017_934958_483D8971 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 23, 2019 at 08:24:26AM +0200, Ludovic Desroches wrote:
> Hi Arnd, Kevin, Olof,
> 
> Use of SPDX License identifiers and for sama5d2: addition of labels and
> regulator states.
> 
> Regards
> 
> Ludovic
> 
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux.git at91-dt
> 
> for you to fetch changes up to a4a11b7934a5350fa825fee35b4bbbbe581a313a:
> 
>   ARM: dts: at91-vinco: use SPDX-License-Identifier (2019-04-08 13:52:36 +0200)

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
