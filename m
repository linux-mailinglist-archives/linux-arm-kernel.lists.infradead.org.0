Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04261195598
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 11:47:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w76HuYebRoupjCUUmnZA2E8ZoORZ7xaHy6KvWOgWiCU=; b=hdWT0cRwIeKkgl
	M/pgLQNMqsIN4ptOC5dM8egix250tv1f7ah9Tz+X7CP+vMFp0oYG2Yv6GdJSOqvTIpvVFxCQM07nH
	LVasVucv9cm1nOnPWbX+tJA/WhFS1qTs0M9lMKUdQ6QZC8DWjqc0AyEaCq0SAn3dJT9Wy4qGGDe6/
	WsnOb9Cd/7/r7UVUCk1qAgdYCCx/xDy9n9V/AhnQOV8e6I78MIylt0eHtXz+/uyZlJgMccC77q2C/
	Bel1YUWn4ngFaH8nAjTfKPxML5jyKh7qQIsFhwaLCZQXpccDjGJiDWGZ079C96cD75GjkVoc52CJO
	qE9a88eqN/eD0XmEHlOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHmVn-0002Ex-GO; Fri, 27 Mar 2020 10:46:51 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHmVc-0002ET-5G
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 10:46:41 +0000
Received: by mail-pg1-x542.google.com with SMTP id u12so4387768pgb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 03:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=VgyOzx+8KXAFpBo6KqposIHyFFF0IVaddFwhQt3iB0g=;
 b=bMpPaEKuT+7GXNVtglrV0XvGhBOCgz70EG9qTx9FhGLA4dAGp3ryeOE+AzIPoMiUW3
 M/Je+BKBjd/5YXaksH2rX3BMgNQLhlCCoswsO8Nj4JRswo+rVYzGOAE5zG1jzFey3LtS
 U/FROUrK7oD4O5ufh+Q80AQ8eIw5O8y0vhLkBLY93/bhcvYiPXnZICZ67Bg78x7x7F56
 ZSPhz3gv2RcgINiyCEUObohp/IAUbzQ0dX4zMRkcN31l77MirJKEPMcx+DS4NyI/Xi1w
 xvQElgJ6WUJRRzIjiJxjJnRvWBfq2dwuXHHLmB0G8arGDfmi5rQQ8BkTxESQwHA+D80D
 O52w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VgyOzx+8KXAFpBo6KqposIHyFFF0IVaddFwhQt3iB0g=;
 b=FrWEddpEX75QaqnsKglRc78eSGGdyO34UDi0oHmtYEcaIjQXkWf363P1+eI5WaPYF4
 e/bltA1rQ/iBmgT4WBgFKECaz7YvbCj6Rwa1ADI0bjoR1DttLYACsyZ+sFKbhzxeu/ks
 ZRoJAsD4A4pAdwRXEk51hsBiZ2H/x5zXCPe/bfWGKZKHc6hjpMYAr9Dgx1FUkYAijalE
 jhwim4mfdFACAUfsMORXlvxpUzZAkK1cDKUqcG34tAcbVh/jwp4GYPDE6nYvpxyIpxPb
 7GFVaA8PG1jS2kiy62R2C6RxlwqGAYQa0vhoxQt6pery9tF/BDBUsFXemlCeT44uXbKR
 8+XA==
X-Gm-Message-State: ANhLgQ1itZGeSVuaNPsLQ093ynzbyc14D4P52PEhxQGBFpXnKV9+k/kl
 T7dvMiUrnCw8i//qLTRtG/A=
X-Google-Smtp-Source: ADFU+vv+9gPYHDYNT5694OtuE+4+X3HsxNDhG/5RwWw42SX4SAnOn6KsXnzCHUsKrOeO1If0wO4Imw==
X-Received: by 2002:a62:2c87:: with SMTP id s129mr1229539pfs.263.1585305998020; 
 Fri, 27 Mar 2020 03:46:38 -0700 (PDT)
Received: from localhost ([183.82.181.40])
 by smtp.gmail.com with ESMTPSA id k189sm3625905pgc.24.2020.03.27.03.46.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 27 Mar 2020 03:46:37 -0700 (PDT)
Date: Fri, 27 Mar 2020 16:16:35 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>, Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH v3] ARM: replace setup_irq() by request_irq()
Message-ID: <20200327104635.GA7775@afzalpc>
References: <87mu8ppknv.fsf@FE-laptop>
 <20200302031736.5or4ww5a4l7zomfo@vireshk-i7>
 <20200308161903.GA156645@furthur.local>
 <20200301122226.4068-1-afzal.mohd.ma@gmail.com>
 <m3ftepbtxm.fsf@t19.piap.pl>
 <51cebbbb-3ba4-b336-82a9-abcc22f9a69c@gmail.com>
 <20200304163412.GX37466@atomide.com>
 <20200313154520.GA5375@afzalpc> <20200317043702.GA5852@afzalpc>
 <20200325114332.GA6337@afzalpc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200325114332.GA6337@afzalpc>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_034640_220696_57D1339B 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Hartley Sweeten <hsweeten@visionengravers.com>,
 Tony Lindgren <tony@atomide.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Lubomir Rintel <lkundrak@v3.sk>, soc@kernel.org, arm@kernel.org,
 Krzysztof =?utf-8?Q?Ha=C5=82asa?= <khalasa@piap.pl>,
 Viresh Kumar <vireshk@kernel.org>, Olof Johansson <olof@lixom.net>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 Shiraz Hashim <shiraz.linux.kernel@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

On Wed, Mar 25, 2020 at 05:13:32PM +0530, afzal mohammed wrote:
> On Tue, Mar 17, 2020 at 10:07:02AM +0530, afzal mohammed wrote:
> > On Fri, Mar 13, 2020 at 09:15:20PM +0530, afzal mohammed wrote:

> > > Can you please include the patches 6-10 directly into the armsoc tree ?,
> > > Let me know if anything needs to be done from my side.
> 
> Can you please consider for inclusion the above 5 patches.
> 
> Sorry for pestering, i understand that none of the ARM SoC pull requests
> has been picked up as opposed to what happens normally by this time of
> development cycle.

i think you have pulled the ARM SoC pull requests, but above changes
doesn't seem to be applied, can you please respond on how to proceed ?
(of all the tree-wide changes, the above are the only ones in limbo)

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
