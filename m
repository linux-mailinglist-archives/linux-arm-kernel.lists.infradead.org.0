Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFD7383A3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 07:01:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eFdYowFthdU8d1BH6lvyRUvM/qU1dr86mCsANM7O3q8=; b=T2N8eGnjhGlWx7
	SqYeXQ9/r1ZNaNcRmG3VLdVbrFATHuIBzt1VP8I24E9Kp1LYNW0g1sRSW/K06eC8IiDcgISkIAghZ
	IBa8iRMhRF4q7CBOm0bUUPMJtNVF/9ya/3bthBhJi+GPWphcCFcwrKsHHjI0adEdqfjitH10CtooP
	0D7WAXTq+hrQgPM7cXsSOs++OqTh7F+1r6D+ixoDeeSRUl+j4KiBqVsZAYpDp2YJmtSn9D/kVoQlI
	y32wTLf7Tk+JaGPFLNdMHLcuuZZHw3kbfaRL2dKrpyEjhWd97ANERk7jgnWrV6lR6vAAPw7jn/Hrk
	8COzWaa3Oge+cI3aDQJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ702-0000VM-Sq; Fri, 07 Jun 2019 05:01:11 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ6zo-0000T6-Rm
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 05:00:58 +0000
Received: by mail-pl1-x642.google.com with SMTP id e5so326838pls.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 22:00:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=GNyxhCfsORr2e6M8vPY8+L5gnSVQwdktACAugcErG1s=;
 b=TNIHxn+tFESTWzJW+ZyuBRPd3t6RRyEnrDKP4AiawT/1wDdQyioePTAqbomtN0wWN2
 y1c0b+3ePB/bOyDr+kf8D84Vc1txJKud22aFGd2KVgCwyqnLylvrnJWDrXvj33vqGOpN
 OjLtZ+kqyLxgTCVJxkSpI71SYb/v4U6fH1gaOaHKHbcc70mxuZu/GuXAVp81oMqIknE8
 2kQSUVCdXR68/ViRhMKfv/UXz7kH2otBS6Bo8LA9tb6J9JCEoXc5+bFUv1vYHdHC0Lt7
 iVr6dKcezKhC5Aj5b9OFbBiu3Cf7MLLnlZu19VtFVi87q4n7ztQFWsGbPzSbdF/5GGoX
 HjWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=GNyxhCfsORr2e6M8vPY8+L5gnSVQwdktACAugcErG1s=;
 b=Aa5IxFwIbZViBmYuBPEr0hUeT78Sgsc7E68DXeof7oqahWixtLTIs/+qOyxB1t4/og
 sXTkwgXjMPCVMgw6g9M3ezZriTMUkasbu38SqerIwNN3sacy5IiPLdvSbsNLSDKu0lzL
 VMQhA88pNyX2BqlJBg56MFfjlzJqkONEZ/QFu0U+WZ0bCDyl6CkmVTZJ8mPAXPpsbOwO
 DbVgk/8R3HZROrQcjnknq/gsgCCN0GAobgmVeKNeQ74Nu4HFTowSurUrlAfGg/SnKxMb
 h1e2oleClpoTP7gkmgS0qkHdRu20+uXBoF0E1zYKnTmeUei4S413hMippWdus7Uta86I
 tnMg==
X-Gm-Message-State: APjAAAUcYPUs1ADYAUQha9t82nRUB/BjIOW5fwgxa2ps6RJ4lkOrzD4D
 xR3RwQBY8jaDYYPCId4hdwGYkA==
X-Google-Smtp-Source: APXvYqyUw+DSN9BiUBvaRMwQnFBxQ6SFZJjWJHMVUssQoXJy4hDGI7eMn36g4CBZ3Y53pZ456i1wZA==
X-Received: by 2002:a17:902:d715:: with SMTP id
 w21mr54153246ply.234.1559883655599; 
 Thu, 06 Jun 2019 22:00:55 -0700 (PDT)
Received: from localhost ([14.141.105.52])
 by smtp.gmail.com with ESMTPSA id 10sm811396pfh.179.2019.06.06.22.00.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 22:00:54 -0700 (PDT)
Date: Thu, 6 Jun 2019 22:00:51 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v6 5/7] RISC-V: Parse cpu topology during boot.
In-Reply-To: <20190529211340.17087-6-atish.patra@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1906062159380.28147@viisi.sifive.com>
References: <20190529211340.17087-1-atish.patra@wdc.com>
 <20190529211340.17087-6-atish.patra@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_220056_895652_A39E8193 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [14.141.105.52 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Ingo Molnar <mingo@kernel.org>,
 Anup Patel <anup@brainfault.org>, Russell King <linux@armlinux.org.uk>,
 Morten Rasmussen <morten.rasmussen@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>, Otto Sabart <ottosabart@seberm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 29 May 2019, Atish Patra wrote:

> Currently, there are no topology defined for RISC-V.
> Parse the cpu-map node from device tree and setup the
> cpu topology.
> 
> CPU topology after applying the patch.
> $cat /sys/devices/system/cpu/cpu2/topology/core_siblings_list
> 0-3
> $cat /sys/devices/system/cpu/cpu3/topology/core_siblings_list
> 0-3
> $cat /sys/devices/system/cpu/cpu3/topology/physical_package_id
> 0
> $cat /sys/devices/system/cpu/cpu3/topology/core_id
> 3
> 
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Acked-by: Sudeep Holla <sudeep.holla@arm.com>

Looks reasonable to me.

Acked-by: Paul Walmsley <paul.walmsley@sifive.com>

We're assuming, on the RISC-V side, that these patches will go in via 
another tree.


- Paul

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
