Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D88A1B6E99
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 09:02:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wRLQIeQTX2LV43QfY53Fc/TmrQzfDcUJQqrxqs1/V0s=; b=siipl5zOZAyfpE
	eYvJOV/Um+UtTngXSBI+PWtlai53KcWUPw4GfkcmLWik6hUb4lrAFoBNOZDiDeQ/GsAkInsee8JRE
	3CWvxTwPiQ9sX4+4T6FhA9KmiPoM+uFmCKWiMqHpUZ+V7uvPRPmjXbERXLt94yga+tS42LyHhGTGu
	WfdjphrVol6Gw6dsTZX7fmjlux9Qn0rbCkCNYhN6EkZ0tpiztDNnAeNzjAVCxBRJxvJFhugpzBRsK
	tHL3vaWoTD3gipznHBHv3vTkZYlPJLUbVlJCDpLtAsWuK84fSXUGeStdXwSwTPTGUa3eU+IZKl+40
	CySFiMvLgGFDL2+lyMrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRsMI-0006lB-GD; Fri, 24 Apr 2020 07:02:46 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRsM7-0006ig-Hf; Fri, 24 Apr 2020 07:02:39 +0000
Received: by mail-pf1-x441.google.com with SMTP id d184so4375159pfd.4;
 Fri, 24 Apr 2020 00:02:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=nYmuPUkpfA/WyQitaSXz7ECHPn+yLvEDC7IL/UihbYA=;
 b=hBT3U2cbQjqSmJ9hzCC57Plx5J+ya1WpV5mw/I3wXmOwbozUSjllVHATaB30bCWA92
 23wS7C+/jrqcDaaBbrQ7/AdRMH4FP8gG8++0vFFmcU9XhaCBYKfHtWo63Lv0hcXge80g
 oXrUVsgxEM0EjP1adJBgStF7x83mW2W1JLIGgDj7DjiGU59YqQKdSqQJEffC0be+ePbI
 r2LOToHjIg6JTaCp8fE/fvUuCTefdRG27nJQT3hqKY4l5+2AgAlGJyD8uWpN+U6n3dCE
 IY1CVFCEq8H3lQB64cgtCoXVUd7v5CZSvrzpIUTc11+7P/oZEn1ugovw+Vnq4vQ2mHop
 74Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=nYmuPUkpfA/WyQitaSXz7ECHPn+yLvEDC7IL/UihbYA=;
 b=n3ylghWiD72Lz0G6StbCYHCu+y4RlaRni8KoUEKquQr5sOY4SEjbTuYWTTcFJEKX8b
 VXugkM0mat2n60Px1jhQ+MHGH369Ih6PZXTnvDbSRg+XnyagLN/Qs/3OOdxqZOUTWFWo
 x2kzvuGgSWIeDcH4AHLCnL3wqNlcIDTt5UQDYrj8meSKLdXzIvQj/9f143bTQNuMQkqy
 Rg0JzIkrs+45AcNm7ZbNV71VNCh1mPPXuXTz3KvQbsY+HGcBPUtVN0vGUSx8YH0hSMa0
 HKb6uNCuqfKw/SFa1/Y8BhL7TgITfz5A/Up65XdI5B62JYEvRzGvHhIsn79zWdbSwP3C
 5QEw==
X-Gm-Message-State: AGi0PuYNDCIln9BphUn8s8cUWauYGtNveUva708lV6s7EhugiHrZMfmP
 Ebjtn1uEIgS8LGAqRqrtxcM=
X-Google-Smtp-Source: APiQypJ65WqC35vDojAG67V5X2vRRyA4kfiKKt1BIrZCAN06QLNZMKUzvD262vR3np7dF8JeffGlRA==
X-Received: by 2002:aa7:958f:: with SMTP id z15mr7669227pfj.10.1587711749222; 
 Fri, 24 Apr 2020 00:02:29 -0700 (PDT)
Received: from localhost (146.85.30.125.dy.iij4u.or.jp. [125.30.85.146])
 by smtp.gmail.com with ESMTPSA id u188sm4774079pfu.33.2020.04.24.00.02.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Apr 2020 00:02:28 -0700 (PDT)
From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
X-Google-Original-From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Date: Fri, 24 Apr 2020 16:02:19 +0900
To: "chunlei.wang" <Chunlei.wang@mediatek.com>
Subject: Re: [PATCH] printk: Add printk log prefix information.
Message-ID: <20200424070219.GA543@jagdpanzerIV.localdomain>
References: <1587709294.9792.5.camel@mbjsdccf07>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587709294.9792.5.camel@mbjsdccf07>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_000235_587985_EC9732AF 
X-CRM114-Status: UNSURE (   6.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sergey.senozhatsky[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Petr Mladek <pmladek@suse.com>, Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On (20/04/24 14:21), chunlei.wang wrote:
> Add prefix status/cpu_id/pid/process_name to each kernel log.
> example:
> [ 8408.806432] (4)[19963:kworker/4:1]wifi_fw: ring_emi_seg.sz=4164,
> ring_cache_pt=000000004f5ca8fa, ring_cache_seg.sz=4164
> [ 8408.806729]-(4)[19963:kworker/4:1]connlog_log_data_handler: 1
> callbacks suppressed

It seems that CONFIG_PRINTK_CALLER does this already.

	-ss

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
