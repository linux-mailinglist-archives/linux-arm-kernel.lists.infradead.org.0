Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E69CFFA6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 19:18:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bJ95RmQLD75m8pw4cprh8LnNR4VlPZn/5TVfz106/uU=; b=DbQwFxZcgr8zeU
	B7pTBKHtD/fNyk2hlhvsepCpQYxeiT4me+DF3TGdmcGViE7wiJm9NTXNGHTUu3qcvqKPtHcLwVArQ
	FgzqCGUNI55UCdhxtcAsggr7EyPacHok7YNtB/IMbRlm2TB9NgJsh/T3CxuFba3tFM+CfkvQibEx0
	ax2FnMMUxglKpoYMFAPNrhmfvrseUcePODsiq9ct/QGSIBwzxeJyuV5FmrQlje+qhwZtV5hILdFNZ
	4jUmmioVHMrTcTwuqPTcx+5mLWj//GqQNW3v0YMxcO75pqyYstf46bQaLZVjEfdD4XyyM8bpnDmxj
	PGAhuJ1kPrzMXeHY6Mfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHt7x-0002WU-97; Tue, 08 Oct 2019 17:18:25 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHt7m-0002VP-Ku
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 17:18:16 +0000
Received: by mail-wr1-f67.google.com with SMTP id w12so20350010wro.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 10:18:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+KCXyzpU3dgR07Gdbce6LfLYUIptdiLzSDu/Iqt21TQ=;
 b=eORyE7WmH5ftoR83NRJQN5MLN3HxF/QXZfWq7ASQUrfvNN7wN90TGTeGqnok6iLLym
 L8gU4zqNq7DgXWHC6hpXjVxPiuPsRzsB/HOTrL16MGPxmQGYFXQHj4LlXWgcKtXK6D3N
 3LYHJeMtdkuk53CichfmLiEW44Dc1qT9fCYI7geU5hZKKrAmMnuEcRZBmd9N4hXm50pB
 bY4MivlAHOsVrvS+1TFDrB7raGbaryxPcPVWdcxp9pWwvPitrDayd2Q50d00v8BkMHnH
 2aJrHG0orbQc+tn+3Rj0hY05DLf/0y1Q2LgPwIy2kVOJRuqbT+S62ttjUWw5+od8ZGVU
 bpYQ==
X-Gm-Message-State: APjAAAVWKgU0d3IeW2gidaoBImyoSEx9v/xjw/PyvSabtRPYnvHuDGOa
 7voH21QIO7p1a/CYjQqCn/8=
X-Google-Smtp-Source: APXvYqySEnlrvHQ0j8san+qAcBH4oeN9WXugf40WlyqhbiYA+KvafyW9c7JtN+PLERblpK393GQ4/A==
X-Received: by 2002:a5d:4689:: with SMTP id u9mr28038407wrq.78.1570555092266; 
 Tue, 08 Oct 2019 10:18:12 -0700 (PDT)
Received: from kozik-lap ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id z9sm19137134wrl.35.2019.10.08.10.18.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 08 Oct 2019 10:18:11 -0700 (PDT)
Date: Tue, 8 Oct 2019 19:18:09 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: s3c64xx: Fix init order of clock providers
Message-ID: <20191008171809.GA25661@kozik-lap>
References: <20191008165917.23908-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191008165917.23908-1-krzk@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_101814_681111_6C0FA5CD 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: 3.8 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [194.230.155.145 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Lihua Yao <ylhuajnu@outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 08, 2019 at 06:59:17PM +0200, Krzysztof Kozlowski wrote:
> From: Lihua Yao <ylhuajnu@outlook.com>
> 
> fin_pll is the parent of clock-controller@7e00f000, specify
> the dependency to ensure proper initialization order of clock
> providers.
> 
> without this patch:
> [    0.000000] S3C6410 clocks: apll = 0, mpll = 0
> [    0.000000]  epll = 0, arm_clk = 0
> 
> with this patch:
> [    0.000000] S3C6410 clocks: apll = 532000000, mpll = 532000000
> [    0.000000]  epll = 24000000, arm_clk = 532000000
> 
> Fixes: 3f6d439f2022 ("clk: reverse default clk provider initialization order in of_clk_init()")
> Signed-off-by: Lihua Yao <ylhuajnu@outlook.com>

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
