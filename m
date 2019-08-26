Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CCE19D26F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 17:15:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iPwDk4TjRvdQYIntWB5benP6SPop76KRnFKpiHe64/Y=; b=YyZflshUGlqHzd
	80wOzcFEGNyLhW/f/GNr5bd5jbA8ezHR8V5ldSzXp2yNJBosxaai7GLqUOmJFel2/LNeOJdxsVk3q
	nyaDleMYkngq2+COp3AFbIzwlv3WMcFtuLUV3tOq3M49YefAuCKSccHGuaOdY/ayAhjWpXE4xlBtU
	7qzgW1XiMUsIJMNJjWPuYuVosm5TXaidmeUwCHgwbSbiS0sf5ZwcUpxEdd+otp33H3X5favXRTLGE
	xDCVmpntr7FQFPWfSx/b8u+IzqTsgHB9PKWh47oVWTU1TiH8G8wbAE5R9DgCo3fjt8CxrVtyEq6hu
	kULVuuNYlFr4oIidpbXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Gif-00026q-L7; Mon, 26 Aug 2019 15:15:45 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2GiS-000265-LE
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 15:15:33 +0000
Received: by mail-wr1-x444.google.com with SMTP id r3so15712775wrt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 08:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QMc8BlFNPwhPMkitaQqYoQoxo4FLyEe7KvlKmz3CRSU=;
 b=IK4bcaUHJxVr5f3+1q9aB477uA6/aGYXg37x+81Y2Ak4Z8NyC7YCHsbt6yXQmMRud5
 i4zPn0V+BRuBq86WtDn8g+Nvs5B+H1wZtQDFornWtxRuA31nQoT1DOrnv/drN8BFcsrk
 FJoOjzqrHy//7LYX7NIAs3k8sOf0efOfawx/9mEy/CwbSfKSFFHIeGw93iKJcxVme968
 COPsmMb+yLY8CD3R/L9DErB31NsaryHOwpsQdq1+0ZpUxSNGLp4w2WO9aHSHVgkte3Wo
 LrqsEcJF9vLUcY7Mm+T5E8Lfc0B6iFC6+HrF+aAl+rNhFwcfarXz3JDzGZxpna9ZKkWd
 okAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QMc8BlFNPwhPMkitaQqYoQoxo4FLyEe7KvlKmz3CRSU=;
 b=ogbVRecHATgBl/5ftHMJIFrEsMCynncfa7tJ3NjzeCbF/cYw8hQP15flNKeN4Gg+FB
 JuDmIxTbMufWcGC9NOptTX125opr1kXfxaD5BFKT3nnf7gzMfGX/475anxrZUE7avCd2
 SS7IphNpBqLT14zF2XcwcPj5VTsFe8Ix3aT4yXTnEtunsF9DPfc1cndntzZpndH66RJz
 Y9lewiMx4YdoLhze4H1+pwdRgJlgQX0oBytdwPBwOlsSkSWztlvlHBoRJDyxo7+wsHa0
 aMSvQnujNdwjloZcRYSMSMf5LukRNc5Nh7Fyu80C+Y/iUHhKNMWB3O5tpeKTz9gprFIg
 2r1Q==
X-Gm-Message-State: APjAAAWHnPFZqbgILVTYe3y/JBT93TcPPS4ritbOKG1ycA8RRP8tn81C
 vWjAsDToUMJ2ShivN0IwBR4=
X-Google-Smtp-Source: APXvYqx50jWkW+jSQ4r//xNkXNJqtoB1M5J0Csu13FzO88J5ru1KMzVr7A6FyWGpl9iGrChq1LngwQ==
X-Received: by 2002:a5d:4205:: with SMTP id n5mr22982928wrq.52.1566832530322; 
 Mon, 26 Aug 2019 08:15:30 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id s64sm25344990wmf.16.2019.08.26.08.15.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 08:15:29 -0700 (PDT)
Date: Mon, 26 Aug 2019 08:15:28 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Ilie Halip <ilie.halip@gmail.com>
Subject: Re: [PATCH] bus: imx-weim: remove __init from 2 functions
Message-ID: <20190826151528.GA91444@archlinux-threadripper>
References: <20190826095828.8948-1-ilie.halip@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190826095828.8948-1-ilie.halip@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_081532_698459_33004FB7 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
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
Cc: clang-built-linux@googlegroups.com, Sascha Hauer <s.hauer@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 26, 2019 at 12:58:28PM +0300, Ilie Halip wrote:
> A previous commit removed __init from weim_probe(), but this attribute is
> still present for other functions called from it. Thus, these warnings
> are triggered:
>     WARNING: Section mismatch in reference from the function weim_probe() to the function .init.text:imx_weim_gpr_setup()
>     WARNING: Section mismatch in reference from the function weim_probe() to the function .init.text:weim_timing_setup()
> 
> Remove the __init attribute from these functions as well, since they
> don't seem to be used anywhere else.
> 
> Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
> Reported-by: "kernelci.org bot" <bot@kernelci.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: clang-built-linux@googlegroups.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
