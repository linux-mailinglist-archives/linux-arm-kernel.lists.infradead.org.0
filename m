Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A7FE463E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 10:52:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gE/BZeykgkH7Yn3MhF/ZZpxE4W0X7fCU+415MMRX8ZI=; b=SE1qfqBzC75067
	n63s28Qz/lgys3euVMpNpw1KVYkskT/XbmWMDtldrcLC8Ck/sScLak8sIX22HveH+znMYIrmib2OI
	SnzQwZZ+VTr1Q4g4dQ6mVBWDbeMiSVYM3r7t5qeA2EnPdN1SegGgaPvTnqSWLty7da10dMNSHmJeD
	A1WXfKVzXRFpBV7r2bZvprHI/wvsbU7cpl8eXHYlklBWALEKv5u1w3zA1U4TQPOXi9fW1+AWCJMre
	GaTk1Ws4T8L14yidSeU7SRAZOVPF13Slyj/MVfdKF9FH+/bqw1YId2UiEZzeNH1wn23TkG1iXtpTN
	F3AU3BWd0CXIxsQoiH+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNvKj-0000Zh-H0; Fri, 25 Oct 2019 08:52:33 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNvKZ-0000ZD-Nq
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 08:52:24 +0000
Received: by mail-wr1-x443.google.com with SMTP id w18so1366295wrt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 01:52:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=exH7wNrvvCyD2xlKncd5d7scqAdy8JMCpKT6Dj5gCMc=;
 b=P/LiJppexSpoU0kjzgG1KyPIzofv+N8qtq8srko9s77pZexKqCysdXk5Mg0W5PZmog
 eY08xRKGXJ/XNm90rgAupe0G1IgrKwfOHe3Fp5y7rMnVP6ZJLMG0hjKbIuVcHilTRPkZ
 yldxUjE23S3SxDeuZqBuJIMoDCTPV7ZDbFCmgC3vIEGJqdAge1GBJ8+xVZrWVaBPvJid
 ATvZxAcMDt47mFAG/n4ULaAwH3+6akM17+SbZed6kjdRK72F04RT1v/Ir+fr8x5BL+0N
 QaV/JpbzGc+QE40AgPvA4oS0xTJBMLU1tysNciz0ROYnCqRGdr2z+EjCp2+ZpwyyllIi
 w7aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=exH7wNrvvCyD2xlKncd5d7scqAdy8JMCpKT6Dj5gCMc=;
 b=Ed0MC5hbCP6Eyp+xZLUDTaAT4vsbiU3hXpLiEPFk9flLLoIJPhBk/YN+wmg08n9vJ3
 7s3Plxouwd8Fo96EPb8QVHp/SQDY/cxKrW93DOPn2voS7gN3riMXqeBwnRD49jj9954Y
 Jx5OOPh/lb8etZhBUoW/eGyyCdKF1jLKru9yJUK7yQ1R7kcj9vg0XmxfptSmPXiwm5Vn
 LaiEwSQJc4E/4h6UNJ1FGKdGfPR8nbYnrKDnMmpgRSOfU+BEDmv2CONmMKWdkMe75JDC
 /CO82oPlmi+dW5iONB6slZ28T5IBQFall4nsUQ/HyaHcoI+qotdQuPcLAOes2OYDgsQC
 G6iA==
X-Gm-Message-State: APjAAAX3/14tmrfxG1kKwdmZbVSWcLaqDrBWZbpTF41gja8fCIGIRkB+
 lpbygVO01kfihwxhABlx3m6wxg==
X-Google-Smtp-Source: APXvYqwqeNQ4Rm3LfZvag0FuCF1LHCrER4wDzEhFJR9VIg+vCiqIqlZebROwNpKRP1vRvTHk57W2nQ==
X-Received: by 2002:a5d:4a81:: with SMTP id o1mr1836767wrq.225.1571993541978; 
 Fri, 25 Oct 2019 01:52:21 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id o4sm1673291wre.91.2019.10.25.01.52.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 01:52:21 -0700 (PDT)
Date: Fri, 25 Oct 2019 09:52:19 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3 08/10] mfd: mfd-core: Protect against NULL call-back
 function pointer
Message-ID: <20191025085219.ki5gvqlycncbeztf@holly.lan>
References: <20191024163832.31326-1-lee.jones@linaro.org>
 <20191024163832.31326-9-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024163832.31326-9-lee.jones@linaro.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_015223_779208_733AD2F3 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: baohua@kernel.org, stephan@gerhold.net, arnd@arndb.de,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 05:38:30PM +0100, Lee Jones wrote:
> If a child device calls mfd_cell_{en,dis}able() without an appropriate
> call-back being set, we are likely to encounter a panic.  Avoid this
> by adding suitable checking.
> 
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>

Shouldn't this be earlier in the patch set (to avoid transient
regressions)?


Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
