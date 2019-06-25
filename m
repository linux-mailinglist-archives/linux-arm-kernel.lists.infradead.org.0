Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD2C54E83
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:13:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6qsEJSm/7OIv/2ngp1wotv2t1b8mK9xPg+kY7GkWLgs=; b=FG4tSEyqQytVYc
	qAA9C4iz0zk7gfMq2E8sWC/yK+CrXhjANTu1ACmPLbe4KaE63xNJv0yewoHNRmzoV+L7SIB+iTpTg
	gxDweVe9sqDaK0MD9gVRsf+jFJV3q+TmvMDP/NH8LFpZvCMprRSfSH83E4xRDm19rPAR5ZvJ+Zx4l
	0b19cA9J59FmLCrSp38edzybhn4LLWElCHunmqbHzi/D+f9jYqWgq9utHGkb7pzOhR+U1PV/ynBL3
	zqmzCIlE5ofYoTzR1Z1Gghgk6uLGNGxxlXxd/fMDlgqcqJz1vZ/sO7cU1GvbH7M14RNu0WX13+a5g
	/exX5l5Gszkt3r0kJ1Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkKE-000854-Ft; Tue, 25 Jun 2019 12:13:26 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkCA-0000Ni-7S
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:05:08 +0000
Received: by mail-lj1-x244.google.com with SMTP id a21so15973113ljh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZCqm+oSft5fAPJxKmIyqw7sj+ghn/xnpVlKgn8ycP14=;
 b=D+Vg5xfV3w8uEePdmqRg6vbqpf1u5GMliiUZhLuQtmKBGL2vuHgbvkuRIq4R0eY019
 4k7wgnL3Xb68pJ8LWYObKYrjn/HGU/4sVIlD27CUPIcbJL45VRSHVSIp0p/CJWEBELjq
 3IETxvG76CSO5kfbEkCYArGK+KzCkySYnacJFSbBCVKK5pPBTPzMqfIG9F/AiEDQpDDM
 MO5cRfEuq936WWxwig4YEAJMFKo9NUkkTzNE7Qd+hSRhqFuOe44VCw2GcXesEyiRMJh6
 8MMpUHFn8I+P9riKmRbYvAwByolJtrK279yyNecvzunTgbqkRMxulVXOlR3CEMvRgRtM
 ZDwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZCqm+oSft5fAPJxKmIyqw7sj+ghn/xnpVlKgn8ycP14=;
 b=aOggNh/xQiCmYbz+nQZz8f3guh6MdSS1Zwj4t7/OM1MfmVR0SnxnK/5eOT2FNlp+0D
 XHVPxLfsrOFVUv08I1GGTFM6zUMrPX91oTZXkuWG+q51kBwjGkfW7kGHq1ViHoFaa5E4
 AA0eb1k8DzjAmBwuumHPXVqhlqDS8eh5mDGcJuiGtz2rd8p29Ha8nFzd8L21vCD/kPkx
 ob+T1qe7gzrx98ZS0K5fg5kacunZRlbBMT5hmnyn8wr7E2GR8nwRtZ122SUbTGsRqcR+
 DWVD4dKEdRSfRv5hKMXvpDYbg+/m3Cths+Mf3doojCGFq+xkivG9EP7VErWGjkEi5J41
 AYSQ==
X-Gm-Message-State: APjAAAXsrh5y2Is1HZkNLW6uXnE/Mbzbkl2tLUKAEWjJVCbVPhB+y8Fc
 pkXeBWnUdp1vks+fYPKGhlfxPA==
X-Google-Smtp-Source: APXvYqwNUhvguPW/EuxXRp8c2O0jH9j/1bZIGRWXXZxKsP2kZygk2f9zVCb5vz2ycyqKJY0M+0NQ+Q==
X-Received: by 2002:a2e:7a19:: with SMTP id v25mr19207671ljc.39.1561464303440; 
 Tue, 25 Jun 2019 05:05:03 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id 80sm1940581lfz.56.2019.06.25.05.05.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 05:05:02 -0700 (PDT)
Date: Tue, 25 Jun 2019 04:47:29 -0700
From: Olof Johansson <olof@lixom.net>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [GIT PULL] ARM: mvebu: dt64 for v5.3 (#1)
Message-ID: <20190625114729.rgz6ax6244drhd5k@localhost>
References: <87d0j7mc2q.fsf@FE-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87d0j7mc2q.fsf@FE-laptop>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_050506_491754_03B3EB86 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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

On Fri, Jun 21, 2019 at 01:07:09PM +0200, Gregory CLEMENT wrote:
> Hi,
> 
> Here is the first pull request for dt64 for mvebu for v5.3.
> 
> Gregory
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.infradead.org/linux-mvebu.git tags/mvebu-dt64-5.3-1
> 
> for you to fetch changes up to 200f5c4081e03b068ceac8b5418fb5160274b547:
> 
>   arm64: dts: marvell: add missing #interrupt-cells property (2019-06-18 10:17:39 +0200)


Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
