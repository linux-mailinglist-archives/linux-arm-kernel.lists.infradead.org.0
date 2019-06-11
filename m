Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D34503D20C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 18:18:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=loanEv48sxMmjXeOVq/TaBmUznW5oxqV/pEA3rTkDxE=; b=sGHUAFE3NsctZj
	ZTbGrWBPnVpfzRZXH7Kd0CqWvQBIFnUHU7WV2YKy947TMfXowoSlNEX2d11o+UmMbnh+loovIlTOZ
	Rv/TdJ5iLIjAvhSusRF3wL6csmVn5IpUTN987us4ffww/wf7+IAe4ubhlqUzht+h7FjOn0mHzzmgM
	Ha5kb82QAaLJcFPoXqdHI1lSdLvNLj3xbPjv4iKfvSAOlNt49Wuz7nmLgAwf5vOC8/kIavt4BRcea
	iQDtTrqqNcMin2mU3wiVw4Aittp9ZwzS1RDTJP4GtCEsIQIOEIBPhcpb4CGDBv4+5/mTlySGW0HQd
	vJ1vuX2hAFeeQAxK/kyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hajU0-0004WA-7R; Tue, 11 Jun 2019 16:18:48 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hajTo-0004VV-9G
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 16:18:37 +0000
Received: by mail-qt1-x842.google.com with SMTP id x47so15196358qtk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 09:18:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=T1SAE7tWdGhmdsrz6sQXRqUecRMhwxMSHwAZhuBAtXg=;
 b=bFSFsDJzi9mHgZQuY5qWb/gxxf3dMTj5XGvQCKP33AAfY36RiLkLnTwiMSp/IeIzcb
 6pgii91lqJ6KkqLuHoyLRDDIwm99XiV2QekrWc9csrrlsnRDoT8NVNS8cI1/bBzUQDVx
 wvhIgcv7o7bnHBXBdBmxANdQrjs7fU0bqUrTU5xaQpfknxPerLb85FcTxYt85BhE4q5Q
 hkWQeTGQK+j2s7Erdsd3Kpf/BLxb3mO0RQ5bXb3BHiTzz60W2RuAGFPiExJVy8vPat/7
 oYngr8juK5d6c0R+zrTbmB7S9H8OGUWPRftLvQHiL4WeUpvgvCJai6xea81A53K7lefU
 FB3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=T1SAE7tWdGhmdsrz6sQXRqUecRMhwxMSHwAZhuBAtXg=;
 b=scami8wUHb81T2SvsN09y9L0mBzSGZufMSA9S5Yh98RXgCMS3KvGzbbawq1XwSLIlD
 ZL05iLwT83GmNg87xAaDLUo7gj2OyXQjGIVxjj8Eki93y+EyoUeH71UY2CVWlnj85gjJ
 uOaM2yKh+OsehpyZKrrPv9sCRlrL2rouybNzBD1LnF4S79EayGRbDLfOf/0g/Fnk3WtO
 Kfr3P28rRw629Qwy+L4SR8t+dsikUvoD6rds+zlUaXQYnehoctQRpsUNyc2fhoKq8Q5g
 1lrEUtCnFGKo6X411HzRMEKueUDsEoEoo/CZ4MlfqrVp/ayEAp1hnUg2EhImjYINmRyr
 urhQ==
X-Gm-Message-State: APjAAAWBnDy6bkYGkIT0PHpUkMaEQV5n79KMgRRDFG8uIeybJfRPOIqI
 FhXvCAKLIseLOHGDAv/62Q==
X-Google-Smtp-Source: APXvYqy24BIzsBLMyJ9NPKf3YzSRzJhcWKbUEkuQGCNmFqzdIs0iPEm7cRIP9JF1ucYMWegtDfLXjA==
X-Received: by 2002:a0c:c586:: with SMTP id a6mr4745347qvj.177.1560269915539; 
 Tue, 11 Jun 2019 09:18:35 -0700 (PDT)
Received: from gabell (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id o38sm7911744qto.96.2019.06.11.09.18.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 11 Jun 2019 09:18:35 -0700 (PDT)
Date: Tue, 11 Jun 2019 12:18:29 -0400
From: Masayoshi Mizuma <msys.mizuma@gmail.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH 2/2] arm64/mm: show TAINT_CPU_OUT_OF_SPEC warning if the
 cache size is over the spec.
Message-ID: <20190611161828.kffrfqah2qtffahd@gabell>
References: <20190611151731.6135-1-msys.mizuma@gmail.com>
 <20190611151731.6135-3-msys.mizuma@gmail.com>
 <20190611154105.GE10165@c02tf0j2hf1t.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611154105.GE10165@c02tf0j2hf1t.cambridge.arm.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_091836_347947_17873DD1 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (msys.mizuma[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 Hidetoshi Seto <seto.hidetoshi@jp.fujitsu.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Zhang Lei <zhang.lei@jp.fujitsu.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 04:41:06PM +0100, Catalin Marinas wrote:
> On Tue, Jun 11, 2019 at 11:17:31AM -0400, Masayoshi Mizuma wrote:
> > From: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
> > 
> > Show the warning and taints as TAINT_CPU_OUT_OF_SPEC if the cache line
> > size is greater than the maximum.
> 
> In general the "out of spec" part is a misnomer, we tend to apply it to
> CPU features that are not supported by the kernel rather than some CPU
> feature not compliant with the architecture (we call the latter errata).
> 
> I suggest you drop this patch.

Thank you for your comments. I agree with you, so I drop this
patch.

Thanks,
Masa

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
