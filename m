Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F70140036
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 00:51:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OMYU48Tgiar5znxFPLGGXNPb0Xq1MTIUGvgh1jIq+ik=; b=RhAlR8qqB0nMoo
	kPd6n+nrsGVwjWlCHhJ/+k6xpVVZFDJYf7sCKJL+69KG4XzglWuBy6CIbv93Ntmrg0xZl9718d31A
	URagWMulMJ2WfsMwoqCdvyJheK1RV2qDH5wH4JNrUdSqtV5e0kTgmc/Am+jPrgZmE99ZlM93i1Az1
	2he6mBL0l6Ae77RDK69+gE6qdMCoBWuMD8yF79KZalk4iHNmNi8Gh6Ij+MXCsOSOIck8AiJ8KBoR5
	weXEKjxCypB6HljsywcAN8n086+ok6SWCjGfxfhJGNBVguHilBRpe7GHYQOcwP8ZsWM8H06YizYsL
	w+cVP0E+lsBl3s3wmiCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isEul-0004zw-4a; Thu, 16 Jan 2020 23:51:03 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isEuE-0004mQ-2J
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 23:50:34 +0000
Received: by mail-lj1-x244.google.com with SMTP id y4so24523249ljj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 15:50:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=dvzepc7K8px28OiUWR54vWmKoJmOCY0jRRsL0K691xs=;
 b=NO65U4KUg+ApWFvDEyU2TkPyEgh/A+8RBC/MtJ5mh/hiz/dPERHbkSKJ8hL/qoTjEm
 PSx5ZboNDA37TGTUDlnfgU1zDBZv6BbBg1GKsQ9rq0hxb8Yh1imUbF6Yz/LX0AGlltjU
 dkHw71kAgpfMreX6Fqd9TXxOFCq1wh2djE5QVpgan5ym6jBrLmdrn5duJ/McS23vuP2W
 dMou4jKeWtvATCBrPeONpm56EXyL/PxwIdVAXB16ISSZT6pd0NNoCwn5QJmGpPVMGroN
 nAiELUKmUjwuFlvJChwCWoXJ3ha9TcVbcaU18a6JorcmUoEVJdqDuVqoh+e+/IX/X6zt
 /FoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dvzepc7K8px28OiUWR54vWmKoJmOCY0jRRsL0K691xs=;
 b=qcQ8Uen3bdVkGSVS1+bLRCCawzV4J+zeu3Yb/PD9NFBvgxDrvFW0HUWb9m2OS3wtwq
 3FMbQf1ZraU7LWg0gjbI/kl9A1sRf0mX30lus4HH3bQaJaRM0fOpMG84JTnr4++rG/xj
 PpJ78oNudcenZcyy1cF37jioZM60h+LHfQM17Z17j08F7RudQ47lsJ/k6vCCdYWssLeC
 kACUSc/hR/Z4CaMDqmNJzCHykIzcU0BWMqGxREBQmuflteyB78E8f1IEa9fQ4t9ckfdl
 ab0DmttqNoIQX++GYxuw0mf0LE8uhOGpEf7zaCS8Rmrwfe/yurCvA+G+iUDOnbiggJSF
 tJcw==
X-Gm-Message-State: APjAAAXrJrB5gBImLU9epuo3MoJ46bIOESZaaq1+7t7DwaGD4E9J0T12
 yfAGxkBZwybTo4eSyPjaGS03+A==
X-Google-Smtp-Source: APXvYqwcly4QWy35BIk3rzRP8EQq3fbvuZTQK86R2RMoNH+mB7rBo1ZXIZWjKO9DrXeVOm+4AkRR5g==
X-Received: by 2002:a2e:98c6:: with SMTP id s6mr3709037ljj.14.1579218627864;
 Thu, 16 Jan 2020 15:50:27 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id r15sm11438831ljh.11.2020.01.16.15.50.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 Jan 2020 15:50:26 -0800 (PST)
Date: Thu, 16 Jan 2020 15:47:23 -0800
From: Olof Johansson <olof@lixom.net>
To: Kevin Hilman <khilman@baylibre.com>
Subject: Re: [GIT PULL] arm64: dts: Amlogic updates for v5.5
Message-ID: <20200116234723.3kmdg43joouuwr7c@localhost>
References: <7hwo9udi7m.fsf@baylibre.com>
 <CAOi56cWPvOhnWqtLJXQimRLpMrt_09oNz4HTmqr6-uZ0Bz+A9A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOi56cWPvOhnWqtLJXQimRLpMrt_09oNz4HTmqr6-uZ0Bz+A9A@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_155030_928601_1C709770 
X-CRM114-Status: GOOD (  10.71  )
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
Cc: linux-amlogic <linux-amlogic@lists.infradead.org>,
 SoC Team <soc@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 13, 2020 at 04:00:29PM -0800, Kevin Hilman wrote:
> On Mon, Jan 13, 2020 at 3:55 PM Kevin Hilman <khilman@baylibre.com> wrote:
> >
> > Hi Arnd, Olof,
> >
> > Here's a round of 32-bit DT updates for Amlogic SoCs for v5.5.
> 
> Ugh, this should be v5.6, and the subject is wrong too.  But the rest
> of the pull request below, including the tag, is correct.  Let me know
> if you prefer a re-spin.

Heh, no worries. Merged.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
