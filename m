Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4CDDCEAB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 20:48:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AGq1T9l7QGNT40s+xJ1BrlShZxu5Wd5QAH52oNSNVeg=; b=C9z5y49s0XETlm
	NK7ByK5B1Xm7BX+kaD7q86LmnAh84dFSPPeEBWh7BgmMjNyYirK/8jjIS2VmtupNhVljTKR4lK1cs
	3X1zENKVNysAwW2eI3et2ZVRZlotShhOMa/47IWf4J98MKa6GZEWO47waK6WdptOdB/rQ+thlYgvR
	mYgT/ESkSk5I/NEW8RyHL19EwA/hD+GigWIgApx2l6PKBjQpa//Wh2c+VIc146DiA1YESzyvAf7zH
	ehDyiZLoy7mxqg9MXu8RmdPrLHziqk8SJUWQipr8F545xmY2Y89He++78XAX/+xT2FKG6W0dPeB0u
	yAot46aCBpxE1tU2EsGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLXIZ-0007qL-Rt; Fri, 18 Oct 2019 18:48:27 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLXIR-0007pt-Em
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 18:48:20 +0000
Received: by mail-pf1-x442.google.com with SMTP id v4so4412386pff.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 11:48:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=GhekFAP9STOj7Nck5xlc736VlW5iBvMLqnVMOxCxKvk=;
 b=nq7ifkSWIToa5I6g+4rLSg8PHDlLTw6sVriPzMqwLyL1U5F8+028XAzlRa/udM37u2
 IhA0UyYp6F+7ywfOdfaNWxQCMTMOWuL8HtxDQEhuCxw2TfjeU/1gdW7t93bK+VDfAcTg
 pfo6iiwkuaTPalYjOaazTni3qU5XLRdsfiyDPqItneeA0bQXnbaHtFuw8iRGNjF39B4W
 lt5QbWDbHM+8WrHSoEaeDZEsnNjlqC5r2UARp1vfD9y8vj6/yXwpuuBlqOTTfDzBXDs9
 +FfX0SLtOMSWhq1Ah85J0QQWGmRg77zVUbZGDPG1IKY0ugY8WtqD7mvAONygnf9oMrZb
 NTTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GhekFAP9STOj7Nck5xlc736VlW5iBvMLqnVMOxCxKvk=;
 b=mtO6hT/yQShL+lZgFtmSBExJ1pLHIq19vp7oyPjNkB3XLzzhlWzqawP+nc5K5WxKd0
 MvsxmA539wp26F5e2ShrPF3IcH+cdsC+OA2hAabet6/MVcDY4rNshIAnGPB6KoqckQ1e
 O5Y+ONaKErPgBnMTNt5mJDEQGXlGhFpLY/WtXnM3pkjJvQdDf9BsGo9aQHk6ewJhToTy
 YSLPCHUvQZ3WCnXw55DfiLaAlVywzgRxglmjekS8zPtDXmRAUJhk29aZP74N/hVLOOde
 Z/1VzgoV6eA8izgdfI4SUwuRT0Ak2UuWztQ7VdJ0dJBMH8k2gHaX9g4BU020mYoxZRYN
 sxzg==
X-Gm-Message-State: APjAAAU6/DM1vi/0PuIHktUJqSYCrr0T1H1OkC2NXpXsPYL4FmOb/3xC
 Q3vWyCKUrybL7hZxuLSpiG0=
X-Google-Smtp-Source: APXvYqwsgKLXB40xjU+zPd0jglpCieWEDSonZkG9+b++J833wiGysvtehr/Wkf0Gua652wYqwRTXxQ==
X-Received: by 2002:a63:1511:: with SMTP id v17mr11529604pgl.34.1571424498309; 
 Fri, 18 Oct 2019 11:48:18 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id u5sm8212572pfl.25.2019.10.18.11.48.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 11:48:17 -0700 (PDT)
Date: Fri, 18 Oct 2019 11:48:15 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 29/46] Input: touchscreen: use wrapper for pxa2xx ac97
 registers
Message-ID: <20191018184815.GP35946@dtor-ws>
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-29-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018154201.1276638-29-arnd@arndb.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_114819_518599_FE27FACF 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alsa-devel@alsa-project.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Daniel Mack <daniel@zonque.org>, linux-input@vger.kernel.org,
 Robert Jarzmik <robert.jarzmik@free.fr>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 05:41:44PM +0200, Arnd Bergmann wrote:
> To avoid a dependency on the pxa platform header files with
> hardcoded registers, change the driver to call a wrapper
> in the pxa2xx-ac97-lib that encapsulates all the other
> ac97 stuff.

Not supper happy about adding module dependencies. Can we include
mach/regs-ac97.h from include/sound/pxa2xx-lib.h and use static inlines?
Someone needs to include mach/regs-ac97.h in the end...

Or there is something later in the series that needs it?

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
