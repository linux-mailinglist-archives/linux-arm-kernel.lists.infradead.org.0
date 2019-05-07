Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13973166C3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 17:32:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V+OvnpvJsIciG7CcJvGcHjg9A9JO3V6H3Wet+tJIO/I=; b=ehJvnipiZOlzdc
	v0DDhUITHAeml3dD0ACBvuOx6whIs2SH7qneM+rY84QOeL2FepnP/hVlxFbsfRL6ayvMGRgRmb+Ch
	aZe2kX5qV0N1eowiUHXRMKcXiqcl9lt1BqSAqjY/dJ1ecEbtmgwZr7b4KzSqqz5Hxt7r8WUK9C/B5
	GhIXzCnOnPNytBavpq+ZCStwM0b+JzXmUSqFqvFlG5kxALx28HQPexQKk4k4S89B5s0Gll85E+qyc
	HAhmVSpJKflict6x36truxhDk1tAl3UjXFhzudFzl4NQRickyb9A/m/kPc6a5YJLisTIcvXk3vAz3
	9znKt0ZMI8hgk4hLpfQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO24e-0007Ed-6a; Tue, 07 May 2019 15:32:08 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO24X-0007EK-07
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 15:32:02 +0000
Received: by mail-yw1-xc42.google.com with SMTP id 186so4715195ywo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 08:32:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=GkQLHK+Gx3q0MiBFmJoQJS2NfenOozkS7hYf6TUV7KE=;
 b=Ab0EuHpLFxhDQbYMt6Ng5GoDSZkSVcBkFA5BcYvfSCljM1nK66L64WoLNvwOzNSiGz
 i3jp/auTZ6refcwp8YdSQNWN8oxEzwgxV3HUBg9rP7i27mX7t80WKmdLBaOpPp205BR/
 4bik9JxY7FOQAIj3ts8r8VmUKncp/4wvgJcbFFdlwoF/Bo7o1TLeoUVkp+U5bkjMYdaN
 N0YKixlmN5A3wgIC6ERk/Qy4pMz0UfQH6pw14jWGxpnho4J9UI94+FJmUsHz0ikhoc+7
 z86EGsj89WPO6V9yO1zdqQWwvm8JVvOqqy8WEu/nMCTPoV6IvKcYyCoD1ID9g2bTdFzL
 ZaHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GkQLHK+Gx3q0MiBFmJoQJS2NfenOozkS7hYf6TUV7KE=;
 b=OFsGrTKtYHlP5a/DQCLHWH626t1bYmK9H6ScWtNK+4qkhJ8/iBTNd7SrCwdWjssuo6
 oLL1SigHZzfq3pL9hUuNP9QyQgK/cXJH8Yh9Ob4tYRWfBCwJ+hEWZmJJ8PK96lObmjxg
 Dshu5+yGEwmNuZdAKXqNujWtNR48p3/iEpIkfe7MaTLaQaKkN+EzlIaGQoKIHiHvFR2B
 3bfEF9uBHdKbe9bhVt7AAmNfaknAx4+qxtF4iOWQG1bpgcjc1F0lE2SguUFuQ87K15s5
 UeUYxMZT2xcvAVou1xTB9dHwby6C/eN6EqUfcNL5J4bVW6h0HYvpj4tbSMxTpBq4tehs
 LhaQ==
X-Gm-Message-State: APjAAAWSUXA//u9WqsPhRu2vYZN1DJDfTth5wBHVdixz59y9ofClSB6P
 3qaBshc1O0Udv/gB/E/YS/FwHQ==
X-Google-Smtp-Source: APXvYqyHM5C7+mUGZUFOz/ZnBaA6IZMSH1zBP06n2m6vV6SBAbKjd5/Y01OUn37vOcL9JcDFncpXDg==
X-Received: by 2002:a25:ba08:: with SMTP id t8mr22444060ybg.467.1557243119334; 
 Tue, 07 May 2019 08:31:59 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id g187sm3694982ywa.4.2019.05.07.08.31.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 May 2019 08:31:58 -0700 (PDT)
Date: Tue, 7 May 2019 23:31:44 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v1 00/17] dts: Update DT bindings for CoreSight
 replicator and funnel
Message-ID: <20190507153144.GI21730@leoy-ThinkPad-X240s>
References: <20190507034734.20622-1-leo.yan@linaro.org>
 <2f2d819d-9b20-7b4c-a558-0ba24a7babf3@arm.com>
 <20190507104612.GA21391@e107155-lin>
 <20190507121603.GE21730@leoy-ThinkPad-X240s>
 <20190507132446.GH21730@leoy-ThinkPad-X240s>
 <00a6305a-a34e-a2df-3a08-b19e41e00cbe@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00a6305a-a34e-a2df-3a08-b19e41e00cbe@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_083201_042275_CC4B4572 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, andrew@lunn.ch, linus.walleij@linaro.org,
 liviu.dudau@arm.com, david.brown@linaro.org, haojian.zhuang@linaro.org,
 festevam@gmail.com, Lorenzo.Pieralisi@arm.com, lee.jones@linaro.org,
 xuwei5@hisilicon.com, agross@kernel.org, zhangfei.gao@linaro.org,
 cphealy@gmail.com, mike.leach@linaro.org, s.hauer@pengutronix.de,
 robh+dt@kernel.org, orsonzhai@gmail.com, linux-arm-kernel@lists.infradead.org,
 mathieu.poirier@linaro.org, guodong.xu@linaro.org, baolin.wang@linaro.org,
 zhang.chunyan@linaro.org, Sudeep.Holla@arm.com, shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

On Tue, May 07, 2019 at 04:06:32PM +0100, Suzuki K Poulose wrote:

[...]

> Leo,
> 
> If you do respin, please could you merge the separate patches for funnel and
> replicator per DTS into a single patch.

Okay, will do it.

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
