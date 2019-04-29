Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 659DBE873
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:11:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GkvfSWSiZzHU2P0/EAiILAxvIR/ha5EOEYtpPOnJslU=; b=i576+bBF/d8tNQ
	iag4hs7Km04eqyYago5PpeKhbvxw7gBpdp35uTj7H/O9nf97oPGKxwA8cDITok7lYSbXh6pq6jUAs
	Eco3Zbj7DhKYtQOi3o9rsYxyl6wQzAdypvmylzGayUmWMQ4ajGE2G0r13zGa2EtN7Mbuk/MsO9c4o
	V/u6iDsYwwbgx6/eNLYWjxj1qhG7MQb6Od9WzhaSN605pUgMFFbp0Wemq7k0pdUfJ0S/+LsREIPZ2
	ZZFxn7PS4mtUBjBGtJ1+KGmO2oJvOD+L+f8v72MvAlcZ1utP42ECCkncIZb6EvMW7v0hsWEJIEsEn
	iX0E4Z7HuIemJMQM4PgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9nu-0006wq-4F; Mon, 29 Apr 2019 17:10:58 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9l8-000365-6Q
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:08:15 +0000
Received: by mail-lf1-x142.google.com with SMTP id i68so8434070lfi.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Crb/F9pCLEuMap2jrTcLY/GLhnxLHOryVyauHaOLzL8=;
 b=Hvd636dBKOhZz4lKbRSsXC8vV/QhaOmR9sAWcTLGGgZqzOQH1C8Fx21gw/l5dtVxQI
 OY1ydr3+kecv3i54acBd2YjIykYdfQLlYvcdCliTQUnm4lv+mj9v4dzbLmGd28zwzJWv
 KLCLvBv7BabwcPIS4zFNRnnt7wijtJxCSyIXqazuZgcCxOOo9i8KRLocmNTnuGaTOwIl
 CMGVOOaqMWnb28eEa01Cax9UCMtAwenCXWiy7dOQyIWKFH853eV2/8WD5kASUZKPTxsr
 DdsP7dIY1oqk3ggtuqCCqNn4i1NvvxNB1FLe1xRYhTHd5SXe1YgldM+cs9Z/zc09Je/l
 DEhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Crb/F9pCLEuMap2jrTcLY/GLhnxLHOryVyauHaOLzL8=;
 b=n+zjIlSRZbwSuQpfgb1YHpxzxQoKz1HvEX/wnVdqI0QT5k4Mamn1hzPd3lGvb6qupQ
 Ot7d08bQXA13IQhY3lrdwwgF0MF5VNHOntt4LsdeSnslPKIG8huGm8XNiqO3PvbejN+J
 PGGja7VDnrXT0PNikGbA3RC+WlDqGynzCcgMq61k8hKX3RufxPkcAmKQfYDOPI5JJrgM
 9eJNToSvjfF9ocsyvdpXIQ9Kq31Xwtujh7cDofBzLEvOJxi2FKilRRFOdzUhu+jvsoIW
 TRmPECfA3zN4qbUWT3jlK3t6z+csczmY6nd8LAwzgyFnEBmJWefmpbDkBrJtOIATzGqf
 knYw==
X-Gm-Message-State: APjAAAUlEJfjHWojTZgAgwJBl0h0BX+N2N8y1iFHxS4wvvepb0VT5v6V
 ddv04DGLviJ1cmWoVhjdzSp/44888n4YNw==
X-Google-Smtp-Source: APXvYqwynWBjJCegW8i/vLFJtl32FWMqNhbKE1Py/IvpGgAjEZkr/crtAXSZoEGo/7tI+qu5DWfDEQ==
X-Received: by 2002:a19:f81a:: with SMTP id a26mr33399788lff.63.1556557683340; 
 Mon, 29 Apr 2019 10:08:03 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id k4sm3920150lja.18.2019.04.29.10.08.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:08:01 -0700 (PDT)
Date: Mon, 29 Apr 2019 09:46:10 -0700
From: Olof Johansson <olof@lixom.net>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [GIT PULL] ARM: mvebu: arm for v5.2 (#1)
Message-ID: <20190429164610.lm4unu44n4zeej42@localhost>
References: <87v9z56tle.fsf@FE-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87v9z56tle.fsf@FE-laptop>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_100806_801146_64A1ED8D 
X-CRM114-Status: GOOD (  16.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Arnd Bergmann <arnd@arndb.de>, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 23, 2019 at 09:58:37AM +0200, Gregory CLEMENT wrote:
> Hi,
> 
> Here is the first pull request for arm for mvebu for v5.2.
> 
> Gregory
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.infradead.org/linux-mvebu.git tags/mvebu-arm-5.2-1
> 
> for you to fetch changes up to f0a4e491d96735eeaa79f6a48ecc8f75a2f6fba7:
> 
>   ARM: mvebu: drop return from void function (2019-04-21 19:02:54 +0200)
> 
> ----------------------------------------------------------------
> mvebu arm for 5.2 (part 1)
> 
>  - remove improper error message on kirkwood
>  - a couple a clean-up patch generated from automatic tools
>  - clean-up in assembly code allowing using LLVM
> 
> ----------------------------------------------------------------
> Chris Packham (1):
>       ARM: mvebu: kirkwood: remove error message when retrieving mac address
> 
> Nicholas Mc Guire (1):
>       ARM: mvebu: drop return from void function
> 
> Stefan Agner (2):
>       ARM: mvebu: drop unnecessary label
>       ARM: mvebu: prefix coprocessor operand with p
> 
> Wen Yang (1):
>       ARM: mvebu: fix a leaked reference by adding missing of_node_put

Please run checkpatch on patches you receive, so I don't have to.

Not merged.



-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
