Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B84140076
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 01:05:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x1V6LmD+7iQgct03ALzBiasPO4TB+/JKNqzGsxoDbXk=; b=k+Y8TfbkrFXB48
	hlAbF8dtunYXEZObztFZjhq92IcLPd4edOnTnkmX2do/aKXAHyivJy1c8AE+4P8I5uqHW9wAMgXvs
	wN9QzOWft4eUP7ERA2XrAp1u/kaOVvwsimWgNDcTkiwbnXUbmNHmJiCH47G7pJwAh/W3gU8nWMU/J
	RdHUSBE6GRAeT1tek0LXYdE/Hj/A0eLQu6lHEQcLvRVakNBK/bxFTAbYgGYwQbhuNj3mP6XFCY65N
	3zHEjxmaZceyE1VBFWsWcwAq79dbTFCehdhUIZlSNXYN35h4No8iMDt+DLQbpBvv7bgHCDvjKr5c/
	mf6QtTdNFp2Pu7OAKZKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isF8w-0003o5-T9; Fri, 17 Jan 2020 00:05:42 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isF8k-0003my-52
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 00:05:34 +0000
Received: by mail-lj1-x243.google.com with SMTP id h23so24553868ljc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 16:05:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4Z14qpCzwdc58TA6O2eX1AbdOS4ytGE4JBPiLVxwA6Y=;
 b=vcZe2viaZHiKyvdg3wQxdz/ommSVOelob2WDBHYa/AQC1Hfl2KqqyQqny2UyHegmVq
 mINM47GJy/DgdyXTWgYUPb1O//Oa+CtHJ8PEvay29pdv7CnrD+l0hB5quh2xOgd5NOQT
 sKP04CXne9+PViFooxQiTZV/ibEpuHIzvzmIrqo0sGOGwvbvwmFCkLRu3zitNLO2L9sF
 FxfCNppfBbuetF5zgmkneM60ilQt10uKFyq7Pm3y30CC0Tfv17wWeOloEkPa/6mKBVjf
 fUNivDiZEBCBxxXKLxEXwWCZZyy8mlg/ppDylFGecxypsUXCvxuhTfJWXNmmz8Qy3BlS
 rMpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4Z14qpCzwdc58TA6O2eX1AbdOS4ytGE4JBPiLVxwA6Y=;
 b=TpJ1ndR74qMJTYxPaCfEG56rNM/uu0lsHrGLp3PtHrYBa+FIn/4md/T+sQV7B//34s
 ROf2Wn081uGlCEYWdMAAlme16uFS9S71FobzwIwEkuPv8zGl1TiU8WwOfpWnBaOYlUHJ
 GVHTSOzizl7QIvh6nOGw4l2sVzvKmYgY6i1+yKaCVejJEA+qpwEgEdNssJRVAdwGsRPG
 V/7rMLuwXoqZGKDqrykxhovuDzRIFSupFPwillP8HgYrsfu+m7pEXEE/4bTT9ACuViBb
 VDaM1At697zKemz8iS1S0qO30nThOiLRVAW4WzpzCgLBTF99VXRPB3r6hBFoEzZndmJ9
 ncLg==
X-Gm-Message-State: APjAAAVtqH2iUmDhJ3XGcipLExEYLIdN2HKIqq7uL1soGRe7DjB+DXV/
 5tg34vIdMQry5md2c8e8+penlg==
X-Google-Smtp-Source: APXvYqxO3c0bMRGbhnWaS+stTD6UIXHu0Ory2JDP23i6h0g4Lrlf0oLkL+1F+9hbTsjI/WSgTSv7rQ==
X-Received: by 2002:a2e:9716:: with SMTP id r22mr4041961lji.224.1579219527323; 
 Thu, 16 Jan 2020 16:05:27 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id 144sm11386025lfi.67.2020.01.16.16.05.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 Jan 2020 16:05:26 -0800 (PST)
Date: Thu, 16 Jan 2020 16:03:58 -0800
From: Olof Johansson <olof@lixom.net>
To: Santosh Shilimkar <santosh.shilimkar@oracle.com>
Subject: Re: [GIT_PULL] SOC: TI Keystone Ring Accelerator driver for v5.6
Message-ID: <20200117000358.fe7ew4vvnz4yxbzj@localhost>
References: <1579205259-4845-1-git-send-email-santosh.shilimkar@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579205259-4845-1-git-send-email-santosh.shilimkar@oracle.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_160530_197349_5592363F 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: vkoul@kernel.org, arnd@arndb.de, khilman@kernel.org,
 linux-kernel@vger.kernel.org, soc@kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, Jan 16, 2020 at 12:07:39PM -0800, Santosh Shilimkar wrote:
> Its bit late for pull request, but if possible, please pull it to
> soc drivers tree.
> 
> The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:
> 
>   Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)
> 
> are available in the git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/ssantosh/linux-keystone.git tags/drivers_soc_for_5.6
> 
> for you to fetch changes up to 3277e8aa2504d97e022ecb9777d784ac1a439d36:
> 
>   soc: ti: k3: add navss ringacc driver (2020-01-15 10:07:27 -0800)
> 
> ----------------------------------------------------------------
> SOC: TI Keystone Ring Accelerator driver
> 
> The Ring Accelerator (RINGACC or RA) provides hardware acceleration to
> enable straightforward passing of work between a producer and a consumer.
> There is one RINGACC module per NAVSS on TI AM65x SoCs.

This driver doesn't seem to have exported symbols, and no in-kernel
users. So how will it be used?

Usually we ask to hold off until the consuming side/drivers are also ready.

Also, is there a reason this is under drivers/soc/ instead of somewhere more
suitable in the drivers subsystem? It's not "soc glue code" in the same way as
drivers/soc was intended originally.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
