Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5125E13F466
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:49:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EcUUj6rwf6JCd2JmvspMnopUv5XNw3EEMBW+vug9DYM=; b=PhderwNt42DPyW
	sgM3UYT0xKMulGQtA+NmsbF0qjcqTgG2wHWZAlz0nIHZ9TDwbL5c0LDR4bn4bW3NfBLU2u1xhvwBL
	RBNk2sel5usIBRpCI7l7wKwinhD4LsJkPtcp7kvXUBNMa0ByK8QeiwtkwbN5sFmFOsJZyVYSfhKNi
	yB+ww6TOwEovdVrBD1gxSgAgYRFn/CkLetboOTddvGLU1t24I05/nmbjB81STNy6Z1S1Lpi1zpfXC
	YL46ugQDwnjFyB984R6u0b6U84LmjIZWHSPvn0S44SfXvD5fkpluH3IZzwdtMCj5VL1jk7SuubXmq
	T/y4qGHviqVmpi1a53/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isAD2-00057D-UY; Thu, 16 Jan 2020 18:49:36 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is9zd-0005fS-Ir
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 18:35:50 +0000
Received: by mail-lj1-x242.google.com with SMTP id w1so23820818ljh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 10:35:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=w3m47L5Z0xI8HYh0lKryrWYdR0UgzApvsO7nDstJ484=;
 b=zt4hUFckpv0JtJBTTBpPR0wmokiqIfW2lNyhGhC5whKAMLVPQ598lSopUqg40Dednt
 zZo0oen6Rj98R4s2jKVEEcBxfKT/0FB5KuR3J5vOvJn4EL6sX/EUaJVb0CARHJQRzqoW
 uKbC//iUkpteLGJZ6Dw876Fj0gC3FiXyI+hiL33ReAiBpqHjvoxIX3d8exyoXErn3ulF
 3M+pB9l/F2YBegxvYZqVrF14OhsMBCzdgU+DFXEVcGFHUJdwod8/UsTrdWlt1M1nYU1s
 VyiO8zEEtSJi0si67QGW4eRXclm6PYPI8n7GMfhxFHWwD8JYf5YlHLFCO3zVZZh7qZyF
 HZOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=w3m47L5Z0xI8HYh0lKryrWYdR0UgzApvsO7nDstJ484=;
 b=P6md2SoRuGzfWEgbU2QPaaEhaklAxoEb2lrFdO/xO9Sd/xDftfBwACeszDYWEJytMO
 vZ+4JDfuFkjQlPv1XfS/kfUZ6lmStpSQz6ZpHdTPhiiPSj2S3k6g2HrEXrRc781r3EPn
 tLkdwUr99XVP+PiRcvE6JZvaaPkSa9Qad9MVH+/6DYMEFJ8twLYn3al8FeX4tJzfMzAQ
 liUuj90rl+ilg6ttxSVjmxaaLGWJ8CIBbndaZMP0b/IwWSvmGc0Cd+ltS95ugt+v2k9V
 C+vtXl5Rh89WX9FgyaV0OUgOMll1iUgeJgVC66kn7AZuiIqkmt1tMQrAQ4fvd5i3po8Q
 mijg==
X-Gm-Message-State: APjAAAUzxVkWYV7e7HtmA9EJAa4NOFyZPAXdKDv6Urov3+ySFl3gaW9o
 thpnS6mR1UJBmEfi8UJyLOQG1A==
X-Google-Smtp-Source: APXvYqz/9p+Equ9yB2/f1ypHaf4+rn1iYRPCZicwrFKzWbSFxXdSqtv9R5Vc2x+rsOBhxB3KKZsmqg==
X-Received: by 2002:a2e:89d0:: with SMTP id c16mr3151068ljk.228.1579199742453; 
 Thu, 16 Jan 2020 10:35:42 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id x84sm11124259lfa.97.2020.01.16.10.35.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 Jan 2020 10:35:41 -0800 (PST)
Date: Thu, 16 Jan 2020 10:34:58 -0800
From: Olof Johansson <olof@lixom.net>
To: Sekhar Nori <nsekhar@ti.com>
Subject: Re: [PATCH] ARM: davinci: select CONFIG_RESET_CONTROLLER
Message-ID: <20200116183458.qsa6bk7wlfhpd4m4@localhost>
References: <20191210195202.622734-1-arnd@arndb.de>
 <ba94531d-1f16-b985-5638-c226bab28d5b@ti.com>
 <1513bfee-6623-47fa-1eef-6074ba9ab3b8@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1513bfee-6623-47fa-1eef-6074ba9ab3b8@ti.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_103545_708142_71AEE598 
X-CRM114-Status: GOOD (  14.37  )
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
Cc: David Lechner <david@lechnology.com>, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 13, 2020 at 05:32:54PM +0530, Sekhar Nori wrote:
> Hi Arnd,
> 
> On 11/12/19 3:42 PM, Sekhar Nori wrote:
> > Hi Arnd,
> > 
> > On 11/12/19 1:21 AM, Arnd Bergmann wrote:
> >> Selecting RESET_CONTROLLER is actually required, otherwise we
> >> can get a link failure in the clock driver:
> >>
> >> drivers/clk/davinci/psc.o: In function `__davinci_psc_register_clocks':
> >> psc.c:(.text+0x9a0): undefined reference to `devm_reset_controller_register'
> >> drivers/clk/davinci/psc-da850.o: In function `da850_psc0_init':
> >> psc-da850.c:(.text+0x24): undefined reference to `reset_controller_add_lookup'
> >>
> >> Fixes: f962396ce292 ("ARM: davinci: support multiplatform build for ARM v5")
> >> Cc: <stable@vger.kernel.org> # v5.4
> >> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > 
> > Assuming you are going to apply directly to ARM-SoC,
> > 
> > Acked-by: Sekhar Nori <nsekhar@ti.com>
> 
> This is not yet in Linus's master. Let me know if I should collect it
> and send a pull request.

It's sitting in our fixes branch and should show up in mainline in not too
long.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
