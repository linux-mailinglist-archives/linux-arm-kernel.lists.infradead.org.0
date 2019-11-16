Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E355FFF628
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 00:45:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ozhbf0UDZsmXikezRBSQ+9AgSoRc7fNX4POAUVgPxII=; b=GytTiO1T/6X36n
	weh1HeejY4INvH2oOLaEkLA93ySKYws8g6Nz1baVb4gTO7LdNY7yGNXsIeyau8zryYGM7yJr8FZBt
	/FrrZEa2iVMxcuhqeU6SWe38XvDKKIhxBEHgfLoDBaBASqL1FckWQYTo+pr2GuXGAkM5VYbJT7jzE
	QuUPeW/n9WVdUJqhGIkju/QgrdT9cTTfe5F3ItGxdJJlV1oQQD3A7w7ZGyW4BSq1lZkL2Alr225W/
	VBnfe2zrUVad1bLBEdzhMvaAEvxqSwtebcKUZId2A/OEFEGZ4zwTaSXWN4PNB2wdoxMHGgeDKeA+O
	5emKsnJYfxt6EYcFGilQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW7kv-0001vb-EC; Sat, 16 Nov 2019 23:45:29 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW7kn-0001v3-En
 for linux-arm-kernel@lists.infradead.org; Sat, 16 Nov 2019 23:45:22 +0000
Received: by mail-lf1-x142.google.com with SMTP id q28so10850465lfa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 16 Nov 2019 15:45:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=uHCSh9nUOq2gFA4SxZmd/Wi02WzaMYqqbesRp/X675Y=;
 b=wLK02EoXQvN26ZZudLxdxZ6YijJkH6FgZGzeS3k8aWYHx7h9tuHSqK9HVr4UVWILR/
 xv/5NNzXXTIjGp8GT1+yteESR+V3WD56gEfqoOrXehYgBGS7AbwSRVUbzTdJ7gpPd9vp
 y3U+t4dfmR3K0nj258P+OfrCWvgAl/p8GgxpMHzfK0Co4TvHMUk7qxje+TavO+s+sJkI
 alxm9RnXgR53GpnoI5kPIKOreqknqTlT4uAZWqZV4ZoG1NB8YfxW292nSJzvzRX4Vd+H
 Ve8APFXQJtUaulaukAbLbi6AoX+ihDzSwF3SMrTbzqe9ENZky10Ii3qRhiRKREtHVeh6
 jCSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uHCSh9nUOq2gFA4SxZmd/Wi02WzaMYqqbesRp/X675Y=;
 b=LJ4VThl+sOONih6zm30yOvJiZVPFQcMe/mW16usRxTchcTWo6KUR6UjK/bwa5uK/kJ
 Nl8mZiZj2pn+g0EiOvwIw0FTT0FxhF9BdEoWCc2y4r/1w08WD8lUL5ocei+zMUferXAJ
 vMxowJcuiO4NfbRc6Ef/rnDBTxFmyxduyWRKYb3DuxcYOc5lmWh6Xhi/CDUQcREUzuGv
 pxGTmirgJAM29hiGB2FAGF2K+Co+5Kd72pJjy3Pn8KJ7W+LXWSEIOyaFVgH5YFbSsd3I
 WVcsO0WFjFvhReubKo9ojDFe1/j5ljXgL05ErALrTgo/9UcU/0T1pqJNX6q1gc9nwmkA
 I3ww==
X-Gm-Message-State: APjAAAUwYK/942DC/IcsahZDZjEzRsPmWmTvKCD5wHW8/Sfoh3EJ6Arz
 VaptaPIHLJyyRlkYiNo+481uJw==
X-Google-Smtp-Source: APXvYqzU7+KlWfCx4jmUs3DZSGvn/oTnC5pEfy07wppBTfZc9fuStdWbiaf3atYujRM8J9TEWeFFIw==
X-Received: by 2002:ac2:5a5b:: with SMTP id r27mr2335425lfn.186.1573947918486; 
 Sat, 16 Nov 2019 15:45:18 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id f20sm393609lfc.4.2019.11.16.15.45.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 16 Nov 2019 15:45:17 -0800 (PST)
Date: Sat, 16 Nov 2019 15:40:48 -0800
From: Olof Johansson <olof@lixom.net>
To: Jens Wiklander <jens.wiklander@linaro.org>
Subject: Re: [GIT PULL] tee subsys fixes for v5.4 (take two)
Message-ID: <20191116234048.oas2rlfwxlz65jvp@localhost>
References: <20191115105353.GA26176@jax>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115105353.GA26176@jax>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_154521_498534_E37659A5 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: soc@kernel.org, arm@kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 15, 2019 at 11:53:53AM +0100, Jens Wiklander wrote:
> Hello arm-soc maintainers,
> 
> Please pull these OP-TEE driver fixes. There's one user-after-free issue if
> in the error handling path when the OP-TEE driver is initializing. There's
> also one fix to to register dynamically allocated shared memory needed by
> kernel clients communicating with secure world via memory references.
> 
> "tee: optee: Fix dynamic shm pool allocations" is now from version 2 which
> includes a fix up with a small but vital dependency.
> 
> If you think it's too late for v5.4 please queue this for v5.5 instead.

Hi,

I noticed you based this on -rc3 -- all our other branches are on -rc2 or
older.

Anyway, I brought this in to the fixes branch, it's the only thing we have
queued up at this time so I'll give it a few days in -next before I send it in.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
